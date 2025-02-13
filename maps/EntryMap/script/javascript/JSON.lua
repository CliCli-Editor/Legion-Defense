local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["11"] = 1,["12"] = 2,["13"] = 3,["14"] = 2,["15"] = 6,["16"] = 7,["17"] = 6,["18"] = 11});
local ____exports = {}
____exports.JSON = __TS__Class()
local JSON = ____exports.JSON
JSON.name = "JSON"
function JSON.prototype.____constructor(self)
end
function JSON.prototype.stringify(self, obj)
    return json.encode(obj)
end
function JSON.prototype.parse(self, jsonStr)
    return json.decode(jsonStr)
end
_G.JSON = __TS__New(____exports.JSON)
return ____exports
