local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 11,["33"] = 10,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 16,["41"] = 19,["42"] = 20,["43"] = 21,["44"] = 23,["45"] = 24,["48"] = 27,["49"] = 28,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 28,["57"] = 28,["59"] = 28,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 28,["73"] = 29,["74"] = 21,["75"] = 32,["76"] = 13,["77"] = 9,["78"] = 9,["79"] = 9,["80"] = 9,["81"] = 9,["82"] = 9,["83"] = 9});
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
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["火蝠"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self.owner:getAngle()
    local p = self:createProjectile(134222581, self.owner, angle, 150)
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local ____target_6 = target
        local ____target_addTimeLimitProperties_7 = target.addTimeLimitProperties
        local ____self_skillEntity_5 = self.skillEntity
        local ____array_4 = __TS__SparseArrayNew(_____7269_7406_9632_5FA1)
        local ____self_2 = _____6570_503C["小怪技能"]["火蝠"]
        __TS__SparseArrayPush(
            ____array_4,
            ____self_2["双抗降低"](____self_2),
            _____6CD5_672F_9632_5FA1
        )
        local ____self_3 = _____6570_503C["小怪技能"]["火蝠"]
        __TS__SparseArrayPush(
            ____array_4,
            ____self_3["双抗降低"](____self_3)
        )
        ____target_addTimeLimitProperties_7(
            ____target_6,
            ____self_skillEntity_5,
            buffId,
            3,
            {__TS__SparseArraySpread(____array_4)},
            {},
            {-1, 20}
        )
        target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 1500, 20)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134235812,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0.45}
)
return ____exports
