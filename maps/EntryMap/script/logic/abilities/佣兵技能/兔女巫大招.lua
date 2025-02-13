local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["31"] = 10,["32"] = 11,["33"] = 18,["34"] = 10,["35"] = 25,["36"] = 26,["37"] = 27,["39"] = 29,["40"] = 29,["41"] = 29,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 29,["47"] = 25,["48"] = 32,["49"] = 33,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 34,["56"] = 34,["58"] = 36,["60"] = 38,["61"] = 38,["62"] = 39,["63"] = 39,["64"] = 39,["65"] = 39,["66"] = 39,["67"] = 39,["68"] = 39,["69"] = 39,["70"] = 40,["71"] = 40,["72"] = 40,["73"] = 40,["74"] = 40,["75"] = 40,["76"] = 41,["77"] = 41,["78"] = 41,["79"] = 41,["81"] = 42,["82"] = 42,["83"] = 43,["84"] = 44,["87"] = 47,["88"] = 49,["89"] = 50,["90"] = 50,["91"] = 50,["92"] = 50,["93"] = 42,["96"] = 32,["97"] = 10,["98"] = 10,["99"] = 10,["100"] = 10,["101"] = 10,["102"] = 10,["103"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
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
        self:play("attack2", 1.33)
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
    else
        self:play("attack2", 3.09, 0.6)
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["兔女巫大招"]
    local c = ____self_1["治疗"](____self_1, self.owner)
    self:addParticle(
        103962,
        self.owner:getPosition(),
        nil,
        1,
        1,
        10
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(2000),
        {"友军"},
        function(____, a) return a:checkTag(UnitTag["佣兵"]) end
    )
    __TS__ArraySort(
        targets,
        function(____, a, b) return a:v(_____8840) / a:f(Formula["展示面板_血量上限"]) - b:v(_____8840) / b:f(Formula["展示面板_血量上限"]) end
    )
    do
        local i = 0
        while i < 1 do
            local t = targets[i + 1]
            if not t or not t:isAlive() then
                break
            end
            t:cure(ability.skillEntity, Formula["回血值"], c)
            fightUtils:removeRandomDebuff(self.skillEntity, t, {1}, 0.3)
            t:addEffect(
                ability.skillEntity,
                _____6570_503C["佣兵技能"]["兔女巫大招"]:buffId()
            )
            i = i + 1
        end
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134271655,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.45, ["施法完成"] = 0.55}
)
return ____exports
