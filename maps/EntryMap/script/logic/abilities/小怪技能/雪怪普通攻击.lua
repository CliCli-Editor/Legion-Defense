local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 12,["35"] = 10,["36"] = 13,["37"] = 14,["38"] = 15,["41"] = 18,["43"] = 18,["46"] = 18,["48"] = 18,["49"] = 19,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["58"] = 20,["60"] = 22,["62"] = 24,["63"] = 13,["64"] = 26,["65"] = 27,["66"] = 28,["69"] = 31,["70"] = 31,["71"] = 32,["72"] = 33,["73"] = 33,["75"] = 33,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 33,["80"] = 33,["82"] = 33,["87"] = 33,["88"] = 33,["89"] = 33,["90"] = 33,["91"] = 34,["92"] = 34,["93"] = 34,["94"] = 34,["95"] = 34,["96"] = 34,["97"] = 34,["98"] = 34,["99"] = 34,["101"] = 36,["102"] = 37,["103"] = 37,["104"] = 37,["105"] = 37,["106"] = 37,["107"] = 37,["108"] = 37,["109"] = 37,["110"] = 37,["111"] = 38,["112"] = 39,["113"] = 40,["115"] = 42,["116"] = 26,["117"] = 10,["118"] = 10,["119"] = 10,["120"] = 10,["121"] = 10,["122"] = 10,["123"] = 10});
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
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_2 = self.owner
    local ____self_2_random_3 = ____self_2.random
    local ____self_1 = _____6570_503C["小怪技能"]["雪怪"]
    if ____self_2_random_3(
        ____self_2,
        "雪怪普攻眩晕概率",
        ____self_1["眩晕概率"](____self_1)
    ) and target:getEffectQuantity(buffId) <= 0 then
        self["特殊攻击"] = true
        self:addParticle(
            103537,
            self.owner,
            nil,
            1,
            1,
            nil,
            "weapon"
        )
    else
        self["特殊攻击"] = false
    end
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_4 = _____6570_503C["小怪技能"]["雪怪"]
    local v = ____self_4["伤害"](____self_4, self.owner)
    if self["特殊攻击"] then
        local ____target_7 = target
        local ____target_addTimeLimitProperties_8 = target.addTimeLimitProperties
        local ____array_6 = __TS__SparseArrayNew(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 101, 20}
        )
        local ____self_5 = _____6570_503C["小怪技能"]["雪怪"]
        __TS__SparseArrayPush(
            ____array_6,
            ____self_5["眩晕时长"](____self_5)
        )
        ____target_addTimeLimitProperties_8(
            ____target_7,
            __TS__SparseArraySpread(____array_6)
        )
        self:addParticle(
            103536,
            target,
            nil,
            1,
            0.5,
            nil,
            "hit_point"
        )
    end
    self:playSound(self.owner, 134240944)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        134231255
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134259511,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
