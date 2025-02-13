local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 9,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 13,["31"] = 12,["32"] = 15,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 17,["39"] = 18,["40"] = 19,["42"] = 21,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 25,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 26,["59"] = 27,["60"] = 28,["61"] = 29,["62"] = 29,["63"] = 29,["64"] = 29,["65"] = 29,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 29,["70"] = 29,["71"] = 29,["72"] = 29,["73"] = 30,["75"] = 34,["78"] = 37,["79"] = 38,["80"] = 39,["81"] = 39,["82"] = 39,["83"] = 39,["84"] = 39,["85"] = 40,["86"] = 41,["87"] = 41,["88"] = 41,["89"] = 41,["90"] = 41,["91"] = 42,["92"] = 43,["93"] = 43,["94"] = 43,["95"] = 43,["96"] = 43,["97"] = 43,["98"] = 43,["99"] = 43,["100"] = 43,["101"] = 44,["102"] = 44,["103"] = 44,["104"] = 44,["105"] = 44,["106"] = 44,["107"] = 44,["108"] = 44,["109"] = 44,["110"] = 15,["111"] = 11,["112"] = 11,["113"] = 11,["114"] = 11,["115"] = 11,["116"] = 11,["117"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local targetsx = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(2000),
        {"敌人"}
    )
    local target = self:getIntensiveAreaTarget(targetsx, 1000)
    if target == nil then
        target = cast:getTargetUnit()
    end
    if target == nil then
        return
    end
    self:addParticle(
        134251676,
        target:getPosition(),
        nil,
        3,
        1,
        10
    )
    local targets = self.owner:findByShape(
        target:getPosition(),
        Shape:createCircularShape(1000),
        {"敌人"}
    )
    local count = #targets
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        local ____t_4 = t
        local ____t_hurt_5 = t.hurt
        local ____ability_skillEntity_2 = ability.skillEntity
        local ____Formula__6CD5_672F_4F24_5BB3_3 = Formula["法术伤害"]
        local ____self_1 = _____6570_503C["精英技能"]["德鲁一大招"]
        ____t_hurt_5(
            ____t_4,
            ____ability_skillEntity_2,
            ____Formula__6CD5_672F_4F24_5BB3_3,
            ____self_1["伤害"](____self_1, self.owner, count),
            AbilityType["大招"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    if #targets == 0 then
        return
    end
    local target1 = random:randomList(targets)
    local target2 = random:randomList(targets)
    local pos1 = self:offsetPoint(
        target1:getPosition(),
        target1:getAngle() + math.random(-30, 30),
        -400
    )
    local pos11 = {x = pos1.x, y = pos1.y}
    local pos2 = self:offsetPoint(
        target2:getPosition(),
        target2:getAngle() + math.random(-30, 30),
        -400
    )
    local pos22 = {x = pos2.x, y = pos2.y}
    fightUtils:summon(
        self.owner,
        15,
        nil,
        nil,
        1,
        4,
        pos11
    )
    fightUtils:summon(
        self.owner,
        15,
        nil,
        nil,
        1,
        4,
        pos22
    )
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134245991,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
