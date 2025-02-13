local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 15,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 17,["43"] = 17,["44"] = 18,["45"] = 18,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["51"] = 20,["52"] = 21,["53"] = 213,["54"] = 20,["55"] = 29,["56"] = 30,["57"] = 31,["59"] = 33,["61"] = 37,["62"] = 37,["63"] = 37,["64"] = 37,["65"] = 40,["66"] = 40,["67"] = 40,["68"] = 40,["69"] = 41,["70"] = 41,["71"] = 41,["72"] = 41,["73"] = 42,["74"] = 42,["75"] = 42,["77"] = 42,["78"] = 42,["80"] = 42,["81"] = 41,["82"] = 41,["83"] = 29,["84"] = 47,["85"] = 48,["86"] = 49,["87"] = 51,["88"] = 51,["89"] = 51,["90"] = 51,["91"] = 51,["92"] = 53,["93"] = 54,["94"] = 55,["95"] = 55,["96"] = 55,["97"] = 54,["98"] = 56,["99"] = 56,["100"] = 56,["101"] = 54,["102"] = 53,["103"] = 59,["104"] = 60,["105"] = 60,["106"] = 60,["107"] = 59,["108"] = 61,["109"] = 61,["110"] = 61,["111"] = 59,["112"] = 62,["113"] = 62,["114"] = 62,["115"] = 59,["116"] = 53,["117"] = 65,["118"] = 66,["119"] = 66,["120"] = 66,["121"] = 65,["122"] = 67,["123"] = 67,["124"] = 67,["125"] = 65,["126"] = 68,["127"] = 68,["128"] = 68,["129"] = 65,["130"] = 53,["131"] = 53,["133"] = 72,["134"] = 72,["135"] = 74,["136"] = 75,["137"] = 76,["138"] = 77,["139"] = 77,["140"] = 77,["141"] = 77,["142"] = 78,["143"] = 78,["144"] = 78,["145"] = 78,["146"] = 79,["147"] = 79,["148"] = 79,["149"] = 79,["150"] = 80,["151"] = 80,["152"] = 80,["153"] = 80,["154"] = 81,["155"] = 81,["156"] = 81,["157"] = 82,["158"] = 83,["159"] = 84,["161"] = 81,["162"] = 81,["163"] = 72,["167"] = 90,["168"] = 90,["169"] = 91,["170"] = 92,["171"] = 93,["172"] = 93,["173"] = 93,["174"] = 93,["175"] = 94,["176"] = 94,["177"] = 94,["178"] = 94,["179"] = 94,["180"] = 94,["181"] = 94,["182"] = 95,["183"] = 95,["184"] = 95,["185"] = 95,["186"] = 95,["187"] = 95,["188"] = 95,["189"] = 96,["190"] = 96,["191"] = 96,["192"] = 96,["193"] = 96,["194"] = 96,["195"] = 96,["196"] = 98,["197"] = 98,["198"] = 98,["199"] = 98,["200"] = 98,["201"] = 98,["202"] = 98,["203"] = 98,["204"] = 99,["205"] = 99,["206"] = 99,["207"] = 100,["208"] = 100,["209"] = 100,["210"] = 99,["211"] = 99,["212"] = 90,["215"] = 104,["216"] = 104,["217"] = 104,["218"] = 105,["219"] = 104,["220"] = 104,["221"] = 47,["222"] = 109,["223"] = 110,["224"] = 112,["225"] = 113,["227"] = 115,["229"] = 118,["230"] = 118,["231"] = 118,["232"] = 118,["233"] = 122,["234"] = 122,["235"] = 122,["236"] = 122,["237"] = 122,["238"] = 122,["239"] = 122,["240"] = 122,["241"] = 131,["242"] = 132,["243"] = 133,["244"] = 133,["245"] = 133,["246"] = 132,["247"] = 134,["248"] = 134,["249"] = 134,["250"] = 132,["251"] = 135,["252"] = 135,["253"] = 135,["254"] = 132,["255"] = 131,["256"] = 138,["257"] = 139,["258"] = 139,["259"] = 139,["260"] = 138,["261"] = 140,["262"] = 140,["263"] = 140,["264"] = 138,["265"] = 131,["266"] = 131,["267"] = 145,["268"] = 146,["269"] = 146,["270"] = 143,["271"] = 148,["272"] = 149,["273"] = 149,["274"] = 143,["275"] = 151,["276"] = 152,["277"] = 152,["278"] = 143,["279"] = 154,["280"] = 155,["281"] = 155,["282"] = 143,["283"] = 157,["284"] = 158,["285"] = 158,["286"] = 158,["287"] = 157,["288"] = 159,["289"] = 159,["290"] = 159,["291"] = 157,["292"] = 160,["293"] = 160,["294"] = 160,["295"] = 157,["296"] = 143,["297"] = 163,["298"] = 164,["299"] = 164,["300"] = 164,["301"] = 163,["302"] = 165,["303"] = 165,["304"] = 165,["305"] = 163,["306"] = 143,["307"] = 168,["308"] = 169,["309"] = 169,["310"] = 143,["311"] = 143,["313"] = 173,["314"] = 173,["315"] = 175,["316"] = 176,["317"] = 177,["318"] = 178,["319"] = 178,["320"] = 178,["321"] = 178,["322"] = 179,["323"] = 179,["324"] = 179,["325"] = 179,["326"] = 180,["327"] = 180,["328"] = 180,["329"] = 180,["330"] = 181,["331"] = 181,["332"] = 181,["333"] = 181,["334"] = 182,["335"] = 182,["336"] = 182,["337"] = 183,["338"] = 184,["340"] = 186,["341"] = 182,["342"] = 182,["343"] = 173,["347"] = 189,["348"] = 189,["349"] = 190,["350"] = 191,["351"] = 192,["352"] = 192,["353"] = 192,["354"] = 192,["355"] = 193,["356"] = 193,["357"] = 193,["358"] = 193,["359"] = 193,["360"] = 193,["361"] = 193,["362"] = 194,["363"] = 194,["364"] = 194,["365"] = 194,["366"] = 194,["367"] = 194,["368"] = 194,["369"] = 195,["370"] = 195,["371"] = 195,["372"] = 195,["373"] = 195,["374"] = 195,["375"] = 195,["376"] = 197,["377"] = 197,["378"] = 197,["379"] = 197,["380"] = 197,["381"] = 197,["382"] = 197,["383"] = 197,["384"] = 198,["385"] = 198,["386"] = 198,["387"] = 199,["388"] = 199,["389"] = 199,["390"] = 198,["391"] = 198,["392"] = 189,["395"] = 203,["396"] = 203,["397"] = 203,["398"] = 204,["399"] = 203,["400"] = 203,["401"] = 207,["402"] = 207,["403"] = 207,["404"] = 208,["405"] = 207,["406"] = 207,["407"] = 109,["408"] = 215,["409"] = 216,["410"] = 217,["411"] = 219,["412"] = 219,["413"] = 221,["414"] = 222,["415"] = 222,["417"] = 219,["418"] = 219,["419"] = 227,["420"] = 228,["421"] = 229,["422"] = 230,["423"] = 231,["424"] = 232,["425"] = 233,["426"] = 234,["427"] = 235,["428"] = 236,["430"] = 239,["431"] = 240,["432"] = 241,["433"] = 242,["434"] = 243,["436"] = 215,["437"] = 251,["438"] = 252,["439"] = 253,["440"] = 256,["441"] = 257,["442"] = 258,["443"] = 259,["444"] = 260,["445"] = 261,["446"] = 262,["447"] = 263,["448"] = 264,["449"] = 265,["451"] = 268,["452"] = 269,["453"] = 270,["454"] = 271,["455"] = 272,["457"] = 251,["458"] = 280,["459"] = 281,["460"] = 282,["461"] = 280});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local ShopType = ____LocalData.ShopType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____DCouponPage = include("logic.dialogs.storages.shop.DCouponPage")
local DCouponPage = ____DCouponPage.DCouponPage
local ____DLotteryPage = include("logic.dialogs.storages.shop.DLotteryPage")
local DLotteryPage = ____DLotteryPage.DLotteryPage
local ____DMonthCardPage = include("logic.dialogs.storages.shop.DMonthCardPage")
local DMonthCardPage = ____DMonthCardPage.DMonthCardPage
local ____DPointPage = include("logic.dialogs.storages.shop.DPointPage")
local DPointPage = ____DPointPage.DPointPage
local ____DShopDecorationPage = include("logic.dialogs.storages.shop.DShopDecorationPage")
local DShopDecorationPage = ____DShopDecorationPage.DShopDecorationPage
local ____DShopHeroPage = include("logic.dialogs.storages.shop.DShopHeroPage")
local DShopHeroPage = ____DShopHeroPage.DShopHeroPage
local ____DShopItemPage = include("logic.dialogs.storages.shop.DShopItemPage")
local DShopItemPage = ____DShopItemPage.DShopItemPage
local ____DShopKKPage = include("logic.dialogs.storages.shop.DShopKKPage")
local DShopKKPage = ____DShopKKPage.DShopKKPage
local ____DShopSkinPage = include("logic.dialogs.storages.shop.DShopSkinPage")
local DShopSkinPage = ____DShopSkinPage.DShopSkinPage
local ____DTopUpPage = include("logic.dialogs.storages.shop.DTopUpPage")
local DTopUpPage = ____DTopUpPage.DTopUpPage
____exports.DShop = __TS__Class()
local DShop = ____exports.DShop
DShop.name = "DShop"
__TS__ClassExtends(DShop, Dialog)
function DShop.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 1}
    self.eventId = 0
