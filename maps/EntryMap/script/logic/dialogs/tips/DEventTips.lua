local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 34,["27"] = 35,["28"] = 7,["29"] = 17,["30"] = 18,["31"] = 19,["32"] = 18,["33"] = 17,["34"] = 23,["36"] = 24,["37"] = 24,["38"] = 24,["39"] = 25,["40"] = 25,["41"] = 24,["42"] = 24,["43"] = 28,["44"] = 28,["45"] = 28,["46"] = 29,["47"] = 30,["48"] = 28,["49"] = 28,["51"] = 23,["52"] = 36,["53"] = 37,["54"] = 38,["55"] = 37,["56"] = 41,["57"] = 41,["58"] = 41,["59"] = 42,["60"] = 43,["61"] = 44,["62"] = 41,["63"] = 41,["64"] = 36,["65"] = 47,["66"] = 48,["67"] = 49,["68"] = 50,["70"] = 52,["71"] = 47});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
____exports.DEventTips = __TS__Class()
local DEventTips = ____exports.DEventTips
DEventTips.name = "DEventTips"
__TS__ClassExtends(DEventTips, Dialog)
function DEventTips.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.timer = nil
    self.eventId = -1
end
function DEventTips.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DEventTips.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindText(
            "root.tips",
            function()
                local ____opt_0 = self.data.params
                return ____opt_0 and ____opt_0.tips or i18n["local"](i18n, "提示信息")
            end
        )
        self:bindVisible(
            "root",
            function()
                local auctionData = datas.global:getSingle(AuctionData)
                return not auctionData.inAuction
            end
        )
    end)
end
function DEventTips.prototype.onShow(self)
    self.eventId = escManager:addEvent(function()
        self:hide()
    end)
    self.timer = y3.ltimer.wait(
        30,
        function(t)
            t:remove()
            self.timer = nil
            self:hide()
        end
    )
end
function DEventTips.prototype.onHide(self)
    if self.timer ~= nil then
        self.timer:remove()
        self.timer = nil
    end
    escManager:removeEvent(self.eventId)
end
return ____exports
