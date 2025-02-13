local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 7,["6"] = 7,["7"] = 110,["8"] = 110,["9"] = 110,["10"] = 115,["11"] = 116,["12"] = 116,["13"] = 116,["14"] = 116,["15"] = 116,["16"] = 116,["17"] = 116,["18"] = 116,["19"] = 116,["20"] = 116,["21"] = 116,["22"] = 116,["23"] = 116,["24"] = 116,["25"] = 116,["26"] = 116,["27"] = 116,["28"] = 116,["29"] = 116,["30"] = 116,["31"] = 116,["32"] = 116,["33"] = 116,["34"] = 110,["35"] = 110});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.PlayerGenreData = {
    name = "PlayerGenreData",
    indexKeys = {{single = true, key = "playerId"}},
    make = function(self)
        return S({
            skillByQualitys = {},
            playerId = 0,
            canSelGenre = {},
            skillLevels = {},
            tempWeights = {},
            genreLevels = {},
            skillLevelByGenre = {},
            skillLevelByGenreList = {},
            genreTagCount = {},
            genresSortedList = {},
            tempList = {},
            refreshCount = 0,
            debugCard = 0,
            tempTotalWeight = 0,
            isLocked = false,
            lastTag = 0,
            lastTag2 = 0,
            same_tag_count = 0,
            recommand1 = 0,
            recommand2 = 0,
            weightChange = 0
        })
    end
}
return ____exports
