local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__NumberToFixed = ____lualib.__TS__NumberToFixed
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 5,["12"] = 5,["13"] = 10,["14"] = 10,["15"] = 10,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 40,["24"] = 40,["25"] = 40,["26"] = 40,["27"] = 40,["28"] = 40,["29"] = 40,["30"] = 40,["31"] = 49,["32"] = 49,["33"] = 49,["34"] = 49,["36"] = 49,["37"] = 50,["38"] = 49,["39"] = 55,["40"] = 56,["41"] = 55,["42"] = 59,["43"] = 60,["44"] = 60,["45"] = 60,["46"] = 60,["47"] = 62,["48"] = 59,["49"] = 66,["50"] = 66,["51"] = 68,["52"] = 68,["53"] = 71,["54"] = 72,["55"] = 73,["56"] = 74,["57"] = 76,["58"] = 77,["59"] = 79,["60"] = 80,["61"] = 80,["62"] = 80,["63"] = 80,["64"] = 80,["65"] = 80,["66"] = 80,["67"] = 80,["68"] = 80,["69"] = 89,["70"] = 91,["71"] = 92,["73"] = 93,["74"] = 94,["76"] = 95,["79"] = 97,["81"] = 98,["84"] = 100,["86"] = 101,["89"] = 103,["91"] = 104,["94"] = 106,["96"] = 107,["99"] = 109,["101"] = 110,["105"] = 113,["106"] = 114,["110"] = 128,["111"] = 129,["112"] = 130,["113"] = 132,["114"] = 132,["115"] = 132,["116"] = 132,["117"] = 132,["118"] = 132,["119"] = 132,["120"] = 132,["121"] = 132,["122"] = 129,["123"] = 143,["124"] = 143,["125"] = 143,["126"] = 144,["127"] = 143,["128"] = 143,["129"] = 147,["130"] = 76,["132"] = 150,["133"] = 150,["134"] = 151,["135"] = 152,["136"] = 153,["137"] = 154,["138"] = 155,["139"] = 155,["140"] = 155,["141"] = 156,["142"] = 155,["143"] = 155,["145"] = 159,["146"] = 159,["147"] = 160,["148"] = 161,["149"] = 162,["150"] = 164,["151"] = 164,["152"] = 164,["153"] = 164,["154"] = 166,["155"] = 166,["156"] = 166,["157"] = 167,["158"] = 168,["159"] = 169,["161"] = 171,["162"] = 172,["164"] = 174,["166"] = 166,["167"] = 166,["168"] = 178,["169"] = 178,["170"] = 178,["171"] = 179,["172"] = 179,["173"] = 178,["174"] = 178,["175"] = 181,["176"] = 181,["177"] = 181,["178"] = 182,["179"] = 182,["180"] = 181,["181"] = 181,["182"] = 185,["183"] = 185,["184"] = 185,["185"] = 186,["186"] = 187,["187"] = 188,["189"] = 190,["190"] = 191,["192"] = 193,["194"] = 185,["195"] = 185,["196"] = 197,["197"] = 197,["198"] = 197,["199"] = 198,["200"] = 199,["201"] = 200,["203"] = 202,["204"] = 203,["205"] = 203,["207"] = 205,["209"] = 197,["210"] = 197,["211"] = 208,["212"] = 208,["213"] = 208,["214"] = 209,["215"] = 210,["216"] = 211,["218"] = 213,["219"] = 208,["220"] = 208,["221"] = 216,["222"] = 216,["223"] = 216,["224"] = 217,["225"] = 216,["226"] = 216,["227"] = 220,["228"] = 220,["229"] = 220,["230"] = 221,["231"] = 222,["232"] = 223,["234"] = 225,["235"] = 226,["237"] = 228,["239"] = 220,["240"] = 220,["241"] = 232,["242"] = 232,["243"] = 232,["244"] = 232,["245"] = 233,["246"] = 234,["249"] = 238,["250"] = 239,["251"] = 239,["252"] = 239,["253"] = 240,["254"] = 241,["256"] = 239,["257"] = 239,["259"] = 245,["261"] = 232,["262"] = 232,["263"] = 263,["264"] = 159,["267"] = 150,["270"] = 71});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigMap_pos = ____SteamGoodsConfig.steamGoodsConfigMap_pos
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local topUpLevels = ____SteamTopUpManager.topUpLevels
local flatMap = {
    CNY = "￥",
    USD = "$",
    JPY = "¥",
    KRW = "₩",
    TWD = "NT$",
    HKD = "HK$"
}
____exports.DTopUpPage = __TS__Class()
local DTopUpPage = ____exports.DTopUpPage
DTopUpPage.name = "DTopUpPage"
__TS__ClassExtends(DTopUpPage, Dialog)
function DTopUpPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DTopUpPage.prototype.onCreate(self)
    self:initView()
end
function DTopUpPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType.STEAM_TOP_UP end
    )
    self:initDetails()
