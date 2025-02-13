local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 8,["18"] = 8,["19"] = 10,["20"] = 10,["21"] = 10,["22"] = 10,["24"] = 10,["25"] = 11,["26"] = 10,["27"] = 13,["29"] = 15,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 16,["37"] = 19,["38"] = 20,["39"] = 21,["40"] = 22,["41"] = 24,["42"] = 24,["43"] = 24,["44"] = 24,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 27,["52"] = 28,["53"] = 28,["54"] = 28,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 29,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 31,["74"] = 13,["75"] = 38});
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
    self.cd = _____6570_503C["闪避"]["反射立场"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["闪避"]["反射立场"]["范围"]),
            {"敌人"}
        )
        if not targets then
            return ____awaiter_resolve(nil)
        end
        local point1 = {x = 0, y = 0}
        local point2 = self.owner:getPosition()
        point1.x = point2.x
        point1.y = point2.y
        self:addParticle(
            134274453,
            self.owner,
            nil,
            1,
            1,
            nil,
            "hit_point",
            1
        )
        for ____, t in ipairs(targets) do
            self:addParticle(
                134244377,
                t:getPosition(),
                nil,
                2,
                1,
                50
            )
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__95EA_907F__53CD_5C04_7ACB_573A__4F24_5BB3_7C7B_578B_1 = _____6570_503C["闪避"]["反射立场"]["伤害类型"]
            local ____self_0 = _____6570_503C["闪避"]["反射立场"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__95EA_907F__53CD_5C04_7ACB_573A__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["闪避"]["反射立场"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
