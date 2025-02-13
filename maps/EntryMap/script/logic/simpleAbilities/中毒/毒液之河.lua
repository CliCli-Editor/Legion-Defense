local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 11,["34"] = 15,["35"] = 17,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 20,["54"] = 22,["55"] = 22,["56"] = 23,["57"] = 24,["58"] = 24,["59"] = 24,["60"] = 24,["61"] = 24,["62"] = 25,["63"] = 26,["64"] = 27,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 28,["74"] = 22,["78"] = 8,["79"] = 33});
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
local Formula = ____FightController.Formula
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            0,
            _____6570_503C["中毒"]["毒液之河"]["索敌范围"]
        )
        if not target then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        local startPos = self:offsetPoint(self.owner, angle, 400)
        self:addParticle(
            _____6570_503C["中毒"]["毒液之河"]["粒子ID"],
            startPos,
            angle,
            _____6570_503C["中毒"]["毒液之河"]["粒子缩放"],
            _____6570_503C["中毒"]["毒液之河"]["粒子持续时间"],
            50
        )
        self:addParticle(
            134249960,
            startPos,
            angle,
            _____6570_503C["中毒"]["毒液之河"]["粒子缩放"],
            _____6570_503C["中毒"]["毒液之河"]["粒子持续时间"],
            50
        )
        local offsetPoint = self:offsetPoint(self.owner, angle, _____6570_503C["中毒"]["毒液之河"]["矩形长"] / 2)
        do
            local i = 0
            while i < _____6570_503C["中毒"]["毒液之河"]["粒子持续时间"] / _____6570_503C["中毒"]["毒液之河"]["叠加间隔时间"] do
                __TS__Await(self:awaitTime(_____6570_503C["中毒"]["毒液之河"]["叠加间隔时间"]))
                local targets = self.owner:findByShape(
                    offsetPoint,
                    Shape:createRectangleShape(_____6570_503C["中毒"]["毒液之河"]["矩形宽"], _____6570_503C["中毒"]["毒液之河"]["矩形长"], angle),
                    {"敌人"}
                )
                local quantity = _____6570_503C["中毒"]["毒液之河"]["等级相关数值"][self.level + 1] * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                for ____, t in ipairs(targets) do
                    t:addEffect(self, _____6570_503C["中毒"]["毒液之河"].effectID, quantity)
                    self:addParticle(
                        102610,
                        t:getPosition(),
                        nil,
                        1,
                        1,
                        50
                    )
                end
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
