local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 11,["23"] = 13,["25"] = 13,["27"] = 11,["28"] = 6,["29"] = 6,["30"] = 6,["31"] = 6,["32"] = 6,["33"] = 6,["34"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____opt_1 = cast:getTargetUnit()
    if ____opt_1 ~= nil then
        ____opt_1:hurt(self.skillEntity, Formula["物理伤害"], 100, AbilityType["普攻"])
    end
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134235480,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0}
)
return ____exports