end
function DShop.prototype.onCreate(self)
    if steamUtils:isSteam() then
        self:initSteamView()
    else
        self:initKKView()
    end
    self:bindVisible(
        "bg.bg_lottery",
        function() return not debugEnv.hidePayInSteam and localData.shop.tabIndex == ShopType.STEAM_LOTTERY end
    )
    self:bindVisible(
        "root.btns.code",
        function() return steamUtils:isSteam() end
    )
    self:bindAction(
        "root.btns.code.exchange",
        "左键-点击",
        function()
            local ____shopManager_4 = shopManager
            local ____shopManager_code_5 = shopManager.code
            local ____opt_0 = self:getUI("root.btns.code.codeInput")
            if ____opt_0 ~= nil then
                local ____opt_1 = self:getUI("root.btns.code.codeInput")
                ____opt_0 = __TS__StringTrim(____opt_1 and ____opt_1:get_input_field_content())
            end
            ____shopManager_code_5(____shopManager_4, ____opt_0 or "")
        end
    )
end
function DShop.prototype.initKKView(self)
    localData.shop.subTabIndex = 1
    localData.shop.tabIndex = ShopType["Hero_金币商城英雄"]
    local list = {
        function() return i18n["local"](i18n, "金币商城") end,
        function() return i18n["local"](i18n, "钻石商城") end,
        function() return i18n["local"](i18n, "KK商城") end
    }
    local list2 = {
        {
            {
                name = function() return i18n["local"](i18n, "英雄商城") end,
                tab = ShopType["Hero_金币商城英雄"]
            },
            {
                name = function() return i18n["local"](i18n, "道具商城") end,
                tab = ShopType["Item_金币商城道具"]
            }
        },
        {
            {
                name = function() return i18n["local"](i18n, "皮肤商城") end,
                tab = ShopType["Skin_钻石商城皮肤"]
            },
            {
                name = function() return i18n["local"](i18n, "装饰商城") end,
                tab = ShopType["Decoration_钻石商城装饰"]
            },
            {
                name = function() return i18n["local"](i18n, "道具商城") end,
                tab = ShopType["Item_钻石商城道具"]
            }
        },
        {
            {
                name = function() return i18n["local"](i18n, "U币") end,
                tab = ShopType["KK_KK商城U币"]
            },
            {
                name = function() return i18n["local"](i18n, "金币") end,
                tab = ShopType["KK_KK商城金币"]
            },
            {
                name = function() return i18n["local"](i18n, "积分") end,
                tab = ShopType["KK_KK商城积分"]
            }
        }
    }
    do
        local index = 0
        while index < 7 do
            local element = list[index + 1]
            local idx = index + 1
            local path = "root.btns.btns.btn_" .. tostring(idx)
            self:bindText(
                path .. ".normal.title",
                function() return element and element(nil) or "" end
            )
            self:bindText(
                path .. ".select.title",
                function() return element and element(nil) or "" end
            )
            self:bindVisible(
                path,
                function() return element ~= nil end
            )
            self:bindVisible(
                path .. ".select",
                function() return localData.shop.subTabIndex == idx end
            )
            self:bindClick(
                path,
                function()
                    if localData.shop.subTabIndex ~= idx then
                        localData.shop.subTabIndex = idx
                        localData.shop.tabIndex = list2[localData.shop.subTabIndex][1].tab
                    end
                end
            )
            index = index + 1
        end
    end
    do
        local j = 0
        while j < 5 do
            local path3 = "root.subs.btns.item_" .. tostring(j + 1)
            local idx2 = j
            self:bindVisible(
                path3,
                function() return list2[localData.shop.subTabIndex][idx2 + 1] ~= nil end
            )
            self:bindText(
                path3 .. ".normal.title",
                function()
                    local ____opt_10 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_10 and ____opt_10:name() or ""
                end
            )
            self:bindText(
                path3 .. ".select.title",
                function()
                    local ____opt_12 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_12 and ____opt_12:name() or ""
                end
            )
            self:bindText(
                path3 .. ".hover.title",
                function()
                    local ____opt_14 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_14 and ____opt_14:name() or ""
                end
            )
            self:bindVisible(
                path3 .. ".select",
                function()
                    local ____localData_shop_tabIndex_18 = localData.shop.tabIndex
                    local ____opt_16 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____localData_shop_tabIndex_18 == (____opt_16 and ____opt_16.tab or 0)
                end
            )
            self:bindClick(
                path3,
                function()
                    local ____localData_shop_21 = localData.shop
                    local ____opt_19 = list2[localData.shop.subTabIndex][idx2 + 1]
                    ____localData_shop_21.tabIndex = ____opt_19 and ____opt_19.tab
                end
            )
            j = j + 1
        end
    end
    self:bindVisible(
        "root.subs.tip",
        function()
            return localData.shop.subTabIndex == 2
        end
    )
