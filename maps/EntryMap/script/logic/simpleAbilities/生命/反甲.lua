local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["20"] = 6,["21"] = 7,["22"] = 6,["23"] = 9,["25"] = 10,["26"] = 11,["29"] = 15,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 16,["38"] = 17,["41"] = 21,["42"] = 23,["43"] = 23,["44"] = 23,["45"] = 23,["46"] = 23,["47"] = 23,["48"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["53"] = 9,["54"] = 26});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["生命"]["反甲"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args < 2 then
            console:log("生命/反甲 args length < 2")
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["生命"]["反甲"]["粒子ID"],
            self.owner:getPosition(),
            0,
            _____6570_503C["生命"]["反甲"]["粒子缩放"],
            _____6570_503C["生命"]["反甲"]["粒子持续时间"],
            150
        )
        local target = args[1]
        if not target then
            return ____awaiter_resolve(nil)
        end
        local damage = args[2]
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__751F_547D__53CD_7532__4F24_5BB3_7C7B_578B_1 = _____6570_503C["生命"]["反甲"]["伤害类型"]
        local ____self_0 = _____6570_503C["生命"]["反甲"]
        local x = ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__751F_547D__53CD_7532__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, damage, _____6570_503C["生命"]["反甲"]["等级相关数值"][self.level + 1])
        )
    end)
end
local ____ = fight
return ____exports
