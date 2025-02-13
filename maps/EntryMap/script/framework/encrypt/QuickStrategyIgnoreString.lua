local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 3,["6"] = 4,["7"] = 5,["9"] = 10,["10"] = 11,["11"] = 12,["12"] = 13,["13"] = 14,["14"] = 15,["15"] = 16,["17"] = 18,["19"] = 10,["20"] = 21,["21"] = 22,["22"] = 23,["23"] = 24,["24"] = 25,["26"] = 27,["27"] = 28,["30"] = 31,["31"] = 32,["32"] = 33,["33"] = 34,["35"] = 36,["38"] = 10,["39"] = 40,["40"] = 41,["41"] = 42,["42"] = 43,["43"] = 44,["44"] = 45,["46"] = 47,["48"] = 10,["49"] = 10});
local ____exports = {}
local p = 1
local b = 2
local s = 3
--- 完全复制QuickStrategy，并删除字符串类型的处理，以提高性能
____exports.quickStrategyIgnoreString = {
    getSignature = function(v, seed, globalSeed)
        local t = type(v)
        if t == "number" then
            return (v * 0.25 + globalSeed) * 10 + seed
        elseif t == "boolean" then
            return ((v and 100 or 200) * 0.25 + globalSeed) * 2 + seed
        else
            return nil
        end
    end,
    decrypt = function(v, seed, globalSeed)
        if string.byte(v) == p and string.byte(v, 3) == p then
            local t = string.byte(v, 2)
            if t == b then
                return (tonumber(string.reverse(string.sub(v, 4))) - seed) * 0.5 - globalSeed > 150
            else
                console:error("数据异常解密失败", v)
                return 0 / 0
            end
        else
            local r = tonumber(string.reverse(v)) * 0.5
            local integer, float = math.modf(r)
            if float == 0 then
                return integer
            else
                return r
            end
        end
    end,
    encrypt = function(v, seed, globalSeed)
        local t = type(v)
        if t == "number" then
            return string.reverse(tostring(v * 2))
        elseif t == "boolean" then
            return string.char(p, b, p) .. string.reverse(tostring(((v and 200 or 100) + globalSeed) * 2 + seed))
        else
            return nil
        end
    end
}
return ____exports
