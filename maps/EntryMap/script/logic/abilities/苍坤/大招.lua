local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 16,["32"] = 17,["33"] = 17,["34"] = 17,["35"] = 17,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 20,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 21,["57"] = 22,["58"] = 22,["59"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["65"] = 23,["68"] = 24,["69"] = 24,["70"] = 24,["71"] = 24,["72"] = 24,["74"] = 25,["75"] = 26,["76"] = 27,["77"] = 28,["78"] = 28,["80"] = 30,["81"] = 13,["82"] = 32,["83"] = 33,["84"] = 34,["85"] = 34,["86"] = 35,["87"] = 36,["88"] = 36,["90"] = 38,["91"] = 39,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 40,["97"] = 41,["98"] = 41,["99"] = 41,["100"] = 41,["101"] = 41,["102"] = 41,["103"] = 41,["104"] = 41,["105"] = 42,["106"] = 43,["107"] = 44,["108"] = 45,["109"] = 46,["111"] = 48,["112"] = 32,["113"] = 11,["114"] = 11,["115"] = 11,["116"] = 11,["117"] = 11,["118"] = 11,["119"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_12 = createAbility
local ____fight_11 = fight
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
    local ____self_4 = self.owner
    local ____self_4_addEffect_5 = ____self_4.addEffect
    local ____self_skillEntity_3 = self.skillEntity
    local ____self_2 = _____6570_503C["苍坤"]["大招"]
    local effectEntity = ____self_4_addEffect_5(
        ____self_4,
        ____self_skillEntity_3,
        ____self_2["附加effectId"](____self_2)
    )
    if effectEntity ~= nil then
        effectEntity:setStore(
            0,
            self.owner:getStatistics("护盾减少累计值")
        )
    end
    self.owner:setValue(_____7279_6280_2, 0)
    if self.owner:getValue(_____5929_8D4B_3) == 2 then
        local level = self.owner:getLevel()
        local ____self_8 = _____6570_503C["苍坤"]["大招"]
        shieldValue = shieldValue + ____self_8["天赋32蓄力获得额外护盾值"](____self_8, self.owner, level)
    end
    fightUtils:addShield(self.owner, self.skillEntity, shieldValue)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1_2", 1, 0.51, 1.5)
    local ____self_9 = _____6570_503C["苍坤"]["大招"]
    local v = ____self_9["伤害"](____self_9, self.owner)
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_10 = _____6570_503C["苍坤"]["大招"]
        v = ____self_10["天赋31最终伤害"](____self_10, self.owner)
    end
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(self.owner, angle, 100)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(600, 90, angle, self.owner),
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
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    self.owner:setValue(_____7279_6280_2, 0)
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134220206,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 1, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
