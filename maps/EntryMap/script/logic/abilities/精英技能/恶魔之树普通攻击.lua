local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 12,["38"] = 12,["39"] = 13,["40"] = 14,["42"] = 8,["43"] = 7,["44"] = 7,["45"] = 7,["46"] = 7,["47"] = 7,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 7,["55"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:addParticle(
        101189,
        self.owner:getPosition(),
        nil,
        1,
        1,
        10
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(400),
        {"敌人"}
    )
    local ____self_1 = _____6570_503C["精英技能"]["恶魔之树普通攻击"]
    local quantity = ____self_1["附加中毒层数"](____self_1, self.owner) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    for ____, target in ipairs(targets) do
        target:addEffect(self.skillEntity, 1, quantity)
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134266548,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.5,
        ["施法引导"] = 0,
        ["施法出手"] = 0.5,
        ["施法完成"] = 0
    }
)
return ____exports
