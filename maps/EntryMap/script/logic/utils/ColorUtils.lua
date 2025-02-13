local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 3,["8"] = 3,["9"] = 3,["11"] = 3,["12"] = 5,["13"] = 6,["14"] = 6,["16"] = 7,["17"] = 7,["19"] = 8,["20"] = 8,["22"] = 9,["23"] = 9,["25"] = 10,["26"] = 5,["27"] = 15});
local ____exports = {}
____exports.ColorUtils = __TS__Class()
local ColorUtils = ____exports.ColorUtils
ColorUtils.name = "ColorUtils"
function ColorUtils.prototype.____constructor(self)
end
function ColorUtils.prototype.quality(self, quality)
    if quality == 1 then
        return "#007fff"
    end
    if quality == 2 then
        return "#8b7fc1"
    end
    if quality == 3 then
        return "#d9b258"
    end
    if quality == 4 then
        return "#ce3a38"
    end
    return "#ffffff"
end
____exports.colorUtils = __TS__New(____exports.ColorUtils)
return ____exports
