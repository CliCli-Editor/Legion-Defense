local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 11,["24"] = 12,["25"] = 12,["26"] = 12,["27"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["34"] = 12,["35"] = 12,["37"] = 12,["39"] = 12,["40"] = 13,["41"] = 11,["42"] = 6,["43"] = 6,["44"] = 6,["45"] = 6,["46"] = 6,["47"] = 6,["48"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____temp_5
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_1 = _____6570_503C["矮人王"]["大招"]
        ____temp_5 = ____self_1["天赋31附加buff"](____self_1)
    else
        local ____temp_4
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_2 = _____6570_503C["矮人王"]["大招"]
            ____temp_4 = ____self_2["天赋32附加buff"](____self_2)
        else
            local ____self_3 = _____6570_503C["矮人王"]["大招"]
            ____temp_4 = ____self_3["附加buff"](____self_3)
        end
        ____temp_5 = ____temp_4
    end
    local id = ____temp_5
    self.owner:addEffect(self.skillEntity, id)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134251973,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
