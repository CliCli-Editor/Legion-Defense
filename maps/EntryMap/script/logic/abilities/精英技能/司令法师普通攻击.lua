local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["25"] = 7,["26"] = 9,["27"] = 7,["28"] = 10,["29"] = 11,["30"] = 12,["31"] = 13,["32"] = 14,["34"] = 16,["36"] = 10,["37"] = 20,["38"] = 21,["39"] = 22,["40"] = 22,["41"] = 22,["42"] = 22,["43"] = 22,["44"] = 22,["45"] = 22,["47"] = 25,["48"] = 26,["51"] = 29,["52"] = 30,["53"] = 31,["54"] = 32,["55"] = 34,["56"] = 35,["59"] = 38,["60"] = 39,["61"] = 40,["62"] = 40,["63"] = 40,["64"] = 40,["65"] = 40,["66"] = 40,["67"] = 40,["68"] = 40,["69"] = 40,["70"] = 40,["71"] = 40,["72"] = 40,["74"] = 42,["75"] = 42,["76"] = 42,["77"] = 42,["78"] = 42,["79"] = 42,["80"] = 42,["81"] = 42,["82"] = 42,["83"] = 42,["84"] = 42,["85"] = 42,["87"] = 32,["88"] = 46,["89"] = 20,["90"] = 7,["91"] = 7,["92"] = 7,["93"] = 7,["94"] = 7,["95"] = 7,["96"] = 7});
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
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
local ____createAbility_12 = createAbility
local ____fight_11 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("ability_2", 0.86)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["特殊攻击"] then
        self:play(
            "ability_2",
            1.07,
            0.35,
            -1,
            false
        )
    end
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134240856, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        if self["特殊攻击"] then
            local ____target_4 = target
            local ____target_hurt_5 = target.hurt
            local ____ability_skillEntity_2 = ability.skillEntity
            local ____Formula__6CD5_672F_4F24_5BB3_3 = Formula["法术伤害"]
            local ____self_1 = _____6570_503C["精英技能"]["司令法师普通攻击"]
            ____target_hurt_5(
                ____target_4,
                ____ability_skillEntity_2,
                ____Formula__6CD5_672F_4F24_5BB3_3,
                ____self_1["特殊攻击伤害"](____self_1, self.owner, target),
                AbilityType["普攻"]
            )
        else
            local ____target_9 = target
            local ____target_hurt_10 = target.hurt
            local ____ability_skillEntity_7 = ability.skillEntity
            local ____Formula__6CD5_672F_4F24_5BB3_8 = Formula["法术伤害"]
            local ____self_6 = _____6570_503C["精英技能"]["司令法师普通攻击"]
            ____target_hurt_10(
                ____target_9,
                ____ability_skillEntity_7,
                ____Formula__6CD5_672F_4F24_5BB3_8,
                ____self_6["普通伤害"](____self_6, self.owner),
                AbilityType["普攻"]
            )
        end
    end})
    p:moverTarget(target, 1500, 10)
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134279739,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.87, ["施法完成"] = 0}
)
return ____exports
