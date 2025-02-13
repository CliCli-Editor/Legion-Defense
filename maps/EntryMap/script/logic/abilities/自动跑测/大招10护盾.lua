local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 11,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 13,["27"] = 16,["28"] = 17,["29"] = 17,["30"] = 17,["31"] = 17,["32"] = 17,["33"] = 17,["34"] = 17,["35"] = 17,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 20,["51"] = 20,["52"] = 21,["53"] = 22,["54"] = 22,["55"] = 23,["56"] = 13,["57"] = 25,["58"] = 26,["59"] = 27,["60"] = 27,["61"] = 28,["62"] = 29,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 32,["77"] = 33,["78"] = 34,["80"] = 25,["81"] = 11,["82"] = 11,["83"] = 11,["84"] = 11,["85"] = 11,["86"] = 11,["87"] = 11});
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
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
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
    local level = self.owner:getLevel()
    local ____self_1 = _____6570_503C["苍坤"]["大招"]
    local shieldValue = ____self_1["蓄力获得护盾值"](____self_1, level)
    fightUtils:addShield(self.owner, self.skillEntity, shieldValue)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1_2", 1, 0.51, 1.5)
    local ____self_2 = _____6570_503C["苍坤"]["大招"]
    local v = ____self_2["伤害"](____self_2, self.owner)
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
    for ____, t in ipairs(targets) do
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
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
