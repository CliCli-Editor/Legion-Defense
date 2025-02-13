local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 18,["36"] = 10,["37"] = 25,["38"] = 26,["39"] = 27,["41"] = 29,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 29,["46"] = 29,["47"] = 29,["49"] = 25,["50"] = 32,["51"] = 33,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 34,["56"] = 34,["57"] = 34,["58"] = 34,["60"] = 36,["61"] = 36,["62"] = 37,["63"] = 38,["66"] = 41,["67"] = 42,["68"] = 42,["69"] = 42,["70"] = 42,["71"] = 42,["72"] = 42,["73"] = 42,["74"] = 42,["75"] = 43,["76"] = 43,["77"] = 43,["78"] = 43,["79"] = 43,["80"] = 44,["81"] = 45,["82"] = 46,["83"] = 47,["84"] = 48,["85"] = 49,["86"] = 50,["87"] = 50,["88"] = 50,["89"] = 50,["90"] = 50,["91"] = 50,["92"] = 50,["93"] = 50,["94"] = 50,["95"] = 51,["96"] = 52,["97"] = 53,["100"] = 56,["101"] = 56,["102"] = 56,["103"] = 56,["106"] = 32,["107"] = 10,["108"] = 10,["109"] = 10,["110"] = 10,["111"] = 10,["112"] = 10,["113"] = 10});
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
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local isEnemy = ____UnitTags.isEnemy
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_10001")
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["魔女巫大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    self:addParticle(
        134263259,
        self.owner:getPosition(),
        angle,
        2,
        2,
        100
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(1200, 50, angle, self.owner),
        {"敌人", "友军"}
    )
    for ____, t in ipairs(targets) do
        if isEnemy(nil, self.owner, t) then
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local a = self:getDirection(self.owner, t)
            t:move(
                {_____9738_4F53},
                _____88AB_51FB_9000,
                a,
                50,
                500,
                -1,
                false
            )
            local effects = t:findOwnedEffects({20})
            for ____, e in ipairs(effects) do
                e:resetTimesRecordToZero()
            end
        else
            t:addEffect(
                self.skillEntity,
                _____6570_503C["佣兵技能"]["魔女巫大招"]:buffId()
            )
        end
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134232930,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.75, ["施法完成"] = 0.25}
)
return ____exports
