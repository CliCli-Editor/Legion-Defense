local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 3,["12"] = 3,["14"] = 20,["15"] = 20,["16"] = 20,["18"] = 22,["19"] = 24,["20"] = 27,["21"] = 28,["22"] = 29,["24"] = 26,["25"] = 34,["27"] = 39,["29"] = 44});
local ____exports = {}
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local playerIdList = ____PlayerUtils.playerIdList
local ____IndexableDatas = include("framework.data.IndexableDatas")
local IndexableDatas = ____IndexableDatas.IndexableDatas
--- 所有养成数据由此管理
____exports.DataManager = __TS__Class()
local DataManager = ____exports.DataManager
DataManager.name = "DataManager"
function DataManager.prototype.____constructor(self)
    self.players = {}
    self.global = __TS__New(IndexableDatas)
    local initList = __TS__ArrayConcat(playerIdList, PlayerId.LEFT_KING, PlayerId.RIGHT_KING, PlayerId.JUDGE)
    for ____, playerId in ipairs(initList) do
        self.players[playerId] = __TS__New(IndexableDatas)
    end
end
local dataManager = __TS__New(____exports.DataManager)
--- 可写数据对象，注意必须在controller中使用
____exports.writeableDatas = dataManager
--- 只读数据对象，用于在ui中展示数据
____exports.datas = dataManager
return ____exports
