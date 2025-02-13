local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 14,["28"] = 14,["29"] = 14,["31"] = 14,["32"] = 23,["33"] = 25,["34"] = 26,["35"] = 23,["36"] = 28,["37"] = 32,["38"] = 33,["39"] = 28,["40"] = 35,["41"] = 39,["42"] = 40,["43"] = 35,["44"] = 42,["45"] = 46,["46"] = 47,["49"] = 47,["50"] = 47,["52"] = 47,["53"] = 42,["54"] = 49,["55"] = 53,["56"] = 54,["57"] = 55,["58"] = 55,["59"] = 55,["60"] = 57,["61"] = 57,["62"] = 58,["63"] = 58,["64"] = 58,["65"] = 58,["66"] = 58,["67"] = 58,["68"] = 58,["69"] = 58,["70"] = 58,["71"] = 58,["72"] = 49,["73"] = 60,["74"] = 64,["75"] = 65,["78"] = 65,["79"] = 65,["81"] = 65,["82"] = 60,["83"] = 68,["84"] = 72,["85"] = 73,["88"] = 73,["89"] = 73,["91"] = 73,["92"] = 68,["93"] = 93,["94"] = 94,["95"] = 93});
local ____exports = {}
local ____global = include("framework.global")
local global = ____global.global
____exports.LogType = LogType or ({})
____exports.LogType.Log = 1
____exports.LogType[____exports.LogType.Log] = "Log"
____exports.LogType.Info = 2
____exports.LogType[____exports.LogType.Info] = "Info"
____exports.LogType.Debug = 3
____exports.LogType[____exports.LogType.Debug] = "Debug"
____exports.LogType.Warn = 4
____exports.LogType[____exports.LogType.Warn] = "Warn"
____exports.LogType.Error = 5
____exports.LogType[____exports.LogType.Error] = "Error"
____exports.LogType.Trace = 6
____exports.LogType[____exports.LogType.Trace] = "Trace"
____exports.LogType.Fatal = 7
____exports.LogType[____exports.LogType.Fatal] = "Fatal"
____exports.LogAdapter = __TS__Class()
local LogAdapter = ____exports.LogAdapter
LogAdapter.name = "LogAdapter"
function LogAdapter.prototype.____constructor(self)
end
function LogAdapter.log(self, message, ...)
    local debug2 = log.debug
    debug2(global.frameCount, message, ...)
end
function LogAdapter.debug(self, message, ...)
    local debug2 = log.debug
    debug2(global.frameCount, message, ...)
end
function LogAdapter.info(self, message, ...)
    local info = log.info
    info(global.frameCount, message, ...)
end
function LogAdapter.warn(self, message, ...)
    local warn = log.warn
    local ____array_0 = __TS__SparseArrayNew(global.frameCount, message, ...)
    __TS__SparseArrayPush(
        ____array_0,
        "\n",
        debug.traceback(nil, 2)
    )
    warn(__TS__SparseArraySpread(____array_0))
end
function LogAdapter.error(self, message, ...)
    local ____error = log.error
    local t = debug.traceback(nil, 2)
    local ____array_1 = __TS__SparseArrayNew(global.frameCount, message, ...)
    __TS__SparseArrayPush(____array_1, "\n", t)
    ____error(__TS__SparseArraySpread(____array_1))
    local ____require_result_2 = include("logic.utils.TraceLogUtils")
    local traceLogUtils = ____require_result_2.traceLogUtils
    traceLogUtils:onError(
        table.concat(
            __TS__ArrayMap(
                {message, ...},
                function(____, a) return tostring(a) end
            ),
            ","
        ),
        t
    )
end
function LogAdapter.fatal(self, message, ...)
    local fatal = log.fatal
    local ____array_3 = __TS__SparseArrayNew(global.frameCount, message, ...)
    __TS__SparseArrayPush(
        ____array_3,
        "\n",
        debug.traceback(nil, 2)
    )
    fatal(__TS__SparseArraySpread(____array_3))
end
function LogAdapter.trace(self, message, ...)
    local trace = log.trace
    local ____array_4 = __TS__SparseArrayNew(global.frameCount, message, ...)
    __TS__SparseArrayPush(
        ____array_4,
        "\n",
        debug.traceback(nil, 2)
    )
    trace(__TS__SparseArraySpread(____array_4))
end
_G.print = function(message, ...)
    ____exports.LogAdapter:log(message, ...)
end
return ____exports
