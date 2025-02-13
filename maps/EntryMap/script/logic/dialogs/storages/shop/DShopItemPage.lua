local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 16,["41"] = 42,["42"] = 42,["43"] = 42,["44"] = 42,["46"] = 42,["47"] = 43,["48"] = 42,["49"] = 48,["50"] = 49,["51"] = 48,["52"] = 52,["54"] = 53,["55"] = 53,["56"] = 53,["57"] = 53,["58"] = 55,["59"] = 55,["60"] = 55,["61"] = 55,["62"] = 56,["64"] = 52,["65"] = 60,["66"] = 60,["67"] = 62,["68"] = 62,["69"] = 65,["70"] = 66,["71"] = 67,["72"] = 68,["73"] = 71,["74"] = 72,["75"] = 72,["76"] = 72,["77"] = 73,["78"] = 74,["80"] = 76,["81"] = 77,["83"] = 90,["84"] = 91,["86"] = 93,["87"] = 72,["88"] = 72,["89"] = 95,["90"] = 96,["91"] = 97,["92"] = 98,["93"] = 99,["94"] = 100,["95"] = 101,["96"] = 102,["97"] = 103,["99"] = 106,["100"] = 107,["101"] = 108,["102"] = 109,["103"] = 110,["105"] = 113,["106"] = 114,["107"] = 115,["109"] = 118,["110"] = 118,["111"] = 118,["112"] = 118,["113"] = 118,["114"] = 118,["115"] = 118,["116"] = 118,["117"] = 118,["118"] = 118,["119"] = 118,["120"] = 118,["121"] = 118,["122"] = 118,["123"] = 118,["124"] = 118,["125"] = 95,["126"] = 136,["127"] = 137,["128"] = 137,["129"] = 137,["130"] = 138,["131"] = 137,["132"] = 137,["133"] = 141,["134"] = 141,["135"] = 141,["136"] = 142,["137"] = 143,["138"] = 143,["140"] = 144,["141"] = 144,["144"] = 146,["145"] = 147,["147"] = 149,["148"] = 141,["149"] = 141,["150"] = 152,["151"] = 71,["153"] = 155,["154"] = 155,["155"] = 156,["156"] = 157,["157"] = 158,["158"] = 159,["159"] = 160,["160"] = 160,["161"] = 160,["162"] = 161,["163"] = 160,["164"] = 160,["166"] = 164,["167"] = 164,["168"] = 165,["169"] = 166,["170"] = 167,["171"] = 169,["172"] = 169,["173"] = 169,["174"] = 169,["175"] = 171,["176"] = 171,["177"] = 171,["178"] = 171,["179"] = 171,["180"] = 171,["181"] = 171,["182"] = 173,["183"] = 173,["184"] = 173,["185"] = 173,["186"] = 173,["187"] = 173,["188"] = 173,["189"] = 174,["190"] = 174,["191"] = 174,["192"] = 174,["193"] = 174,["194"] = 174,["195"] = 174,["196"] = 176,["197"] = 176,["198"] = 176,["199"] = 176,["200"] = 176,["201"] = 176,["202"] = 176,["204"] = 176,["205"] = 176,["206"] = 176,["207"] = 178,["208"] = 178,["209"] = 178,["210"] = 178,["211"] = 178,["212"] = 178,["213"] = 178,["215"] = 178,["216"] = 178,["217"] = 178,["218"] = 180,["219"] = 180,["220"] = 180,["221"] = 180,["222"] = 180,["223"] = 180,["224"] = 180,["225"] = 182,["226"] = 182,["227"] = 182,["228"] = 182,["229"] = 182,["230"] = 182,["231"] = 182,["232"] = 183,["233"] = 183,["234"] = 183,["235"] = 183,["236"] = 183,["237"] = 183,["238"] = 183,["239"] = 184,["240"] = 184,["241"] = 184,["242"] = 184,["243"] = 184,["244"] = 184,["245"] = 184,["246"] = 185,["247"] = 185,["248"] = 185,["249"] = 185,["250"] = 185,["251"] = 185,["252"] = 185,["253"] = 186,["254"] = 186,["255"] = 186,["256"] = 187,["257"] = 188,["259"] = 190,["260"] = 186,["261"] = 186,["262"] = 193,["263"] = 193,["264"] = 193,["265"] = 193,["266"] = 193,["267"] = 193,["268"] = 193,["269"] = 195,["270"] = 195,["271"] = 195,["272"] = 196,["273"] = 196,["274"] = 196,["276"] = 197,["277"] = 197,["278"] = 197,["280"] = 198,["281"] = 198,["282"] = 198,["284"] = 199,["285"] = 199,["286"] = 199,["288"] = 200,["289"] = 200,["290"] = 200,["292"] = 201,["293"] = 195,["294"] = 195,["295"] = 204,["296"] = 204,["297"] = 204,["298"] = 204,["299"] = 205,["302"] = 206,["303"] = 207,["304"] = 209,["305"] = 210,["306"] = 211,["310"] = 215,["311"] = 216,["312"] = 217,["313"] = 218,["314"] = 219,["315"] = 220,["316"] = 221,["318"] = 223,["321"] = 226,["322"] = 227,["324"] = 204,["325"] = 204,["326"] = 231,["327"] = 231,["328"] = 231,["329"] = 232,["332"] = 233,["333"] = 234,["334"] = 235,["335"] = 235,["336"] = 235,["337"] = 235,["338"] = 235,["339"] = 235,["340"] = 235,["341"] = 235,["342"] = 231,["343"] = 240,["344"] = 241,["345"] = 231,["346"] = 231,["347"] = 244,["348"] = 164,["351"] = 155,["354"] = 65});
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
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local getPropQuality = ____PropUtils.getPropQuality
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DShopItemPage = __TS__Class()
local DShopItemPage = ____exports.DShopItemPage
DShopItemPage.name = "DShopItemPage"
__TS__ClassExtends(DShopItemPage, Dialog)
function DShopItemPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DShopItemPage.prototype.onCreate(self)
    self:initView()
