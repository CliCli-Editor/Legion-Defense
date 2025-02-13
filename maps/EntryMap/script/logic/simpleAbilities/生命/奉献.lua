local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 11,["29"] = 15,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 16,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 20,["57"] = 8,["58"] = 24});
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
        local target = self.owner:findTarget({"敌人"}, nil, 1, _____6570_503C["生命"]["奉献"]["索敌范围"])
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["生命"]["奉献"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["生命"]["奉献"]["粒子缩放"],
            _____6570_503C["生命"]["奉献"]["粒子持续时间"],
            50
        )
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(_____6570_503C["生命"]["奉献"]["伤害范围"]),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__751F_547D__5949_732E__4F24_5BB3_7C7B_578B_1 = _____6570_503C["生命"]["奉献"]["伤害类型"]
            local ____self_0 = _____6570_503C["生命"]["奉献"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__751F_547D__5949_732E__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["生命"]["奉献"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
