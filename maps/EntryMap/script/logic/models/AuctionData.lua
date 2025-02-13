local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 43,["6"] = 43,["7"] = 43,["8"] = 48,["9"] = 49,["10"] = 43,["11"] = 43});
local ____exports = {}
____exports.AuctionData = {
    name = "AuctionData",
    indexKeys = {},
    make = function(self)
        return {equips = {}, excludes = {}, showResult = false, inAuction = false}
    end
}
return ____exports
