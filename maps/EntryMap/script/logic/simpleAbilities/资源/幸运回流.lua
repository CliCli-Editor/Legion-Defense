local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 10,["27"] = 12,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 15,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 19,["47"] = 6,["48"] = 21});
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
        local isA = self.owner:random("幸运回流", 0.5)
        local ____self_0 = _____6570_503C["资源"]["幸运回流"]
        local v = ____self_0["伤害"](____self_0, self.owner, _____6570_503C["资源"]["幸运回流"]["等级相关数值"][self.level + 1])
        if isA then
            self.owner:addMp(self, 10)
        else
            v = v * 2
        end
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            _____6570_503C["资源"]["幸运回流"]["索敌范围"]
        )
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["资源"]["幸运回流"]["粒子ID"],
            target,
            nil,
            _____6570_503C["资源"]["幸运回流"]["粒子缩放"],
            _____6570_503C["资源"]["幸运回流"]["粒子持续时间"]
        )
        target:hurt(self, _____6570_503C["资源"]["幸运回流"]["伤害类型"], v)
    end)
end
local ____ = fight
return ____exports
