local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 14,["43"] = 15,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 16,["48"] = 16,["49"] = 16,["50"] = 16,["51"] = 16,["52"] = 16,["53"] = 16,["54"] = 17,["55"] = 18,["56"] = 18,["57"] = 18,["58"] = 18,["59"] = 18,["60"] = 18,["61"] = 18,["62"] = 18,["63"] = 18,["66"] = 10,["67"] = 21});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self.owner:getAngle()
        self:addParticle(
            _____6570_503C["物防"]["震荡波"]["粒子ID"],
            self.owner:getPosition(),
            angle,
            _____6570_503C["物防"]["震荡波"]["粒子缩放"],
            _____6570_503C["物防"]["震荡波"]["粒子持续时间"],
            150
        )
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(_____6570_503C["物防"]["震荡波"]["扇形半径"], _____6570_503C["物防"]["震荡波"]["扇形角度"], angle, self.owner),
            {"敌军"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__7269_9632__9707_8361_6CE2__4F24_5BB3_7C7B_578B_1 = _____6570_503C["物防"]["震荡波"]["伤害类型"]
            local ____self_0 = _____6570_503C["物防"]["震荡波"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__7269_9632__9707_8361_6CE2__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            t:addTimeLimitProperties(
                self,
                buffId,
                1,
                {_____6570_503C["物防"]["震荡波"]["临时效果"], _____6570_503C["物防"]["震荡波"]["临时效果值"]},
                {},
                {-1, 20},
                _____6570_503C["物防"]["震荡波"]["临时效果持续时间"]
            )
        end
    end)
end
local ____ = fight
return ____exports
