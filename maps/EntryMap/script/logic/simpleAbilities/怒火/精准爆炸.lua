local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 9,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 12,["35"] = 16,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 20,["52"] = 24,["53"] = 25,["54"] = 26,["55"] = 26,["56"] = 26,["57"] = 26,["58"] = 26,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 27,["67"] = 9,["68"] = 31});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
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
        local targetXs = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["怒火"]["精准爆炸"]["索敌范围"]),
            {"敌人"}
        )
        if not targetXs or #targetXs == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = random:randomList(targetXs)
        self:addParticle(
            _____6570_503C["怒火"]["精准爆炸"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["怒火"]["精准爆炸"]["粒子缩放"],
            _____6570_503C["怒火"]["精准爆炸"]["粒子持续时间"],
            150
        )
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(_____6570_503C["怒火"]["精准爆炸"]["范围"]),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6012_706B__7CBE_51C6_7206_70B8__4F24_5BB3_7C7B_578B_1 = _____6570_503C["怒火"]["精准爆炸"]["伤害类型"]
            local ____self_0 = _____6570_503C["怒火"]["精准爆炸"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6012_706B__7CBE_51C6_7206_70B8__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["怒火"]["精准爆炸"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
