local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 10,["27"] = 9,["28"] = 12,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 15,["49"] = 15,["50"] = 16,["51"] = 17,["52"] = 17,["53"] = 18,["54"] = 19,["55"] = 20,["57"] = 22,["59"] = 22,["60"] = 22,["63"] = 22,["65"] = 22,["67"] = 12,["68"] = 7,["69"] = 7,["70"] = 7,["71"] = 7,["72"] = 7,["73"] = 7,["74"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(500),
        {"敌人"}
    )
    self:addParticle(
        134228468,
        self.owner:getPosition(),
        nil,
        1,
        0.5,
        10
    )
    self:addParticle(
        134236111,
        self.owner:getPosition(),
        nil,
        1,
        2,
        10
    )
    for ____, t in ipairs(targets) do
        local ____self_1 = _____6570_503C["精英技能"]["泥巴怪大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    local ____self_4 = self.owner
    local ____self_4_addEffect_5 = ____self_4.addEffect
    local ____self_skillEntity_3 = self.skillEntity
    local ____self_2 = _____6570_503C["精英技能"]["泥巴怪大招"]
    ____self_4_addEffect_5(
        ____self_4,
        ____self_skillEntity_3,
        ____self_2["附加effectId"](____self_2),
        1
    )
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134224314,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
