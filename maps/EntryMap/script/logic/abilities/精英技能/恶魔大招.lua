local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["31"] = 10,["32"] = 12,["33"] = 10,["34"] = 13,["35"] = 14,["36"] = 13,["37"] = 16,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 20,["47"] = 22,["48"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 16,["57"] = 25,["58"] = 26,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 27,["66"] = 27,["67"] = 27,["68"] = 27,["69"] = 27,["70"] = 27,["71"] = 27,["72"] = 27,["73"] = 25,["74"] = 29,["75"] = 30,["76"] = 30,["77"] = 31,["78"] = 31,["79"] = 31,["80"] = 31,["81"] = 31,["82"] = 32,["85"] = 35,["86"] = 36,["87"] = 36,["89"] = 38,["90"] = 39,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 40,["97"] = 40,["98"] = 40,["99"] = 40,["100"] = 40,["101"] = 40,["102"] = 40,["103"] = 40,["104"] = 40,["105"] = 40,["107"] = 42,["108"] = 43,["109"] = 44,["111"] = 29,["112"] = 10,["113"] = 10,["114"] = 10,["115"] = 10,["116"] = 10,["117"] = 10,["118"] = 10});
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
local _____7729_6655 = ____Status["眩晕"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.pos = {x = 0, y = 0}
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_2")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(2000),
        {"敌人"}
    )
    local target = self:getIntensiveAreaTarget(targets, 300)
    if not target then
        target = cast:getTargetUnit()
    end
    self.pos = target:getPosition()
    self:addParticle(
        134235940,
        self.pos,
        0,
        0.6,
        1,
        50
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play(
        "ability_2",
        1,
        4.18,
        -1,
        false
    )
    self:addParticle(
        134243515,
        self.pos,
        0,
        0.75,
        0.5,
        50
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["恶魔大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local targets = self.owner:findByShape(
        self.pos,
        Shape:createCircularShape(300),
        {"敌人"}
    )
    if not targets or #targets == 0 then
        return
    end
    if #targets == 1 then
        local ____self_2 = _____6570_503C["精英技能"]["恶魔大招"]
        v = ____self_2["单体伤害"](____self_2, self.owner)
    end
    for ____, t in ipairs(targets) do
        if #targets == 1 then
            t:addTimeLimitProperties(
                self.skillEntity,
                buffId,
                1,
                {},
                {_____7729_6655},
                {-1, 101, 20},
                1,
                nil,
                nil,
                function(____, utils, unit, effect) return effect.activeData.times >= 3 end,
                function(____, utils, unit, effect) return effect.activeData.times > 0 end,
                function(____, utils, unit, effect)
                end
            )
        end
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134224235,
    ____class_0,
    {["施法开始"] = 1.3, ["施法引导"] = 1, ["施法出手"] = 0.2, ["施法完成"] = 0.66}
)
return ____exports
