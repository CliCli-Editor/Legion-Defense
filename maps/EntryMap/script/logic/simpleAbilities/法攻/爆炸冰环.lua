local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 10,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 15,["41"] = 15,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 16,["49"] = 17,["50"] = 17,["51"] = 17,["52"] = 17,["53"] = 17,["54"] = 17,["55"] = 17,["56"] = 17,["57"] = 17,["58"] = 17,["59"] = 20,["60"] = 20,["61"] = 20,["62"] = 20,["63"] = 20,["64"] = 22,["65"] = 23,["68"] = 7,["69"] = 26});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
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
        local targetPos = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            0,
            2000
        )
        if not targetPos or not targetPos:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            134236440,
            targetPos:getPosition(),
            nil,
            1.25,
            1,
            10
        )
        self:addParticle(
            134272007,
            targetPos:getPosition(),
            nil,
            5 / 6,
            1,
            10
        )
        __TS__Await(self:awaitTime(_____6570_503C["法攻"]["爆炸冰环"]["伤害生效延迟时间"]))
        local ____targetPos_2 = targetPos
        local ____targetPos_hurt_3 = targetPos.hurt
        local ____6570_503C__6CD5_653B__7206_70B8_51B0_73AF__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法攻"]["爆炸冰环"]["伤害类型"]
        local ____self_0 = _____6570_503C["法攻"]["爆炸冰环"]
        ____targetPos_hurt_3(
            ____targetPos_2,
            self,
            ____6570_503C__6CD5_653B__7206_70B8_51B0_73AF__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, targetPos, _____6570_503C["法攻"]["爆炸冰环"]["等级相关数值"][self.level + 1])
        )
        local targets = self.owner:findByShape(
            targetPos:getPosition(),
            Shape:createCircularShape(_____6570_503C["法攻"]["爆炸冰环"]["范围"]),
            {"敌军"}
        )
        for ____, target in ipairs(targets) do
            target:addEffect(self, _____6570_503C["法攻"]["爆炸冰环"].effectID, 1)
        end
    end)
end
local ____ = fight
return ____exports
