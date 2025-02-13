local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 75,["8"] = 75,["9"] = 75,["10"] = 79,["11"] = 80,["12"] = 80,["13"] = 80,["14"] = 80,["15"] = 80,["16"] = 80,["17"] = 80,["18"] = 80,["19"] = 80,["20"] = 80,["21"] = 80,["22"] = 80,["23"] = 80,["24"] = 80,["25"] = 80,["26"] = 80,["27"] = 80,["28"] = 80,["29"] = 80,["30"] = 75,["31"] = 75});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.PlayerStatisticsData = {
    name = "PlayerStatisticsData",
    indexKeys = {},
    make = function(self)
        return S({
            gold = 0,
            wood = 0,
            defenseSuc = 0,
            attackSuc = 0,
            killMonster = 0,
            killElite = 0,
            killHero = 0,
            playerId = 0,
            isMvp = false,
            isSMvp = false,
            needAddMatchScore = false,
            matchScore = 0,
            matchScoreLimit = false,
            is_idle = false,
            needShowLadderScore = false,
            oldScore = 0,
            newScore = 0
        })
    end
}
return ____exports
