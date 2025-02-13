local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 10,["33"] = 13,["34"] = 14,["37"] = 17,["38"] = 18,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 20,["48"] = 8,["49"] = 22});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____UnitData = include("logic.models.UnitData")
local UnitOrder = ____UnitData.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["资源"]["魔力枯竭"]["索敌范围"]),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs then
            return ____awaiter_resolve(nil)
        end
        local target = targetXs[1]
        target:addMp(self, _____6570_503C["资源"]["魔力枯竭"]["等级相关数值"][self.level + 1])
        self:addParticle(
            _____6570_503C["资源"]["魔力枯竭"]["粒子ID"],
            target,
            nil,
            _____6570_503C["资源"]["魔力枯竭"]["粒子缩放"],
            _____6570_503C["资源"]["魔力枯竭"]["粒子持续时间"]
        )
        self.owner:addMp(self, _____6570_503C["资源"]["魔力枯竭"]["自身回复数值"])
    end)
end
local ____ = fight
return ____exports
