local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 48,["50"] = 48,["51"] = 48,["52"] = 48,["54"] = 48,["55"] = 49,["56"] = 48,["57"] = 54,["58"] = 55,["59"] = 54,["60"] = 58,["62"] = 59,["63"] = 59,["64"] = 59,["65"] = 59,["66"] = 60,["67"] = 60,["68"] = 60,["69"] = 60,["70"] = 60,["71"] = 61,["73"] = 58,["74"] = 65,["75"] = 65,["76"] = 67,["77"] = 67,["78"] = 70,["79"] = 71,["80"] = 72,["81"] = 73,["82"] = 74,["83"] = 74,["84"] = 74,["85"] = 74,["86"] = 77,["87"] = 78,["88"] = 79,["89"] = 80,["90"] = 81,["91"] = 82,["92"] = 83,["93"] = 84,["94"] = 85,["95"] = 86,["97"] = 89,["98"] = 90,["99"] = 91,["100"] = 92,["101"] = 93,["102"] = 94,["103"] = 95,["104"] = 97,["105"] = 98,["106"] = 99,["107"] = 100,["108"] = 102,["109"] = 103,["111"] = 105,["113"] = 108,["114"] = 109,["115"] = 110,["116"] = 110,["117"] = 110,["118"] = 110,["119"] = 110,["120"] = 111,["121"] = 112,["123"] = 114,["125"] = 116,["126"] = 117,["127"] = 118,["128"] = 120,["129"] = 121,["130"] = 122,["131"] = 123,["132"] = 125,["133"] = 126,["134"] = 127,["135"] = 127,["136"] = 127,["137"] = 127,["138"] = 127,["139"] = 128,["140"] = 129,["142"] = 131,["145"] = 134,["146"] = 135,["147"] = 136,["149"] = 139,["150"] = 139,["151"] = 139,["152"] = 139,["153"] = 139,["154"] = 139,["155"] = 139,["156"] = 139,["157"] = 139,["158"] = 139,["159"] = 139,["160"] = 139,["161"] = 139,["162"] = 139,["163"] = 139,["164"] = 139,["165"] = 78,["166"] = 157,["167"] = 158,["168"] = 158,["169"] = 158,["170"] = 159,["171"] = 158,["172"] = 158,["173"] = 162,["174"] = 162,["175"] = 162,["176"] = 163,["177"] = 164,["178"] = 164,["180"] = 165,["181"] = 165,["184"] = 167,["185"] = 168,["187"] = 170,["188"] = 162,["189"] = 162,["190"] = 173,["191"] = 77,["193"] = 178,["194"] = 178,["195"] = 179,["196"] = 180,["197"] = 181,["198"] = 182,["199"] = 183,["200"] = 183,["201"] = 183,["202"] = 184,["203"] = 183,["204"] = 183,["206"] = 187,["207"] = 187,["208"] = 188,["209"] = 189,["210"] = 190,["211"] = 192,["212"] = 192,["213"] = 192,["214"] = 192,["215"] = 192,["216"] = 192,["217"] = 192,["218"] = 194,["219"] = 194,["220"] = 194,["221"] = 194,["222"] = 194,["223"] = 194,["224"] = 194,["225"] = 196,["226"] = 196,["227"] = 196,["228"] = 196,["229"] = 196,["230"] = 196,["231"] = 196,["232"] = 197,["233"] = 197,["234"] = 197,["235"] = 197,["236"] = 197,["237"] = 197,["238"] = 197,["239"] = 199,["240"] = 199,["241"] = 199,["242"] = 199,["243"] = 199,["244"] = 199,["245"] = 199,["247"] = 199,["248"] = 199,["249"] = 199,["250"] = 201,["251"] = 201,["252"] = 201,["253"] = 201,["254"] = 201,["255"] = 201,["256"] = 201,["258"] = 201,["259"] = 201,["260"] = 201,["261"] = 203,["262"] = 203,["263"] = 203,["264"] = 203,["265"] = 203,["266"] = 203,["267"] = 203,["268"] = 205,["269"] = 205,["270"] = 205,["271"] = 205,["272"] = 205,["273"] = 205,["274"] = 205,["275"] = 206,["276"] = 206,["277"] = 206,["278"] = 206,["279"] = 206,["280"] = 206,["281"] = 206,["282"] = 207,["283"] = 207,["284"] = 207,["285"] = 207,["286"] = 207,["287"] = 207,["288"] = 207,["289"] = 208,["290"] = 208,["291"] = 208,["292"] = 208,["293"] = 208,["294"] = 208,["295"] = 208,["296"] = 209,["297"] = 209,["298"] = 209,["299"] = 209,["300"] = 211,["301"] = 211,["302"] = 211,["303"] = 211,["304"] = 211,["305"] = 211,["306"] = 211,["308"] = 211,["309"] = 211,["310"] = 211,["311"] = 213,["312"] = 213,["313"] = 213,["314"] = 214,["315"] = 213,["316"] = 213,["317"] = 218,["318"] = 218,["319"] = 218,["320"] = 219,["321"] = 219,["322"] = 219,["324"] = 220,["325"] = 220,["326"] = 220,["328"] = 221,["329"] = 221,["330"] = 221,["332"] = 222,["333"] = 222,["334"] = 222,["336"] = 223,["337"] = 223,["338"] = 223,["340"] = 224,["341"] = 218,["342"] = 218,["343"] = 226,["344"] = 226,["345"] = 226,["346"] = 227,["347"] = 227,["348"] = 227,["350"] = 228,["351"] = 228,["352"] = 228,["354"] = 229,["355"] = 229,["356"] = 229,["358"] = 230,["359"] = 230,["360"] = 230,["362"] = 231,["363"] = 231,["364"] = 231,["366"] = 232,["367"] = 226,["368"] = 226,["369"] = 235,["370"] = 235,["371"] = 235,["372"] = 236,["373"] = 236,["374"] = 236,["376"] = 237,["377"] = 237,["378"] = 237,["380"] = 238,["381"] = 238,["382"] = 238,["384"] = 239,["385"] = 239,["386"] = 239,["388"] = 240,["389"] = 240,["390"] = 240,["392"] = 241,["393"] = 235,["394"] = 235,["395"] = 243,["396"] = 243,["397"] = 243,["398"] = 244,["399"] = 244,["400"] = 244,["402"] = 245,["403"] = 245,["404"] = 245,["406"] = 246,["407"] = 246,["408"] = 246,["410"] = 247,["411"] = 247,["412"] = 247,["414"] = 248,["415"] = 248,["416"] = 248,["418"] = 249,["419"] = 243,["420"] = 243,["421"] = 252,["422"] = 252,["423"] = 252,["424"] = 252,["425"] = 253,["428"] = 254,["429"] = 255,["430"] = 256,["431"] = 257,["433"] = 260,["437"] = 264,["438"] = 266,["439"] = 267,["440"] = 268,["444"] = 272,["445"] = 273,["446"] = 274,["447"] = 275,["448"] = 276,["449"] = 277,["450"] = 278,["452"] = 280,["455"] = 283,["457"] = 252,["458"] = 252,["459"] = 286,["460"] = 286,["461"] = 286,["462"] = 287,["465"] = 288,["466"] = 289,["467"] = 290,["468"] = 290,["469"] = 290,["470"] = 290,["471"] = 290,["472"] = 290,["473"] = 290,["474"] = 290,["475"] = 286,["476"] = 295,["477"] = 296,["478"] = 286,["479"] = 286,["480"] = 299,["481"] = 187,["484"] = 178,["487"] = 70,["488"] = 304,["489"] = 305,["490"] = 306,["491"] = 307,["492"] = 308,["494"] = 310,["495"] = 304});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigList = ____GoodsConfig.goodsConfigList
local goodsConfigMap = ____GoodsConfig.goodsConfigMap
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap = ____SkinConfig.skinConfigMap
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DShopSkinPage = __TS__Class()
local DShopSkinPage = ____exports.DShopSkinPage
DShopSkinPage.name = "DShopSkinPage"
__TS__ClassExtends(DShopSkinPage, Dialog)
function DShopSkinPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DShopSkinPage.prototype.onCreate(self)
    self:initView()
