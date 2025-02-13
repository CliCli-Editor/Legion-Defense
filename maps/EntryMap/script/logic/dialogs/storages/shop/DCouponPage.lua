local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 10,["19"] = 10,["20"] = 10,["21"] = 13,["22"] = 13,["23"] = 14,["24"] = 14,["25"] = 15,["26"] = 15,["27"] = 16,["28"] = 16,["29"] = 18,["30"] = 18,["31"] = 44,["32"] = 44,["33"] = 44,["34"] = 44,["36"] = 44,["37"] = 45,["38"] = 44,["39"] = 50,["40"] = 51,["41"] = 50,["42"] = 54,["43"] = 55,["44"] = 55,["45"] = 55,["46"] = 55,["47"] = 57,["48"] = 54,["49"] = 60,["50"] = 60,["51"] = 62,["52"] = 62,["53"] = 65,["54"] = 66,["55"] = 67,["56"] = 68,["57"] = 69,["58"] = 69,["59"] = 69,["60"] = 69,["61"] = 69,["62"] = 69,["63"] = 71,["64"] = 72,["65"] = 73,["66"] = 74,["67"] = 75,["68"] = 76,["69"] = 77,["70"] = 78,["71"] = 80,["72"] = 81,["73"] = 83,["74"] = 83,["75"] = 83,["76"] = 83,["77"] = 83,["78"] = 83,["79"] = 83,["80"] = 83,["81"] = 83,["82"] = 83,["83"] = 83,["84"] = 83,["85"] = 83,["86"] = 83,["87"] = 83,["88"] = 83,["89"] = 83,["90"] = 73,["91"] = 102,["92"] = 103,["93"] = 103,["94"] = 103,["95"] = 104,["96"] = 103,["97"] = 103,["98"] = 107,["99"] = 107,["100"] = 107,["101"] = 108,["102"] = 109,["103"] = 109,["105"] = 110,["106"] = 110,["109"] = 112,["110"] = 113,["112"] = 115,["113"] = 116,["115"] = 118,["116"] = 107,["117"] = 107,["118"] = 121,["119"] = 71,["121"] = 124,["122"] = 124,["123"] = 125,["124"] = 126,["125"] = 127,["126"] = 128,["127"] = 129,["128"] = 129,["129"] = 129,["130"] = 130,["131"] = 129,["132"] = 129,["134"] = 133,["135"] = 133,["136"] = 134,["137"] = 135,["138"] = 136,["139"] = 138,["140"] = 138,["141"] = 138,["142"] = 138,["143"] = 140,["144"] = 140,["145"] = 140,["146"] = 140,["147"] = 140,["148"] = 140,["149"] = 140,["150"] = 140,["151"] = 142,["152"] = 142,["153"] = 142,["154"] = 142,["155"] = 142,["156"] = 142,["157"] = 142,["158"] = 142,["159"] = 143,["160"] = 143,["161"] = 143,["162"] = 143,["163"] = 145,["164"] = 145,["165"] = 145,["166"] = 145,["167"] = 145,["168"] = 145,["169"] = 145,["171"] = 145,["172"] = 145,["173"] = 145,["174"] = 147,["175"] = 147,["176"] = 147,["177"] = 147,["178"] = 147,["179"] = 147,["180"] = 147,["182"] = 147,["183"] = 147,["184"] = 147,["185"] = 149,["186"] = 149,["187"] = 149,["188"] = 149,["189"] = 149,["190"] = 149,["191"] = 149,["192"] = 151,["193"] = 151,["194"] = 151,["195"] = 152,["196"] = 152,["197"] = 153,["198"] = 154,["200"] = 156,["201"] = 151,["202"] = 151,["203"] = 158,["204"] = 158,["205"] = 158,["206"] = 158,["207"] = 158,["208"] = 158,["209"] = 158,["210"] = 161,["211"] = 161,["212"] = 161,["213"] = 162,["214"] = 161,["215"] = 161,["216"] = 164,["217"] = 164,["218"] = 164,["219"] = 164,["220"] = 164,["221"] = 164,["222"] = 164,["223"] = 166,["224"] = 166,["225"] = 166,["226"] = 167,["227"] = 167,["228"] = 167,["230"] = 168,["231"] = 168,["232"] = 168,["234"] = 169,["235"] = 169,["236"] = 169,["238"] = 170,["239"] = 170,["240"] = 170,["242"] = 171,["243"] = 171,["244"] = 171,["246"] = 172,["247"] = 166,["248"] = 166,["249"] = 175,["250"] = 175,["251"] = 175,["252"] = 175,["253"] = 176,["254"] = 176,["255"] = 177,["258"] = 180,["259"] = 180,["260"] = 180,["261"] = 181,["262"] = 182,["264"] = 180,["265"] = 180,["266"] = 175,["267"] = 175,["268"] = 187,["269"] = 187,["270"] = 187,["271"] = 188,["274"] = 189,["275"] = 190,["276"] = 191,["277"] = 191,["278"] = 191,["279"] = 191,["280"] = 191,["281"] = 191,["282"] = 191,["283"] = 191,["284"] = 187,["285"] = 196,["286"] = 197,["287"] = 187,["288"] = 187,["289"] = 200,["290"] = 133,["293"] = 124,["296"] = 65});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigMap_pos = ____SteamGoodsConfig.steamGoodsConfigMap_pos
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local ____KkGoodsConfig = include("logic.configs.KkGoodsConfig")
local kkGoodsConfigMap_y3Id = ____KkGoodsConfig.kkGoodsConfigMap_y3Id
____exports.DCouponPage = __TS__Class()
local DCouponPage = ____exports.DCouponPage
DCouponPage.name = "DCouponPage"
__TS__ClassExtends(DCouponPage, Dialog)
function DCouponPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DCouponPage.prototype.onCreate(self)
    self:initView()
