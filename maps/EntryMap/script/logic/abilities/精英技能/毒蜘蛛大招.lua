local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 10,["26"] = 9,["27"] = 12,["28"] = 13,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 12,["38"] = 16,["39"] = 17,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 16,["49"] = 20,["50"] = 21,["51"] = 21,["52"] = 22,["53"] = 23,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 24,["58"] = 24,["59"] = 25,["62"] = 28,["63"] = 29,["65"] = 20,["66"] = 7,["67"] = 7,["68"] = 7,["69"] = 7,["70"] = 7,["71"] = 7,["72"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_40001_01")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    self:addParticle(
        134243108,
        self.owner:getPosition(),
        angle,
        1,
        0.9,
        50
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    self:addParticle(
        134250926,
        self.owner:getPosition(),
        angle,
        0.5,
        0.5,
        150
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["钢人大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(self.owner, angle, 100)
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createSectorShape(600, 60, angle),
        {"敌人"}
    )
    if not targets or #targets == 0 then
        return
    end
    for ____, t in ipairs(targets) do
        t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134270484,
    ____class_0,
    {["施法开始"] = 0.7, ["施法引导"] = 0.9, ["施法出手"] = 0.2, ["施法完成"] = 2.2}
)
return ____exports
