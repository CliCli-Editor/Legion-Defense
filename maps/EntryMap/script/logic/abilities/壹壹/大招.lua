local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["30"] = 9,["31"] = 11,["32"] = 9,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 14,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 16,["48"] = 16,["49"] = 16,["50"] = 12,["51"] = 18,["52"] = 19,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["58"] = 22,["59"] = 22,["60"] = 22,["61"] = 22,["62"] = 22,["63"] = 22,["64"] = 22,["65"] = 22,["66"] = 23,["67"] = 24,["68"] = 24,["69"] = 24,["70"] = 24,["71"] = 24,["72"] = 25,["73"] = 26,["74"] = 27,["75"] = 27,["76"] = 27,["77"] = 27,["78"] = 27,["79"] = 27,["80"] = 27,["81"] = 27,["82"] = 27,["83"] = 27,["84"] = 27,["85"] = 27,["86"] = 27,["87"] = 28,["89"] = 30,["90"] = 31,["91"] = 32,["92"] = 33,["94"] = 36,["95"] = 38,["96"] = 39,["97"] = 39,["98"] = 39,["99"] = 39,["101"] = 39,["102"] = 39,["104"] = 39,["105"] = 40,["107"] = 18,["108"] = 9,["109"] = 9,["110"] = 9,["111"] = 9,["112"] = 9,["113"] = 9,["114"] = 9});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "大招暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    self:play("attack2")
    self:playSound(self.owner, 134238286)
    self:addParticle(
        134242836,
        self.owner,
        nil,
        0.6,
        0.4,
        0,
        "大鼓",
        1
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        350
    )
    self:addParticle(
        134222575,
        offsetPoint,
        nil,
        1.5,
        1,
        50
    )
    self:playSound(self.owner, 134253046)
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createCircularShape(400),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        local ____t_4 = t
        local ____t_hurt_5 = t.hurt
        local ____self_skillEntity_2 = self.skillEntity
        local ____Formula__7269_7406_4F24_5BB3_3 = Formula["物理伤害"]
        local ____self_1 = _____6570_503C["壹壹"]["大招"]
        ____t_hurt_5(
            ____t_4,
            ____self_skillEntity_2,
            ____Formula__7269_7406_4F24_5BB3_3,
            ____self_1["伤害"](____self_1, self.owner),
            AbilityType["大招"],
            self["暴击"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        if self.owner:getValue(_____7279_6280_1) < 1 then
            self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
            self.owner:addMp(self.skillEntity, 100)
        end
    elseif self["暴击"] then
        self.owner:addMp(self.skillEntity, 100)
        local ____temp_8
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_6 = _____6570_503C["壹壹"]["大招"]
            ____temp_8 = ____self_6["天赋32附加effectId"](____self_6)
        else
            local ____self_7 = _____6570_503C["壹壹"]["大招"]
            ____temp_8 = ____self_7["附加effectId"](____self_7)
        end
        local effectId = ____temp_8
        self.owner:addEffect(self.skillEntity, effectId, 1)
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134228047,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.36, ["施法完成"] = 0.64}
)
return ____exports
