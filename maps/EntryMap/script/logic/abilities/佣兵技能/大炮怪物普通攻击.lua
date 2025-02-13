local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 9,["32"] = 16,["33"] = 8,["34"] = 23,["35"] = 24,["36"] = 25,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 27,["43"] = 27,["44"] = 27,["46"] = 23,["47"] = 30,["48"] = 31,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["54"] = 32,["55"] = 32,["57"] = 34,["58"] = 34,["59"] = 35,["60"] = 36,["63"] = 39,["64"] = 40,["65"] = 41,["67"] = 43,["68"] = 44,["71"] = 47,["72"] = 48,["73"] = 48,["74"] = 48,["75"] = 48,["76"] = 48,["77"] = 48,["78"] = 48,["79"] = 48,["80"] = 49,["81"] = 50,["82"] = 50,["83"] = 50,["84"] = 50,["85"] = 50,["86"] = 51,["87"] = 52,["88"] = 53,["89"] = 54,["92"] = 41,["93"] = 58,["94"] = 58,["95"] = 58,["96"] = 58,["97"] = 58,["98"] = 58,["99"] = 58,["100"] = 58,["101"] = 58,["102"] = 58,["103"] = 30,["104"] = 8,["105"] = 8,["106"] = 8,["107"] = 8,["108"] = 8,["109"] = 8,["110"] = 8});
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
    local ____self_1 = _____6570_503C["佣兵技能"]["大炮怪物普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134247284, self.owner, angle, 150)
    p:listener({onFinish = function()
        return __TS__AsyncAwaiter(function(____awaiter_resolve)
            p:remove()
            if not target or not target:isAlive() then
                return ____awaiter_resolve(nil)
            end
            self:playSound(self.owner, 134240944)
            self:addParticle(
                100114,
                target:getPosition(),
                nil,
                1,
                1,
                10
            )
            __TS__Await(self:awaitTime(0.1))
            local targets = self.owner:findByShape(
                target:getPosition(),
                Shape:createCircularShape(350, target),
                {"敌人"}
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        end)
    end})
    p:moverTarget(
        target,
        2000,
        0,
        nil,
        nil,
        nil,
        150,
        400
    )
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134263828,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.7}
)
return ____exports
