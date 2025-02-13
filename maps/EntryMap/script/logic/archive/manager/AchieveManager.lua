local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 8,["15"] = 8,["16"] = 8,["18"] = 8,["19"] = 15,["20"] = 16,["21"] = 15,["22"] = 24,["23"] = 25,["24"] = 24,["25"] = 33,["26"] = 34,["27"] = 33,["28"] = 40,["29"] = 41,["30"] = 42,["32"] = 43,["33"] = 43,["34"] = 44,["35"] = 45,["36"] = 46,["37"] = 43,["40"] = 48,["41"] = 40,["42"] = 54,["44"] = 55,["45"] = 55,["46"] = 56,["47"] = 57,["48"] = 58,["50"] = 55,["53"] = 61,["54"] = 54,["55"] = 67,["56"] = 68,["57"] = 67,["58"] = 71,["59"] = 72,["60"] = 71,["61"] = 76});
local ____exports = {}
local ____AchieveConfig = include("logic.configs.AchieveConfig")
local achieveConfigList = ____AchieveConfig.achieveConfigList
local achieveConfigMap = ____AchieveConfig.achieveConfigMap
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.AchieveManager = __TS__Class()
local AchieveManager = ____exports.AchieveManager
AchieveManager.name = "AchieveManager"
function AchieveManager.prototype.____constructor(self)
end
function AchieveManager.prototype.getProgress(self, ____type, config)
    return archive.achieveInfo:getProgress(____type, config)
end
function AchieveManager.prototype.isComplete(self, cfgId)
    return archive.achieveInfo:isComplete(cfgId)
end
function AchieveManager.prototype.isReward(self, cfgId)
    return archive.achieveInfo:isReward(cfgId)
end
function AchieveManager.prototype.getReward(self, cfgId)
    archive.achieveInfo:reward(cfgId)
    local cfg = achieveConfigMap[cfgId]
    do
        local index = 0
        while index < #cfg.propId do
            local element = cfg.propId[index + 1]
            local num = cfg.num[index + 1]
            rewardManager:rewardItem(element.id, num)
            index = index + 1
        end
    end
    archive.achieveInfo:sync()
end
function AchieveManager.prototype.getAllReward(self)
    do
        local index = 0
        while index < #achieveConfigList do
            local element = achieveConfigList[index + 1]
            if self:isComplete(element.id) and not self:isReward(element.id) then
                self:getReward(element.id)
            end
            index = index + 1
        end
    end
    archive.achieveInfo:sync()
end
function AchieveManager.prototype.check(self)
    archive.achieveInfo:check()
end
function AchieveManager.prototype.complete(self, cfgId)
    archive.achieveInfo:complete(cfgId)
end
____exports.achieveManager = __TS__New(____exports.AchieveManager)
return ____exports
