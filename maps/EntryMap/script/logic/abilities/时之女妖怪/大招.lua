local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 9,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 9,["26"] = 9,["27"] = 10,["28"] = 17,["29"] = 9,["30"] = 24,["31"] = 25,["32"] = 26,["34"] = 28,["35"] = 28,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 28,["40"] = 28,["42"] = 24,["43"] = 31,["44"] = 32,["45"] = 33,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["51"] = 35,["52"] = 35,["53"] = 35,["55"] = 37,["56"] = 38,["59"] = 41,["60"] = 41,["61"] = 41,["62"] = 41,["63"] = 41,["64"] = 41,["65"] = 41,["66"] = 41,["67"] = 41,["68"] = 41,["69"] = 41,["70"] = 41,["71"] = 42,["72"] = 42,["73"] = 42,["74"] = 42,["75"] = 42,["76"] = 43,["77"] = 44,["78"] = 44,["79"] = 44,["80"] = 44,["81"] = 44,["82"] = 44,["83"] = 44,["84"] = 44,["85"] = 44,["86"] = 45,["87"] = 45,["88"] = 45,["89"] = 45,["90"] = 45,["91"] = 45,["92"] = 45,["93"] = 45,["94"] = 45,["95"] = 46,["96"] = 46,["97"] = 46,["98"] = 46,["99"] = 46,["100"] = 46,["101"] = 46,["102"] = 46,["103"] = 46,["105"] = 48,["106"] = 49,["107"] = 49,["108"] = 49,["109"] = 49,["110"] = 49,["111"] = 50,["112"] = 51,["113"] = 51,["114"] = 51,["115"] = 51,["116"] = 51,["117"] = 51,["118"] = 51,["120"] = 51,["121"] = 51,["123"] = 51,["126"] = 31,["127"] = 9,["128"] = 9,["129"] = 9,["130"] = 9,["131"] = 9,["132"] = 9,["133"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_20 = createAbility
local ____fight_19 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability4", 2)
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
    if self["动画参数2"] == nil then
        self:play("ability4", 2, 2.5, 3.3)
    else
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:addParticle(
        134230781,
        target:getPosition(),
        nil,
        1.5,
        1.5,
        0,
        nil,
        nil,
        nil,
        true
    )
    local targets = self.owner:findByShape(
        target:getPosition(),
        Shape:createCircularShape(600),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        local ____t_3 = t
        local ____t_addEffect_4 = t.addEffect
        local ____self_skillEntity_2 = self.skillEntity
        local ____self_1 = _____6570_503C["时之女妖"]["大招"]
        ____t_addEffect_4(
            ____t_3,
            ____self_skillEntity_2,
            ____self_1["附加buffId1"](____self_1)
        )
        local ____t_7 = t
        local ____t_addEffect_8 = t.addEffect
        local ____self_skillEntity_6 = self.skillEntity
        local ____self_5 = _____6570_503C["时之女妖"]["大招"]
        ____t_addEffect_8(
            ____t_7,
            ____self_skillEntity_6,
            ____self_5["附加buffId2"](____self_5)
        )
        local ____t_11 = t
        local ____t_addEffect_12 = t.addEffect
        local ____self_skillEntity_10 = self.skillEntity
        local ____self_9 = _____6570_503C["时之女妖"]["大招"]
        ____t_addEffect_12(
            ____t_11,
            ____self_skillEntity_10,
            ____self_9["附加buffId3"](____self_9)
        )
    end
    if self.owner:getValue(_____5929_8D4B_3) > 0 then
        local targetXs = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(600),
            {"友军"}
        )
        for ____, t in ipairs(targetXs) do
            local ____t_17 = t
            local ____t_addEffect_18 = t.addEffect
            local ____self_skillEntity_16 = self.skillEntity
            local ____temp_15
            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                local ____self_13 = _____6570_503C["时之女妖"]["大招"]
                ____temp_15 = ____self_13["天赋32友方附加buffId"](____self_13)
            else
                local ____self_14 = _____6570_503C["时之女妖"]["大招"]
                ____temp_15 = ____self_14["天赋31友方附加buffId"](____self_14)
            end
            ____t_addEffect_18(____t_17, ____self_skillEntity_16, ____temp_15)
        end
    end
end
____exports.key = ____createAbility_20(
    nil,
    ____fight_19,
    134226719,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0.4}
)
return ____exports
