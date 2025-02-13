local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 4,["10"] = 4,["12"] = 26,["13"] = 4,["14"] = 9,["15"] = 10,["16"] = 9,["17"] = 15,["18"] = 16,["19"] = 15,["20"] = 22,["21"] = 23,["22"] = 22,["23"] = 35,["24"] = 36,["25"] = 37,["26"] = 38,["28"] = 40,["29"] = 40,["30"] = 40,["31"] = 40,["32"] = 41,["33"] = 35,["34"] = 48});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
____exports.AreaController = __TS__Class()
local AreaController = ____exports.AreaController
AreaController.name = "AreaController"
function AreaController.prototype.____constructor(self)
    self.areaMap = {}
end
function AreaController.prototype.get_rectangle_area(self, id)
    return y3.area.get_rectangle_by_res_id(id)
end
function AreaController.prototype.get_circle_area(self, id)
    return y3.area.get_circle_by_res_id(id)
end
function AreaController.prototype.get_polygon_area(self, id)
    return y3.area.get_polygon_by_res_id(id)
end
function AreaController.prototype.create_rectangle_area(self, startX, startY, endX, endY)
    local key = (((((tostring(startX) .. "_") .. tostring(startY)) .. "_") .. tostring(endX)) .. "_") .. tostring(endY)
    if self.areaMap[key] ~= nil then
        return self.areaMap[key]
    end
    self.areaMap[key] = y3.area.create_rectangle_area_from_two_points(
        y3.point.create(startX, startY),
        y3.point.create(endX, endY)
    )
    return self.areaMap[key]
end
____exports.areaController = make(nil, ____exports.AreaController)
return ____exports
