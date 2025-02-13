local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 4,["10"] = 4,["11"] = 4,["13"] = 4,["14"] = 5,["15"] = 6,["16"] = 7,["17"] = 5,["18"] = 11});
local ____exports = {}
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
____exports.GuideManager = __TS__Class()
local GuideManager = ____exports.GuideManager
GuideManager.name = "GuideManager"
function GuideManager.prototype.____constructor(self)
end
function GuideManager.prototype.complete(self)
    archive.statInfo:complete_guide()
    archive.statInfo:sync()
end
____exports.guideManager = __TS__New(____exports.GuideManager)
return ____exports
