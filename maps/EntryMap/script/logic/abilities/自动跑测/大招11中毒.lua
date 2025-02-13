local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 8,["18"] = 8,["19"] = 11,["20"] = 11,["21"] = 11,["22"] = 11,["23"] = 11,["24"] = 13,["25"] = 16,["26"] = 17,["27"] = 17,["28"] = 17,["29"] = 17,["30"] = 17,["31"] = 17,["32"] = 17,["33"] = 17,["34"] = 19,["35"] = 19,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 13,["51"] = 22,["52"] = 23,["53"] = 24,["54"] = 24,["55"] = 25,["56"] = 26,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["62"] = 28,["63"] = 28,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 29,["71"] = 30,["72"] = 31,["73"] = 31,["74"] = 32,["75"] = 33,["76"] = 34,["78"] = 22,["79"] = 11,["80"] = 11,["81"] = 11,["82"] = 11,["83"] = 11,["84"] = 11,["85"] = 11});
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
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    self:addParticle(
        134243108,
        self.owner:getPosition(),
        angle,
        1,
        1,
        50
    )
    self:addParticle(
        134250399,
        self.owner,
        0,
        1.1,
        1.2,
        100,
        "right_hand"
    )
    self:play(
        "ability1_2",
        0.5,
        0,
        0.5,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1_2", 1, 0.51, 1.5)
    local ____self_1 = _____6570_503C["苍坤机器人11"]["大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(self.owner, angle, 100)
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createSectorShape(600, 90, angle),
        {"敌人"}
    )
    self:addParticle(
        134228716,
        offsetPoint,
        angle,
        1.5,
        1,
        100
    )
    self:playSound(self.owner, 134231308)
    local Level = self.owner:getLevel()
    local ____self_2 = _____6570_503C["侠盗"]["普通攻击"]
    local quantity = ____self_2["大招额外中毒层数"](____self_2, Level) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    for ____, t in ipairs(targets) do
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t:addEffect(self.skillEntity, 1, quantity)
    end
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134220206,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 1, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
