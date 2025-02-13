local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 12,["26"] = 12,["27"] = 12,["28"] = 12,["30"] = 12,["31"] = 13,["32"] = 17,["33"] = 19,["34"] = 12,["35"] = 21,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 29,["40"] = 30,["41"] = 28,["42"] = 28,["43"] = 32,["44"] = 32,["45"] = 32,["46"] = 33,["47"] = 34,["48"] = 34,["50"] = 35,["51"] = 32,["52"] = 32,["53"] = 38,["54"] = 38,["55"] = 38,["56"] = 39,["57"] = 40,["58"] = 40,["59"] = 40,["60"] = 41,["62"] = 41,["64"] = 40,["65"] = 40,["66"] = 45,["67"] = 46,["68"] = 47,["70"] = 49,["71"] = 50,["73"] = 52,["75"] = 38,["76"] = 38,["77"] = 56,["78"] = 56,["79"] = 56,["80"] = 57,["81"] = 58,["82"] = 56,["83"] = 56,["84"] = 61,["85"] = 61,["86"] = 61,["87"] = 62,["88"] = 63,["89"] = 61,["90"] = 61,["91"] = 21});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SceneUI = include("framework.ui.SceneUI")
local SceneUI = ____SceneUI.SceneUI
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____PetTitleConfig = include("logic.configs.PetTitleConfig")
local petTitleConfigMap = ____PetTitleConfig.petTitleConfigMap
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.SceneNickname = __TS__Class()
local SceneNickname = ____exports.SceneNickname
SceneNickname.name = "SceneNickname"
__TS__ClassExtends(SceneNickname, SceneUI)
function SceneNickname.prototype.____constructor(self, ...)
    SceneUI.prototype.____constructor(self, ...)
    self.data = {}
    self.unitId = 0
    self.ui = nil
end
function SceneNickname.prototype.onCreate(self)
    self:bindText(
        "root.nickname",
        function()
            local petdata = datas.players[self.playerId]:getSingle(PetData)
            return petdata.nickname
        end
    )
    self:bindImage(
        "root.rank",
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            if GameUtils.isSingleGame and playerData.isAI then
                return 0
            end
            return ladderTournamentManager:getRankByPlayerId(self.playerId).config.icon
        end
    )
    self:bindSeq(
        "root.title",
        function()
            local archiveData = datas.players[self.playerId]:getSingle(InGameArchiveData)
            y3.ltimer.wait(
                0.2,
                function()
                    local ____opt_0 = self:getUINoError("root.title")
                    if ____opt_0 ~= nil then
                        ____opt_0:play_ui_sequence(true)
                    end
                end
            )
            local config = petTitleConfigMap[archiveData.petInfo.current_title]
            if config == nil then
                return 0
            end
            if i18n.currentLang == "en" and config.enIcon ~= 0 then
                return config.enIcon
            else
                return config.icon
            end
        end
    )
    self:bindSize(
        "root.title",
        function()
            local archiveData = datas.players[self.playerId]:getSingle(InGameArchiveData)
            return petTitleConfigMap[archiveData.petInfo.current_title] or ({width = 1, height = 1})
        end
    )
    self:bindVisible(
        "root.arrow",
        function()
            local petData = datas.players[self.playerId]:getSingle(PetData)
            return (petData and petData.selBigBlessArrow) == true
        end
    )
end
return ____exports
