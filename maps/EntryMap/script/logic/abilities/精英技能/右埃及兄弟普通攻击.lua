local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 11,["32"] = 12,["33"] = 11,["34"] = 14,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 17,["39"] = 18,["42"] = 21,["43"] = 22,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 23,["52"] = 24,["53"] = 26,["54"] = 27,["57"] = 30,["58"] = 31,["59"] = 32,["61"] = 32,["62"] = 32,["63"] = 32,["67"] = 32,["69"] = 32,["76"] = 32,["77"] = 32,["78"] = 32,["79"] = 32,["80"] = 32,["81"] = 32,["83"] = 24,["84"] = 35,["85"] = 14,["86"] = 9,["87"] = 9,["88"] = 9,["89"] = 9,["90"] = 9,["91"] = 9,["92"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____6CD5_672F_653B_51FB_767E_5206_6BD4 = ____Property["法术攻击百分比"]
local _____7269_7406_653B_51FB_767E_5206_6BD4 = ____Property["物理攻击百分比"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1", 2, 0, 0.8)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1", 1, 0.8, 1.1)
    local ____self_1 = _____6570_503C["精英技能"]["右埃及兄弟普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(
        134230758,
        self.owner,
        angle,
        300,
        nil,
        "right_hand"
    )
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
        local ____self_6 = self.owner
        local ____self_6_addTimeLimitProperties_7 = ____self_6.addTimeLimitProperties
        local ____ability_skillEntity_5 = ability.skillEntity
        local ____array_4 = __TS__SparseArrayNew(_____7269_7406_653B_51FB_767E_5206_6BD4)
        local ____self_2 = _____6570_503C["精英技能"]["右埃及兄弟普通攻击"]
        __TS__SparseArrayPush(
            ____array_4,
            ____self_2["附加物攻法攻提升"](____self_2),
            _____6CD5_672F_653B_51FB_767E_5206_6BD4
        )
        local ____self_3 = _____6570_503C["精英技能"]["右埃及兄弟普通攻击"]
        __TS__SparseArrayPush(
            ____array_4,
            ____self_3["附加物攻法攻提升"](____self_3)
        )
        ____self_6_addTimeLimitProperties_7(
            ____self_6,
            ____ability_skillEntity_5,
            buffId,
            3,
            {__TS__SparseArraySpread(____array_4)},
            {},
            {-1}
        )
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134266176,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0}
)
return ____exports
