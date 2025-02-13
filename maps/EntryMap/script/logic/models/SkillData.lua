local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 20,["6"] = 20,["7"] = 20,["8"] = 25,["9"] = 26,["10"] = 20,["11"] = 20});
local ____exports = {}
____exports.SkillData = {
    name = "SkillData",
    indexKeys = {{single = true, key = "playerId"}},
    make = function(self)
        return {playerId = nil, skills = {}}
    end
}
return ____exports
