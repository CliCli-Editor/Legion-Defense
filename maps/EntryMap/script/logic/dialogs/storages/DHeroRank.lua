local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 4,["17"] = 5,["18"] = 18,["19"] = 34,["20"] = 4,["21"] = 10,["22"] = 11,["23"] = 10,["24"] = 14,["25"] = 15,["26"] = 14,["27"] = 20,["28"] = 21,["29"] = 22,["30"] = 20,["31"] = 25,["32"] = 26,["33"] = 25,["34"] = 29,["35"] = 30,["36"] = 29,["37"] = 36,["38"] = 37,["39"] = 38,["40"] = 38,["41"] = 38,["42"] = 38,["43"] = 38,["44"] = 38,["45"] = 38,["46"] = 39,["47"] = 36,["48"] = 42,["49"] = 43,["50"] = 44,["51"] = 44,["52"] = 44,["53"] = 44,["54"] = 44,["55"] = 44,["56"] = 44,["57"] = 45,["58"] = 47,["59"] = 47,["60"] = 47,["61"] = 48,["62"] = 47,["63"] = 47,["64"] = 42,["65"] = 52,["66"] = 54,["67"] = 54,["68"] = 54,["69"] = 54,["70"] = 55,["71"] = 54,["72"] = 54,["73"] = 57,["74"] = 57,["75"] = 57,["76"] = 57,["77"] = 58,["78"] = 57,["79"] = 57,["80"] = 52});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
____exports.DHeroRank = __TS__Class()
local DHeroRank = ____exports.DHeroRank
DHeroRank.name = "DHeroRank"
__TS__ClassExtends(DHeroRank, Dialog)
function DHeroRank.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.eventId = 0
    self.animTime = 0.1
end
function DHeroRank.prototype.onCreate(self)
    self:initView()
end
function DHeroRank.prototype.initView(self)
    self:initDetails()
end
function DHeroRank.prototype.onShow(self)
    self:showAni()
    self.eventId = escManager:addEvent(function() return self:escHide() end)
end
function DHeroRank.prototype.onHide(self)
    escManager:removeEvent(self.eventId)
end
function DHeroRank.prototype.escHide(self)
    self:hideAni()
end
function DHeroRank.prototype.showAni(self)
    self:getUI("disable"):set_visible(false)
    self:getUI("root"):set_anim_scale(
        0,
        0,
        1,
        1,
        self.animTime
    )
    self:getUI("background"):set_anim_opacity(0, 100, self.animTime)
end
function DHeroRank.prototype.hideAni(self)
    self:getUI("disable"):set_visible(true)
    self:getUI("root"):set_anim_scale(
        1,
        1,
        0,
        0,
        self.animTime
    )
    self:getUI("background"):set_anim_opacity(100, 0, self.animTime)
    y3.ltimer.wait(
        self.animTime,
        function()
            self:hide()
        end
    )
end
function DHeroRank.prototype.initDetails(self)
    self:bindAction(
        "background",
        "左键-点击",
        function()
            self:hideAni()
        end
    )
    self:bindAction(
        "root.close",
        "左键-点击",
        function()
            self:hideAni()
        end
    )
end
return ____exports
