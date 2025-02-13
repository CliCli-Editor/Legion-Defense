local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 7,["15"] = 7,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 9,["21"] = 10,["22"] = 11,["23"] = 12,["24"] = 8,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 7,["30"] = 7,["31"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability_3", 1, 1.5, -1)
    self.owner:addEffect(self.skillEntity, 282431, 1)
    self.owner:addEffect(self.skillEntity, 282432, 1)
    self.owner:setValue(_____7279_6280_1, 0)
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134280661,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
