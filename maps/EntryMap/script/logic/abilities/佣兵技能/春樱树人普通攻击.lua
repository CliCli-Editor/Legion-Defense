local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["27"] = 8,["28"] = 9,["29"] = 16,["30"] = 8,["31"] = 23,["32"] = 24,["33"] = 25,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["43"] = 23,["44"] = 30,["45"] = 31,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["54"] = 34,["55"] = 34,["56"] = 35,["57"] = 36,["60"] = 39,["61"] = 40,["62"] = 40,["63"] = 40,["64"] = 40,["65"] = 40,["66"] = 40,["67"] = 40,["68"] = 40,["69"] = 40,["70"] = 41,["71"] = 42,["72"] = 43,["74"] = 45,["75"] = 30,["76"] = 8,["77"] = 8,["78"] = 8,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
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
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1")
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
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["古木树人普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
    target:hurt(
        ability.skillEntity,
        Formula["法术伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        134231255
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134238057,
    ____class_0,
    {["施法开始"] = 0.45, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0}
)
return ____exports
