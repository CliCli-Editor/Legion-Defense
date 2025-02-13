local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 14,["34"] = 15,["35"] = 14,["36"] = 17,["37"] = 18,["38"] = 18,["39"] = 19,["40"] = 20,["43"] = 23,["44"] = 24,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 25,["53"] = 25,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 27,["66"] = 28,["67"] = 29,["68"] = 30,["69"] = 31,["70"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["79"] = 31,["84"] = 31,["85"] = 31,["86"] = 31,["87"] = 31,["88"] = 32,["90"] = 17,["91"] = 12,["92"] = 12,["93"] = 12,["94"] = 12,["95"] = 12,["96"] = 37,["97"] = 37,["98"] = 37,["99"] = 37,["100"] = 37,["101"] = 37,["102"] = 12,["103"] = 12});
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
local ____Status = include("logic.models.Status")
local _____6C89_9ED8 = ____Status["沉默"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("skill1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["地精法师大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local pos = target:getPosition()
    self:addParticle(
        134263453,
        pos,
        nil,
        1,
        0.5,
        10
    )
    self:addParticle(
        134258381,
        pos,
        nil,
        3,
        0.5,
        10
    )
    local targetss = self.owner:findByShape(
        pos,
        Shape:createCircularShape(500),
        {"敌人"}
    )
    for ____, t in ipairs(targetss) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        local ____t_4 = t
        local ____t_addTimeLimitProperties_5 = t.addTimeLimitProperties
        local ____array_3 = __TS__SparseArrayNew(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____6C89_9ED8},
            {-1, 20}
        )
        local ____self_2 = _____6570_503C["精英技能"]["地精法师大招"]
        __TS__SparseArrayPush(
            ____array_3,
            ____self_2["沉默时长"](____self_2)
        )
        ____t_addTimeLimitProperties_5(
            ____t_4,
            __TS__SparseArraySpread(____array_3)
        )
        t:setMp(self.skillEntity, 0)
    end
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134240338,
    ____class_0,
    {
        ["释放范围"] = 1000,
        ["施法开始"] = 0.8,
        ["施法引导"] = 0,
        ["施法出手"] = 0.7,
        ["施法完成"] = 0
    }
)
return ____exports
