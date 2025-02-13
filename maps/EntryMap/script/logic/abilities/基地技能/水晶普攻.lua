local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["30"] = 8,["31"] = 8,["32"] = 7,["33"] = 10,["34"] = 12,["35"] = 13,["38"] = 16,["39"] = 18,["40"] = 19,["41"] = 20,["43"] = 21,["44"] = 22,["45"] = 22,["46"] = 23,["49"] = 26,["50"] = 27,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 28,["60"] = 28,["61"] = 28,["62"] = 28,["63"] = 28,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 29,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 30,["76"] = 30,["77"] = 30,["79"] = 19,["80"] = 32,["81"] = 19,["82"] = 19,["83"] = 35,["84"] = 10,["85"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack",
        1,
        0,
        1,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self:getDirection(ability.owner, target)
    local p = self:createProjectile(134242008, self.owner, angle, 150)
    p:listener({
        onFinish = function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                p:remove()
                local ____self_1 = _____6570_503C["水晶"]["普通攻击"]
                local v = ____self_1["普通伤害"](____self_1, self.owner)
                if not target or not target:isAlive() then
                    return ____awaiter_resolve(nil)
                end
                self:playSound(self.owner, 134240944)
                local ____target_4 = target
                local ____target_addEffect_5 = target.addEffect
                local ____self_skillEntity_3 = self.skillEntity
                local ____self_2 = _____6570_503C["水晶"]["普通攻击"]
                ____target_addEffect_5(
                    ____target_4,
                    ____self_skillEntity_3,
                    ____self_2["附加buff"](____self_2)
                )
                target:hurt(
                    self.skillEntity,
                    Formula["真实伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    104653
                )
                __TS__Await(self:awaitTime(0.1))
                target:hurt(
                    self.skillEntity,
                    Formula["固定伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    104653
                )
            end)
        end,
        onHit = function(unit)
        end
    })
    p:moverTarget(target, 1500, 0)
end
____exports.key = ____createAbility_7(nil, ____fight_6, 134277992, ____class_0)
return ____exports
