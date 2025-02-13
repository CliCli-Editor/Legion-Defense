local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["26"] = 7,["27"] = 8,["28"] = 15,["29"] = 7,["30"] = 22,["31"] = 23,["32"] = 24,["34"] = 26,["35"] = 26,["36"] = 26,["37"] = 26,["38"] = 26,["39"] = 26,["40"] = 26,["42"] = 22,["43"] = 29,["44"] = 30,["45"] = 31,["46"] = 31,["47"] = 31,["48"] = 31,["49"] = 31,["50"] = 31,["51"] = 31,["53"] = 33,["55"] = 35,["56"] = 35,["57"] = 36,["58"] = 37,["61"] = 40,["62"] = 41,["63"] = 42,["64"] = 43,["65"] = 44,["66"] = 45,["67"] = 43,["68"] = 47,["69"] = 48,["72"] = 51,["73"] = 52,["74"] = 53,["75"] = 54,["76"] = 55,["77"] = 55,["78"] = 55,["79"] = 55,["80"] = 43,["81"] = 43,["82"] = 58,["83"] = 29,["84"] = 7,["85"] = 7,["86"] = 7,["87"] = 7,["88"] = 7,["89"] = 7,["90"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
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
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_10001_01", 1.29)
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
        self:play("ability_10001_01", 3.67, 0.9)
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["猫女巫大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134243821, self.owner, angle, 150)
    p:prepare({hit_radius = 200})
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(t)
            if not t or not t:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            t:addEffect(
                self.skillEntity,
                _____6570_503C["佣兵技能"]["猫女巫大招"]:buffId()
            )
        end
    })
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134255674,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0.3}
)
return ____exports
