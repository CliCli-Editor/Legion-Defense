local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 4,["8"] = 5,["9"] = 5,["10"] = 6,["11"] = 6,["12"] = 7,["13"] = 7,["14"] = 75,["15"] = 75,["16"] = 75,["17"] = 80,["18"] = 81,["19"] = 81,["20"] = 81,["21"] = 81,["22"] = 81,["23"] = 81,["24"] = 81,["25"] = 81,["26"] = 81,["27"] = 81,["28"] = 81,["29"] = 81,["30"] = 81,["31"] = 81,["32"] = 81,["33"] = 81,["34"] = 81,["35"] = 81,["36"] = 81,["37"] = 81,["38"] = 81,["39"] = 81,["40"] = 81,["41"] = 81,["42"] = 75,["43"] = 75});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.KofMode = KofMode or ({})
____exports.KofMode["准备阶段"] = 0
____exports.KofMode[____exports.KofMode["准备阶段"]] = "准备阶段"
____exports.KofMode["选人阶段"] = 1
____exports.KofMode[____exports.KofMode["选人阶段"]] = "选人阶段"
____exports.KofMode["单挑阶段"] = 2
____exports.KofMode[____exports.KofMode["单挑阶段"]] = "单挑阶段"
____exports.KofData = {
    name = "KofData",
    indexKeys = {},
    make = function(self)
        return S({
            level = 0,
            teamLeft = {},
            teamRight = {},
            seatLeft1 = {},
            seatLeft2 = {},
            seatLeft3 = {},
            seatRight1 = {},
            seatRight2 = {},
            seatRight3 = {},
            teamARandom = {},
            teamBRandom = {},
            deathList = {},
            players = {},
            teamAEliminated = 0,
            teamBEliminated = 0,
            teamAFightPos = 0,
            teamBFightPos = 0,
            teamAFightId = 0,
            kofRound = 0,
            teamBFightId = 0,
            winner = 0,
            mode = ____exports.KofMode["准备阶段"]
        })
    end
}
return ____exports
