local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 15,["27"] = 7,["28"] = 23,["29"] = 24,["30"] = 25,["32"] = 27,["33"] = 27,["34"] = 27,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["40"] = 23,["41"] = 30,["42"] = 31,["43"] = 32,["44"] = 32,["45"] = 32,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 32,["51"] = 34,["53"] = 34,["54"] = 34,["57"] = 34,["60"] = 35,["61"] = 36,["63"] = 36,["64"] = 36,["67"] = 36,["71"] = 30,["72"] = 7,["73"] = 7,["74"] = 7,["75"] = 7,["76"] = 7,["77"] = 7,["78"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
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
        self:play("ability_2")
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
    local ____self_3 = self.owner
    local ____self_3_addEffect_4 = ____self_3.addEffect
    local ____self_skillEntity_2 = self.skillEntity
    local ____self_1 = _____6570_503C["战王"]["大招"]
    ____self_3_addEffect_4(
        ____self_3,
        ____self_skillEntity_2,
        ____self_1["附加buff"](____self_1)
    )
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_7 = self.owner
        local ____self_7_addEffect_8 = ____self_7.addEffect
        local ____self_skillEntity_6 = self.skillEntity
        local ____self_5 = _____6570_503C["战王"]["大招"]
        ____self_7_addEffect_8(
            ____self_7,
            ____self_skillEntity_6,
            ____self_5["天赋31附加buff"](____self_5)
        )
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134248662,
    ____class_0,
    {["施法开始"] = 0.7, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.3}
)
return ____exports