end
function DCouponPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType.STEAM_COUPON end
    )
    self:initDetails()
end
function DCouponPage.prototype.onShow(self)
end
function DCouponPage.prototype.onHide(self)
end
function DCouponPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local listU = __TS__ArrayMap(
        steamGoodsConfigMap_pos[4],
        function(____, a)
            return {kk = kkGoodsConfigMap_y3Id[a.y3Id][1], steam = a}
        end
    )
    local dataList = self:compute(function()
        local list = listU
        local function func(____, idx)
            local cfg = list[idx + 1].kk
            local steamCfg = list[idx + 1].steam
            local cur_count = archive.kkShop:has(cfg.y3Id) and 1 or 0
            local lock = false
            local lock_tips = ""
            local quality = cfg.quality
            local limit_count = 1
            return {
                cfg = cfg,
                steamCfg = steamCfg,
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
                        path .. ".buy.price.price",
                        function()
                            local ____opt_16 = dataList.value[temp_idx + 1]
                            local config = ____opt_16 and ____opt_16.steamCfg
                            if config == nil then
                                return ""
                            end
                            return "" .. tostring(config.price)
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_18 = dataList.value[temp_idx + 1]
                            return (____opt_18 and ____opt_18.price or 0) == 0
                        end
                    )
                    self:bindText(
                        path .. ".info.sellout.sellout.image_81.text",
                        function()
                            return i18n["local"](i18n, "已购买")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.disable",
                        function()
                            local ____opt_20 = dataList.value[temp_idx + 1]
                            return ____opt_20 and ____opt_20.isLimit
                        end
                    )
                    self:bindImage(
                        path .. ".info.bg",
                        function()
                            local ____opt_22 = dataList.value[temp_idx + 1]
                            if (____opt_22 and ____opt_22.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_24 = dataList.value[temp_idx + 1]
                            if (____opt_24 and ____opt_24.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_26 = dataList.value[temp_idx + 1]
                            if (____opt_26 and ____opt_26.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_28 = dataList.value[temp_idx + 1]
                            if (____opt_28 and ____opt_28.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_30 = dataList.value[temp_idx + 1]
                            if (____opt_30 and ____opt_30.quality) == 4 then
                                return 134248468
                            end
                            return 134237313
                        end
                    )
                    self:bindAction(
                        path .. ".buy",
                        "左键-点击",
                        function()
                            local ____opt_32 = dataList.value[temp_idx + 1]
                            local config = ____opt_32 and ____opt_32.steamCfg
                            if config == nil then
                                return
                            end
                            steamTopUpManager:buy(
                                config,
                                function(____, suc, code, msg)
                                    if not suc then
                                        DTips:show(msg)
                                    end
                                end
                            )
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
