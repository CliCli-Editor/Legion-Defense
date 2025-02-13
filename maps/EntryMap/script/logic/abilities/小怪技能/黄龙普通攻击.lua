local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 13,["34"] = 13,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 16,["41"] = 16,["44"] = 10,["45"] = 6,["46"] = 6,["47"] = 6,["48"] = 6,["49"] = 6,["50"] = 6,["51"] = 6});
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
    self:play("attack")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["小怪技能"]["黄龙"]
        local v1 = ____self_1["第一段伤害"](____self_1, self.owner)
        self:playSound(self.owner, 201329173)
        local ____opt_2 = cast:getTargetUnit()
        if ____opt_2 ~= nil then
            ____opt_2:hurt(self.skillEntity, Formula["物理伤害"], v1, AbilityType["普攻"])
        end
        __TS__Await(self:awaitTime(0.1))
        local ____self_4 = _____6570_503C["小怪技能"]["黄龙"]
        local v2 = ____self_4["第二段真实伤害"](____self_4, self.owner)
        local ____opt_5 = cast:getTargetUnit()
        if ____opt_5 ~= nil then
            ____opt_5:hurt(self.skillEntity, Formula["真实伤害"], v2, AbilityType["普攻"])
        end
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134235460,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0}
)
return ____exports
