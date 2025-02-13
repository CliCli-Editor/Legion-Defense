local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["21"] = 7,["22"] = 8,["25"] = 11,["26"] = 12,["29"] = 17,["30"] = 17,["31"] = 17,["32"] = 17,["33"] = 17,["34"] = 17,["35"] = 17,["36"] = 17,["37"] = 18,["38"] = 19,["39"] = 20,["40"] = 21,["41"] = 21,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 21,["51"] = 6,["52"] = 24});
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
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args < 1 then
            console:log("冰霜/苦痛冰寒 args length < 1")
            return ____awaiter_resolve(nil)
        end
        local target = args[1]
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["法防"]["终极冻结"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["法防"]["终极冻结"]["粒子缩放"],
            _____6570_503C["法防"]["终极冻结"]["粒子持续时间"],
            0
        )
        local effectId = target:addTemporaryState(self, _____6570_503C["法防"]["终极冻结"]["临时状态"])
        __TS__Await(self:awaitTime(_____6570_503C["法防"]["终极冻结"]["粒子持续时间"]))
        target:removeTemporaryState(self, effectId)
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__6CD5_9632__7EC8_6781_51BB_7ED3__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["终极冻结"]["伤害类型"]
        local ____self_0 = _____6570_503C["法防"]["终极冻结"]
        ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__6CD5_9632__7EC8_6781_51BB_7ED3__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, target, _____6570_503C["法防"]["终极冻结"]["等级相关数值"][self.level + 1])
        )
    end)
end
local ____ = fight
return ____exports
