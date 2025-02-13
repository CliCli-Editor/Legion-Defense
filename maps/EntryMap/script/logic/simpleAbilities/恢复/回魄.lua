local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["31"] = 9,["32"] = 9,["33"] = 9,["35"] = 10,["36"] = 10,["37"] = 10,["38"] = 10,["39"] = 10,["40"] = 10,["41"] = 10,["42"] = 10,["43"] = 11,["44"] = 11,["45"] = 11,["46"] = 11,["47"] = 11,["48"] = 12,["51"] = 15,["52"] = 16,["53"] = 17,["54"] = 17,["55"] = 17,["56"] = 17,["57"] = 17,["58"] = 17,["59"] = 17,["60"] = 17,["61"] = 17,["62"] = 17,["63"] = 18,["66"] = 8,["67"] = 22});
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
        local ____self_2 = self.owner
        local ____self_2_cure_3 = ____self_2.cure
        local ____6570_503C__6062_590D__56DE_9B44__6CBB_7597_7C7B_578B_1 = _____6570_503C["恢复"]["回魄"]["治疗类型"]
        local ____self_0 = _____6570_503C["恢复"]["回魄"]
        local cure = ____self_2_cure_3(
            ____self_2,
            self,
            ____6570_503C__6062_590D__56DE_9B44__6CBB_7597_7C7B_578B_1,
            ____self_0["治疗"](____self_0, self.owner)
        )
        self:addParticle(
            _____6570_503C["恢复"]["回魄"]["粒子ID"],
            self.owner:getPosition(),
            nil,
            _____6570_503C["恢复"]["回魄"]["粒子缩放"],
            _____6570_503C["恢复"]["回魄"]["粒子持续时间"],
            0
        )
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["恢复"]["回魄"]["索敌范围"]),
            {"敌军"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_6 = t
            local ____t_hurt_7 = t.hurt
            local ____6570_503C__6062_590D__56DE_9B44__4F24_5BB3_7C7B_578B_5 = _____6570_503C["恢复"]["回魄"]["伤害类型"]
            local ____self_4 = _____6570_503C["恢复"]["回魄"]
            ____t_hurt_7(
                ____t_6,
                self,
                ____6570_503C__6062_590D__56DE_9B44__4F24_5BB3_7C7B_578B_5,
                ____self_4["伤害"](____self_4, cure.value)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