end
function DShop.prototype.initSteamView(self)
    localData.shop.subTabIndex = 1
    if debugEnv.hidePayInSteam then
        localData.shop.tabIndex = ShopType["Skin_钻石商城皮肤"]
    else
        localData.shop.tabIndex = ShopType.STEAM_MONTH_CARD
    end
    local list = debugEnv.hidePayInSteam and ({
        function() return i18n["local"](i18n, "钻石兑换") end,
        function() return i18n["local"](i18n, "金币兑换") end
    }) or ({
        function() return i18n["local"](i18n, "赞助") end,
        function() return i18n["local"](i18n, "寻宝") end,
        function() return i18n["local"](i18n, "充值") end,
        function() return i18n["local"](i18n, "点券商城") end,
        function() return i18n["local"](i18n, "钻石兑换") end,
        function() return i18n["local"](i18n, "金币兑换") end,
        function() return i18n["local"](i18n, "积分兑换") end
    })
    local list2 = debugEnv.hidePayInSteam and ({
        {
            {
                name = function() return i18n["local"](i18n, "皮肤兑换") end,
                tab = ShopType["Skin_钻石商城皮肤"]
            },
            {
                name = function() return i18n["local"](i18n, "装饰兑换") end,
                tab = ShopType["Decoration_钻石商城装饰"]
            },
            {
                name = function() return i18n["local"](i18n, "道具兑换") end,
                tab = ShopType["Item_钻石商城道具"]
            }
        },
        {
            {
                name = function() return i18n["local"](i18n, "英雄兑换") end,
                tab = ShopType["Hero_金币商城英雄"]
            },
            {
                name = function() return i18n["local"](i18n, "道具兑换") end,
                tab = ShopType["Item_金币商城道具"]
            }
        }
    }) or ({
        {{
            name = function() return i18n["local"](i18n, "赞助") end,
            tab = ShopType.STEAM_MONTH_CARD
        }},
        {{
            name = function() return i18n["local"](i18n, "寻宝") end,
            tab = ShopType.STEAM_LOTTERY
        }},
        {{
            name = function() return i18n["local"](i18n, "充值") end,
            tab = ShopType.STEAM_TOP_UP
        }},
        {{
            name = function() return i18n["local"](i18n, "点券商城") end,
            tab = ShopType.STEAM_COUPON
        }},
        {
            {
                name = function() return i18n["local"](i18n, "皮肤兑换") end,
                tab = ShopType["Skin_钻石商城皮肤"]
            },
            {
                name = function() return i18n["local"](i18n, "装饰兑换") end,
                tab = ShopType["Decoration_钻石商城装饰"]
            },
            {
                name = function() return i18n["local"](i18n, "道具兑换") end,
                tab = ShopType["Item_钻石商城道具"]
            }
        },
        {
            {
                name = function() return i18n["local"](i18n, "英雄兑换") end,
                tab = ShopType["Hero_金币商城英雄"]
            },
            {
                name = function() return i18n["local"](i18n, "道具兑换") end,
                tab = ShopType["Item_金币商城道具"]
            }
        },
        {{
            name = function() return i18n["local"](i18n, "积分兑换") end,
            tab = ShopType.STEAM_POINT
        }}
    })
    do
        local index = 0
        while index < 7 do
            local element = list[index + 1]
            local idx = index + 1
            local path = "root.btns.btns.btn_" .. tostring(idx)
            self:bindText(
                path .. ".normal.title",
                function() return element and element(nil) or "" end
            )
            self:bindText(
                path .. ".select.title",
                function() return element and element(nil) or "" end
            )
            self:bindVisible(
                path,
                function() return element ~= nil end
            )
            self:bindVisible(
                path .. ".select",
                function() return localData.shop.subTabIndex == idx end
            )
            self:bindClick(
                path,
                function()
                    if localData.shop.subTabIndex ~= idx then
                        localData.shop.subTabIndex = idx
                    end
                    localData.shop.tabIndex = list2[localData.shop.subTabIndex][1].tab
                end
            )
            index = index + 1
        end
    end
    do
        local j = 0
        while j < 5 do
            local path3 = "root.subs.btns.item_" .. tostring(j + 1)
            local idx2 = j
            self:bindVisible(
                path3,
                function() return list2[localData.shop.subTabIndex][idx2 + 1] ~= nil end
            )
            self:bindText(
                path3 .. ".normal.title",
                function()
                    local ____opt_26 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_26 and ____opt_26:name() or ""
                end
            )
            self:bindText(
                path3 .. ".select.title",
                function()
                    local ____opt_28 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_28 and ____opt_28:name() or ""
                end
            )
            self:bindText(
                path3 .. ".hover.title",
                function()
                    local ____opt_30 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____opt_30 and ____opt_30:name() or ""
                end
            )
            self:bindVisible(
                path3 .. ".select",
                function()
                    local ____localData_shop_tabIndex_34 = localData.shop.tabIndex
                    local ____opt_32 = list2[localData.shop.subTabIndex][idx2 + 1]
                    return ____localData_shop_tabIndex_34 == (____opt_32 and ____opt_32.tab or 0)
                end
            )
            self:bindClick(
                path3,
                function()
                    local ____localData_shop_37 = localData.shop
                    local ____opt_35 = list2[localData.shop.subTabIndex][idx2 + 1]
                    ____localData_shop_37.tabIndex = ____opt_35 and ____opt_35.tab
                end
            )
            j = j + 1
        end
    end
    self:bindVisible(
        "root.subs.tip",
        function()
            return localData.shop.subTabIndex == 4
        end
    )
    self:bindVisible(
        "root.subs",
        function()
            return #list2[localData.shop.subTabIndex] > 1
        end
    )
