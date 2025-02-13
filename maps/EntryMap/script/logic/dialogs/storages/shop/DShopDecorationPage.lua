local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 17,["43"] = 18,["44"] = 18,["45"] = 19,["46"] = 19,["47"] = 43,["48"] = 43,["49"] = 43,["50"] = 43,["52"] = 43,["53"] = 44,["54"] = 43,["55"] = 49,["56"] = 50,["57"] = 49,["58"] = 53,["60"] = 54,["61"] = 54,["62"] = 54,["63"] = 54,["64"] = 56,["65"] = 56,["66"] = 56,["67"] = 56,["68"] = 57,["70"] = 53,["71"] = 61,["72"] = 61,["73"] = 63,["74"] = 63,["75"] = 66,["76"] = 67,["77"] = 68,["78"] = 69,["79"] = 70,["80"] = 70,["81"] = 70,["82"] = 71,["83"] = 71,["85"] = 83,["86"] = 70,["87"] = 70,["88"] = 86,["89"] = 87,["90"] = 88,["91"] = 89,["92"] = 90,["93"] = 91,["94"] = 92,["95"] = 93,["96"] = 94,["97"] = 95,["99"] = 98,["100"] = 99,["101"] = 100,["102"] = 101,["103"] = 102,["104"] = 103,["105"] = 104,["106"] = 105,["107"] = 106,["108"] = 107,["109"] = 108,["110"] = 109,["111"] = 110,["112"] = 111,["113"] = 112,["114"] = 113,["115"] = 114,["116"] = 115,["117"] = 116,["118"] = 117,["119"] = 118,["120"] = 119,["121"] = 120,["122"] = 121,["123"] = 122,["124"] = 123,["125"] = 124,["126"] = 125,["128"] = 127,["129"] = 128,["130"] = 129,["132"] = 132,["133"] = 132,["134"] = 132,["135"] = 132,["136"] = 132,["137"] = 132,["138"] = 132,["139"] = 132,["140"] = 132,["141"] = 132,["142"] = 132,["143"] = 132,["144"] = 132,["145"] = 132,["146"] = 132,["147"] = 87,["148"] = 149,["149"] = 150,["150"] = 150,["151"] = 150,["152"] = 151,["153"] = 150,["154"] = 150,["155"] = 154,["156"] = 154,["157"] = 154,["158"] = 155,["159"] = 156,["160"] = 156,["162"] = 157,["163"] = 157,["166"] = 159,["167"] = 160,["169"] = 162,["170"] = 154,["171"] = 154,["172"] = 165,["173"] = 86,["175"] = 168,["176"] = 168,["177"] = 169,["178"] = 170,["179"] = 171,["180"] = 172,["181"] = 173,["182"] = 173,["183"] = 173,["184"] = 174,["185"] = 173,["186"] = 173,["188"] = 177,["189"] = 177,["190"] = 178,["191"] = 179,["192"] = 180,["193"] = 182,["194"] = 182,["195"] = 182,["196"] = 182,["197"] = 184,["198"] = 184,["199"] = 184,["200"] = 184,["201"] = 184,["202"] = 184,["203"] = 184,["204"] = 186,["205"] = 186,["206"] = 186,["207"] = 186,["208"] = 186,["209"] = 186,["210"] = 186,["211"] = 188,["212"] = 188,["213"] = 188,["214"] = 188,["215"] = 188,["216"] = 188,["217"] = 188,["219"] = 188,["220"] = 188,["221"] = 188,["222"] = 190,["223"] = 190,["224"] = 190,["225"] = 190,["226"] = 190,["227"] = 190,["228"] = 190,["230"] = 190,["231"] = 190,["232"] = 190,["233"] = 192,["234"] = 192,["235"] = 192,["236"] = 192,["237"] = 192,["238"] = 192,["239"] = 192,["240"] = 194,["241"] = 194,["242"] = 194,["243"] = 194,["244"] = 194,["245"] = 194,["246"] = 194,["247"] = 195,["248"] = 195,["249"] = 195,["250"] = 195,["251"] = 195,["252"] = 195,["253"] = 195,["254"] = 196,["255"] = 196,["256"] = 196,["257"] = 196,["258"] = 196,["259"] = 196,["260"] = 196,["261"] = 197,["262"] = 197,["263"] = 197,["264"] = 197,["265"] = 197,["266"] = 197,["267"] = 197,["268"] = 198,["269"] = 198,["270"] = 198,["271"] = 198,["272"] = 200,["273"] = 200,["274"] = 200,["275"] = 200,["276"] = 200,["277"] = 200,["278"] = 200,["279"] = 202,["280"] = 202,["281"] = 202,["282"] = 203,["283"] = 203,["284"] = 203,["286"] = 204,["287"] = 204,["288"] = 204,["290"] = 205,["291"] = 205,["292"] = 205,["294"] = 206,["295"] = 206,["296"] = 206,["298"] = 207,["299"] = 207,["300"] = 207,["302"] = 208,["303"] = 202,["304"] = 202,["305"] = 211,["306"] = 211,["307"] = 211,["308"] = 211,["309"] = 212,["312"] = 213,["313"] = 214,["314"] = 216,["315"] = 217,["316"] = 218,["320"] = 222,["321"] = 223,["322"] = 224,["323"] = 225,["324"] = 226,["325"] = 227,["326"] = 228,["328"] = 230,["331"] = 233,["333"] = 211,["334"] = 211,["335"] = 236,["336"] = 236,["337"] = 236,["338"] = 237,["341"] = 238,["342"] = 239,["343"] = 240,["344"] = 240,["345"] = 240,["346"] = 240,["347"] = 240,["348"] = 240,["349"] = 240,["350"] = 240,["351"] = 236,["352"] = 245,["353"] = 246,["354"] = 236,["355"] = 236,["356"] = 249,["357"] = 177,["360"] = 168,["363"] = 66});
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
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigMap = ____PetConfig.petConfigMap
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigMap = ____PetEffectConfig.petEffectConfigMap
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigMap = ____PetHaloConfig.petHaloConfigMap
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigMap = ____PetSkillConfig.petSkillConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigMap = ____PetWingConfig.petWingConfigMap
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DShopDecorationPage = __TS__Class()
local DShopDecorationPage = ____exports.DShopDecorationPage
DShopDecorationPage.name = "DShopDecorationPage"
__TS__ClassExtends(DShopDecorationPage, Dialog)
function DShopDecorationPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DShopDecorationPage.prototype.onCreate(self)
    self:initView()
