local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 10,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 17,["42"] = 21,["43"] = 22,["44"] = 23,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 24,["58"] = 24,["59"] = 25,["60"] = 26,["62"] = 17,["63"] = 17,["64"] = 31,["66"] = 7,["67"] = 33});
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
        local angle = self:getDirection(
            self.owner,
            target:getPosition()
        )
        local p = self:createProjectile(_____6570_503C["资源"]["冲击波"]["投射物ID"], self.owner, angle, 150)
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["资源"]["冲击波"]["投射物碰撞体积"], hit_same = false})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(unit)
                if unit and unit:isAlive() then
                    unit.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____unit_2 = unit
                    local ____unit_hurt_3 = unit.hurt
                    local ____6570_503C__8D44_6E90__51B2_51FB_6CE2__4F24_5BB3_7C7B_578B_1 = _____6570_503C["资源"]["冲击波"]["伤害类型"]
                    local ____self_0 = _____6570_503C["资源"]["冲击波"]
                    ____unit_hurt_3(
                        ____unit_2,
                        self,
                        ____6570_503C__8D44_6E90__51B2_51FB_6CE2__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, self.owner),
                        nil,
                        nil,
                        nil,
                        _____6570_503C["资源"]["冲击波"]["命中特效ID"]
                    )
                    unit.tempData[AbilityTagData["是否为AOE"]] = nil
                    self.owner:addMp(self, _____6570_503C["资源"]["冲击波"]["等级相关数值"][self.level + 1])
                end
            end
        })
        p:moverLine(angle, _____6570_503C["资源"]["冲击波"]["范围"], _____6570_503C["资源"]["冲击波"]["投射物飞行速度"])
    end)
end
local ____ = fight
return ____exports
