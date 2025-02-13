local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 4,["7"] = 4,["8"] = 4,["10"] = 4,["11"] = 5,["12"] = 6,["13"] = 5,["14"] = 9,["15"] = 10,["16"] = 9});
local ____exports = {}
____exports.PointUtils = __TS__Class()
local PointUtils = ____exports.PointUtils
PointUtils.name = "PointUtils"
function PointUtils.prototype.____constructor(self)
end
function PointUtils.get(self, pointId)
    return y3.point.get_point_by_res_id(pointId)
end
function PointUtils.create(self, x, y, z)
    return y3.point.create(x, y, z)
end
return ____exports
