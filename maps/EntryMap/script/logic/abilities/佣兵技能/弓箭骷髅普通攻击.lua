local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 8,["24"] = 7,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 13,["32"] = 16,["33"] = 17,["34"] = 18,["35"] = 20,["36"] = 21,["39"] = 24,["40"] = 25,["43"] = 28,["44"] = 29,["45"] = 18,["46"] = 32,["47"] = 10,["48"] = 6,["49"] = 6,["50"] = 6,["51"] = 6,["52"] = 6,["53"] = 6,["54"] = 6});
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
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["弓箭骷髅普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134270436, self.owner, angle, 150)
    p:listener({onFinish = function()
        if not self.owner or not self.owner:isAlive() then
            p:remove()
            return
        end
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134282894,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.38, ["施法完成"] = 0.62}
)
return ____exports
