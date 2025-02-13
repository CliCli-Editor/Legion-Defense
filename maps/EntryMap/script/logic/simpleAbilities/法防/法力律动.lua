local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 10,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 12,["39"] = 15,["40"] = 16,["43"] = 19,["44"] = 20,["45"] = 21,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 23,["59"] = 24,["60"] = 24,["61"] = 24,["62"] = 24,["63"] = 24,["64"] = 25,["67"] = 28,["68"] = 29,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 30,["76"] = 30,["77"] = 30,["78"] = 30,["79"] = 31,["82"] = 10,["83"] = 34});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____UnitData = include("logic.models.UnitData")
local UnitOrder = ____UnitData.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["法防"]["法力律动"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法防"]["法力律动"]["索敌范围"]),
            {"敌军"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs or #targetXs == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = targetXs[1]
        local angle = self:getDirection(self.owner, target)
        local distance = self:getDistance(self.owner, target)
        self:addParticle(
            _____6570_503C["法防"]["法力律动"]["粒子ID"],
            self.owner:getPosition(),
            angle,
            _____6570_503C["法防"]["法力律动"]["粒子缩放"],
            _____6570_503C["法防"]["法力律动"]["粒子持续时间"],
            0,
            nil,
            nil,
            nil,
            true
        )
        local offsetPoint = self:offsetPoint(self.owner, angle, distance / 2)
        local targets2 = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(_____6570_503C["法防"]["法力律动"]["矩形宽"], distance + 200, angle),
            {"敌军"}
        )
        if not targets2 or #targets2 == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets2) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6CD5_9632__6CD5_529B_5F8B_52A8__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["法力律动"]["伤害类型"]
            local ____self_0 = _____6570_503C["法防"]["法力律动"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6CD5_9632__6CD5_529B_5F8B_52A8__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["法防"]["法力律动"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
