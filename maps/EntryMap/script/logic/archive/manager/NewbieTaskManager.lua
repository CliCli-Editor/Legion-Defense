local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["16"] = 9,["17"] = 10,["18"] = 10,["19"] = 11,["20"] = 11,["21"] = 12,["22"] = 12,["23"] = 13,["24"] = 13,["25"] = 18,["26"] = 18,["27"] = 18,["29"] = 18,["30"] = 21,["31"] = 22,["32"] = 23,["33"] = 24,["34"] = 29,["35"] = 31,["37"] = 21,["38"] = 38,["39"] = 39,["42"] = 43,["43"] = 44,["46"] = 47,["49"] = 50,["50"] = 51,["54"] = 56,["55"] = 56,["56"] = 57,["57"] = 58,["58"] = 59,["59"] = 56,["62"] = 62,["63"] = 38,["64"] = 65,["65"] = 66,["66"] = 67,["67"] = 68,["69"] = 70,["70"] = 71,["72"] = 73,["73"] = 74,["74"] = 65,["75"] = 77,["76"] = 78,["77"] = 79,["78"] = 80,["80"] = 82,["81"] = 83,["82"] = 84,["84"] = 87,["85"] = 88,["86"] = 90,["87"] = 90,["88"] = 91,["89"] = 93,["90"] = 94,["91"] = 96,["93"] = 99,["94"] = 77,["95"] = 102,["96"] = 103,["97"] = 104,["100"] = 107,["103"] = 110,["104"] = 111,["107"] = 116,["108"] = 117,["109"] = 118,["110"] = 120,["111"] = 121,["112"] = 122,["113"] = 123,["115"] = 126,["117"] = 102,["118"] = 134,["119"] = 135,["120"] = 136,["121"] = 137,["123"] = 139,["124"] = 140,["125"] = 141,["127"] = 143,["128"] = 144,["130"] = 147,["131"] = 149,["132"] = 150,["134"] = 153,["135"] = 134,["136"] = 159,["137"] = 160,["138"] = 161,["141"] = 164,["142"] = 165,["145"] = 168,["148"] = 171,["149"] = 172,["151"] = 159,["152"] = 177});
local ____exports = {}
local ____NewbieTaskConfig = include("logic.configs.NewbieTaskConfig")
local newbieTaskConfigMap = ____NewbieTaskConfig.newbieTaskConfigMap
local newbieTaskConfigMap_group = ____NewbieTaskConfig.newbieTaskConfigMap_group
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
--- 于NewbieTaskConfig表的condition1枚举对应
____exports.NewbieTaskTrigger = NewbieTaskTrigger or ({})
____exports.NewbieTaskTrigger.FIGHT = 1
____exports.NewbieTaskTrigger[____exports.NewbieTaskTrigger.FIGHT] = "FIGHT"
____exports.NewbieTaskTrigger.FIGHT_WIN = 2
____exports.NewbieTaskTrigger[____exports.NewbieTaskTrigger.FIGHT_WIN] = "FIGHT_WIN"
____exports.NewbieTaskTrigger.BUY = 3
____exports.NewbieTaskTrigger[____exports.NewbieTaskTrigger.BUY] = "BUY"
____exports.NewbieTaskTrigger.BUY_USE_DIAMOND = 4
____exports.NewbieTaskTrigger[____exports.NewbieTaskTrigger.BUY_USE_DIAMOND] = "BUY_USE_DIAMOND"
____exports.NewbieTaskManager = __TS__Class()
local NewbieTaskManager = ____exports.NewbieTaskManager
NewbieTaskManager.name = "NewbieTaskManager"
function NewbieTaskManager.prototype.____constructor(self)
end
function NewbieTaskManager.prototype.init(self)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil or data.taskId == 0 then
        archive.statInfo.data.newbieTaskInfo = {taskId = newbieTaskConfigMap_group[1][1].id, count = 0, completed = false}
    elseif data ~= nil and data.completed then
        self:nextTask()
    end
end
function NewbieTaskManager.prototype.receiveReward(self)
    if not self:canGetReward() then
        return
    end
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return
    end
    if data.completed then
        return
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    if currentConfig == nil then
        return
    end
    do
        local i = 0
        while i < #currentConfig.propId do
            local p = currentConfig.propId[i + 1]
            local n = currentConfig.num[i + 1] or 1
            rewardManager:rewardItem(p.id, n)
            i = i + 1
        end
    end
    self:nextTask()
end
function NewbieTaskManager.prototype.getCurrentTask(self)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return nil
    end
    if data.completed then
        return nil
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    return currentConfig
end
function NewbieTaskManager.prototype.getCurrentTaskProgress(self)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return {current = 0, need = 0}
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    if currentConfig == nil then
        return {current = data.count, need = 0}
    end
    local count = data.count
    if currentConfig.condition1 == 5 then
        local ____opt_0 = archive.statData.sevenDayInfo
        count = ____opt_0 and ____opt_0.signin_count or 1
    elseif currentConfig.condition1 == 6 then
        count = archive.achieveInfo:getCompleteCount()
    elseif currentConfig.condition1 == 7 then
        count = archive.statData.highestSeasonScore
    end
    return {current = count, need = currentConfig.conditionArg1}
end
function NewbieTaskManager.prototype.nextTask(self)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return
    end
    if data.completed then
        return
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    if currentConfig == nil then
        return
    end
    local tasks = newbieTaskConfigMap_group[currentConfig.group]
    local currentPos = __TS__ArrayIndexOf(tasks, currentConfig)
    local nextConfig = tasks[currentPos + 1 + 1]
    if nextConfig ~= nil then
        data.taskId = nextConfig.id
        data.count = 0
        data.completed = false
    else
        data.completed = true
    end
end
function NewbieTaskManager.prototype.canGetReward(self)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return false
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    if currentConfig == nil then
        return false
    end
    if data.completed then
        return false
    end
    local progress = self:getCurrentTaskProgress()
    if progress.current >= progress.need then
        return true
    end
    return false
end
function NewbieTaskManager.prototype.trigger(self, ____type)
    local data = archive.statInfo.data.newbieTaskInfo
    if data == nil then
        return
    end
    local currentConfig = newbieTaskConfigMap[data.taskId]
    if currentConfig == nil then
        return
    end
    if data.completed then
        return
    end
    if currentConfig.condition1 == ____type then
        data.count = data.count + 1
    end
end
____exports.newbieTaskManager = __TS__New(____exports.NewbieTaskManager)
return ____exports
