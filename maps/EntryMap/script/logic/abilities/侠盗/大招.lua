local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 9,["22"] = 10,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 12,["32"] = 12,["33"] = 12,["36"] = 12,["39"] = 13,["40"] = 14,["42"] = 14,["43"] = 14,["46"] = 14,["50"] = 9,["51"] = 7,["52"] = 7,["53"] = 7,["54"] = 7,["55"] = 7,["56"] = 7,["57"] = 7});
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
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("idle3", 2)
    self:addParticle(
        134281270,
        self.owner:getPosition(),
        nil,
        1,
        1
    )
    local ____self_3 = self.owner
    local ____self_3_addEffect_4 = ____self_3.addEffect
    local ____self_skillEntity_2 = self.skillEntity
    local ____self_1 = _____6570_503C["侠盗"]["大招"]
    ____self_3_addEffect_4(
        ____self_3,
        ____self_skillEntity_2,
        ____self_1["附加effectId"](____self_1)
    )
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_7 = self.owner
        local ____self_7_addEffect_8 = ____self_7.addEffect
        local ____self_skillEntity_6 = self.skillEntity
        local ____self_5 = _____6570_503C["侠盗"]["大招"]
        ____self_7_addEffect_8(
            ____self_7,
            ____self_skillEntity_6,
            ____self_5["天赋31额外effectId"](____self_5)
        )
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134252329,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
