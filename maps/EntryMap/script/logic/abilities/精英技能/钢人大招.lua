local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 12,["33"] = 13,["34"] = 12,["35"] = 15,["36"] = 16,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 15,["46"] = 19,["47"] = 20,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 21,["52"] = 21,["53"] = 21,["54"] = 21,["55"] = 21,["56"] = 19,["57"] = 23,["58"] = 24,["59"] = 24,["60"] = 25,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 26,["66"] = 27,["69"] = 30,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 32,["84"] = 32,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 32,["90"] = 33,["91"] = 34,["92"] = 35,["94"] = 23,["95"] = 10,["96"] = 10,["97"] = 10,["98"] = 10,["99"] = 10,["100"] = 10,["101"] = 10});
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
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_40001_01")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    self:addParticle(
        134243108,
        self.owner:getPosition(),
        angle,
        1.67,
        0.9,
        50
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    self:addParticle(
        134250926,
        self.owner:getPosition(),
        angle,
        0.83,
        0.5,
        150
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["钢人大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self.owner:getAngle()
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(1000, 90, angle, self.owner),
        {"敌人"}
    )
    if not targets or #targets == 0 then
        return
    end
    for ____, t in ipairs(targets) do
        t:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 101, 20},
            1
        )
        t:move(
            {_____9738_4F53},
            _____88AB_51FB_9000,
            self.owner:getAngle(),
            10,
            10,
            0,
            false,
            500,
            true
        )
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134244623,
    ____class_0,
    {["施法开始"] = 0.7, ["施法引导"] = 0.9, ["施法出手"] = 0.2, ["施法完成"] = 2.2}
)
return ____exports
