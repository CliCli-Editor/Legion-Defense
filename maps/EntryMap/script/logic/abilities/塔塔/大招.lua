local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 7,["13"] = 7,["14"] = 7,["15"] = 7,["16"] = 7,["17"] = 9,["18"] = 23,["19"] = 24,["20"] = 9,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7});
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
    self:play("attack_b3_00")
    self.owner:addEffect(self.skillEntity, 100931)
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134277984,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.36, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
