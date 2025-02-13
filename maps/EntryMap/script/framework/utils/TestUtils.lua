local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["9"] = 2,["10"] = 3,["13"] = 1,["14"] = 9,["15"] = 9,["16"] = 9,["18"] = 10,["19"] = 11,["22"] = 9,["23"] = 17,["24"] = 18,["25"] = 19,["26"] = 20,["28"] = 22,["29"] = 17});
local ____exports = {}
function ____exports.assertEquals(self, a, b, msg)
    if msg == nil then
        msg = ""
    end
    if a ~= b then
        console:error((((("[TEST] " .. msg) .. " 异常，结果") .. tostring(a)) .. "!=") .. tostring(b))
    else
    end
end
function ____exports.assertNotEquals(self, a, b, msg)
    if msg == nil then
        msg = ""
    end
    if a == b then
        console:error((((("[TEST] " .. msg) .. " 异常，结果") .. tostring(a)) .. "==") .. tostring(b))
    else
    end
end
function ____exports.countMap(self, map)
    local i = 0
    for _ in pairs(map) do
        i = i + 1
    end
    return i
end
return ____exports