end
function DShopItemPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.shop.tabIndex == ShopType["Item_钻石商城道具"] or localData.shop.tabIndex == ShopType["Item_金币商城道具"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.shop.tabIndex == ShopType["Item_钻石商城道具"] or localData.shop.tabIndex == ShopType["Item_金币商城道具"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DShopItemPage.prototype.onShow(self)
end
function DShopItemPage.prototype.onHide(self)
end
function DShopItemPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local dataList = self:compute(function()
        local list = __TS__ArrayFilter(
            goodsConfigList,
            function(____, a)
                if not (a.pos == 0 or not steamUtils:isSteam() and a.pos == 1 or steamUtils:isSteam() and a.pos == 2) then
                    return false
                end
                if a.type ~= 10 or a.lockType == 2 then
                    return false
                end
                if localData.shop.tabIndex == ShopType["Item_钻石商城道具"] then
                    return a.cost == 2
                end
                return a.cost == 0 or a.cost == 1
            end
        )
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
            local icon = getPropIcon(nil, cfg.propId.id)
            local quality = getPropQuality(nil, cfg.propId)
            if cfg.type == 10 then
                name = cfg.name.value
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
                quality = quality,
                lock = lock,
                lock_tips = lock_tips,
                sell_out = cur_count >= limit_count,
                isLimit = cur_count >= limit_count,
                count = cfg.propCount
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
                if a.sell_out ~= b.sell_out then
                    if b.sell_out then
                        return -1
                    end
                    if a.sell_out then
                        return 1
                    end
                end
                if a.cfg.type == b.cfg.type then
                    return a.quality - b.quality
                end
                return a.cfg.type - b.cfg.type
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
                        function() return dataList.value[temp_idx + 1] ~= nil and dataList.value[temp_idx + 1].visible end
                    )
                    self:bindImage(
                        path .. ".info.icon",
                        function()
                            local ____opt_0 = dataList.value[temp_idx + 1]
                            return ____opt_0 and ____opt_0.icon or 0
                        end
                    )
                    self:bindText(
                        path .. ".info.name",
                        function()
                            local ____opt_2 = dataList.value[temp_idx + 1]
                            return ____opt_2 and ____opt_2.name or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.count",
                        function()
                            local ____opt_4 = dataList.value[temp_idx + 1]
                            return "x" .. tostring(____opt_4 and ____opt_4.count or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_6 = dataList.value[temp_idx + 1]
                            local ____temp_8 = ____opt_6 and ____opt_6.sell_out
                            if ____temp_8 == nil then
                                ____temp_8 = false
                            end
                            return ____temp_8
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_9 = dataList.value[temp_idx + 1]
                            local ____temp_11 = ____opt_9 and ____opt_9.lock
                            if ____temp_11 == nil then
                                ____temp_11 = false
                            end
                            return ____temp_11
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_12 = dataList.value[temp_idx + 1]
                            return ____opt_12 and ____opt_12.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_14 = dataList.value[temp_idx + 1]
                            return "" .. tostring(____opt_14 and ____opt_14.price or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_16 = dataList.value[temp_idx + 1]
                            return (____opt_16 and ____opt_16.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_18 = dataList.value[temp_idx + 1]
                            return (____opt_18 and ____opt_18.price or 0) == 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.icon",
                        function()
                            local ____opt_20 = dataList.value[temp_idx + 1]
                            return (____opt_20 and ____opt_20.price or 0) > 0
                        end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function()
                            if localData.shop.tabIndex == ShopType["Item_钻石商城道具"] then
                                return getPropIcon(nil, 2)
                            end
                            return getPropIcon(nil, 1)
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.disable",
                        function()
                            local ____opt_22 = dataList.value[temp_idx + 1]
                            return ____opt_22 and ____opt_22.isLimit
                        end
                    )
                    self:bindImage(
                        path .. ".info.bg",
                        function()
                            local ____opt_24 = dataList.value[temp_idx + 1]
                            if (____opt_24 and ____opt_24.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_26 = dataList.value[temp_idx + 1]
                            if (____opt_26 and ____opt_26.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_28 = dataList.value[temp_idx + 1]
                            if (____opt_28 and ____opt_28.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_30 = dataList.value[temp_idx + 1]
                            if (____opt_30 and ____opt_30.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_32 = dataList.value[temp_idx + 1]
                            if (____opt_32 and ____opt_32.quality) == 4 then
                                return 134248468
                            end
                            return 134237313
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
                                SoundManager:play(SoundType["UI购买"])
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
return ____exports
