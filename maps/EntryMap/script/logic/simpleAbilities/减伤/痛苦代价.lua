local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["20"] = 5,["21"] = 6,["22"] = 5,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 11,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 16,["48"] = 16,["49"] = 16,["50"] = 16,["51"] = 16,["53"] = 8,["54"] = 19});
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
    self.cd = _____6570_503C["减伤"]["痛苦代价"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            _____6570_503C["减伤"]["痛苦代价"]["索敌范围"]
        )
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["减伤"]["痛苦代价"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["减伤"]["痛苦代价"]["粒子缩放"],
            _____6570_503C["减伤"]["痛苦代价"]["粒子持续时间"],
            50
        )
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__51CF_4F24__75DB_82E6_4EE3_4EF7__4F24_5BB3_7C7B_578B_1 = _____6570_503C["减伤"]["痛苦代价"]["伤害类型"]
        local ____self_0 = _____6570_503C["减伤"]["痛苦代价"]
        ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__51CF_4F24__75DB_82E6_4EE3_4EF7__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, self.owner, _____6570_503C["减伤"]["痛苦代价"]["等级相关数值"][self.level + 1])
        )
    end)
end
local ____ = fight
return ____exports
