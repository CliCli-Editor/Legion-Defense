local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["30"] = 9,["31"] = 10,["32"] = 17,["33"] = 9,["34"] = 24,["35"] = 25,["36"] = 26,["38"] = 28,["39"] = 28,["40"] = 28,["41"] = 28,["42"] = 28,["43"] = 28,["44"] = 28,["46"] = 24,["47"] = 31,["48"] = 32,["49"] = 33,["50"] = 33,["51"] = 33,["52"] = 33,["53"] = 33,["54"] = 33,["55"] = 33,["57"] = 35,["58"] = 35,["59"] = 36,["60"] = 37,["63"] = 40,["64"] = 41,["65"] = 42,["66"] = 43,["67"] = 45,["68"] = 46,["71"] = 49,["72"] = 50,["73"] = 50,["74"] = 50,["75"] = 50,["76"] = 50,["77"] = 51,["78"] = 51,["79"] = 51,["80"] = 51,["81"] = 51,["82"] = 51,["83"] = 51,["84"] = 51,["85"] = 52,["86"] = 53,["87"] = 53,["88"] = 53,["89"] = 53,["91"] = 53,["92"] = 53,["94"] = 53,["95"] = 54,["96"] = 55,["97"] = 56,["99"] = 43,["100"] = 60,["101"] = 31,["102"] = 9,["103"] = 9,["104"] = 9,["105"] = 9,["106"] = 9,["107"] = 9,["108"] = 9});
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
local ____Property = include("logic.models.Property")
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
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
    local ____self_1 = _____6570_503C["佣兵技能"]["树精普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134256868, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(450),
            {"敌人"}
        )
        self:addParticle(
            101062,
            target:getPosition(),
            nil,
            1.5,
            1,
            10
        )
        for ____, t in ipairs(targets) do
            local ____temp_4
            if t:p(_____901A_7528_62A4_76FE) > 0 then
                local ____self_2 = _____6570_503C["佣兵技能"]["树精普通攻击"]
                ____temp_4 = ____self_2["对护盾伤害提升后的伤害"](____self_2, self.owner)
            else
                local ____self_3 = _____6570_503C["佣兵技能"]["树精普通攻击"]
                ____temp_4 = ____self_3["伤害"](____self_3, self.owner)
            end
            v = ____temp_4
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134242298,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
