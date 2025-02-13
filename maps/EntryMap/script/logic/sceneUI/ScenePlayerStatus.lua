local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 6,["14"] = 6,["15"] = 6,["16"] = 6,["18"] = 6,["19"] = 7,["20"] = 11,["21"] = 13,["22"] = 6,["23"] = 15,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 17,["28"] = 18,["29"] = 16,["30"] = 16,["31"] = 20,["32"] = 20,["33"] = 20,["34"] = 21,["35"] = 22,["36"] = 20,["37"] = 20,["38"] = 24,["39"] = 24,["40"] = 24,["41"] = 25,["42"] = 26,["43"] = 24,["44"] = 24,["45"] = 28,["46"] = 28,["47"] = 28,["48"] = 29,["49"] = 30,["50"] = 28,["51"] = 28,["52"] = 15});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SceneUI = include("framework.ui.SceneUI")
local SceneUI = ____SceneUI.SceneUI
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
____exports.ScenePlayerStatus = __TS__Class()
local ScenePlayerStatus = ____exports.ScenePlayerStatus
ScenePlayerStatus.name = "ScenePlayerStatus"
__TS__ClassExtends(ScenePlayerStatus, SceneUI)
function ScenePlayerStatus.prototype.____constructor(self, ...)
    SceneUI.prototype.____constructor(self, ...)
    self.data = {}
    self.unitId = 0
    self.ui = nil
end
function ScenePlayerStatus.prototype.onCreate(self)
    self:bindVisible(
        "root.status_1",
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            return playerData.fightStatus == 0
        end
    )
    self:bindVisible(
        "root.status_2",
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            return playerData.fightStatus == 1
        end
    )
    self:bindVisible(
        "root.status_3",
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            return playerData.fightStatus == 2
        end
    )
    self:bindVisible(
        "root.status_4",
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            return playerData.fightStatus == 3
        end
    )
end
return ____exports
