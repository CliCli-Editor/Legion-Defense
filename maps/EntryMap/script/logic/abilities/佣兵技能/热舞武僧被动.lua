local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 6,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 7,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["29"] = 7,["30"] = 6,["31"] = 6,["32"] = 6,["33"] = 6,["34"] = 6,["35"] = 6,["36"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play(
            "ability_30002",
            0.5,
            0,
            -1,
            true
        )
    end)
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134224791,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 100000, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
