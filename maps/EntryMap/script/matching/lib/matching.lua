---@class Matching
---@field private orders integer[] # 玩家排行榜
---@field private hps integer[] # 玩家的血量
---@field private history integer[][] # 历史匹配
---@field private dead_list integer[] # 死亡顺序
---@field private last_match integer[] # 上一次匹配结果
---@field private need_update_orders boolean # 是否需要更新玩家排行榜
---@overload fun(count: integer): self
local M = Class 'Matching'

-- 随机匹配的尝试次数
---@private
M.try_count = 1000

-- 小于等于此血量才能打尸体
---@private
M.low_hp = 100

-- 最近打过人的额外加分
---@private
M.history_score = {10000, 4, 3, 2, 1}

---@private
---@param count integer
---@return self
function M:__init(count)
    self.hps       = {}
    self.history   = {}
    self.orders    = {}
    self.dead_list = {}
    self.need_update_orders = true
    for i = 1, count do
        self.orders[i] = i
        self.hps[i] = 100
    end
    return self
end

---@private
---@param a integer
---@param b integer
---@return integer score
function M:match_score_pair(a, b)
    local score = 0
        -- 死人没有话语权
    if self.hps[a] <= 0 then
        return score
    end

    -- 1. 如果曾经打过这个人，那么越近分数越高
    local history = self.history[a]
    if history then
        local index = 0
        for j = #history, 1, -1 do
            index = index + 1
            if index > #self.history_score then
                break
            end
            local hid = history[j]
            if hid == b then
                score = score + self.history_score[index]
            end
        end
    end

    -- 2 如果对方是死人，但是自己不是最后3名，则+1000000分
    if self.hps[b] <= 0 and self.hps[a] > self.low_hp then
        score = score + 1000000
    end
    return score
end

-- 对一次匹配结果进行评分  
-- 分数越高，表示匹配越差
---@private
---@param matching integer[]
---@return integer
function M:match_score(matching)
    local score = 0

    for i = 1, #matching, 2 do
        local a = matching[i]
        local b = matching[i + 1]
        score = score + self:match_score_pair(a, b)
        score = score + self:match_score_pair(b, a)
    end

    return score
end

-- 刷新排行榜，根据玩家血量进行稳定排序
---@private
function M:update_orders()
    if not self.need_update_orders then
        return
    end
    self.need_update_orders = false
    table.sort(self.orders, function (a, b)
        local life_a = self.hps[a]
        local life_b = self.hps[b]
        -- 1. 血量高的排在前面
        if life_a ~= life_b then
            return life_a > life_b
        end
        -- 2. 如果活着，玩家id小的排在前面
        if life_a > 0 then
            return a < b
        end
        -- 3. 如果都死了，晚死的排在前面
        local dead_count_a = y3.util.arrayIndexOf(self.dead_list, a)
        local dead_count_b = y3.util.arrayIndexOf(self.dead_list, b)
        return dead_count_a > dead_count_b
    end)
end

-- 获取排行榜
---@return integer[]
function M:get_orders()
    self:update_orders()
    return self.orders
end

-- 获取玩家所在排行榜中的排名
---@param id integer
---@return integer
function M:get_rank(id)
    local orders = self:get_orders()
    local index = y3.util.arrayIndexOf(orders, id)
    assert(index)
    return index
end

-- 刷新低血量阈值，只有小于等于此血量才能打尸体
---@private
function M:update_low_hp()
    -- 获取倒数第3名的id
    local last_count = 0
    local low_id
    for i = #self.orders, 1, -1 do
        local id = self.orders[i]
        if self.hps[id] > 0 then
            last_count = last_count + 1
            if last_count == 3 then
                low_id = id
                break
            end
        end
    end
    -- 获取倒数第3名的血量
    self.low_hp = self.hps[low_id]
end

