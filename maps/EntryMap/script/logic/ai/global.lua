local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 2,["7"] = 1});
local ____exports = {}
function ____exports.getGlobalBlackboard(self)
    return NPBehave.Context.GetSharedBlackboard("global")
end
return ____exports
