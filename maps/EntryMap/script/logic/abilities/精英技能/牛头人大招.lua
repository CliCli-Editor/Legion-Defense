local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 8,["21"] = 7,["22"] = 10,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 10,["29"] = 5,["30"] = 5,["31"] = 5,["32"] = 5,["33"] = 5,["34"] = 5,["35"] = 5});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_10001_01")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.owner:addEffect(
        self.skillEntity,
        _____6570_503C["精英技能"]["牛头人大招"]:buffId(),
        10
    )
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134245888,
    ____class_0,
    {["施法开始"] = 0.57, ["施法引导"] = 0, ["施法出手"] = 0.78, ["施法完成"] = 0}
)
return ____exports
