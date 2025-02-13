local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 13,["33"] = 13,["34"] = 15,["35"] = 16,["36"] = 15,["37"] = 21,["38"] = 22,["39"] = 22,["40"] = 22,["41"] = 22,["42"] = 23,["43"] = 24,["45"] = 27,["46"] = 27,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 28,["53"] = 30,["55"] = 34,["56"] = 34,["57"] = 34,["58"] = 34,["59"] = 34,["60"] = 34,["61"] = 34,["62"] = 35,["63"] = 37,["64"] = 37,["65"] = 37,["66"] = 37,["67"] = 38,["68"] = 39,["71"] = 43,["72"] = 43,["73"] = 43,["74"] = 43,["75"] = 44,["76"] = 45,["78"] = 48,["79"] = 49,["80"] = 50,["82"] = 52,["84"] = 54,["85"] = 55,["87"] = 57,["89"] = 21,["90"] = 104,["91"] = 105,["92"] = 106,["94"] = 108,["95"] = 109,["97"] = 110,["100"] = 112,["102"] = 113,["105"] = 115,["107"] = 116,["110"] = 118,["112"] = 119,["115"] = 121,["117"] = 122,["121"] = 125,["122"] = 127,["123"] = 127,["124"] = 128,["126"] = 130,["128"] = 104,["129"] = 137,["130"] = 138,["131"] = 139,["132"] = 140,["135"] = 144,["136"] = 145,["140"] = 142,["146"] = 148,["149"] = 151,["150"] = 152,["151"] = 153,["152"] = 154,["153"] = 137,["154"] = 158});
local ____exports = {}
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigList = ____GoodsConfig.goodsConfigList
local ____KkGoodsConfig = include("logic.configs.KkGoodsConfig")
local kkGoodsConfigList = ____KkGoodsConfig.kkGoodsConfigList
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigList = ____PropConfig.propConfigList
local ____SteamBoxConfig = include("logic.configs.SteamBoxConfig")
local steamBoxConfigList = ____SteamBoxConfig.steamBoxConfigList
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigList = ____SteamGoodsConfig.steamGoodsConfigList
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____LocalData = include("logic.localData.LocalData")
local ShopType = ____LocalData.ShopType
local localData = ____LocalData.localData
local SteamUtils = __TS__Class()
SteamUtils.name = "SteamUtils"
function SteamUtils.prototype.____constructor(self)
end
function SteamUtils.prototype.isSteam(self)
    return debugEnv.isSteam
end
function SteamUtils.prototype.getShopType(self, ____type, id)
    local pro = __TS__ArrayFind(
        propConfigList,
        function(____, a) return a.propTag == ____type and a.indexId == id end
    )
    if pro == nil then
        return nil
    end
    local box = __TS__ArrayFind(
        steamBoxConfigList,
        function(____, a) return __TS__ArrayFindIndex(
            a._propId,
            function(____, a) return a == pro.id end
        ) ~= -1 end
    )
    if box ~= nil then
        return ShopType.STEAM_LOTTERY
    end
    local kkgoods = __TS__ArrayFind(
        kkGoodsConfigList,
        function(____, a) return __TS__ArrayFindIndex(
            a._propId,
            function(____, a) return a == pro.id end
        ) ~= -1 end
    )
    if kkgoods ~= nil then
        local steamGood = __TS__ArrayFind(
            steamGoodsConfigList,
            function(____, a) return a.y3Id == kkgoods.y3Id end
        )
        if steamGood ~= nil then
            return ShopType.STEAM_COUPON
        end
    end
    local good = __TS__ArrayFind(
        goodsConfigList,
        function(____, a) return a._propId == pro.id end
    )
    if good == nil then
        return nil
    end
    if good.cost == 2 then
        if ____type == 11 or ____type == 13 then
            return ShopType["Skin_钻石商城皮肤"]
        else
            return ShopType["Decoration_钻石商城装饰"]
        end
    elseif good.cost == 0 or good.cost == 1 then
        return ShopType["Hero_金币商城英雄"]
    else
        return nil
    end
end
function SteamUtils.prototype.gotoShop(self, ____type, id)
    local tab = self:getShopType(____type, id)
    if tab ~= nil then
        repeat
            local ____switch24 = tab
            local ____cond24 = ____switch24 == ShopType["Hero_金币商城英雄"]
            if ____cond24 then
                localData.shop.subTabIndex = 8
                break
            end
            ____cond24 = ____cond24 or ____switch24 == ShopType["Skin_钻石商城皮肤"]
            if ____cond24 then
                localData.shop.subTabIndex = 5
                break
            end
            ____cond24 = ____cond24 or ____switch24 == ShopType["Decoration_钻石商城装饰"]
            if ____cond24 then
                localData.shop.subTabIndex = 6
                break
            end
            ____cond24 = ____cond24 or ____switch24 == ShopType.STEAM_LOTTERY
            if ____cond24 then
                localData.shop.subTabIndex = 2
                break
            end
            ____cond24 = ____cond24 or ____switch24 == ShopType.STEAM_COUPON
            if ____cond24 then
                localData.shop.subTabIndex = 4
                break
            end
        until true
        localData.shop.tabIndex = tab
        local ____require_result_0 = include("logic.dialogs.storages.DShop")
        local DShop = ____require_result_0.DShop
        dialogs:showRepeat(DShop, {})
    else
        DTips:show(i18n["local"](i18n, "战令或赛季获得"))
    end
end
function SteamUtils.prototype.switchChat(self, pos)
    local hall = pos == "hall"
    local hallChat
    local gameChat = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DChatView.chat.chat_box")
    do
        local function ____catch(e)
            if self:isSteam() then
                console:error("无法找到 DNewGameHall.chat.world_chat_box ", e)
            end
        end
        local ____try, ____hasReturned = pcall(function()
            hallChat = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DNewGameHall.chat.world_chat_box")
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    if hallChat == nil or gameChat == nil then
        return
    end
    gameChat:enable_chat(not hall)
    hallChat:enable_chat(hall)
    gameChat:set_visible(not hall)
    hallChat:set_visible(hall)
end
____exports.steamUtils = __TS__New(SteamUtils)
return ____exports
