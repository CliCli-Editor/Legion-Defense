local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 8,["24"] = 7,["25"] = 11,["26"] = 12,["27"] = 12,["28"] = 13,["29"] = 14,["31"] = 14,["33"] = 11,["34"] = 6,["35"] = 6,["36"] = 6,["37"] = 6,["38"] = 6,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 6,["46"] = 6});
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
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack3")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["洞穿眼魔普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:playSound(self.owner, 134240944)
    local ____opt_2 = cast:getTargetUnit()
    if ____opt_2 ~= nil then
        ____opt_2:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    end
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134232049,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.35,
        ["施法引导"] = 0,
        ["施法出手"] = 0.65,
        ["施法完成"] = 0
    }
)
return ____exports