---@private
---@return integer[]
function M:get_players()
    local players = {}
    for i, hp in ipairs(self.hps) do
        if hp > 0 then
            players[#players+1] = i
        end
    end

    -- 如果存活玩家数量是奇数，则得有个人打尸体
    if #players % 2 == 1 then
        local last_dead = self.dead_list[#self.dead_list]
        players[#players+1] = last_dead
    end

    return players
end

-- 获取所有配对的分数
---@private
---@param players integer[]
---@return table<integer, integer>
function M:get_pair_scores(players)
    local pair_scores = {}
    for x = 1, #players do
        for y = 1, #players do
            if x ~= y then
                local a = players[x]
                local b = players[y]
                local key = a * 10000 + b
                local score = self:match_score_pair(a, b)
                pair_scores[key] = score
            end
        end
    end

    return pair_scores
end

---@private
---@param players integer[]
---@param pair_scores table<integer, integer>
---@return integer[]
---@return integer
function M:find_best_score(players, pair_scores)
    local function copy(t)
        local nt = {}
        for k, v in pairs(t) do
            nt[k] = v
        end
        return nt
    end

    local function get_score(arr)
        local score = 0
        for i = 1, #arr, 2 do
            local a = arr[i]
            local b = arr[i + 1]
            local key1 = a * 10000 + b
            local key2 = b * 10000 + a
            score = score + pair_scores[key1] + pair_scores[key2]
        end
        return score
    end

    local results = {}
    for i = 1, self.try_count do
        results[i] = y3.util.randomSortTable(copy(players))
    end
    local best_score = math.maxinteger
    for i = 1, self.try_count do
        local score = get_score(results[i])
        if score < best_score then
            best_score = score
        end
    end

    local best_results = {}
    for i = 1, self.try_count do
        local score = get_score(results[i])
        if score == best_score then
            best_results[#best_results+1] = results[i]
        end
    end

    if best_results == 0 then
        return {}, best_score
    end

    return best_results[math.random(#best_results)], best_score
end

-- 进行一次匹配，尽量不与之前的匹配重复
---@private
---@return integer[]|nil
---@return integer
function M:make_match()
    local players = self:get_players()
    local pair_scores = self:get_pair_scores(players)
    local result, score = self:find_best_score(players, pair_scores)

    return result, score
end

-- 进行一次完整匹配，尽量不与之前的匹配重复  
-- 会自动刷新排行榜并记录历史匹配
---@return integer[]|nil
---@return integer
function M:make_full_match()
    self.need_update_orders = true
    self:update_orders()
    self:update_low_hp()

    local result, score = self:make_match()
    if not result then
        return nil, score
    end

    -- 更新历史匹配
    self:update_history(result)

    self.last_match = result

    return result, score
end

-- 获取上一次匹配的对象
---@param id integer
---@return integer?
function M:get_pair(id)
    if not self.last_match then
        return nil
    end
    for i = 1, #self.last_match, 2 do
        local a = self.last_match[i]
        local b = self.last_match[i + 1]
        if a == id then
            return b
        end
        if b == id then
            return a
        end
    end
    return nil
end

-- 更新历史匹配
---@private
---@param result integer[]
function M:update_history(result)
    local function update(a, b)
        local history = self.history[a]
        if not history then
            history = {}
            self.history[a] = history
        end
        table.insert(history, b)
    end

    for i = 1, #result, 2 do
        local a = result[i]
        local b = result[i + 1]
        update(a, b)
        update(b, a)
    end
end

-- 更新血量
---@param id integer
---@param hp integer
function M:update_hp(id, hp)
    local php = self.hps[id]
    assert(php, ('玩家[%d]不存在'):format(id))
    self.need_update_orders = true
    if hp <= 0 then
        if php > 0 then
            table.insert(self.dead_list, id)
        end
        self.hps[id] = hp
        return
    end
    assert(php > 0, ('不能复活死亡的玩家[%d]！'):format(id))
    self.hps[id] = hp
end
