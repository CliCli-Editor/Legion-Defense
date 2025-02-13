local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 7,["9"] = 8,["10"] = 9,["15"] = 17,["16"] = 18,["17"] = 19,["19"] = 21,["20"] = 17,["21"] = 24,["22"] = 26,["26"] = 33,["27"] = 34,["28"] = 33,["32"] = 42,["33"] = 43,["34"] = 42,["42"] = 55,["43"] = 56,["44"] = 56,["45"] = 56,["46"] = 56,["47"] = 56,["48"] = 55});
local ____exports = {}
--- Common utilities
-- 
-- @module glMatrix
____exports.EPSILON = 0.000001
____exports.RANDOM = math.random
____exports.ANGLE_ORDER = "zyx"
--- Symmetric round
-- see https://www.npmjs.com/package/round-half-up-symmetric#user-content-detailed-background
-- 
-- @param a value to round
function ____exports.round(self, a)
    if a >= 0 then
        return math.floor(a + 0.5)
    end
    return a % 0.5 == 0 and math.floor(a) or math.floor(a + 0.5)
end
local degree = math.pi / 180
local radian = 180 / math.pi
--- Convert Degree To Radian
-- 
-- @param a Angle in Degrees
function ____exports.toRadian(self, a)
    return a * degree
end
--- Convert Radian To Degree
-- 
-- @param a Angle in Radians
function ____exports.toDegree(self, a)
    return a * radian
end
--- Tests whether or not the arguments have approximately the same value, within an absolute
-- or relative tolerance of glMatrix.EPSILON (an absolute tolerance is used for values less
-- than or equal to 1.0, and a relative tolerance is used for larger values)
-- 
-- @param a The first number to test.
-- @param b The second number to test.
-- @returns True if the numbers are approximately equal, false otherwise.
function ____exports.equals(self, a, b)
    return math.abs(a - b) <= ____exports.EPSILON * math.max(
        1,
        math.abs(a),
        math.abs(b)
    )
end
return ____exports
