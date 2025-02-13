local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["38"] = 12,["41"] = 16,["42"] = 17,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 18,["50"] = 18,["51"] = 18,["52"] = 18,["53"] = 19,["56"] = 8,["57"] = 23});
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
            Shape:createCircularShape(_____6570_503C["减伤"]["痛苦宣泄"]["索敌范围"]),
            {"敌人"}
        )
        self:addParticle(
            _____6570_503C["减伤"]["痛苦宣泄"]["粒子ID"],
            self.owner:getPosition(),
            0,
            _____6570_503C["减伤"]["痛苦宣泄"]["粒子缩放"],
            _____6570_503C["减伤"]["痛苦宣泄"]["粒子持续时间"],
            0
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__51CF_4F24__75DB_82E6_5BA3_6CC4__4F24_5BB3_7C7B_578B_1 = _____6570_503C["减伤"]["痛苦宣泄"]["伤害类型"]
            local ____self_0 = _____6570_503C["减伤"]["痛苦宣泄"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__51CF_4F24__75DB_82E6_5BA3_6CC4__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["减伤"]["痛苦宣泄"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
