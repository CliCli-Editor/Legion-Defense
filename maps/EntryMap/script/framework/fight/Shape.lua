local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["10"] = 1,["11"] = 13,["12"] = 15,["13"] = 16,["14"] = 18,["15"] = 20,["17"] = 23,["18"] = 24,["19"] = 25,["20"] = 26,["21"] = 27,["23"] = 29,["24"] = 13,["25"] = 36,["26"] = 37,["27"] = 38,["28"] = 39,["29"] = 40,["30"] = 41,["31"] = 42,["33"] = 44,["34"] = 36,["35"] = 53,["36"] = 55,["37"] = 56,["38"] = 57,["39"] = 58,["40"] = 59,["42"] = 62,["43"] = 64,["45"] = 67,["46"] = 68,["47"] = 69,["48"] = 70,["49"] = 71,["51"] = 73,["52"] = 53,["53"] = 82,["54"] = 83,["55"] = 84,["56"] = 85,["57"] = 86,["59"] = 88,["60"] = 89,["61"] = 90,["63"] = 93,["64"] = 95,["66"] = 98,["67"] = 99,["68"] = 100,["69"] = 101,["70"] = 102,["72"] = 104,["73"] = 82,["74"] = 3,["75"] = 4,["76"] = 5,["77"] = 6});
local ____exports = {}
____exports.Shape = __TS__Class()
local Shape = ____exports.Shape
Shape.name = "Shape"
function Shape.prototype.____constructor(self)
end
function Shape.createAnnularShape(self, in_radius, out_radius)
    in_radius = math.floor(in_radius)
    out_radius = math.floor(out_radius)
    if in_radius > 100000 or out_radius > 100000 then
        return y3.shape.create_annular_shape(in_radius, out_radius)
    end
    local key = in_radius * 100000 + out_radius
    local shape = self.annularMap[key]
    if shape == nil then
        shape = y3.shape.create_annular_shape(in_radius, out_radius)
        self.annularMap[key] = shape
    end
    return shape
end
function Shape.createCircularShape(self, radius, creator)
    radius = math.floor(radius) + math.floor(creator ~= nil and creator:getCollisionRadius() or 0)
    local key = radius
    local shape = self.circularMap[key]
    if shape == nil then
        shape = y3.shape.create_circular_shape(radius)
        self.circularMap[key] = shape
    end
    return shape
end
function Shape.createRectangleShape(self, width, length, angle)
    width = math.floor(width)
    length = math.floor(length)
    angle = math.floor(angle) % 360
    if angle < 0 then
        angle = angle + 360
    end
    if width > 100000 or length > 100000 then
        return y3.shape.create_rectangle_shape(width, length, angle)
    end
    local key = width * 100000 * 1000 + length * 1000 + angle
    local shape = self.rectangleMap[key]
    if shape == nil then
        shape = y3.shape.create_rectangle_shape(width, length, angle)
        self.rectangleMap[key] = shape
    end
    return shape
end
function Shape.createSectorShape(self, radius, angle, direction, creator)
    radius = math.floor(radius) + math.floor(creator ~= nil and creator:getCollisionRadius() or 0)
    angle = math.floor(angle) % 360
    if angle < 0 then
        angle = angle + 360
    end
    direction = math.floor(direction) % 360
    if direction < 0 then
        direction = direction + 360
    end
    if radius > 100000 then
        return y3.shape.create_sector_shape(radius, angle, direction)
    end
    local key = radius * 100000 * 1000 + direction * 1000 + angle
    local shape = self.sectorMap[key]
    if shape == nil then
        shape = y3.shape.create_sector_shape(radius, angle, direction)
        self.sectorMap[key] = shape
    end
    return shape
end
Shape.annularMap = {}
Shape.circularMap = {}
Shape.rectangleMap = {}
Shape.sectorMap = {}
return ____exports
