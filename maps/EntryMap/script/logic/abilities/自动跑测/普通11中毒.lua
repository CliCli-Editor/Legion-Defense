local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 7,["17"] = 7,["18"] = 9,["19"] = 9,["20"] = 9,["21"] = 9,["22"] = 9,["24"] = 9,["25"] = 10,["26"] = 11,["27"] = 12,["28"] = 9,["29"] = 13,["30"] = 14,["31"] = 15,["32"] = 16,["33"] = 17,["35"] = 19,["37"] = 13,["38"] = 22,["39"] = 23,["40"] = 23,["41"] = 24,["42"] = 25,["45"] = 28,["46"] = 29,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 29,["53"] = 29,["54"] = 29,["55"] = 30,["56"] = 30,["57"] = 31,["58"] = 22,["59"] = 9,["60"] = 9,["61"] = 9,["62"] = 9,["63"] = 9,["64"] = 9,["65"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.isRight = false
    self["左脚底粒子ID"] = 134274413
    self["右脚底粒子ID"] = 134223542
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
    self.isRight = self.owner:getValue(_____7279_6280_1) % 2 == 0
    if self.isRight then
        self:play("attack2", 0.78)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["苍坤机器人11"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:playSound(self.owner, 134266174)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        nil,
        nil,
        nil,
        134239232
    )
    local ____self_2 = _____6570_503C["苍坤机器人11"]["普通攻击"]
    local quantity = ____self_2["中毒层数"](____self_2) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    target:addEffect(self.skillEntity, 1, quantity)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134278036,
    ____class_0,
    {["施法开始"] = 0.28, ["施法引导"] = 0, ["施法出手"] = 0.47, ["施法完成"] = 0}
)
return ____exports
