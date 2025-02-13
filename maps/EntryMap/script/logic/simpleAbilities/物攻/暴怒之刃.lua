local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["21"] = 8,["22"] = 9,["25"] = 13,["26"] = 13,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 15,["44"] = 6,["45"] = 18});
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
        local target = self.owner:findTarget({"敌人"}, nil, 1, _____6570_503C["物攻"]["暴怒之刃"]["索敌范围"])
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["物攻"]["暴怒之刃"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["物攻"]["暴怒之刃"]["粒子缩放"],
            _____6570_503C["物攻"]["暴怒之刃"]["粒子持续时间"],
            0
        )
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__7269_653B__66B4_6012_4E4B_5203__4F24_5BB3_7C7B_578B_1 = _____6570_503C["物攻"]["暴怒之刃"]["伤害类型"]
        local ____self_0 = _____6570_503C["物攻"]["暴怒之刃"]
        ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__7269_653B__66B4_6012_4E4B_5203__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, self.owner, _____6570_503C["物攻"]["暴怒之刃"]["等级相关数值"][self.level + 1])
        )
    end)
end
local ____ = fight
return ____exports
