local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 13,["45"] = 13,["46"] = 13,["47"] = 11,["48"] = 16,["49"] = 17,["50"] = 18,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 20,["57"] = 20,["58"] = 20,["59"] = 20,["60"] = 20,["61"] = 21,["62"] = 21,["63"] = 21,["64"] = 21,["65"] = 21,["66"] = 21,["67"] = 21,["68"] = 21,["69"] = 22,["70"] = 23,["71"] = 23,["72"] = 23,["73"] = 23,["74"] = 23,["75"] = 24,["76"] = 24,["77"] = 25,["78"] = 26,["79"] = 26,["81"] = 28,["82"] = 29,["83"] = 30,["84"] = 31,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 32,["90"] = 32,["91"] = 32,["92"] = 32,["93"] = 32,["94"] = 33,["95"] = 33,["96"] = 33,["97"] = 33,["98"] = 33,["101"] = 35,["102"] = 36,["103"] = 37,["104"] = 38,["105"] = 38,["106"] = 38,["107"] = 38,["108"] = 38,["109"] = 38,["110"] = 38,["111"] = 38,["113"] = 16,["114"] = 10,["115"] = 10,["116"] = 10,["117"] = 10,["118"] = 10,["119"] = 10,["120"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local ____A_7C7B_4F24_5BB3_589E_52A0 = ____Property["A类伤害增加"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1", 2, 0, 0.6)
    self:addParticle(
        134277145,
        self.owner:getPosition(),
        self.owner:getAngle(),
        1,
        0.5,
        150,
        nil,
        1,
        false,
        true
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self:play("ability1", 1, 0.6, -1)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        600
    )
    local offsetPoint2 = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        100
    )
    self:addParticle(
        134269981,
        offsetPoint2,
        angle,
        1.5,
        1,
        170
    )
    self:playSound(self.owner, 134218963)
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createRectangleShape(200, 1200, angle),
        {"敌人"}
    )
    local ____self_1 = _____6570_503C["熊猫人"]["大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    if self.owner:getValue(_____5929_8D4B_3) == 2 then
        local ____self_2 = _____6570_503C["熊猫人"]["大招"]
        v = ____self_2["天赋32伤害"](____self_2, self.owner)
    end
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        local ____t_5 = t
        local ____t_addEffect_6 = t.addEffect
        local ____self_skillEntity_4 = self.skillEntity
        local ____self_3 = _____6570_503C["熊猫人"]["大招"]
        local effectEntity = ____t_addEffect_6(
            ____t_5,
            ____self_skillEntity_4,
            ____self_3["附加effectId"](____self_3)
        )
        if effectEntity ~= nil then
            effectEntity:setStore(
                Formula["展示面板_物理防御"],
                self.owner:formula(Formula["展示面板_物理防御"])
            )
        end
    end
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local dmg = self.owner:getValue(_____8840) * 0.1
        self.owner:hurt(self.skillEntity, Formula["真实伤害"], dmg, AbilityType["大招"])
        self.owner:applyTimeLimitProperties(
            self.skillEntity,
            buffId,
            5,
            1,
            {____A_7C7B_4F24_5BB3_589E_52A0, 0.35, _____7269_7406_9632_5FA1, 40},
            {}
        )
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134231962,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 1}
)
return ____exports
