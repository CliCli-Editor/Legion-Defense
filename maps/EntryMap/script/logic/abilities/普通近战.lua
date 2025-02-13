local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 6,["29"] = 10,["30"] = 11,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["38"] = 11,["39"] = 11,["40"] = 11,["42"] = 10,["43"] = 5});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____AbilityBase = include("framework.fight.AbilityBase")
local AbilityBase = ____AbilityBase.AbilityBase
local createAbility = ____AbilityBase.createAbility
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack1",
        1,
        0,
        0.5,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____opt_1 = cast:getTargetUnit()
    if ____opt_1 ~= nil then
        ____opt_1:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            100,
            AbilityType["普攻"],
            nil,
            nil,
            104653
        )
    end
end
____exports.key = ____createAbility_4(nil, ____fight_3, 134263493, ____class_0)
return ____exports
