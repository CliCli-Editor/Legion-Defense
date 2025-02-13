local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 9,["26"] = 10,["27"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 13,["34"] = 14,["35"] = 15,["36"] = 11,["40"] = 10,["41"] = 17,["43"] = 18,["45"] = 19,["46"] = 19,["47"] = 20,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 21,["52"] = 21,["53"] = 21,["54"] = 21,["56"] = 24,["57"] = 25,["58"] = 27,["59"] = 29,["60"] = 32,["61"] = 33,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 34,["66"] = 38,["67"] = 39,["68"] = 39,["69"] = 39,["70"] = 39,["71"] = 39,["72"] = 39,["73"] = 39,["74"] = 39,["75"] = 39,["76"] = 39,["78"] = 41,["79"] = 42,["81"] = 34,["82"] = 34,["83"] = 46,["84"] = 47,["85"] = 19,["89"] = 10,["90"] = 10,["92"] = 9,["93"] = 7});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____AbilityBase = include("framework.fight.AbilityBase")
local AbilityBase = ____AbilityBase.AbilityBase
local createAbility = ____AbilityBase.createAbility
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:parallel(
            function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    do
                        local i = 0
                        while i < 7 do
                            self:play(i % 2 == 0 and "attack1" or "attack2")
                            __TS__Await(self:awaitTime(0.15))
                            self:addEffect(self.owner, 134243618, 0.15)
                            __TS__Await(self:awaitTime(0.15))
                            i = i + 1
                        end
                    end
                end)
            end,
            function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    local target = cast:getTargetUnit()
                    do
                        local i = 0
                        while i < 50 do
                            if not (target and target:isAlive()) then
                                target = ability.owner:findTargets(
                                    {"敌军"},
                                    nil,
                                    1,
                                    1,
                                    800
                                )[1]
                            end
                            local angle = self:getDirection(ability.owner, target)
                            local angleOffset = random:randomRange(angle - 45, angle + 45)
                            ability.owner:setAngle(angle)
                            local startPos = self:offsetPoint(ability.owner, angleOffset, 100)
                            local p = self:createProjectile(134233600, startPos, angleOffset, 150)
                            p:prepare({hit_type = 0, hit_radius = 50, hit_same = true, face_angle = true})
                            p:listener({
                                onFinish = function()
                                    p:remove()
                                end,
                                onHit = function(unit)
                                    if unit ~= nil then
                                        unit:hurt(
                                            self.skillEntity,
                                            Formula["物理伤害"],
                                            100,
                                            AbilityType["大招"],
                                            nil,
                                            nil,
                                            104653
                                        )
                                    end
                                    if math.random() >= 0.3 then
                                        p:remove()
                                    end
                                end
                            })
                            p:moverLine(angleOffset, 2000, 1500)
                            __TS__Await(self:awaitTime(0.05))
                            i = i + 1
                        end
                    end
                end)
            end
        ))
    end)
end
____exports.key = ____createAbility_6(nil, ____fight_5, 134281286, ____class_0)
return ____exports