end
function DTopUpPage.prototype.onShow(self)
end
function DTopUpPage.prototype.onHide(self)
end
function DTopUpPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local dataList = self:compute(function()
        local result = {}
        for ____, topUpLevel in ipairs(topUpLevels) do
            local a = {
                type = "coupon",
                id = topUpLevel.id,
                currency = "CNY",
                price = topUpLevel.priceCNY,
                coupon = topUpLevel.priceCNY * 100,
                icon = topUpLevel.icon,
                enIcon = 0
            }
            result[#result + 1] = a
            local currency = y3.steam.get_steam_currency()
            a.currency = currency
            repeat
                local ____switch10 = currency
                local ____cond10 = ____switch10 == "CNY"
                if ____cond10 then
                    a.price = topUpLevel.priceCNY
                    break
                end
                ____cond10 = ____cond10 or ____switch10 == "USD"
                if ____cond10 then
                    a.price = topUpLevel.priceUSD
                    break
                end
                ____cond10 = ____cond10 or ____switch10 == "JPY"
                if ____cond10 then
                    a.price = topUpLevel.priceJPY
                    break
                end
                ____cond10 = ____cond10 or ____switch10 == "KRW"
                if ____cond10 then
                    a.price = topUpLevel.priceKRW
                    break
                end
                ____cond10 = ____cond10 or ____switch10 == "TWD"
                if ____cond10 then
                    a.price = topUpLevel.priceTWD
                    break
                end
                ____cond10 = ____cond10 or ____switch10 == "HKD"
                if ____cond10 then
                    a.price = topUpLevel.priceHKD
                    break
                end
                do
                    a.currency = "USD"
                    a.price = topUpLevel.priceUSD
                end
            until true
        end
        local list = steamGoodsConfigMap_pos[1]
        local function func(____, idx)
            local cfg = list[idx + 1]
            return {
                type = "diamond",
                cfg = cfg,
                icon = cfg.icon,
                enIcon = cfg.enIcon,
                price = cfg.price,
                name = cfg.name.value,
                count = 0
            }
        end
        __TS__ArrayForEach(
            list,
            function(____, a, idx)
                result[#result + 1] = func(nil, idx)
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
                        function() return dataList.value[temp_idx + 1] ~= nil end
                    )
                    self:bindImage(
                        path .. ".info.icon",
                        function()
                            local v = dataList.value[temp_idx + 1]
                            if v == nil then
                                return 0
                            end
                            if i18n.currentLang == "en" and v.enIcon ~= 0 then
                                return v.enIcon
                            else
                                return v.icon
                            end
                        end
                    )
                    self:bindVisible(
                        path .. ".info.bg",
                        function()
                            local ____opt_0 = dataList.value[temp_idx + 1]
                            return (____opt_0 and ____opt_0.type) == "diamond"
                        end
                    )
                    self:bindVisible(
                        path .. ".info.bg_2",
                        function()
                            local ____opt_2 = dataList.value[temp_idx + 1]
                            return (____opt_2 and ____opt_2.type) == "coupon"
                        end
                    )
                    self:bindText(
                        path .. ".info.name",
                        function()
                            local data = dataList.value[temp_idx + 1]
                            if data == nil then
                                return ""
                            end
                            if data.type == "diamond" then
                                return data.cfg.name.value
                            else
                                return i18n:format("${coupon}点券", {coupon = data.coupon})
                            end
                        end
                    )
                    self:bindText(
                        path .. ".info.price.price",
                        function()
                            local data = dataList.value[temp_idx + 1]
                            if data == nil then
                                return ""
                            end
                            if data.type == "diamond" then
                                local ____opt_4 = dataList.value[temp_idx + 1]
                                return tostring(____opt_4 and ____opt_4.price or 0)
                            else
                                return (" " .. i18n["local"](i18n, "约")) .. (((flatMap[data.currency] or "") .. __TS__NumberToFixed(data.price, 2)) .. data.currency) .. " "
                            end
                        end
                    )
                    self:bindVisible(
                        path .. ".info.price.icon",
                        function()
                            local data = dataList.value[temp_idx + 1]
                            if data == nil then
                                return false
                            end
                            return data.type == "diamond"
                        end
                    )
                    self:bindImage(
                        path .. ".info.double",
                        function()
                            return 0
                        end
                    )
                    self:bindText(
                        path .. ".info.extra",
                        function()
                            local data = dataList.value[temp_idx + 1]
                            if data == nil then
                                return ""
                            end
                            if data.type == "diamond" then
                                return data.cfg.des.value
                            else
                                return i18n:format("${coupon}点券", {coupon = data.coupon})
                            end
                        end
                    )
                    self:bindAction(
                        path .. ".info",
                        "左键-点击",
                        function()
                            local data = dataList.value[temp_idx + 1]
                            if data == nil then
                                return
                            end
                            if data.type == "diamond" then
                                steamTopUpManager:buy(
                                    data.cfg,
                                    function(____, suc, code, msg)
                                        if not suc then
                                            DTips:show("购买失败")
                                        end
                                    end
                                )
                            else
                                steamTopUpManager:topUp(data)
                            end
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
