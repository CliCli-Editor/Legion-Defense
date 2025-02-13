local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 10,["24"] = 9,["25"] = 12,["26"] = 13,["27"] = 13,["28"] = 14,["29"] = 15,["32"] = 18,["33"] = 19,["34"] = 19,["35"] = 19,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 20,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["48"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 24,["58"] = 24,["59"] = 25,["60"] = 12,["61"] = 7,["62"] = 7,["63"] = 7,["64"] = 7,["65"] = 7,["66"] = 7,["67"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["蜡烛人普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
    local ____target_4 = target
    local ____target_addEffect_5 = target.addEffect
    local ____ability_skillEntity_3 = ability.skillEntity
    local ____self_2 = _____6570_503C["精英技能"]["蜡烛人普通攻击"]
    local effectEntity = ____target_addEffect_5(
        ____target_4,
        ____ability_skillEntity_3,
        ____self_2["附加effectId"](____self_2)
    )
    if effectEntity then
        effectEntity:setStore(
            Formula["展示面板_法术攻击"],
            self.owner:formula(Formula["展示面板_法术攻击"])
        )
    end
    target:hurt(
        ability.skillEntity,
        Formula["法术伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        104836
    )
    local ____self_6 = _____6570_503C["精英技能"]["蜡烛人普通攻击"]
    local vx = ____self_6["自我伤害"](____self_6, self.owner)
    self.owner:hurt(ability.skillEntity, Formula["真实伤害"], vx, AbilityType["普攻"])
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134248301,
    ____class_0,
    {["施法开始"] = 0.75, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0}
)
return ____exports
