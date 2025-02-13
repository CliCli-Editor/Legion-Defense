local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 3,["6"] = 4,["7"] = 5,["9"] = 10,["10"] = 11,["11"] = 12,["12"] = 13,["13"] = 14,["14"] = 15,["15"] = 16,["16"] = 17,["17"] = 17,["18"] = 17,["19"] = 17,["20"] = 18,["22"] = 19,["23"] = 19,["24"] = 20,["25"] = 19,["28"] = 22,["29"] = 23,["30"] = 24,["32"] = 26,["34"] = 10,["35"] = 29,["36"] = 30,["37"] = 31,["38"] = 32,["39"] = 33,["40"] = 34,["41"] = 35,["43"] = 37,["44"] = 38,["47"] = 41,["48"] = 42,["49"] = 43,["50"] = 44,["52"] = 46,["55"] = 10,["56"] = 50,["57"] = 51,["58"] = 52,["59"] = 53,["60"] = 54,["61"] = 55,["62"] = 56,["63"] = 57,["65"] = 59,["67"] = 10,["68"] = 10});
local ____exports = {}
local p = 1
local b = 2
local s = 3
--- 快速加解密，不使用aes，安全性一般，但是性能好
____exports.quickStrategy = {
    getSignature = function(v, seed, globalSeed)
        local t = type(v)
        if t == "number" then
            return (v * 0.25 + globalSeed) * 10 + seed
        elseif t == "string" then
            local len = string.len(v)
            local step = math.max(
                1,
                math.floor(len / 10)
            )
            local r = 0
            do
                local i = 0
                while i < len do
                    r = r * 2 + string.byte(v, i + 1)
                    i = i + step
                end
            end
            return (r * 0.25 + globalSeed) * 2 + seed
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
            elseif t == s then
                return string.reverse(string.sub(v, 4))
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
        elseif t == "string" then
            return string.char(p, s, p) .. string.reverse(v)
        else
            return nil
        end
    end
}
return ____exports
