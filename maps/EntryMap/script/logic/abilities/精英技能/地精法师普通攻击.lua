local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 9,["24"] = 8,["25"] = 11,["26"] = 12,["27"] = 13,["30"] = 16,["31"] = 17,["32"] = 18,["33"] = 19,["34"] = 21,["35"] = 22,["38"] = 25,["39"] = 26,["40"] = 26,["41"] = 26,["42"] = 26,["43"] = 26,["44"] = 26,["45"] = 26,["46"] = 26,["47"] = 26,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 19,["61"] = 30,["62"] = 11,["63"] = 6,["64"] = 6,["65"] = 6,["66"] = 6,["67"] = 6,["68"] = 34,["69"] = 34,["70"] = 34,["71"] = 34,["72"] = 34,["73"] = 34,["74"] = 6,["75"] = 6});
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
local ____createAbility_11 = createAbility
local ____fight_10 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134269943, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local ____target_3 = target
        local ____target_addMp_4 = target.addMp
        local ____self_skillEntity_2 = self.skillEntity
        local ____self_1 = _____6570_503C["精英技能"]["地精法师普通攻击"]
        ____target_addMp_4(
            ____target_3,
            ____self_skillEntity_2,
            ____self_1["附加获得蓝量"](____self_1)
        )
        local ____target_8 = target
        local ____target_hurt_9 = target.hurt
        local ____ability_skillEntity_6 = ability.skillEntity
        local ____Formula__6CD5_672F_4F24_5BB3_7 = Formula["法术伤害"]
        local ____self_5 = _____6570_503C["精英技能"]["地精法师普通攻击"]
        ____target_hurt_9(
            ____target_8,
            ____ability_skillEntity_6,
            ____Formula__6CD5_672F_4F24_5BB3_7,
            ____self_5["伤害"](____self_5, self.owner),
            AbilityType["普攻"]
        )
    end})
    p:moverTarget(target, 1500, 10)
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134268007,
    ____class_0,
    {
        ["释放范围"] = 850,
        ["施法开始"] = 0,
        ["施法引导"] = 0,
        ["施法出手"] = 0.65,
        ["施法完成"] = 0.35
    }
)
return ____exports
