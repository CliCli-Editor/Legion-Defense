local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 16,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 17,["48"] = 18,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 19,["57"] = 19,["58"] = 19,["59"] = 19,["60"] = 19,["61"] = 19,["62"] = 19,["63"] = 20,["66"] = 8,["67"] = 25});
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
        self:addParticle(
            134225658,
            self.owner:getPosition(),
            nil,
            1,
            1,
            10
        )
        self.owner:cure(self, _____6570_503C["恢复"]["力量涌动"]["治疗类型"], _____6570_503C["恢复"]["力量涌动"]["等级相关数值"][self.level + 1])
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["恢复"]["力量涌动"]["索敌范围"]),
            {"敌人"}
        )
        self:addParticle(
            134260073,
            self.owner:getPosition(),
            nil,
            1,
            1,
            10
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6062_590D__529B_91CF_6D8C_52A8__4F24_5BB3_7C7B_578B_1 = _____6570_503C["恢复"]["力量涌动"]["伤害类型"]
            local ____self_0 = _____6570_503C["恢复"]["力量涌动"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6062_590D__529B_91CF_6D8C_52A8__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, t, 0),
                nil,
                nil,
                nil,
                _____6570_503C["恢复"]["力量涌动"]["命中特效ID"]
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