end
function DShopDecorationPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.shop.tabIndex == ShopType["Decoration_钻石商城装饰"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.shop.tabIndex == ShopType["Decoration_钻石商城装饰"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DShopDecorationPage.prototype.onShow(self)
end
function DShopDecorationPage.prototype.onHide(self)
end
function DShopDecorationPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local list = __TS__ArrayFilter(
        goodsConfigList,
        function(____, a)
            if a.lockType == 2 then
                return false
            end
            return (a.pos == 0 or not steamUtils:isSteam() and a.pos == 1 or steamUtils:isSteam() and a.pos == 2) and (a.type == 6 or a.type == 7 or a.type == 8 or a.type == 9 or a.type == 11)
        end
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
                lock_tips = i18n:format("游戏局数达到${unlockValue}局解锁", {unlockValue = cfg.unlockValue[1]})
            end
            local name = ""
            local icon = 0
            local quality = 1
            if cfg.type == 6 then
                local skin = petConfigMap[cfg.propId.indexId]
                name = cfg.name.value
                quality = skin.quality
                icon = skin.icon
            elseif cfg.type == 7 then
                local skin = petSkillConfigMap[cfg.propId.indexId]
                name = cfg.name.value
                quality = skin.quality
                icon = skin.icon
            elseif cfg.type == 8 then
                local skin = petWingConfigMap[cfg.propId.indexId]
                name = cfg.name.value
                quality = skin.quality
                icon = skin.icon
            elseif cfg.type == 9 then
                local skin = petHaloConfigMap[cfg.propId.indexId]
                name = cfg.name.value
                quality = skin.quality
                icon = skin.icon
            elseif cfg.type == 11 then
                local skin = petEffectConfigMap[cfg.propId.indexId]
                name = cfg.name.value
                quality = skin.quality
                icon = skin.icon
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
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_4 = dataList.value[temp_idx + 1]
                            local ____temp_6 = ____opt_4 and ____opt_4.sell_out
                            if ____temp_6 == nil then
                                ____temp_6 = false
                            end
                            return ____temp_6
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_7 = dataList.value[temp_idx + 1]
                            local ____temp_9 = ____opt_7 and ____opt_7.lock
                            if ____temp_9 == nil then
                                ____temp_9 = false
                            end
                            return ____temp_9
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_10 = dataList.value[temp_idx + 1]
                            return ____opt_10 and ____opt_10.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_12 = dataList.value[temp_idx + 1]
                            return "" .. tostring(____opt_12 and ____opt_12.price or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_14 = dataList.value[temp_idx + 1]
                            return (____opt_14 and ____opt_14.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_16 = dataList.value[temp_idx + 1]
                            return (____opt_16 and ____opt_16.price or 0) == 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.icon",
                        function()
                            local ____opt_18 = dataList.value[temp_idx + 1]
                            return (____opt_18 and ____opt_18.price or 0) > 0
                        end
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
