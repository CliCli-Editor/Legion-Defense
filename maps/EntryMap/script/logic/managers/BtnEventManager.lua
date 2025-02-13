local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 10,["23"] = 10,["24"] = 10,["26"] = 10,["27"] = 12,["28"] = 13,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 15,["40"] = 12,["41"] = 18,["42"] = 19,["45"] = 20,["46"] = 18,["47"] = 23,["48"] = 24,["49"] = 25,["50"] = 26,["51"] = 27,["52"] = 28,["54"] = 31,["55"] = 23,["56"] = 33,["57"] = 34,["58"] = 36,["59"] = 37,["61"] = 39,["62"] = 40,["63"] = 41,["64"] = 42,["66"] = 44,["67"] = 33});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.BtnEventManager = __TS__Class()
local BtnEventManager = ____exports.BtnEventManager
BtnEventManager.name = "BtnEventManager"
function BtnEventManager.prototype.____constructor(self)
end
function BtnEventManager.refreshGenre(self)
    if not self:checkChooseRefresh() then
        return
    end
    GameAPI.play_ui_comp_anim_new(
        LOCAL.PLAYER.handle,
        "f7edb19d-e653-4a5e-9a3d-85fb771fc019",
        0,
        nil,
        1,
        0
    )
    genreController.refreshGenreList:execute(LOCAL.PLAYER_ID)
end
function BtnEventManager.randomGenre(self)
    if not self:checkChooseRandom() then
        return
    end
    genreController.chooseRandom:execute(LOCAL.PLAYER_ID)
end
function BtnEventManager.checkChooseRandom(self)
    local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
    local price = math.floor(defaultConfig["流派随机消耗"] * (1 + playerData.cardRandomBuy) + playerData.cardRandomBuyValue + 0.5)
    if playerData.gold < price then
        DTips:show(i18n["local"](i18n, "金币不足"))
        return false
    end
    return true
end
function BtnEventManager.checkChooseRefresh(self)
    local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
    if playerData.cardRefreshFreeCount > 0 then
        return true
    end
    local price = GameUtils:getGenreRefreshPrice(LOCAL.PLAYER_ID)
    if playerData.gold < price then
        DTips:show(i18n["local"](i18n, "金币不足"))
        return false
    end
    return true
end
return ____exports
