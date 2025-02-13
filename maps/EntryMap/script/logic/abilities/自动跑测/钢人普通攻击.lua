local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 8,["29"] = 7,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 10,["35"] = 11,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 12,["40"] = 12,["41"] = 12,["42"] = 12,["43"] = 12,["45"] = 14,["47"] = 9,["48"] = 18,["50"] = 19,["51"] = 19,["52"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["58"] = 20,["59"] = 20,["60"] = 20,["62"] = 21,["63"] = 22,["64"] = 23,["65"] = 24,["66"] = 24,["67"] = 25,["69"] = 25,["71"] = 26,["72"] = 26,["73"] = 27,["75"] = 27,["77"] = 28,["79"] = 18,["80"] = 7,["81"] = 7,["82"] = 7,["83"] = 7,["84"] = 7,["85"] = 7,["86"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
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
        local ____self_1 = _____6570_503C["钢人机器人普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local ____opt_2 = cast:getTargetUnit()
        if ____opt_2 ~= nil then
            ____opt_2:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"]
            )
        end
        self:playSound(self.owner, 134240944)
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        __TS__Await(self:awaitTime(0.2 * x))
        local ____self_4 = _____6570_503C["钢人机器人普通攻击"]
        local v2 = ____self_4["额外伤害1"](____self_4, self.owner)
        local ____opt_5 = cast:getTargetUnit()
        if ____opt_5 ~= nil then
            ____opt_5:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
        end
        local ____self_7 = _____6570_503C["钢人机器人普通攻击"]
        local v3 = ____self_7["额外伤害2"](____self_7, self.owner)
        local ____opt_8 = cast:getTargetUnit()
        if ____opt_8 ~= nil then
            ____opt_8:hurt(self.skillEntity, Formula["固定伤害"], v3, AbilityType["普攻"])
        end
        self:playSound(self.owner, 134240944)
    end)
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134219318,
    ____class_0,
    {["施法开始"] = 0.75, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
