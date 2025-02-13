local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 10,["24"] = 10,["25"] = 10,["27"] = 11,["28"] = 10,["29"] = 24,["30"] = 26,["31"] = 26,["32"] = 26,["33"] = 26,["34"] = 26,["35"] = 26,["36"] = 26,["37"] = 26,["38"] = 36,["41"] = 40,["42"] = 41,["43"] = 42,["44"] = 42,["45"] = 42,["46"] = 43,["47"] = 44,["48"] = 45,["50"] = 42,["51"] = 42,["52"] = 48,["53"] = 48,["54"] = 48,["55"] = 49,["56"] = 49,["57"] = 48,["58"] = 48,["59"] = 24,["60"] = 53,["61"] = 55,["64"] = 59,["65"] = 60,["67"] = 62,["68"] = 63,["70"] = 65,["71"] = 66,["72"] = 53,["73"] = 69,["74"] = 70,["77"] = 74,["78"] = 74,["79"] = 74,["80"] = 74,["81"] = 79,["82"] = 80,["83"] = 80,["84"] = 83,["85"] = 84,["86"] = 85,["87"] = 86,["88"] = 86,["89"] = 88,["91"] = 69,["92"] = 92,["93"] = 93,["94"] = 92,["95"] = 95,["96"] = 96,["97"] = 95,["98"] = 99,["99"] = 100,["100"] = 99,["101"] = 103,["102"] = 104,["103"] = 105,["104"] = 106,["105"] = 103,["106"] = 109,["107"] = 110,["108"] = 111,["110"] = 113,["112"] = 109,["113"] = 117,["114"] = 118,["115"] = 117,["116"] = 121,["117"] = 122,["118"] = 121,["119"] = 125,["120"] = 126,["121"] = 127,["122"] = 128,["123"] = 125,["124"] = 132});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipType = ____VipEnum.VipType
local ____VipManager = include("logic.archive.manager.VipManager")
local vipManager = ____VipManager.vipManager
____exports.IdleRewardManager = __TS__Class()
local IdleRewardManager = ____exports.IdleRewardManager
IdleRewardManager.name = "IdleRewardManager"
function IdleRewardManager.prototype.____constructor(self)
    self.data = nil
end
function IdleRewardManager.prototype.init(self)
    self.data = S({
        totalReward = 0,
        totalRewardGold = 0,
        efficiency = 0,
        second = 0,
        battlepassEfficiency = 120,
        battlepassToken = 0
    })
    if steamUtils:isSteam() then
        return
    end
    self:getEfficiency()
    console:log("挂机奖励初始化")
    self._timer = y3.timer.loop(
        60,
        function(t, count)
            if count % 60 == 0 then
                console:log("挂机奖励")
                self:reward()
            end
        end
    )
    self._ltimer = y3.timer.loop(
        1,
        function()
            local ____self_data_0, ____second_1 = self.data, "second"
            ____self_data_0[____second_1] = ____self_data_0[____second_1] + 1
        end
    )
end
function IdleRewardManager.prototype.stop(self)
    if steamUtils:isSteam() then
        return
    end
    if self._timer then
        self._timer:remove()
    end
    if self._ltimer then
        self._ltimer:remove()
    end
    self.data.second = 0
    console:log("挂机奖励停止")
end
function IdleRewardManager.prototype.reward(self)
    if steamUtils:isSteam() then
        return
    end
    rewardManager:rewardItem(
        2,
        self:getEfficiency()
    )
    archive.statInfo:addWeekDiamond(self.data.efficiency)
    local ____self_data_2, ____totalReward_3 = self.data, "totalReward"
    ____self_data_2[____totalReward_3] = ____self_data_2[____totalReward_3] + self.data.efficiency
    local gold = self:getEfficiencyGold()
    if gold > 0 then
        rewardManager:rewardItem(1, gold)
        local ____self_data_4, ____totalRewardGold_5 = self.data, "totalRewardGold"
        ____self_data_4[____totalRewardGold_5] = ____self_data_4[____totalRewardGold_5] + gold
        console:log("挂机奖励金币*" .. tostring(gold))
    end
end
function IdleRewardManager.prototype.getTotalReward(self)
    return self.data.totalReward
end
function IdleRewardManager.prototype.getTotalRewardGold(self)
    return self.data.totalRewardGold
end
function IdleRewardManager.prototype.getTotalBattlepassTokenReward(self)
    return self.data.battlepassToken
end
function IdleRewardManager.prototype.getEfficiency(self)
    local percent = vipManager:has(VipType["每小时挂机收益百分比"], LOCAL.PLAYER_ID) and vipManager:getValue(VipType["每小时挂机收益百分比"], LOCAL.PLAYER_ID) or 0
    self.data.efficiency = defaultConfig["挂机每小时获取钻石数量"] * (1 + percent)
    return self.data.efficiency
end
function IdleRewardManager.prototype.getEfficiencyGold(self)
    if vipManager:has(VipType["挂机每小时获得X金币"], LOCAL.PLAYER_ID) then
        return vipManager:getValue(VipType["挂机每小时获得X金币"], LOCAL.PLAYER_ID)
    else
        return 0
    end
end
function IdleRewardManager.prototype.getWeekDiamonds(self)
    return archive.statInfo:getWeekDiamond()
end
function IdleRewardManager.prototype.getSecond(self)
    return self.data.second
end
function IdleRewardManager.prototype.getWeekDiamondsLimit(self)
    local diamond_limit = archive.vipInfo:getValue(VipType["每周获得钻石上限提高"])
    local limit = defaultConfig["每周战斗获得钻石上限"] + diamond_limit
    return limit
end
____exports.idleRewardManager = __TS__New(____exports.IdleRewardManager)
return ____exports
