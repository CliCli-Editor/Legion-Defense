local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 10,["19"] = 10,["20"] = 10,["21"] = 12,["22"] = 12,["23"] = 13,["24"] = 13,["25"] = 14,["26"] = 14,["27"] = 16,["28"] = 16,["29"] = 17,["30"] = 17,["31"] = 42,["32"] = 42,["33"] = 42,["34"] = 42,["36"] = 42,["37"] = 43,["38"] = 42,["39"] = 48,["40"] = 49,["41"] = 48,["42"] = 52,["43"] = 53,["44"] = 53,["45"] = 53,["46"] = 53,["47"] = 55,["48"] = 52,["49"] = 58,["50"] = 58,["51"] = 60,["52"] = 60,["53"] = 63,["54"] = 64,["55"] = 65,["56"] = 66,["57"] = 67,["58"] = 67,["59"] = 67,["60"] = 67,["61"] = 69,["62"] = 70,["63"] = 71,["64"] = 72,["65"] = 73,["66"] = 74,["67"] = 75,["68"] = 77,["69"] = 78,["70"] = 80,["71"] = 80,["72"] = 80,["73"] = 80,["74"] = 80,["75"] = 80,["76"] = 80,["77"] = 80,["78"] = 80,["79"] = 80,["80"] = 80,["81"] = 80,["82"] = 80,["83"] = 80,["84"] = 80,["85"] = 80,["86"] = 71,["87"] = 98,["88"] = 99,["89"] = 99,["90"] = 99,["91"] = 100,["92"] = 99,["93"] = 99,["94"] = 103,["95"] = 103,["96"] = 103,["97"] = 104,["98"] = 105,["99"] = 105,["101"] = 106,["102"] = 106,["105"] = 108,["106"] = 109,["108"] = 111,["109"] = 112,["111"] = 114,["112"] = 103,["113"] = 103,["114"] = 117,["115"] = 69,["116"] = 120,["117"] = 120,["118"] = 120,["119"] = 121,["120"] = 120,["121"] = 120,["123"] = 124,["124"] = 124,["125"] = 125,["126"] = 126,["127"] = 127,["128"] = 128,["129"] = 129,["130"] = 129,["131"] = 129,["132"] = 130,["133"] = 129,["134"] = 129,["136"] = 133,["137"] = 133,["138"] = 134,["139"] = 135,["140"] = 136,["141"] = 138,["142"] = 138,["143"] = 138,["144"] = 138,["145"] = 140,["146"] = 140,["147"] = 140,["148"] = 140,["149"] = 140,["150"] = 140,["151"] = 140,["152"] = 140,["153"] = 142,["154"] = 142,["155"] = 142,["156"] = 142,["157"] = 142,["158"] = 142,["159"] = 142,["160"] = 143,["161"] = 143,["162"] = 143,["163"] = 143,["164"] = 145,["165"] = 145,["166"] = 145,["167"] = 145,["168"] = 145,["169"] = 145,["170"] = 145,["172"] = 145,["173"] = 145,["174"] = 145,["175"] = 147,["176"] = 147,["177"] = 147,["178"] = 148,["179"] = 147,["180"] = 147,["181"] = 151,["182"] = 151,["183"] = 151,["184"] = 151,["185"] = 151,["186"] = 151,["187"] = 151,["189"] = 151,["190"] = 151,["191"] = 151,["192"] = 153,["193"] = 153,["194"] = 153,["195"] = 153,["196"] = 153,["197"] = 153,["198"] = 153,["199"] = 155,["200"] = 155,["201"] = 155,["202"] = 156,["203"] = 156,["204"] = 157,["205"] = 158,["207"] = 160,["208"] = 155,["209"] = 155,["210"] = 163,["211"] = 163,["212"] = 163,["213"] = 163,["214"] = 163,["215"] = 163,["216"] = 163,["217"] = 164,["218"] = 164,["219"] = 164,["220"] = 164,["221"] = 164,["222"] = 164,["223"] = 164,["224"] = 165,["225"] = 165,["226"] = 165,["227"] = 165,["228"] = 166,["229"] = 166,["230"] = 166,["231"] = 166,["232"] = 168,["233"] = 168,["234"] = 168,["235"] = 168,["236"] = 168,["237"] = 168,["238"] = 168,["239"] = 170,["240"] = 170,["241"] = 170,["242"] = 171,["243"] = 171,["244"] = 171,["246"] = 172,["247"] = 172,["248"] = 172,["250"] = 173,["251"] = 173,["252"] = 173,["254"] = 174,["255"] = 174,["256"] = 174,["258"] = 175,["259"] = 175,["260"] = 175,["262"] = 176,["263"] = 170,["264"] = 170,["265"] = 179,["266"] = 179,["267"] = 179,["268"] = 179,["269"] = 180,["270"] = 180,["271"] = 181,["274"] = 185,["275"] = 186,["278"] = 191,["279"] = 179,["280"] = 179,["281"] = 195,["282"] = 195,["283"] = 195,["284"] = 196,["287"] = 197,["288"] = 198,["289"] = 199,["290"] = 199,["291"] = 199,["292"] = 199,["293"] = 199,["294"] = 199,["295"] = 199,["296"] = 199,["297"] = 195,["298"] = 204,["299"] = 205,["300"] = 195,["301"] = 195,["302"] = 208,["303"] = 133,["306"] = 124,["309"] = 63});
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
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local ____SteamBoxConfig = include("logic.configs.SteamBoxConfig")
local steamBoxConfigList = ____SteamBoxConfig.steamBoxConfigList
____exports.DPointPage = __TS__Class()
local DPointPage = ____exports.DPointPage
DPointPage.name = "DPointPage"
__TS__ClassExtends(DPointPage, Dialog)
function DPointPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DPointPage.prototype.onCreate(self)
    self:initView()
end
function DPointPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType.STEAM_POINT end
    )
    self:initDetails()
end
function DPointPage.prototype.onShow(self)
end
function DPointPage.prototype.onHide(self)
end
function DPointPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local listS = __TS__ArrayFilter(
        steamBoxConfigList,
        function(____, a) return a.lockType ~= 2 end
    )
    local dataList = self:compute(function()
        local list = listS
        local function func(____, idx)
            local cfg = list[idx + 1]
            local cur_count = steamTopUpManager:hasBox(cfg) and 1 or 0
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
                price = cfg.pointPrice,
                name = cfg.name,
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
    self:bindText(
        "root.contents.point",
        function()
            return i18n:format("当前积分${score}", {score = archive.steamData.data.point})
        end
    )
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
                            local ____opt_4 = dataList.value[temp_idx + 1]
                            return ____opt_4 and ____opt_4.name.value or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.count",
                        function() return "" end
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
                    self:bindText(
                        path .. ".info.sellout.sellout.image_81.text",
                        function()
                            return i18n["local"](i18n, "已购买")
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
                            local config = ____opt_14 and ____opt_14.cfg
                            if config == nil then
                                return ""
                            end
                            return tostring(config.pointPrice) .. i18n["local"](i18n, "积分")
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
                        function() return false end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function() return getPropIcon(nil, 2) end
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
                            local config = ____opt_32 and ____opt_32.cfg
                            if config == nil then
                                return
                            end
                            if archive.steamData.data.point < config.pointPrice then
                                DTips:show(i18n["local"](i18n, "积分不足，无法兑换"))
                                return
                            end
                            steamTopUpManager:costBoxPoint(config)
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
