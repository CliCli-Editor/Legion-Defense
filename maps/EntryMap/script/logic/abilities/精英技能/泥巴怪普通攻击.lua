local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 14,["32"] = 13,["33"] = 16,["34"] = 17,["35"] = 17,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 19,["42"] = 20,["43"] = 21,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 23,["54"] = 24,["55"] = 25,["56"] = 26,["58"] = 28,["60"] = 30,["61"] = 16,["62"] = 11,["63"] = 11,["64"] = 11,["65"] = 11,["66"] = 11,["67"] = 11,["68"] = 11});
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
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["泥巴怪普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(350, self.owner),
        {"敌人"}
    )
    self:playSound(self.owner, 134240944)
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(
            ability.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            true,
            134231255
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        local scale = 1
        if t:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(t, 134259689, scale)
    end
    self.owner:removeEffect(self.skillEntity, {281813})
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134262106,
    ____class_0,
    {["施法开始"] = 1, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 1.65}
)
return ____exports
