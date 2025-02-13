local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 9,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 9,["26"] = 9,["27"] = 10,["28"] = 17,["29"] = 9,["30"] = 24,["31"] = 25,["32"] = 26,["34"] = 28,["35"] = 28,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 28,["40"] = 28,["42"] = 24,["43"] = 31,["44"] = 32,["45"] = 33,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["51"] = 35,["52"] = 35,["53"] = 35,["55"] = 37,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["63"] = 39,["64"] = 40,["65"] = 41,["66"] = 43,["67"] = 43,["68"] = 44,["69"] = 44,["70"] = 45,["71"] = 45,["72"] = 47,["73"] = 47,["74"] = 47,["75"] = 47,["76"] = 47,["77"] = 48,["78"] = 49,["79"] = 50,["80"] = 51,["81"] = 52,["82"] = 53,["84"] = 55,["85"] = 56,["87"] = 31,["88"] = 9,["89"] = 9,["90"] = 9,["91"] = 9,["92"] = 9,["93"] = 9,["94"] = 9});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_3")
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数2"] == nil then
        self:play("ability_3", 2, 0.4, -1)
    else
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    self:addParticle(
        134236111,
        self.owner:getPosition(),
        nil,
        2.67,
        1,
        -50
    )
    local d1 = 420
    local d2 = 550
    local d3 = 800
    local ____self_1 = _____6570_503C["毒研法师"]["被动"]
    local q1 = ____self_1["中毒层数350"](____self_1, self.owner)
    local ____self_2 = _____6570_503C["毒研法师"]["被动"]
    local q2 = ____self_2["中毒层数350_500"](____self_2, self.owner)
    local ____self_3 = _____6570_503C["毒研法师"]["被动"]
    local q3 = ____self_3["中毒层数"](____self_3, self.owner)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(d3, self.owner),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        local quantity = q3
        if t:distanceQuick(self.owner) < d1 * d1 then
            quantity = quantity + q1
        elseif t:distanceQuick(self.owner) < d2 * d2 then
            quantity = quantity + q2
        end
        quantity = quantity * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        t:addEffect(self.skillEntity, 1, quantity)
    end
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134220670,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0}
)
return ____exports