end
function DShop.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Shop_商店"]
    self:watch(
        function() return localData.setting.tabIndex == SettingType["Shop_商店"] end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
    if steamUtils:isSteam() then
        dialogs:show(DShopHeroPage, {})
        dialogs:show(DShopSkinPage, {})
        dialogs:show(DShopDecorationPage, {})
        dialogs:show(DShopItemPage, {})
        dialogs:show(DTopUpPage, {})
        dialogs:show(DLotteryPage, {})
        dialogs:show(DMonthCardPage, {})
        dialogs:show(DPointPage, {})
        dialogs:show(DCouponPage, {})
    else
        dialogs:show(DShopHeroPage, {})
        dialogs:show(DShopSkinPage, {})
        dialogs:show(DShopDecorationPage, {})
        dialogs:show(DShopItemPage, {})
        dialogs:show(DShopKKPage, {})
    end
end
function DShop.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
    if steamUtils:isSteam() then
        dialogs:hide(DShopHeroPage)
        dialogs:hide(DShopSkinPage)
        dialogs:hide(DShopDecorationPage)
        dialogs:hide(DShopItemPage)
        dialogs:hide(DTopUpPage)
        dialogs:hide(DLotteryPage)
        dialogs:hide(DMonthCardPage)
        dialogs:hide(DPointPage)
        dialogs:hide(DCouponPage)
    else
        dialogs:hide(DShopHeroPage)
        dialogs:hide(DShopSkinPage)
        dialogs:hide(DShopDecorationPage)
        dialogs:hide(DShopItemPage)
        dialogs:hide(DShopKKPage)
    end
end
function DShop.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
return ____exports
