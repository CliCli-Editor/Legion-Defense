local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["29"] = 8,["30"] = 9,["31"] = 8,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 12,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 13,["45"] = 13,["47"] = 15,["49"] = 10,["50"] = 19,["52"] = 20,["53"] = 20,["54"] = 21,["55"] = 22,["58"] = 25,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 26,["66"] = 26,["67"] = 26,["68"] = 27,["69"] = 28,["70"] = 29,["72"] = 31,["73"] = 32,["74"] = 33,["75"] = 33,["76"] = 34,["78"] = 19,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8,["83"] = 8,["84"] = 8,["85"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____66B4_51FB_7387 = ____Property["暴击率"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "钢人普攻暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["暴击"] then
        self:play(
            "attack2",
            1.07,
            0,
            1.87,
            false,
            true
        )
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["精英技能"]["钢人普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240944)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            self["暴击"],
            nil,
            134231255
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
        __TS__Await(self:awaitTime(0.2))
        local ____self_2 = _____6570_503C["精英技能"]["钢人普通攻击"]
        local v2 = ____self_2["额外伤害"](____self_2, self.owner)
        target:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
    end)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134219318,
    ____class_0,
    {["施法开始"] = 0.75, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
