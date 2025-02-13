local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["20"] = 6,["21"] = 7,["22"] = 6,["23"] = 9,["25"] = 10,["26"] = 11,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 16,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 20,["52"] = 9,["53"] = 22});
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
    self.cd = _____6570_503C["佣兵"]["猩猩反伤"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args < 1 then
            console:log("佣兵/猩猩反伤 args length < 1")
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["佣兵"]["猩猩反伤"]["粒子ID"],
            self.owner:getPosition(),
            0,
            _____6570_503C["佣兵"]["猩猩反伤"]["粒子缩放"],
            _____6570_503C["佣兵"]["猩猩反伤"]["粒子持续时间"],
            150
        )
        local target = args[1]
        if not target then
            return ____awaiter_resolve(nil)
        end
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__4F63_5175__7329_7329_53CD_4F24__4F24_5BB3_7C7B_578B_1 = _____6570_503C["佣兵"]["猩猩反伤"]["伤害类型"]
        local ____self_0 = _____6570_503C["佣兵"]["猩猩反伤"]
        ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__4F63_5175__7329_7329_53CD_4F24__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0)
        )
    end)
end
local ____ = fight
return ____exports
