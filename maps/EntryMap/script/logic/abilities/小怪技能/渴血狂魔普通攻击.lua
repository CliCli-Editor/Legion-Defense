local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 10,["29"] = 9,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 17,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 19,["50"] = 20,["51"] = 21,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 22,["60"] = 22,["61"] = 23,["62"] = 24,["63"] = 25,["65"] = 27,["67"] = 29,["69"] = 29,["70"] = 29,["71"] = 29,["74"] = 29,["75"] = 29,["76"] = 29,["78"] = 12,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8,["83"] = 8,["84"] = 8,["85"] = 8});
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
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_10001_01")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["渴血狂魔"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(self.owner, angle, 100)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(350, 90, angle, self.owner),
        {"敌人"}
    )
    self:playSound(self.owner, 134240944)
    self:addParticle(
        104876,
        offsetPoint,
        angle,
        1.75,
        1,
        150
    )
    local scale = 1
    for ____, target in ipairs(targets) do
        target.tempData[AbilityTagData["是否为AOE"]] = true
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            134231255
        )
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end
    local ____self_5 = self.owner
    local ____self_5_cure_6 = ____self_5.cure
    local ____self_skillEntity_3 = self.skillEntity
    local ____Formula__56DE_8840_503C_4 = Formula["回血值"]
    local ____self_2 = _____6570_503C["小怪技能"]["渴血狂魔"]
    ____self_5_cure_6(
        ____self_5,
        ____self_skillEntity_3,
        ____Formula__56DE_8840_503C_4,
        ____self_2["治疗"](____self_2, self.owner)
    )
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134272641,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
