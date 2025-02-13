local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["10"] = 7,["11"] = 11,["12"] = 11,["13"] = 11,["14"] = 11,["15"] = 7,["17"] = 17,["18"] = 18,["19"] = 18,["21"] = 19,["22"] = 20,["23"] = 21,["24"] = 22,["25"] = 23,["28"] = 26,["29"] = 17,["31"] = 33,["32"] = 37,["33"] = 33,["35"] = 43,["36"] = 44,["37"] = 44,["39"] = 45,["40"] = 46,["41"] = 47,["42"] = 48,["43"] = 49,["46"] = 52,["47"] = 43});
local ____exports = {}
local ____QuickStrategy = include("framework.encrypt.QuickStrategy")
local quickStrategy = ____QuickStrategy.quickStrategy
local ____SafeTable = include("framework.encrypt.SafeTable")
local createSafeTable = ____SafeTable.createSafeTable
--- 将对象转换为安全表格，并支持VUE绑定
function ____exports.S(t, strategy)
    return createSafeTable(
        vue.reactive(t),
        strategy or quickStrategy
    )
end
--- 遍历将对象转换为安全表格，并支持VUE绑定
function ____exports.LoopS(t, strategy)
    if t == nil or type(t) ~= "table" then
        return t
    end
    for k in pairs(t) do
        local v = t[k]
        if type(v) == "table" then
            v = ____exports.LoopS(v, strategy)
            t[k] = v
        end
    end
    return ____exports.S(t, strategy or quickStrategy)
end
--- 将对象转换为安全表格
function ____exports.S_noVue(t, strategy)
    return createSafeTable(t, strategy or quickStrategy)
end
--- 遍历将对象转换为安全表格
function ____exports.LoopS_noVue(t, strategy)
    if t == nil or type(t) ~= "table" then
        return t
    end
    for k in pairs(t) do
        local v = t[k]
        if type(v) == "table" then
            v = ____exports.LoopS_noVue(v, strategy)
            t[k] = v
        end
    end
    return ____exports.S_noVue(t, strategy or quickStrategy)
end
return ____exports
