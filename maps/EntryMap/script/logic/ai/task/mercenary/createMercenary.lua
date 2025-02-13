local ____lualib = include("lualib_bundle")
local __TS__ArrayReduce = ____lualib.__TS__ArrayReduce
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 13,["32"] = 13,["36"] = 20,["37"] = 59,["38"] = 59,["39"] = 59,["40"] = 61,["41"] = 62,["42"] = 63,["43"] = 64,["45"] = 67,["46"] = 68,["47"] = 71,["48"] = 72,["49"] = 73,["50"] = 75,["51"] = 76,["52"] = 78,["54"] = 80,["55"] = 81,["56"] = 82,["59"] = 87,["60"] = 88,["61"] = 89,["62"] = 90,["63"] = 91,["64"] = 92,["66"] = 94,["68"] = 97,["69"] = 98,["70"] = 99,["74"] = 106,["75"] = 108,["76"] = 109,["77"] = 109,["78"] = 109,["79"] = 109,["80"] = 109,["81"] = 109,["82"] = 109,["83"] = 109,["84"] = 110,["85"] = 111,["86"] = 112,["89"] = 116,["90"] = 116,["91"] = 116,["92"] = 116,["93"] = 118,["94"] = 118,["95"] = 118,["96"] = 118,["97"] = 122,["98"] = 123,["99"] = 124,["100"] = 124,["101"] = 124,["102"] = 124,["104"] = 127,["105"] = 128,["106"] = 130,["107"] = 131,["108"] = 132,["111"] = 137,["112"] = 138,["114"] = 142,["115"] = 143,["116"] = 143,["117"] = 143,["118"] = 143,["120"] = 146,["121"] = 147,["122"] = 148,["123"] = 149,["125"] = 151,["126"] = 151,["127"] = 151,["128"] = 151,["130"] = 154,["131"] = 155,["132"] = 156,["133"] = 156,["134"] = 156,["135"] = 156,["136"] = 157,["137"] = 158,["138"] = 158,["139"] = 158,["140"] = 158,["142"] = 160,["143"] = 160,["144"] = 160,["145"] = 160,["148"] = 164,["149"] = 165,["150"] = 167,["151"] = 168,["154"] = 171,["155"] = 172,["157"] = 175,["158"] = 177,["159"] = 177,["160"] = 177,["161"] = 177,["162"] = 179,["163"] = 182,["164"] = 182,["165"] = 183,["167"] = 186,["168"] = 186,["169"] = 186,["170"] = 186,["171"] = 186,["172"] = 186,["173"] = 186,["174"] = 187,["175"] = 189,["176"] = 59,["177"] = 59,["178"] = 20});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigMap = ____RobotLevelConfig.robotLevelConfigMap
local ____MercenaryController = include("logic.controllers.MercenaryController")
local mercenaryController = ____MercenaryController.mercenaryController
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameRandomEventType = ____GameData.GameRandomEventType
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____BlackboardEnum = include("logic.ai.BlackboardEnum")
local BlackboardEnum = ____BlackboardEnum.BlackboardEnum
--- 创建佣兵
-- 
-- @param params 参数，如果不传则根据购买力随机造一个
function ____exports.createMercenary(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local gameData = datas.global:getSingle(GameData)
            if (gameData and gameData.randomEventType) == GameRandomEventType["真男人大战"] then
                self:log(function() return "随机事件真男人打造不可造佣兵" end)
                return false
            end
            local playerDatas = datas.players[self.playerId]
            local playerData = playerDatas:getSingle(PlayerData)
            if playerData.isSimpleAI or playerData.isWarmthAI then
                local p = 0
                if playerData.simpleAIType == "easy" then
                    p = 0.9
                elseif playerData.simpleAIType == "hard" then
                    p = 0
                end
                if math.random() < p then
                    self:log(function() return ("简单电脑" .. tostring(p)) .. "概率达成，放弃造佣兵" end)
                    return true
                end
            end
            if isPvpModeRobot(nil) then
                local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
                if config ~= nil then
                    local p = 0
                    if self.playerId <= 4 then
                        p = config.ourMistake
                    else
                        p = config.enemyMistake
                    end
                    if math.random() < p then
                        self:log(function() return ("失误率" .. tostring(p)) .. "达成，放弃造佣兵" end)
                        return true
                    end
                end
            end
            local list = self.blackboard:Get(BlackboardEnum.mercenaryList)
            if params and params.heightOnly then
                local maxPrice = __TS__ArrayReduce(
                    list,
                    function(____, a, b) return math.max(
                        a,
                        mercenaryController:getMercenaryPrice(self.playerId, b.id)
                    ) end,
                    0
                )
                if playerData.wood < maxPrice then
                    self:log(function() return (("heightOnly 开启，木头不足，无法买到最贵佣兵 " .. tostring(playerData.wood)) .. "<") .. tostring(maxPrice) end)
                    return false
                end
            end
            list = __TS__ArrayFilter(
                list,
                function(____, a) return playerData.wood >= mercenaryController:getMercenaryPrice(self.playerId, a.id) end
            )
            local fuzhu = __TS__ArrayFilter(
                playerDatas:getListByIndex(UnitData, "type", UnitType.MERCENARY),
                function(____, a) return a.type == UnitType.MERCENARY and a.mercenary.label == 4 end
            )
            if #fuzhu >= 4 then
                self:log(function() return "过滤辅助单位" end)
                list = __TS__ArrayFilter(
                    list,
                    function(____, a) return a.label ~= 4 end
                )
            end
            local mercenary
            if params == nil then
                mercenary = random:randomList(list)
                if mercenary == nil then
                    self:log(function() return "木头不足，无法买到任何佣兵" end)
                end
            else
                if params.filterByProbability ~= nil then
                    params.filterByPos = math.random() < params.filterByProbability and 1 or 3
                end
                if params.filterByPos ~= nil then
                    list = __TS__ArrayFilter(
                        list,
                        function(____, a) return a.pos == params.filterByPos end
                    )
                end
                if params.filterByIds ~= nil then
                    local ids = {}
                    for ____, i in ipairs(params.filterByIds) do
                        ids[i] = true
                    end
                    list = __TS__ArrayFilter(
                        list,
                        function(____, a) return ids[a.id] end
                    )
                end
                if params.orderByCheap ~= nil then
                    if params.orderByCheap == 0 then
                        __TS__ArraySort(
                            list,
                            function(____, a, b) return a.price - b.price end
                        )
                    elseif params.orderByCheap == 1 then
                        __TS__ArraySort(
                            list,
                            function(____, a, b) return b.price - a.price end
                        )
                    else
                        __TS__ArraySort(
                            list,
                            function(____, a, b) return b.MercenaryGold / b.price - a.MercenaryGold / a.price end
                        )
                    end
                end
                local newList = __TS__ArraySlice(list, 0, params.randomRange or 5)
                mercenary = random:randomList(newList)
                if mercenary == nil then
                    self:log(function() return "木头不足或无法找到符合规则的佣兵" end)
                end
            end
            if mercenary == nil then
                return false
            end
            local price = mercenaryController:getMercenaryPrice(self.playerId, mercenary.id)
            self.blackboard:Set(
                BlackboardEnum.woodConsume,
                self.blackboard:Get(BlackboardEnum.woodConsume) + price
            )
            local randomPos = false
            local ____opt_4 = datas.players[self.playerId]:getSingle(PlayerData)
            if (____opt_4 and ____opt_4.isSimpleAI) ~= true then
                randomPos = math.random() > 0.5
            end
            mercenaryController:hire(
                self.playerId,
                mercenary.id,
                nil,
                nil,
                randomPos
            )
            self:log(function() return ((("创建佣兵 " .. mercenary.name) .. "(") .. tostring(mercenary.id)) .. ")" end)
            return true
        end
    )
end
return ____exports
