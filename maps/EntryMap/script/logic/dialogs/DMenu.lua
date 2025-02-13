local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 20,["33"] = 20,["34"] = 21,["35"] = 21,["36"] = 23,["37"] = 23,["38"] = 23,["39"] = 23,["41"] = 23,["42"] = 24,["43"] = 23,["44"] = 26,["45"] = 27,["46"] = 26,["47"] = 30,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 33,["53"] = 32,["54"] = 32,["55"] = 36,["56"] = 36,["57"] = 36,["58"] = 37,["59"] = 36,["60"] = 36,["61"] = 41,["62"] = 41,["63"] = 41,["64"] = 41,["66"] = 42,["67"] = 43,["69"] = 41,["70"] = 41,["71"] = 47,["72"] = 47,["73"] = 47,["74"] = 47,["75"] = 48,["76"] = 49,["77"] = 49,["79"] = 50,["80"] = 47,["81"] = 47,["82"] = 54,["83"] = 54,["84"] = 54,["85"] = 54,["86"] = 55,["87"] = 56,["88"] = 54,["89"] = 54,["90"] = 60,["91"] = 60,["92"] = 60,["93"] = 60,["94"] = 61,["95"] = 62,["96"] = 60,["97"] = 60,["98"] = 66,["99"] = 66,["100"] = 66,["101"] = 66,["102"] = 67,["103"] = 68,["104"] = 66,["105"] = 66,["106"] = 72,["107"] = 72,["108"] = 72,["109"] = 72,["110"] = 73,["111"] = 74,["112"] = 72,["113"] = 72,["114"] = 78,["115"] = 78,["116"] = 78,["117"] = 78,["118"] = 79,["119"] = 80,["120"] = 78,["121"] = 78,["122"] = 84,["123"] = 84,["124"] = 84,["125"] = 84,["126"] = 85,["127"] = 86,["128"] = 84,["129"] = 84,["130"] = 90,["131"] = 90,["132"] = 90,["133"] = 90,["134"] = 91,["135"] = 92,["136"] = 90,["137"] = 90,["138"] = 96,["139"] = 96,["140"] = 96,["141"] = 96,["142"] = 97,["143"] = 98,["144"] = 96,["145"] = 96,["146"] = 30});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local DialogStatus = ____Dialog.DialogStatus
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DWiki = include("logic.dialogs.storages.DWiki")
local DWiki = ____DWiki.DWiki
local ____DHero = include("logic.dialogs.storages.DHero")
local DHero = ____DHero.DHero
local ____DShop = include("logic.dialogs.storages.DShop")
local DShop = ____DShop.DShop
local ____DBag = include("logic.dialogs.storages.DBag")
local DBag = ____DBag.DBag
local ____DRank = include("logic.dialogs.storages.DRank")
local DRank = ____DRank.DRank
local ____DDecoration = include("logic.dialogs.storages.DDecoration")
local DDecoration = ____DDecoration.DDecoration
local ____DAchieve = include("logic.dialogs.storages.DAchieve")
local DAchieve = ____DAchieve.DAchieve
local ____DLife = include("logic.dialogs.storages.DLife")
local DLife = ____DLife.DLife
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DMenu = __TS__Class()
local DMenu = ____exports.DMenu
DMenu.name = "DMenu"
__TS__ClassExtends(DMenu, Dialog)
function DMenu.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DMenu.prototype.onCreate(self)
    self:initView()
end
function DMenu.prototype.initView(self)
    self:bindAction(
        "root",
        "鼠标-移出",
        function()
            self:hide()
        end
    )
    self:uiBindVisible(
        y3.ui.get_ui(LOCAL.PLAYER, "LogoPanel.kk_logo"),
        function()
            return not steamUtils:isSteam() and self.status ~= DialogStatus.Showed
        end
    )
    self:bindAction(
        "root.grid.exit",
        "左键-点击",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                gameModeUtils:exitGameBackToHall()
                self:hide()
            end)
        end
    )
    self:bindAction(
        "root.grid.setting",
        "左键-点击",
        function()
            local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DSettings.setting")
            if ui ~= nil then
                ui:set_visible(true)
            end
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.heroes",
        "左键-点击",
        function()
            dialogs:showRepeat(DHero, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.wiki",
        "左键-点击",
        function()
            dialogs:showRepeat(DWiki, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.shop",
        "左键-点击",
        function()
            dialogs:showRepeat(DShop, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.rank",
        "左键-点击",
        function()
            dialogs:showRepeat(DRank, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.bag",
        "左键-点击",
        function()
            dialogs:showRepeat(DBag, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.decoration",
        "左键-点击",
        function()
            dialogs:showRepeat(DDecoration, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.achieve",
        "左键-点击",
        function()
            dialogs:showRepeat(DAchieve, {})
            self:hide()
        end
    )
    self:bindAction(
        "root.grid.life",
        "左键-点击",
        function()
            dialogs:showRepeat(DLife, {})
            self:hide()
        end
    )
end
return ____exports
