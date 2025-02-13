local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 10,["12"] = 10,["13"] = 10,["14"] = 16,["15"] = 16,["16"] = 17,["17"] = 17,["18"] = 18,["19"] = 18,["20"] = 21,["21"] = 21,["22"] = 21,["23"] = 21,["25"] = 21,["26"] = 22,["27"] = 21,["28"] = 27,["29"] = 28,["30"] = 27,["31"] = 31,["32"] = 32,["33"] = 32,["34"] = 32,["35"] = 32,["36"] = 35,["37"] = 35,["38"] = 35,["39"] = 36,["40"] = 35,["41"] = 35,["42"] = 39,["43"] = 39,["44"] = 39,["45"] = 40,["46"] = 41,["47"] = 39,["48"] = 39,["49"] = 43,["50"] = 43,["51"] = 43,["52"] = 44,["53"] = 45,["54"] = 43,["55"] = 43,["56"] = 48,["57"] = 49,["60"] = 53,["61"] = 54,["62"] = 55,["63"] = 57,["64"] = 57,["65"] = 57,["66"] = 58,["67"] = 59,["68"] = 57,["69"] = 57,["70"] = 48,["71"] = 64,["72"] = 64,["73"] = 64,["74"] = 65,["75"] = 64,["76"] = 64,["77"] = 67,["78"] = 67,["79"] = 67,["80"] = 68,["81"] = 67,["82"] = 67,["83"] = 31,["84"] = 73,["85"] = 73,["86"] = 75,["87"] = 75});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____DLotteryDetail = include("logic.dialogs.storages.shop.DLotteryDetail")
local DLotteryDetail = ____DLotteryDetail.DLotteryDetail
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigMap = ____SteamGoodsConfig.steamGoodsConfigMap
____exports.DLotteryPage = __TS__Class()
local DLotteryPage = ____exports.DLotteryPage
DLotteryPage.name = "DLotteryPage"
__TS__ClassExtends(DLotteryPage, Dialog)
function DLotteryPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DLotteryPage.prototype.onCreate(self)
    self:initView()
end
function DLotteryPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType.STEAM_LOTTERY end
    )
    self:bindClick(
        "root.contents.detail",
        function()
            dialogs:show(DLotteryDetail, {})
        end
    )
    self:bindText(
        "root.contents.price1.text",
        function()
            local config = steamGoodsConfigMap[3]
            return tostring(config.price)
        end
    )
    self:bindText(
        "root.contents.price10.text",
        function()
            local config = steamGoodsConfigMap[4]
            return tostring(config.price)
        end
    )
    local function showAnim(____, result, showResultAction)
        if not result then
            return
        end
        local ui = self:getUI("root.contents.box.box")
        ui:set_visible(true)
        self:playSpine(ui, 134245496, "animation", false)
        y3.ctimer.wait(
            1,
            function()
                showResultAction(nil)
                ui:set_visible(false)
            end
        )
    end
    self:bindClick(
        "root.contents.open1",
        function()
            steamTopUpManager:buyTreasureChest("silver", showAnim)
        end
    )
    self:bindClick(
        "root.contents.open10",
        function()
            steamTopUpManager:buyTreasureChest("gold", showAnim)
        end
    )
end
function DLotteryPage.prototype.onShow(self)
end
function DLotteryPage.prototype.onHide(self)
end
return ____exports
