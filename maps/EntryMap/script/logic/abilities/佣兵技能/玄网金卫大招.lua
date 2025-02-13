local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 8,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["24"] = 8,["25"] = 9,["26"] = 16,["27"] = 8,["28"] = 23,["29"] = 24,["30"] = 25,["32"] = 27,["33"] = 27,["34"] = 27,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["40"] = 23,["41"] = 30,["42"] = 31,["43"] = 32,["44"] = 32,["45"] = 32,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 32,["51"] = 34,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 35,["59"] = 36,["60"] = 36,["61"] = 36,["62"] = 36,["63"] = 36,["64"] = 36,["65"] = 36,["66"] = 36,["67"] = 37,["68"] = 38,["70"] = 30,["71"] = 8,["72"] = 8,["73"] = 8,["74"] = 8,["75"] = 8,["76"] = 8,["77"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_2 = createAbility
local ____fight_1 = fight
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
        self:play("ability_30001")
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
    local buffId = _____6570_503C["佣兵技能"]["玄网金卫大招"]:buffId()
    local targets = self.owner:findTargets(
        {"友军"},
        function(____, a) return a:checkTag(UnitTag["佣兵"]) end,
        nil,
        0,
        600
    )
    self:addParticle(
        134231619,
        self.owner:getPosition(),
        nil,
        1.5,
        2,
        10
    )
    for ____, t in ipairs(targets) do
        t:addEffect(self.skillEntity, buffId)
    end
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134231185,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.3}
)
return ____exports
