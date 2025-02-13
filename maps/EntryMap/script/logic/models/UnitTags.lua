local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 3,["8"] = 4,["9"] = 5,["10"] = 6,["11"] = 7,["12"] = 8,["13"] = 9,["14"] = 10,["15"] = 11,["16"] = 12,["17"] = 13,["18"] = 15,["19"] = 16,["20"] = 17,["21"] = 18,["22"] = 19,["23"] = 20,["24"] = 21,["25"] = 22,["26"] = 23,["27"] = 24,["28"] = 25,["29"] = 27,["30"] = 28,["31"] = 30,["32"] = 31,["33"] = 32,["34"] = 33,["35"] = 34,["36"] = 35,["37"] = 37,["38"] = 40,["39"] = 41,["40"] = 42,["41"] = 43,["42"] = 44,["43"] = 45,["44"] = 46,["46"] = 48,["47"] = 40,["48"] = 51,["49"] = 52,["50"] = 53,["51"] = 54,["52"] = 55,["53"] = 56,["54"] = 57,["56"] = 59,["57"] = 51,["58"] = 62,["59"] = 63,["60"] = 64,["61"] = 65,["62"] = 66,["63"] = 67,["64"] = 62,["65"] = 70,["66"] = 71,["67"] = 71,["69"] = 72,["70"] = 70});
local ____exports = {}
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local getFactions = ____PlayerUtils.getFactions
____exports.UnitTag = UnitTag or ({})
____exports.UnitTag["战场1"] = "战场1"
____exports.UnitTag["战场2"] = "战场2"
____exports.UnitTag["战场3"] = "战场3"
____exports.UnitTag["战场4"] = "战场4"
____exports.UnitTag["战场5"] = "战场5"
____exports.UnitTag["战场6"] = "战场6"
____exports.UnitTag["战场7"] = "战场7"
____exports.UnitTag["战场8"] = "战场8"
____exports.UnitTag["战场9"] = "战场9"
____exports.UnitTag["战场10"] = "战场10"
____exports.UnitTag["玩家1"] = "玩家1"
____exports.UnitTag["玩家2"] = "玩家2"
____exports.UnitTag["玩家3"] = "玩家3"
____exports.UnitTag["玩家4"] = "玩家4"
____exports.UnitTag["玩家5"] = "玩家5"
____exports.UnitTag["玩家6"] = "玩家6"
____exports.UnitTag["玩家7"] = "玩家7"
____exports.UnitTag["玩家8"] = "玩家8"
____exports.UnitTag["国王A"] = "国王A"
____exports.UnitTag["国王B"] = "国王B"
____exports.UnitTag["中立敌对"] = "中立敌对"
____exports.UnitTag["派系A"] = "派系A"
____exports.UnitTag["派系B"] = "派系B"
____exports.UnitTag["玩家英雄"] = "玩家英雄"
____exports.UnitTag["怪物"] = "怪物"
____exports.UnitTag["国王"] = "国王"
____exports.UnitTag["佣兵"] = "佣兵"
____exports.UnitTag["召唤物"] = "召唤物"
____exports.UnitTag["精英怪"] = "精英怪"
____exports.UnitTag["环境单位"] = "环境单位"
function ____exports.getEnemyTagsMap(self, unit)
    local playerId = unit.playerId
    local ____type = getFactions(nil, playerId)
    if ____type == -1 then
        return {["派系B"] = true, ["中立敌对"] = true}
    elseif ____type == 1 then
        return {["派系A"] = true, ["中立敌对"] = true}
    end
    return {["派系A"] = true, ["派系B"] = true}
end
function ____exports.getFriendlyTagsMap(self, unit)
    local playerId = unit.playerId
    local ____type = getFactions(nil, playerId)
    if ____type == -1 then
        return {["派系A"] = true}
    elseif ____type == 1 then
        return {["派系B"] = true}
    end
    return {["中立敌对"] = true}
end
function ____exports.isEnemy(self, unit1, unit2)
    local playerId1 = unit1.playerId
    local type1 = getFactions(nil, playerId1)
    local playerId2 = unit2.playerId
    local type2 = getFactions(nil, playerId2)
    return type1 ~= type2
end
function ____exports.isLeftSide(self, ______6218_573Aid)
    if ______6218_573Aid <= 4 or ______6218_573Aid == 9 then
        return true
    end
    return false
end
return ____exports
