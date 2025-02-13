local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["29"] = 12,["32"] = 15,["33"] = 16,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 21,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 23,["58"] = 23,["59"] = 23,["60"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["64"] = 23,["65"] = 24,["66"] = 24,["67"] = 25,["68"] = 26,["69"] = 27,["70"] = 27,["71"] = 27,["72"] = 27,["73"] = 27,["74"] = 27,["75"] = 27,["76"] = 27,["77"] = 27,["78"] = 28,["81"] = 10,["82"] = 32});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["暴击"]["毁灭爆炸"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args == 0 then
            return ____awaiter_resolve(nil)
        end
        local targetX = args[1]
        if not targetX then
            return ____awaiter_resolve(nil)
        end
        local targets = self.owner:findByShape(
            targetX:getPosition(),
            Shape:createCircularShape(_____6570_503C["暴击"]["毁灭爆炸"]["伤害范围"]),
            {"敌人"}
        )
        self:addParticle(
            134264711,
            targetX:getPosition(),
            0,
            1.3,
            3,
            10
        )
        self:addParticle(
            134234388,
            targetX:getPosition(),
            0,
            1.3,
            3,
            10
        )
        self:addParticle(
            134222575,
            targetX:getPosition(),
            0,
            1.3,
            3,
            10
        )
        local ____self_0 = _____6570_503C["暴击"]["毁灭爆炸"]
        local damage = ____self_0["伤害"](____self_0, self.owner, _____6570_503C["暴击"]["毁灭爆炸"]["等级相关数值"][self.level + 1])
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self,
                _____6570_503C["暴击"]["毁灭爆炸"]["伤害类型"],
                damage,
                nil,
                nil,
                nil,
                _____6570_503C["暴击"]["毁灭爆炸"]["命中特效ID"]
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
