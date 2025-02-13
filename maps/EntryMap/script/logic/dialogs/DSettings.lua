local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 7,["17"] = 7,["18"] = 8,["19"] = 8,["20"] = 8,["21"] = 10,["22"] = 10,["23"] = 11,["24"] = 11,["25"] = 12,["26"] = 12,["27"] = 13,["28"] = 13,["29"] = 14,["30"] = 14,["31"] = 15,["32"] = 15,["33"] = 16,["34"] = 16,["35"] = 17,["36"] = 17,["37"] = 18,["38"] = 18,["39"] = 19,["40"] = 19,["41"] = 26,["42"] = 26,["43"] = 27,["44"] = 27,["45"] = 30,["46"] = 30,["47"] = 31,["48"] = 31,["49"] = 32,["50"] = 32,["51"] = 33,["52"] = 33,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["58"] = 35,["59"] = 36,["60"] = 35,["61"] = 38,["62"] = 39,["63"] = 38,["64"] = 42,["65"] = 44,["66"] = 44,["67"] = 44,["68"] = 45,["69"] = 44,["70"] = 44,["71"] = 48,["72"] = 48,["73"] = 48,["74"] = 48,["76"] = 49,["78"] = 48,["79"] = 48,["80"] = 53,["81"] = 53,["82"] = 53,["83"] = 53,["84"] = 54,["85"] = 55,["86"] = 55,["88"] = 53,["89"] = 53,["90"] = 57,["91"] = 57,["92"] = 57,["93"] = 58,["94"] = 57,["95"] = 57,["96"] = 62,["97"] = 62,["98"] = 62,["99"] = 62,["100"] = 63,["101"] = 62,["102"] = 62,["103"] = 65,["104"] = 65,["105"] = 65,["106"] = 66,["107"] = 65,["108"] = 65,["109"] = 70,["110"] = 70,["111"] = 70,["112"] = 70,["113"] = 71,["114"] = 70,["115"] = 70,["116"] = 73,["117"] = 73,["118"] = 73,["119"] = 74,["120"] = 73,["121"] = 73,["122"] = 78,["123"] = 78,["124"] = 78,["125"] = 78,["126"] = 79,["127"] = 78,["128"] = 78,["129"] = 81,["130"] = 81,["131"] = 81,["132"] = 82,["133"] = 81,["134"] = 81,["135"] = 86,["136"] = 86,["137"] = 86,["138"] = 86,["139"] = 87,["140"] = 86,["141"] = 86,["142"] = 89,["143"] = 89,["144"] = 89,["145"] = 90,["146"] = 89,["147"] = 89,["148"] = 94,["149"] = 94,["150"] = 94,["151"] = 94,["152"] = 95,["153"] = 94,["154"] = 94,["155"] = 97,["156"] = 97,["157"] = 97,["158"] = 98,["159"] = 97,["160"] = 97,["161"] = 102,["162"] = 102,["163"] = 102,["164"] = 102,["165"] = 103,["166"] = 102,["167"] = 102,["168"] = 105,["169"] = 105,["170"] = 105,["171"] = 106,["172"] = 105,["173"] = 105,["174"] = 110,["175"] = 110,["176"] = 110,["177"] = 110,["178"] = 111,["179"] = 110,["180"] = 110,["181"] = 113,["182"] = 113,["183"] = 113,["184"] = 114,["185"] = 113,["186"] = 113,["187"] = 118,["188"] = 118,["189"] = 118,["190"] = 118,["191"] = 119,["192"] = 118,["193"] = 118,["194"] = 121,["195"] = 121,["196"] = 121,["197"] = 122,["198"] = 121,["199"] = 121,["200"] = 126,["201"] = 126,["202"] = 126,["203"] = 126,["204"] = 127,["205"] = 126,["206"] = 126,["207"] = 130,["208"] = 130,["209"] = 130,["210"] = 132,["211"] = 130,["212"] = 130,["213"] = 141,["214"] = 141,["215"] = 141,["216"] = 141,["217"] = 142,["218"] = 141,["219"] = 141,["220"] = 145,["221"] = 145,["222"] = 145,["223"] = 148,["224"] = 145,["225"] = 145,["226"] = 151,["227"] = 151,["228"] = 151,["229"] = 152,["230"] = 151,["231"] = 151,["232"] = 157,["233"] = 157,["234"] = 157,["235"] = 157,["236"] = 158,["237"] = 159,["238"] = 157,["239"] = 157,["240"] = 163,["241"] = 163,["242"] = 163,["243"] = 164,["244"] = 163,["245"] = 163,["246"] = 166,["247"] = 166,["248"] = 166,["249"] = 166,["250"] = 167,["251"] = 167,["252"] = 167,["254"] = 167,["255"] = 167,["257"] = 167,["258"] = 166,["259"] = 166,["260"] = 171,["261"] = 171,["262"] = 171,["263"] = 172,["264"] = 171,["265"] = 171,["266"] = 174,["267"] = 174,["268"] = 174,["269"] = 175,["270"] = 174,["271"] = 174,["272"] = 179,["273"] = 179,["274"] = 179,["275"] = 180,["276"] = 179,["277"] = 179,["278"] = 182,["279"] = 182,["280"] = 182,["281"] = 182,["282"] = 183,["283"] = 182,["284"] = 182,["285"] = 186,["286"] = 186,["287"] = 186,["288"] = 187,["289"] = 186,["290"] = 186,["291"] = 189,["292"] = 189,["293"] = 189,["294"] = 189,["295"] = 190,["296"] = 191,["298"] = 193,["300"] = 189,["301"] = 189,["302"] = 198,["303"] = 198,["304"] = 198,["305"] = 199,["306"] = 198,["307"] = 198,["308"] = 201,["309"] = 201,["310"] = 201,["311"] = 202,["312"] = 201,["313"] = 201,["314"] = 204,["315"] = 204,["316"] = 204,["317"] = 204,["318"] = 205,["319"] = 204,["320"] = 204,["321"] = 208,["322"] = 208,["323"] = 208,["324"] = 208,["325"] = 209,["326"] = 209,["327"] = 209,["328"] = 209,["329"] = 212,["330"] = 42,["331"] = 215,["332"] = 215});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DWiki = include("logic.dialogs.storages.DWiki")
local DWiki = ____DWiki.DWiki
local ____DHero = include("logic.dialogs.storages.DHero")
local DHero = ____DHero.DHero
local ____DShop = include("logic.dialogs.storages.DShop")
local DShop = ____DShop.DShop
local ____DBag = include("logic.dialogs.storages.DBag")
local DBag = ____DBag.DBag
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____DRank = include("logic.dialogs.storages.DRank")
local DRank = ____DRank.DRank
local ____DDecoration = include("logic.dialogs.storages.DDecoration")
local DDecoration = ____DDecoration.DDecoration
local ____DAchieve = include("logic.dialogs.storages.DAchieve")
local DAchieve = ____DAchieve.DAchieve
local ____DLife = include("logic.dialogs.storages.DLife")
local DLife = ____DLife.DLife
local ____DMatch = include("logic.dialogs.DMatch")
local DMatch = ____DMatch.DMatch
local ____DHonor = include("logic.dialogs.DHonor")
local DHonor = ____DHonor.DHonor
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
____exports.DSettings = __TS__Class()
local DSettings = ____exports.DSettings
DSettings.name = "DSettings"
__TS__ClassExtends(DSettings, Dialog)
function DSettings.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DSettings.prototype.onCreate(self)
    self:initView()
