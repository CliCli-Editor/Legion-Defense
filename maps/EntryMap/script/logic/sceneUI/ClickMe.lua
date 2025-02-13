local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 5,["16"] = 9,["17"] = 9,["18"] = 9,["19"] = 9,["21"] = 9,["22"] = 10,["23"] = 14,["24"] = 16,["25"] = 9,["26"] = 18,["27"] = 19,["29"] = 19,["31"] = 20,["33"] = 20,["35"] = 21,["36"] = 22,["37"] = 22,["38"] = 22,["39"] = 23,["40"] = 23,["42"] = 24,["43"] = 24,["45"] = 25,["46"] = 22,["47"] = 22,["48"] = 28,["49"] = 28,["50"] = 28,["51"] = 29,["53"] = 29,["55"] = 28,["56"] = 28,["57"] = 32,["58"] = 32,["59"] = 32,["60"] = 33,["61"] = 32,["62"] = 32,["63"] = 35,["64"] = 35,["65"] = 35,["66"] = 36,["67"] = 35,["68"] = 35,["69"] = 18});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SceneUI = include("framework.ui.SceneUI")
local SceneUI = ____SceneUI.SceneUI
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
____exports.ClickMe = __TS__Class()
local ClickMe = ____exports.ClickMe
ClickMe.name = "ClickMe"
__TS__ClassExtends(ClickMe, SceneUI)
function ClickMe.prototype.____constructor(self, ...)
    SceneUI.prototype.____constructor(self, ...)
    self.data = {}
    self.unitId = 0
    self.ui = nil
end
function ClickMe.prototype.onCreate(self)
    local ____opt_0 = self:getUI("root.clickMe_zh")
    if ____opt_0 ~= nil then
        ____opt_0:play_ui_sequence(true, 0.02)
    end
    local ____opt_2 = self:getUI("root.clickMe_en")
    if ____opt_2 ~= nil then
        ____opt_2:play_ui_sequence(true, 0.02)
    end
    local gameData = datas.global:getSingle(GameData)
    self:bindVisible(
        "root",
        function()
            if gameData.gameStatus ~= GameStatus["准备回合"] then
                return false
            end
            if y3.player.LOCAL_PLAYER.id ~= self.playerId then
                return false
            end
            return true
        end
    )
    y3.ltimer.wait(
        15,
        function()
            local ____opt_4 = self:getUI("root.guide")
            if ____opt_4 ~= nil then
                ____opt_4:set_visible(false)
            end
        end
    )
    self:bindVisible(
        "root.clickMe_zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "root.clickMe_en",
        function()
            return i18n.currentLang == "en"
        end
    )
end
return ____exports
