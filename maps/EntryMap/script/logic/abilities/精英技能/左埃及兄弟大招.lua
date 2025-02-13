local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 12,["28"] = 13,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 16,["38"] = 19,["39"] = 20,["40"] = 21,["41"] = 21,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 22,["46"] = 23,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 12,["58"] = 27,["59"] = 28,["60"] = 28,["61"] = 29,["62"] = 29,["63"] = 29,["64"] = 29,["65"] = 29,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 31,["75"] = 32,["76"] = 33,["77"] = 34,["79"] = 36,["81"] = 36,["82"] = 36,["85"] = 36,["87"] = 36,["89"] = 37,["90"] = 38,["92"] = 38,["95"] = 27,["96"] = 9,["97"] = 9,["98"] = 9,["99"] = 9,["100"] = 9,["101"] = 9,["102"] = 9});
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
local ____Status = include("logic.models.Status")
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability1", 2)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(2000),
        {"敌人"}
    )
    local target = self:getIntensiveAreaTarget(targets, 1000)
    if not target then
        return
    end
    self.targetX = target
    local angle = self:getDirection(self.owner, target)
    local targetPoint = self:offsetPoint(
        target,
        target:getAngle(),
        -200
    )
    local d = self:getDistance(self.owner, targetPoint)
    local h = self:getParabolaHeight(45, d)
    self.owner:move(
        {},
        _____9738_4F53,
        angle,
        d,
        d / 0.85,
        0,
        false,
        h
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["左埃及兄弟大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:addParticle(
        134228468,
        self.owner:getPosition(),
        nil,
        2,
        0.5,
        10
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(1000),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    local ____self_4 = self.owner
    local ____self_4_addEffect_5 = ____self_4.addEffect
    local ____self_skillEntity_3 = self.skillEntity
    local ____self_2 = _____6570_503C["精英技能"]["左埃及兄弟大招"]
    ____self_4_addEffect_5(
        ____self_4,
        ____self_skillEntity_3,
        ____self_2["附加effectId"](____self_2),
        1
    )
    if self.targetX ~= nil and self.targetX:isAlive() then
        local ____opt_6 = self.owner.y3Unit
        if ____opt_6 ~= nil then
            ____opt_6:attack_target(self.targetX.y3Unit, 500)
        end
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134243835,
    ____class_0,
    {["施法开始"] = 0.85, ["施法引导"] = 0, ["施法出手"] = 0.75, ["施法完成"] = 0}
)
return ____exports
