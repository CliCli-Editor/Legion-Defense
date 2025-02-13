local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 1});
local ____exports = {}
____exports.global = {
    frameCount = 0,
    frameStore = vue.ref(0),
    time = vue.ref(0)
}
return ____exports
