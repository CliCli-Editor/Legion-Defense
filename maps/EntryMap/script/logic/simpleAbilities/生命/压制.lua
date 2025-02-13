local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 11,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 17,["47"] = 17,["48"] = 17,["49"] = 18,["50"] = 19,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["58"] = 20,["59"] = 20,["60"] = 20,["61"] = 21,["62"] = 21,["63"] = 21,["64"] = 21,["65"] = 21,["66"] = 21,["67"] = 21,["68"] = 21,["69"] = 21,["70"] = 21,["71"] = 22,["74"] = 8,["75"] = 27});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
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
            Shape:createCircularShape(_____6570_503C["生命"]["压制"]["范围"]),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            134272918,
            self.owner:getPosition(),
            0,
            2,
            5,
            20
        )
        self:addParticle(
            134265813,
            self.owner:getPosition(),
            0,
            3,
            5,
            20
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__751F_547D__538B_5236__4F24_5BB3_7C7B_578B1_1 = _____6570_503C["生命"]["压制"]["伤害类型1"]
            local ____self_0 = _____6570_503C["生命"]["压制"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__751F_547D__538B_5236__4F24_5BB3_7C7B_578B1_1,
                ____self_0["伤害1"](____self_0, self.owner, 0)
            )
            local ____t_6 = t
            local ____t_hurt_7 = t.hurt
            local ____6570_503C__751F_547D__538B_5236__4F24_5BB3_7C7B_578B2_5 = _____6570_503C["生命"]["压制"]["伤害类型2"]
            local ____self_4 = _____6570_503C["生命"]["压制"]
            ____t_hurt_7(
                ____t_6,
                self,
                ____6570_503C__751F_547D__538B_5236__4F24_5BB3_7C7B_578B2_5,
                ____self_4["伤害2"](____self_4, self.owner, 0)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
