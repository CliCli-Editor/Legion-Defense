local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 8,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 11,["33"] = 14,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 18,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 20,["46"] = 21,["47"] = 22,["48"] = 23,["49"] = 24,["50"] = 22,["51"] = 27,["52"] = 28,["53"] = 29,["54"] = 30,["55"] = 30,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 31,["65"] = 22,["66"] = 22,["67"] = 36,["69"] = 8,["70"] = 38});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local Formula = ____FightController.Formula
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
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local damage = 0
        local levelValue = _____6570_503C["物攻"]["剑光术"]["等级相关数值"][self.level + 1]
        local ____self_0 = _____6570_503C["物攻"]["剑光术"]
        damage = ____self_0["伤害"](____self_0, self.owner, levelValue)
        local angle = self:getDirection(self.owner, target)
        self:addParticle(
            102323,
            self.owner,
            nil,
            1,
            1
        )
        local p = self:createProjectile(_____6570_503C["物攻"]["剑光术"]["投射物ID"], self.owner, angle, 150)
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["物攻"]["剑光术"]["投射物碰撞体积"], hit_same = false})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(unit)
                if unit and unit:isAlive() then
                    unit.tempData[AbilityTagData["是否为AOE"]] = true
                    unit:hurt(
                        self,
                        Formula["物理伤害"],
                        damage,
                        nil,
                        nil,
                        nil,
                        102401
                    )
                    unit.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        })
        p:moverLine(angle, _____6570_503C["物攻"]["剑光术"]["索敌范围"], _____6570_503C["物攻"]["剑光术"]["投射物飞行速度"])
    end)
end
local ____ = fight
return ____exports
