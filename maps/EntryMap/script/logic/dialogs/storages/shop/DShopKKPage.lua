local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 10,["21"] = 10,["22"] = 10,["23"] = 12,["24"] = 12,["25"] = 13,["26"] = 13,["27"] = 14,["28"] = 14,["29"] = 15,["30"] = 15,["31"] = 41,["32"] = 41,["33"] = 41,["34"] = 41,["36"] = 41,["37"] = 42,["38"] = 41,["39"] = 47,["40"] = 48,["41"] = 47,["42"] = 51,["43"] = 52,["44"] = 52,["45"] = 52,["46"] = 52,["47"] = 54,["48"] = 51,["49"] = 58,["50"] = 58,["51"] = 60,["52"] = 60,["53"] = 63,["54"] = 64,["55"] = 65,["56"] = 66,["57"] = 67,["58"] = 67,["59"] = 67,["60"] = 67,["61"] = 68,["62"] = 68,["63"] = 68,["64"] = 68,["65"] = 69,["66"] = 69,["67"] = 69,["68"] = 69,["69"] = 71,["70"] = 72,["71"] = 73,["72"] = 74,["73"] = 75,["74"] = 76,["75"] = 77,["76"] = 79,["77"] = 80,["78"] = 82,["79"] = 82,["80"] = 82,["81"] = 82,["82"] = 82,["83"] = 82,["84"] = 82,["85"] = 82,["86"] = 82,["87"] = 82,["88"] = 82,["89"] = 82,["90"] = 82,["91"] = 82,["92"] = 82,["93"] = 82,["94"] = 73,["95"] = 100,["96"] = 101,["97"] = 101,["98"] = 101,["99"] = 102,["100"] = 101,["101"] = 101,["102"] = 105,["103"] = 105,["104"] = 105,["105"] = 106,["106"] = 107,["107"] = 107,["109"] = 108,["110"] = 108,["113"] = 110,["114"] = 111,["116"] = 113,["117"] = 114,["119"] = 116,["120"] = 105,["121"] = 105,["122"] = 119,["123"] = 71,["125"] = 122,["126"] = 122,["127"] = 123,["128"] = 124,["129"] = 125,["130"] = 126,["131"] = 127,["132"] = 127,["133"] = 127,["134"] = 128,["135"] = 127,["136"] = 127,["138"] = 131,["139"] = 131,["140"] = 132,["141"] = 133,["142"] = 134,["143"] = 136,["144"] = 136,["145"] = 136,["146"] = 136,["147"] = 138,["148"] = 138,["149"] = 138,["150"] = 138,["151"] = 138,["152"] = 138,["153"] = 138,["154"] = 138,["155"] = 140,["156"] = 140,["157"] = 140,["158"] = 140,["159"] = 140,["160"] = 140,["161"] = 140,["162"] = 140,["163"] = 141,["164"] = 141,["165"] = 141,["166"] = 141,["167"] = 143,["168"] = 143,["169"] = 143,["170"] = 143,["171"] = 143,["172"] = 143,["173"] = 143,["175"] = 143,["176"] = 143,["177"] = 143,["178"] = 145,["179"] = 145,["180"] = 145,["181"] = 145,["182"] = 145,["183"] = 145,["184"] = 145,["186"] = 145,["187"] = 145,["188"] = 145,["189"] = 147,["190"] = 147,["191"] = 147,["192"] = 147,["193"] = 147,["194"] = 147,["195"] = 147,["196"] = 149,["197"] = 149,["198"] = 149,["199"] = 150,["200"] = 150,["201"] = 151,["202"] = 152,["204"] = 154,["205"] = 155,["206"] = 156,["207"] = 157,["208"] = 158,["209"] = 159,["211"] = 161,["212"] = 149,["213"] = 149,["214"] = 164,["215"] = 164,["216"] = 164,["217"] = 164,["218"] = 164,["219"] = 164,["220"] = 164,["221"] = 165,["222"] = 165,["223"] = 165,["224"] = 165,["225"] = 165,["226"] = 165,["227"] = 165,["228"] = 166,["229"] = 166,["230"] = 166,["231"] = 166,["232"] = 167,["233"] = 167,["234"] = 167,["235"] = 167,["236"] = 169,["237"] = 169,["238"] = 169,["239"] = 169,["240"] = 169,["241"] = 169,["242"] = 169,["243"] = 171,["244"] = 171,["245"] = 171,["246"] = 172,["247"] = 172,["248"] = 172,["250"] = 173,["251"] = 173,["252"] = 173,["254"] = 174,["255"] = 174,["256"] = 174,["258"] = 175,["259"] = 175,["260"] = 175,["262"] = 176,["263"] = 176,["264"] = 176,["266"] = 177,["267"] = 171,["268"] = 171,["269"] = 180,["270"] = 180,["271"] = 180,["272"] = 180,["273"] = 181,["274"] = 181,["275"] = 182,["278"] = 185,["279"] = 186,["280"] = 187,["281"] = 188,["282"] = 189,["283"] = 190,["285"] = 192,["287"] = 180,["288"] = 180,["289"] = 196,["290"] = 196,["291"] = 196,["292"] = 197,["295"] = 198,["296"] = 199,["297"] = 200,["298"] = 200,["299"] = 200,["300"] = 200,["301"] = 200,["302"] = 200,["303"] = 200,["304"] = 200,["305"] = 196,["306"] = 205,["307"] = 206,["308"] = 196,["309"] = 196,["310"] = 209,["311"] = 131,["314"] = 122,["317"] = 63});
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
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____KkGoodsConfig = include("logic.configs.KkGoodsConfig")
local kkGoodsConfigList = ____KkGoodsConfig.kkGoodsConfigList
____exports.DShopKKPage = __TS__Class()
local DShopKKPage = ____exports.DShopKKPage
DShopKKPage.name = "DShopKKPage"
__TS__ClassExtends(DShopKKPage, Dialog)
function DShopKKPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DShopKKPage.prototype.onCreate(self)
    self:initView()
