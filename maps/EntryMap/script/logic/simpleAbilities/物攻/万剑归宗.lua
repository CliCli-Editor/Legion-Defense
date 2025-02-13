local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 10,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 20,["43"] = 21,["44"] = 22,["45"] = 23,["46"] = 24,["47"] = 25,["48"] = 25,["49"] = 25,["50"] = 25,["51"] = 25,["52"] = 25,["54"] = 27,["55"] = 28,["58"] = 31,["60"] = 33,["61"] = 34,["64"] = 37,["65"] = 37,["66"] = 37,["67"] = 37,["68"] = 37,["69"] = 37,["70"] = 37,["71"] = 37,["72"] = 37,["73"] = 37,["74"] = 37,["75"] = 37,["76"] = 37,["77"] = 37,["80"] = 19,["81"] = 40,["82"] = 41,["83"] = 42,["84"] = 43,["85"] = 43,["86"] = 43,["87"] = 43,["88"] = 43,["89"] = 43,["90"] = 43,["91"] = 43,["92"] = 43,["93"] = 43,["94"] = 44,["96"] = 19,["97"] = 19,["98"] = 49,["99"] = 13,["103"] = 7,["104"] = 52});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            2000
        )
        if not target then
            return ____awaiter_resolve(nil)
        end
        do
            local i = 0
            while i < _____6570_503C["物攻"]["万剑归宗"]["投射物数量"] do
                local angle = 360 / _____6570_503C["物攻"]["万剑归宗"]["投射物数量"] * i
                local p = self:createProjectile(134275826, self.owner, angle, 150)
                p:prepare({hit_radius = _____6570_503C["物攻"]["万剑归宗"]["投射物碰撞体积"], hit_same = false, face_angle = true})
                p:setCustomData("delay", _____6570_503C["物攻"]["万剑归宗"]["飞回延迟"] + i * 0.05)
                p:setCustomData("isReturn", 0)
                p:listener({
                    onFinish = function()
                        return __TS__AsyncAwaiter(function(____awaiter_resolve)
                            if p:getCustomData("isReturn") == 0 then
                                p:setCustomData("isReturn", 1)
                                __TS__Await(self:awaitTime(p:getCustomData("delay")))
                                if not target or not target:isAlive() then
                                    target = self.owner:findTarget(
                                        {"敌人"},
                                        function(____, a) return a:isAlive() end,
                                        1,
                                        2000
                                    )
                                end
                                if not target or not target:isAlive() then
                                    p:remove()
                                    return ____awaiter_resolve(nil)
                                end
                                p:moverTarget(target, 3000, _____6570_503C["物攻"]["万剑归宗"]["投射物碰撞体积"])
                            else
                                p:remove()
                                if not target or not target:isAlive() then
                                    return ____awaiter_resolve(nil)
                                end
                                local ____target_2 = target
                                local ____target_hurt_3 = target.hurt
                                local ____6570_503C__7269_653B__4E07_5251_5F52_5B97__4F24_5BB3_7C7B_578B_1 = _____6570_503C["物攻"]["万剑归宗"]["伤害类型"]
                                local ____self_0 = _____6570_503C["物攻"]["万剑归宗"]
                                ____target_hurt_3(
                                    ____target_2,
                                    self,
                                    ____6570_503C__7269_653B__4E07_5251_5F52_5B97__4F24_5BB3_7C7B_578B_1,
                                    ____self_0["伤害2"](____self_0, self.owner, 0),
                                    nil,
                                    nil,
                                    nil,
                                    134279836
                                )
                            end
                        end)
                    end,
                    onHit = function(unit)
                        if unit and unit:isAlive() then
                            unit.tempData[AbilityTagData["是否为AOE"]] = true
                            local ____unit_6 = unit
                            local ____unit_hurt_7 = unit.hurt
                            local ____6570_503C__7269_653B__4E07_5251_5F52_5B97__4F24_5BB3_7C7B_578B_5 = _____6570_503C["物攻"]["万剑归宗"]["伤害类型"]
                            local ____self_4 = _____6570_503C["物攻"]["万剑归宗"]
                            ____unit_hurt_7(
                                ____unit_6,
                                self,
                                ____6570_503C__7269_653B__4E07_5251_5F52_5B97__4F24_5BB3_7C7B_578B_5,
                                ____self_4["伤害1"](____self_4, self.owner, 0)
                            )
                            unit.tempData[AbilityTagData["是否为AOE"]] = nil
                        end
                    end
                })
                p:moverLine(angle, _____6570_503C["物攻"]["万剑归宗"]["范围"], _____6570_503C["物攻"]["万剑归宗"]["投射物飞行速度"])
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
