local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 8,["24"] = 7,["25"] = 10,["26"] = 11,["27"] = 12,["28"] = 13,["29"] = 14,["30"] = 15,["31"] = 16,["32"] = 18,["33"] = 19,["36"] = 22,["38"] = 22,["39"] = 22,["40"] = 22,["41"] = 22,["42"] = 22,["43"] = 22,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["50"] = 23,["51"] = 16,["52"] = 26,["53"] = 10,["54"] = 6,["55"] = 6,["56"] = 6,["57"] = 6,["58"] = 6,["59"] = 30,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 6,["66"] = 6});
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
    self:play("attack2", 3.5)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack2", 0.93, 0.35)
    local target = cast:getTargetUnit()
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134225578, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        local ____opt_1 = target
        if ____opt_1 ~= nil then
            local ____opt_1_hurt_5 = ____opt_1.hurt
            local ____ability_skillEntity_3 = ability.skillEntity
            local ____Formula__6CD5_672F_4F24_5BB3_4 = Formula["法术伤害"]
            local ____self_2 = _____6570_503C["精英技能"]["魔女普通攻击"]
            ____opt_1_hurt_5(
                ____opt_1,
                ____ability_skillEntity_3,
                ____Formula__6CD5_672F_4F24_5BB3_4,
                ____self_2["伤害"](____self_2, self.owner),
                AbilityType["普攻"]
            )
        end
        self:playSound(self.owner, 134240944)
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134258585,
    ____class_0,
    {
        ["释放范围"] = 850,
        ["施法开始"] = 0.1,
        ["施法引导"] = 0,
        ["施法出手"] = 0.7,
        ["施法完成"] = 0
    }
)
return ____exports
