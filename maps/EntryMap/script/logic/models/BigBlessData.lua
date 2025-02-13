local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 30,["6"] = 30,["7"] = 30,["8"] = 34,["9"] = 35,["10"] = 35,["11"] = 35,["12"] = 35,["13"] = 35,["14"] = 35,["15"] = 35,["16"] = 35,["17"] = 30,["18"] = 30});
local ____exports = {}
____exports.BigBlessData = {
    name = "BigBlessData",
    indexKeys = {},
    make = function(self)
        return {
            canSelList = {},
            bigBless = nil,
            bigBlessIndex = -1,
            bigBlessIndexAnim = -1,
            voteList = {{}, {}, {}},
            voteWinOut = nil
        }
    end
}
return ____exports