end
function DSettings.prototype.initView(self)
    self:bindVisible(
        "root",
        function()
            return localData.setting.tabIndex ~= SettingType["Null_空"]
        end
    )
    self:bindAction(
        "root.left.list.exit",
        "左键-点击",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                localData.setting.tabIndex = SettingType["Null_空"]
            end)
        end
    )
    self:bindAction(
        "root.left.list.setting",
        "左键-点击",
        function()
            local ui = self:getUI("setting")
            if ui ~= nil then
                ui:set_visible(true)
            end
        end
    )
    self:bindVisible(
        "root.left.list.setting.select",
        function()
            return false
        end
    )
    self:bindAction(
        "root.left.list.heroes",
        "左键-点击",
        function()
            dialogs:showRepeat(DHero, {})
        end
    )
    self:bindVisible(
        "root.left.list.heroes.select",
        function()
            return localData.setting.tabIndex == SettingType["Hero_英雄"]
        end
    )
    self:bindAction(
        "root.left.list.wiki",
        "左键-点击",
        function()
            dialogs:showRepeat(DWiki, {})
        end
    )
    self:bindVisible(
        "root.left.list.wiki.select",
        function()
            return localData.setting.tabIndex == SettingType["Wiki_图鉴"]
        end
    )
    self:bindAction(
        "root.left.list.shop",
        "左键-点击",
        function()
            dialogs:showRepeat(DShop, {})
        end
    )
    self:bindVisible(
        "root.left.list.shop.select",
        function()
            return localData.setting.tabIndex == SettingType["Shop_商店"]
        end
    )
    self:bindAction(
        "root.left.list.rank",
        "左键-点击",
        function()
            dialogs:showRepeat(DRank, {})
        end
    )
    self:bindVisible(
        "root.left.list.rank.select",
        function()
            return localData.setting.tabIndex == SettingType["Rank_排行榜"]
        end
    )
    self:bindAction(
        "root.left.list.bag",
        "左键-点击",
        function()
            dialogs:showRepeat(DBag, {})
        end
    )
    self:bindVisible(
        "root.left.list.bag.select",
        function()
            return localData.setting.tabIndex == SettingType["Bag_背包"]
        end
    )
    self:bindAction(
        "root.left.list.decoration",
        "左键-点击",
        function()
            dialogs:showRepeat(DDecoration, {})
        end
    )
    self:bindVisible(
        "root.left.list.decoration.select",
        function()
            return localData.setting.tabIndex == SettingType["Decoration_装饰"]
        end
    )
    self:bindAction(
        "root.left.list.achieve",
        "左键-点击",
        function()
            dialogs:showRepeat(DAchieve, {})
        end
    )
    self:bindVisible(
        "root.left.list.achieve.select",
        function()
            return localData.setting.tabIndex == SettingType["Achieve_成就"]
        end
    )
    self:bindAction(
        "root.left.list.life",
        "左键-点击",
        function()
            dialogs:showRepeat(DLife, {})
        end
    )
    self:bindVisible(
        "root.left.list.life.select",
        function()
            return localData.setting.tabIndex == SettingType["Life_生涯"]
        end
    )
    self:bindAction(
        "root.left.list.match",
        "左键-点击",
        function()
            dialogs:showRepeat(DMatch, {})
        end
    )
    self:bindVisible(
        "root.left.list.match",
        function()
            return false
        end
    )
    self:bindAction(
        "root.left.list.honor",
        "左键-点击",
        function()
            dialogs:showRepeat(DHonor, {})
        end
    )
    self:bindVisible(
        "root.left.list.honor",
        function()
            return false
        end
    )
    self:bindVisible(
        "root.left.list.honor.select",
        function()
            return localData.setting.tabIndex == SettingType["Honor_荣誉"]
        end
    )
    self:bindAction(
        "root.right.close",
        "左键-点击",
        function()
            dialogs:showRepeat(DWiki, {})
            localData.setting.tabIndex = SettingType["Null_空"]
        end
    )
    self:bindVisible(
        "root.right.code",
        function()
            return not steamUtils:isSteam()
        end
    )
    self:bindAction(
        "root.right.code.exchange",
        "左键-点击",
        function()
            local ____shopManager_6 = shopManager
            local ____shopManager_code_7 = shopManager.code
            local ____opt_2 = self:getUI("root.right.code.codeInput")
            if ____opt_2 ~= nil then
                local ____opt_3 = self:getUI("root.right.code.codeInput")
                ____opt_2 = __TS__StringTrim(____opt_3 and ____opt_3:get_input_field_content())
            end
            ____shopManager_code_7(____shopManager_6, ____opt_2 or "")
        end
    )
    self:bindVisible(
        "root.top",
        function()
            return localData.setting.tabIndex ~= SettingType["Null_空"] and localData.setting.tabIndex ~= SettingType["Wiki_图鉴"] and localData.setting.tabIndex ~= SettingType["Match_比赛"] and localData.setting.tabIndex ~= SettingType["Honor_荣誉"]
        end
    )
    self:bindVisible(
        "root.right",
        function()
            return localData.setting.tabIndex ~= SettingType["Null_空"] and localData.setting.tabIndex ~= SettingType["Wiki_图鉴"] and localData.setting.tabIndex ~= SettingType["Match_比赛"] and localData.setting.tabIndex ~= SettingType["Honor_荣誉"]
        end
    )
    self:bindText(
        "root.right.gold.value",
        function()
            return "" .. tostring(archive.playerInfo.gold)
        end
    )
    self:bindAction(
        "root.right.gold.add",
        "左键-点击",
        function()
            DTips:show(i18n["local"](i18n, "可在对局结算时获得"))
        end
    )
    self:bindText(
        "root.right.diamond.value",
        function()
            return "" .. tostring(archive.playerInfo.diamond)
        end
    )
    self:bindAction(
        "root.right.diamond.add",
        "左键-点击",
        function()
            if steamUtils:isSteam() then
                steamTopUpManager:showTopUp()
            else
                DTips:show(i18n["local"](i18n, "可在对局结算时获得"))
            end
        end
    )
    self:bindVisible(
        "root.right.coupon",
        function()
            return steamUtils:isSteam() and not debugEnv.hidePayInSteam
        end
    )
    self:bindText(
        "root.right.coupon.value",
        function()
            return "" .. tostring(steamTopUpManager.data.count)
        end
    )
    self:bindAction(
        "root.right.coupon.add",
        "左键-点击",
        function()
            steamTopUpManager:showTopUp()
        end
    )
    self:bindImage(
        "root.right.gold.icon",
        function() return getPropIcon(nil, 1) end
    )
    self:bindImage(
        "root.right.diamond.icon",
        function() return getPropIcon(nil, 2) end
    )
    self:initDebug()
end
function DSettings.prototype.initDebug(self)
end
return ____exports
