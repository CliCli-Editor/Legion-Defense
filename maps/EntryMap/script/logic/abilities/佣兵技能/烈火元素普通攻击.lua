local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["25"] = 8,["26"] = 9,["27"] = 16,["28"] = 8,["29"] = 23,["30"] = 24,["31"] = 25,["33"] = 27,["34"] = 27,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["41"] = 23,["42"] = 30,["43"] = 31,["44"] = 32,["45"] = 32,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 32,["50"] = 32,["52"] = 34,["53"] = 34,["54"] = 35,["55"] = 36,["58"] = 39,["59"] = 40,["60"] = 41,["61"] = 42,["62"] = 44,["63"] = 45,["66"] = 48,["67"] = 49,["68"] = 42,["69"] = 52,["70"] = 30,["71"] = 8,["72"] = 8,["73"] = 8,["74"] = 8,["75"] = 8,["76"] = 8,["77"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
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
    local ____self_1 = _____6570_503C["佣兵技能"]["烈火元素普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134267491, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["法术伤害"], 0.5 * v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 1500, 10)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134258229,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.75}
)
return ____exports
