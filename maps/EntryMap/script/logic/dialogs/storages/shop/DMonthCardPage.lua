local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 4,["10"] = 4,["11"] = 5,["12"] = 5,["13"] = 10,["14"] = 10,["15"] = 10,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 16,["21"] = 16,["22"] = 17,["23"] = 17,["24"] = 19,["25"] = 20,["26"] = 21,["27"] = 22,["28"] = 31,["29"] = 31,["30"] = 31,["31"] = 31,["33"] = 31,["34"] = 32,["35"] = 31,["36"] = 49,["37"] = 50,["38"] = 49,["39"] = 53,["40"] = 54,["41"] = 54,["42"] = 54,["43"] = 54,["44"] = 57,["45"] = 58,["46"] = 53,["47"] = 61,["48"] = 62,["49"] = 63,["50"] = 65,["51"] = 66,["52"] = 68,["53"] = 68,["54"] = 68,["55"] = 69,["56"] = 70,["58"] = 72,["60"] = 68,["61"] = 68,["62"] = 76,["63"] = 76,["64"] = 76,["65"] = 77,["66"] = 76,["67"] = 76,["68"] = 80,["69"] = 80,["70"] = 80,["71"] = 81,["72"] = 80,["73"] = 80,["74"] = 84,["75"] = 84,["76"] = 84,["77"] = 85,["78"] = 84,["79"] = 84,["80"] = 88,["81"] = 88,["82"] = 88,["83"] = 89,["84"] = 88,["85"] = 88,["86"] = 92,["87"] = 92,["88"] = 92,["89"] = 93,["90"] = 94,["91"] = 95,["93"] = 97,["94"] = 98,["95"] = 99,["98"] = 103,["100"] = 92,["101"] = 92,["102"] = 107,["103"] = 107,["104"] = 107,["105"] = 108,["106"] = 108,["107"] = 108,["108"] = 109,["109"] = 110,["111"] = 112,["112"] = 113,["113"] = 114,["115"] = 108,["116"] = 108,["117"] = 107,["118"] = 107,["119"] = 119,["120"] = 119,["121"] = 119,["122"] = 119,["123"] = 120,["124"] = 121,["126"] = 123,["127"] = 119,["128"] = 119,["129"] = 61,["130"] = 128,["131"] = 128,["132"] = 130,["133"] = 130});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigMap = ____SteamGoodsConfig.steamGoodsConfigMap
local ____KkGoodsConfig = include("logic.configs.KkGoodsConfig")
local kkGoodsConfigMap = ____KkGoodsConfig.kkGoodsConfigMap
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local monthCardId = 1
local monthCardKKId = 9
local vipCardId = 2
local vipCardKKId = 10
____exports.DMonthCardPage = __TS__Class()
local DMonthCardPage = ____exports.DMonthCardPage
DMonthCardPage.name = "DMonthCardPage"
__TS__ClassExtends(DMonthCardPage, Dialog)
function DMonthCardPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {mcardData = {active = false, endTime = 0}, dcardData = {active = false, endTime = 0}}
end
function DMonthCardPage.prototype.onCreate(self)
    self:initView()
end
function DMonthCardPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType.STEAM_MONTH_CARD end
    )
    self:bindGood(monthCardId, monthCardKKId, "root.contents.mcard", self.data.mcardData)
    self:bindGood(vipCardId, vipCardKKId, "root.contents.dcard", self.data.dcardData)
end
function DMonthCardPage.prototype.bindGood(self, id, kkId, root, data)
    local config = steamGoodsConfigMap[id]
    local kkConfig = kkGoodsConfigMap[kkId]
    data.active = LOCAL.PLAYER:get_store_item_number(kkConfig.y3Id) >= 1
    data.endTime = LOCAL.PLAYER:get_store_item_end_time(kkConfig.y3Id)
    self:bindText(
        root .. ".state",
        function()
            if data.active then
                return i18n["local"](i18n, "已生效")
            else
                return i18n["local"](i18n, "未生效")
            end
        end
    )
    self:bindText(
        root .. ".name",
        function()
            return config.name.value
        end
    )
    self:bindText(
        root .. ".title",
        function()
            return i18n["local"](i18n, "权益")
        end
    )
    self:bindText(
        root .. ".des",
        function()
            return config.des.value
        end
    )
    self:bindText(
        root .. ".buy.name",
        function()
            return "" .. tostring(config.price)
        end
    )
    self:bindText(
        root .. ".remaining",
        function()
            if data.active then
                if id == vipCardId then
                    return i18n["local"](i18n, "永久生效")
                else
                    local s = data.endTime * 1000 - Date:now()
                    local day = math.floor(s / 1000 / 60 / 60 / 24)
                    return i18n:format("剩余${day}天", {day = day})
                end
            else
                return ""
            end
        end
    )
    self:bindClick(
        root .. ".buy",
        function()
            steamTopUpManager:buy(
                config,
                function(____, suc, code, msg)
                    if not suc then
                        DTips:show(msg)
                    else
                        DTips:show(i18n["local"](i18n, "购买成功"))
                        data.active = LOCAL.PLAYER:get_store_item_number(kkConfig.y3Id) == 1
                        data.endTime = LOCAL.PLAYER:get_store_item_end_time(kkConfig.y3Id)
                    end
                end
            )
        end
    )
    self:bindButtonEnableHover(
        root .. ".buy",
        {root .. ".buy.hover"},
        function()
            if data.active and id == vipCardId then
                return false
            end
            return true
        end
    )
end
function DMonthCardPage.prototype.onShow(self)
end
function DMonthCardPage.prototype.onHide(self)
end
return ____exports
