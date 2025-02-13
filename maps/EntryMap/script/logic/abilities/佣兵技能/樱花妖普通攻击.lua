local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["27"] = 9,["28"] = 10,["29"] = 17,["30"] = 9,["31"] = 24,["32"] = 25,["33"] = 26,["35"] = 28,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 28,["40"] = 28,["41"] = 28,["43"] = 24,["44"] = 31,["45"] = 32,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 33,["50"] = 33,["51"] = 33,["52"] = 33,["54"] = 35,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["63"] = 38,["64"] = 39,["65"] = 39,["66"] = 39,["67"] = 39,["69"] = 41,["70"] = 41,["71"] = 42,["72"] = 43,["75"] = 46,["76"] = 47,["77"] = 48,["78"] = 49,["79"] = 51,["80"] = 52,["83"] = 55,["84"] = 56,["85"] = 49,["86"] = 59,["87"] = 31,["88"] = 9,["89"] = 9,["90"] = 9,["91"] = 9,["92"] = 9,["93"] = 9,["94"] = 9});
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1", 1.29)
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
        self:play("attack1", 1.67, 0.45)
    end
    local friends = self.owner:findTargets(
        {"友军"},
        function(____, a) return a:checkTag(UnitTag["佣兵"]) end,
        2,
        0,
        1000
    )
    for ____, f in ipairs(friends) do
        f:addEffect(
            ability.skillEntity,
            _____6570_503C["佣兵技能"]["樱花妖普通攻击"]:buffId()
        )
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["樱花妖普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134258153, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134267332,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0.45}
)
return ____exports