end
function DShopKKPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType["KK_KK商城U币"] or localData.shop.tabIndex == ShopType["KK_KK商城积分"] or localData.shop.tabIndex == ShopType["KK_KK商城金币"] end
    )
    self:initDetails()
end
function DShopKKPage.prototype.onShow(self)
end
function DShopKKPage.prototype.onHide(self)
end
function DShopKKPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local listU = __TS__ArrayFilter(
        kkGoodsConfigList,
        function(____, a) return a.cost == 3 and a.lockType ~= 2 end
    )
    local listG = __TS__ArrayFilter(
        kkGoodsConfigList,
        function(____, a) return a.cost == 4 and a.lockType ~= 2 end
    )
    local listS = __TS__ArrayFilter(
        kkGoodsConfigList,
        function(____, a) return a.cost == 5 and a.lockType ~= 2 end
    )
    local dataList = self:compute(function()
        local list = localData.shop.tabIndex == ShopType["KK_KK商城U币"] and listU or (localData.shop.tabIndex == ShopType["KK_KK商城积分"] and listS or listG)
        local function func(____, idx)
            local cfg = list[idx + 1]
            local cur_count = archive.kkShop:has(cfg.y3Id) and 1 or 0
            local lock = false
            local lock_tips = ""
            local quality = cfg.quality
            local limit_count = 1
            return {
                cfg = cfg,
                visible = true,
                show_limit_label = false,
                cur_count = cur_count,
                limit_count = limit_count,
                icon = function() return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon end,
                price = cfg.price,
                name = function() return cfg.name.value end,
                quality = quality,
                lock = lock,
                lock_tips = lock_tips,
                sell_out = cur_count >= limit_count,
                isLimit = cur_count >= limit_count,
                count = 0
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
                if a.quality ~= b.quality then
                    return b.quality - a.quality
                end
                if a.cfg.type ~= b.cfg.type then
                    return a.cfg.type - b.cfg.type
                end
                return a.cfg.id - b.cfg.id
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
                            local ____opt_2 = dataList.value[temp_idx + 1]
                            local ____opt_0 = ____opt_2 and ____opt_2.icon
                            return ____opt_0 and ____opt_0(____opt_2) or 0
                        end
                    )
                    self:bindText(
                        path .. ".info.name",
                        function()
                            local ____opt_6 = dataList.value[temp_idx + 1]
                            local ____opt_4 = ____opt_6 and ____opt_6.name
                            return ____opt_4 and ____opt_4(____opt_6) or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.count",
                        function() return "" end
                    )
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_8 = dataList.value[temp_idx + 1]
                            local ____temp_10 = ____opt_8 and ____opt_8.sell_out
                            if ____temp_10 == nil then
                                ____temp_10 = false
                            end
                            return ____temp_10
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_11 = dataList.value[temp_idx + 1]
                            local ____temp_13 = ____opt_11 and ____opt_11.lock
                            if ____temp_13 == nil then
                                ____temp_13 = false
                            end
                            return ____temp_13
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_14 = dataList.value[temp_idx + 1]
                            return ____opt_14 and ____opt_14.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_16 = dataList.value[temp_idx + 1]
                            local config = ____opt_16 and ____opt_16.cfg
                            if config == nil then
                                return ""
                            end
                            if config.cost == 3 then
                                return i18n["local"](i18n, "购买")
                            elseif config.cost == 4 then
                                return i18n["local"](i18n, "购买")
                            elseif config.cost == 5 then
                                return i18n["local"](i18n, "兑换")
                            end
                            return ""
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_18 = dataList.value[temp_idx + 1]
                            return (____opt_18 and ____opt_18.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_20 = dataList.value[temp_idx + 1]
                            return (____opt_20 and ____opt_20.price or 0) == 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.icon",
                        function() return false end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function() return getPropIcon(nil, 2) end
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
                            local ____opt_34 = dataList.value[temp_idx + 1]
                            local config = ____opt_34 and ____opt_34.cfg
                            if config == nil then
                                return
                            end
                            if config.cost == 3 then
                                print("正在前往地图商店商城", config.y3Id)
                                DTips:show(i18n["local"](i18n, "正在前往地图商店商城"))
                                LOCAL.PLAYER:open_platform_shop(config.y3Id)
                            elseif config.cost == 4 then
                                DTips:show(i18n["local"](i18n, "请前往地图商店购买"))
                            else
                                DTips:show(i18n["local"](i18n, "请前往地图商店兑换"))
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
