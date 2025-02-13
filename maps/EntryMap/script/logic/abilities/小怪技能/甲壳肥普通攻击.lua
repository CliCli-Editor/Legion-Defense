local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 13,["34"] = 16,["35"] = 17,["36"] = 18,["38"] = 20,["39"] = 21,["42"] = 24,["43"] = 25,["44"] = 26,["45"] = 27,["46"] = 27,["47"] = 28,["48"] = 28,["49"] = 28,["50"] = 28,["51"] = 29,["53"] = 18,["54"] = 32,["55"] = 10,["56"] = 6,["57"] = 6,["58"] = 6,["59"] = 6,["60"] = 6,["61"] = 6,["62"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["甲壳肥"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self.owner:getAngle()
    local p = self:createProjectile(134265725, self.owner, angle, 150)
    p:listener({onFinish = function()
        return __TS__AsyncAwaiter(function(____awaiter_resolve)
            p:remove()
            if not target or not target:isAlive() then
                return ____awaiter_resolve(nil)
            end
            self:playSound(self.owner, 134240944)
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            __TS__Await(self:awaitTime(0.1))
            local ____self_2 = _____6570_503C["小怪技能"]["甲壳肥"]
            local vx = ____self_2["附加真实伤害"](____self_2, self.owner)
            target:addEffect(
                self.skillEntity,
                _____6570_503C["小怪技能"]["甲壳肥"]:buffId()
            )
            target:hurt(self.skillEntity, Formula["真实伤害"], vx, AbilityType["普攻"])
        end)
    end})
    p:moverTarget(target, 1500, 20)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134246110,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.33, ["施法完成"] = 0.52}
)
return ____exports