end
function DShopSkinPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.shop.tabIndex == ShopType["Skin_钻石商城皮肤"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.shop.tabIndex == ShopType["Skin_钻石商城皮肤"] end,
            function(____, v) return v end,
            true
        ))
        self:initDetails()
    end)
end
function DShopSkinPage.prototype.onShow(self)
end
function DShopSkinPage.prototype.onHide(self)
end
function DShopSkinPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local list = __TS__ArrayFilter(
        goodsConfigList,
        function(____, a) return (a.pos == 0 or not steamUtils:isSteam() and a.pos == 1 or steamUtils:isSteam() and a.pos == 2) and (a.type == 3 or a.type == 5) and a.lockType ~= 2 end
    )
    local dataList = self:compute(function()
        local function func(____, idx)
            local cfg = list[idx + 1]
            local shopInfo = archive.shopData.shops["" .. tostring(cfg.id)]
            local cur_count = shopInfo ~= nil and shopInfo.buy_count or 0
            local lock = false
            local lock_tips = ""
            if cfg.unlockType == 2 then
                lock = (LOCAL.PLAYER.handle:api_get_map_level() or 0) < (cfg.unlockValue[1] or 1)
                lock_tips = i18n:format("游戏局数达到${level}局解锁", {level = cfg.unlockValue[1]})
            end
            local name = ""
            local skinName = ""
            local icon = 0
            local quality = 1
            if cfg.type == 3 then
                local skin = skinConfigMap[cfg.propId.indexId]
                local hero = heroConfigMap[skin.hero]
                name = hero.showName.value
                skinName = cfg.name.value
                quality = skin.quality
                icon = skin.pic
                if i18n.currentLang == "en" and skin.enPic ~= 0 then
                    icon = skin.enPic
                else
                    icon = skin.pic
                end
                if cfg.unlockType == 3 then
                    local info = archive.playerData.heroes["" .. tostring(skin.hero)]
                    local ____opt_0 = info
                    local find = ____opt_0 and __TS__ArrayFindIndex(
                        info and info.unlock_skin,
                        function(____, a) return a == skin.id end
                    )
                    if find ~= nil and find ~= -1 then
                        lock = true
                    end
                    lock_tips = i18n["local"](i18n, "加群获取 891946889")
                end
            elseif cfg.type == 5 then
                local skin = skinMercenaryConfigMap[cfg.propId.indexId]
                local hero = mercenaryConfigMap[skin.mercenaryId]
                name = hero.showName.value
                skinName = cfg.name.value
                quality = skin.quality
                icon = skin.pic
                if cfg.unlockType == 3 then
                    local info = archive.mercenaryData.skins["" .. tostring(skin.mercenaryId)]
                    local ____opt_4 = info
                    local find = ____opt_4 and __TS__ArrayFindIndex(
                        info and info.unlock_skin,
                        function(____, a) return a == skin.id end
                    )
                    if find ~= nil and find ~= -1 then
                        lock = true
                    end
                    lock_tips = i18n["local"](i18n, "加群获取 891946889")
                end
            end
            local limit_count = cfg.limitCount
            if limit_count == 0 then
                limit_count = 99999999
            end
            return {
                cfg = cfg,
                visible = true,
                show_limit_label = false,
                cur_count = cur_count,
                limit_count = limit_count,
                icon = icon,
                price = cfg.price,
                name = name,
                skinName = skinName,
                quality = quality,
                lock = lock,
                lock_tips = lock_tips,
                sell_out = cur_count >= limit_count,
                isLimit = cur_count >= limit_count
            }
        end
        local result = {}
        __TS__ArrayForEach(
            list,
            function(____, a, idx)
                result[#result + 1] = func(nil, idx)
            end
        )
        __TS__ArraySort(
            result,
            function(____, a, b)
                if b.sell_out ~= a.sell_out then
                    if b.sell_out then
                        return -1
                    end
                    if a.sell_out then
                        return 1
                    end
                end
                if a.quality == b.quality then
                    return a.cfg.type - b.cfg.type
                end
                return b.quality - a.quality
            end
        )
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local childs = element:get_childs()
            local path1 = "root.contents.list." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #dataList.value >= temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = (path1 .. ".") .. cld:get_name()
                    local temp_idx = idx
                    self:bindVisible(
                        path,
                        function()
                            local ____opt_8 = dataList.value[temp_idx + 1]
                            return ____opt_8 and ____opt_8.visible
                        end
                    )
                    self:bindImage(
                        path .. ".info.icon",
                        function()
                            local ____opt_10 = dataList.value[temp_idx + 1]
                            return ____opt_10 and ____opt_10.icon or 0
                        end
                    )
                    self:bindText(
                        path .. ".info.name",
                        function()
                            local ____opt_12 = dataList.value[temp_idx + 1]
                            return ____opt_12 and ____opt_12.name or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.skinName",
                        function()
                            local ____opt_14 = dataList.value[temp_idx + 1]
                            return ____opt_14 and ____opt_14.skinName or ""
                        end
                    )
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_16 = dataList.value[temp_idx + 1]
                            local ____temp_18 = ____opt_16 and ____opt_16.isLimit
                            if ____temp_18 == nil then
                                ____temp_18 = false
                            end
                            return ____temp_18
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_19 = dataList.value[temp_idx + 1]
                            local ____temp_21 = ____opt_19 and ____opt_19.lock
                            if ____temp_21 == nil then
                                ____temp_21 = false
                            end
                            return ____temp_21
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_22 = dataList.value[temp_idx + 1]
                            return ____opt_22 and ____opt_22.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_24 = dataList.value[temp_idx + 1]
                            return "" .. tostring(____opt_24 and ____opt_24.price or "0")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_26 = dataList.value[temp_idx + 1]
                            return (____opt_26 and ____opt_26.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_28 = dataList.value[temp_idx + 1]
                            return (____opt_28 and ____opt_28.price or 0) == 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.icon",
                        function()
                            local ____opt_30 = dataList.value[temp_idx + 1]
                            return (____opt_30 and ____opt_30.price or 0) > 0
                        end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function() return getPropIcon(nil, 2) end
                    )
                    self:bindVisible(
                        path .. ".buy.disable",
                        function()
                            local ____opt_32 = dataList.value[temp_idx + 1]
                            local ____temp_34 = ____opt_32 and ____opt_32.isLimit
                            if ____temp_34 == nil then
                                ____temp_34 = false
                            end
                            return ____temp_34
                        end
                    )
                    self:bindText(
                        path .. ".info.sellout.sellout.image_78.text",
                        function()
                            return i18n["local"](i18n, "已购买")
                        end
                    )
                    self:bindImage(
                        path .. ".info.bg",
                        function()
                            local ____opt_35 = dataList.value[temp_idx + 1]
                            if (____opt_35 and ____opt_35.quality) == 0 then
                                return 134270568
                            end
                            local ____opt_37 = dataList.value[temp_idx + 1]
                            if (____opt_37 and ____opt_37.quality) == 1 then
                                return 134277873
                            end
                            local ____opt_39 = dataList.value[temp_idx + 1]
                            if (____opt_39 and ____opt_39.quality) == 2 then
                                return 134247885
                            end
                            local ____opt_41 = dataList.value[temp_idx + 1]
                            if (____opt_41 and ____opt_41.quality) == 3 then
                                return 134277993
                            end
                            local ____opt_43 = dataList.value[temp_idx + 1]
                            if (____opt_43 and ____opt_43.quality) == 4 then
                                return 134256318
                            end
                            return 134270568
                        end
                    )
                    self:bindImage(
                        path .. ".info.bg2",
                        function()
                            local ____opt_45 = dataList.value[temp_idx + 1]
                            if (____opt_45 and ____opt_45.quality) == 0 then
                                return 134249910
                            end
                            local ____opt_47 = dataList.value[temp_idx + 1]
                            if (____opt_47 and ____opt_47.quality) == 1 then
                                return 134263292
                            end
                            local ____opt_49 = dataList.value[temp_idx + 1]
                            if (____opt_49 and ____opt_49.quality) == 2 then
                                return 134255313
                            end
                            local ____opt_51 = dataList.value[temp_idx + 1]
                            if (____opt_51 and ____opt_51.quality) == 3 then
                                return 134257619
                            end
                            local ____opt_53 = dataList.value[temp_idx + 1]
                            if (____opt_53 and ____opt_53.quality) == 4 then
                                return 134247032
                            end
                            return 134249910
                        end
                    )
                    self:bindTextColor(
                        path .. ".info.skinName",
                        function()
                            local ____opt_55 = dataList.value[temp_idx + 1]
                            if (____opt_55 and ____opt_55.quality) == 0 then
                                return UIUtils:toColor("c7cbd9")
                            end
                            local ____opt_57 = dataList.value[temp_idx + 1]
                            if (____opt_57 and ____opt_57.quality) == 1 then
                                return UIUtils:toColor("a6c7ff")
                            end
                            local ____opt_59 = dataList.value[temp_idx + 1]
                            if (____opt_59 and ____opt_59.quality) == 2 then
                                return UIUtils:toColor("c9acff")
                            end
                            local ____opt_61 = dataList.value[temp_idx + 1]
                            if (____opt_61 and ____opt_61.quality) == 3 then
                                return UIUtils:toColor("ffd3a3")
                            end
                            local ____opt_63 = dataList.value[temp_idx + 1]
                            if (____opt_63 and ____opt_63.quality) == 4 then
                                return UIUtils:toColor("ffb9b9")
                            end
                            return UIUtils:toColor("c7cbd9")
                        end
                    )
                    self:bindTextColor(
                        path .. ".info.name",
                        function()
                            local ____opt_65 = dataList.value[temp_idx + 1]
                            if (____opt_65 and ____opt_65.quality) == 0 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            local ____opt_67 = dataList.value[temp_idx + 1]
                            if (____opt_67 and ____opt_67.quality) == 1 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            local ____opt_69 = dataList.value[temp_idx + 1]
                            if (____opt_69 and ____opt_69.quality) == 2 then
                                return UIUtils:toColor("f22fff")
                            end
                            local ____opt_71 = dataList.value[temp_idx + 1]
                            if (____opt_71 and ____opt_71.quality) == 3 then
                                return UIUtils:toColor("fff8ee")
                            end
                            local ____opt_73 = dataList.value[temp_idx + 1]
                            if (____opt_73 and ____opt_73.quality) == 4 then
                                return UIUtils:toColor("fff8ee")
                            end
                            return UIUtils:toColor("ecf2ff")
                        end
                    )
                    self:bindAction(
                        path .. ".buy",
                        "左键-点击",
                        function()
                            if dataList.value[temp_idx + 1] == nil then
                                return
                            end
                            local cfg = dataList.value[temp_idx + 1].cfg
                            if cfg.unlockType == 3 then
                                if not self:have(cfg.id) then
                                    UIUtils:gotoQQ()
                                else
                                    DTips:show(i18n["local"](i18n, "已拥有"))
                                end
                                return
                            end
                            if cfg.unlockType == 1 then
                            elseif cfg.unlockType == 2 then
                                if (LOCAL.PLAYER.handle:api_get_map_level() or 0) < (cfg.unlockValue[1] or 1) then
                                    DTips:show(i18n:format("无法购买，需要地图等级达到${level}级", {level = cfg.unlockValue[1] or 1}))
                                    return
                                end
                            end
                            if shopManager:isLimit(cfg.id) then
                                DTips:show(i18n["local"](i18n, "无法购买"))
                            elseif not shopManager:isEnough(cfg.id) then
                                if cfg.cost == 1 or cfg.cost == 0 then
                                    DTips:show(i18n["local"](i18n, "金币不足"))
                                elseif cfg.cost == 2 then
                                    DTips:show(i18n["local"](i18n, "钻石不足"))
                                else
                                    DTips:show(i18n["local"](i18n, "道具不足"))
                                end
                            else
                                shopManager:buy(cfg.id)
                            end
                        end
                    )
                    self:bindMouse(
                        path .. ".info",
                        function()
                            if dataList.value[temp_idx + 1] == nil then
                                return
                            end
                            local cfg = dataList.value[temp_idx + 1].cfg
                            local ui = self:getUI(path)
                            dialogs:showRepeat(
                                DHelpItem,
                                {
                                    x = ui:get_absolute_x(),
                                    y = ui:get_absolute_y() + 20,
                                    des = cfg.des.value
                                }
                            )
                        end,
                        function()
                            dialogs:hide(DHelpItem)
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
end
function DShopSkinPage.prototype.have(self, id)
    local cfg = goodsConfigMap[id]
    if cfg.type == 2 then
        local hero = archive.playerData.heroes["" .. tostring(cfg.propId.indexId)]
        return hero and hero.isHave or false
    end
    return false
end
return ____exports
