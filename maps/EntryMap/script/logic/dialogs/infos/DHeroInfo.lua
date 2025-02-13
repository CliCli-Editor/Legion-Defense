local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["18"] = 4,["19"] = 5,["20"] = 14,["21"] = 4,["22"] = 16,["23"] = 17,["24"] = 18,["25"] = 17,["26"] = 16,["27"] = 22,["29"] = 23,["30"] = 24,["31"] = 25,["32"] = 25,["33"] = 25,["34"] = 25,["35"] = 26,["36"] = 26,["38"] = 27,["39"] = 28,["40"] = 29,["41"] = 30,["42"] = 32,["43"] = 33,["45"] = 35,["46"] = 25,["47"] = 25,["49"] = 22});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindPos = ____bind.bindPos
____exports.DHeroInfo = __TS__Class()
local DHeroInfo = ____exports.DHeroInfo
DHeroInfo.name = "DHeroInfo"
__TS__ClassExtends(DHeroInfo, Dialog)
function DHeroInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHeroInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHeroInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local fullPath = "DHeroInfo.info"
        local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
        bindPos(
            self,
            "info",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                local x = self.data.params.x
                local y = self.data.params.y
                local height = ui:get_height()
                local max_y = y + height / 2
                if max_y >= 1080 then
                    y = y - (max_y - 1080)
                end
                return {x = x, y = y}
            end
        )
    end)
end
return ____exports
