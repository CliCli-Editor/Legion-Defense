local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 9,["29"] = 10,["30"] = 11,["33"] = 14,["34"] = 15,["37"] = 20,["38"] = 20,["39"] = 20,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 21,["50"] = 22,["51"] = 23,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 24,["58"] = 24,["59"] = 24,["60"] = 24,["61"] = 24,["62"] = 25,["65"] = 9,["66"] = 30});
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
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["法防"]["苦痛冰寒"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args < 1 then
            console:log("冰霜/苦痛冰寒 args length < 1")
            return ____awaiter_resolve(nil)
        end
        local target = args[1]
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["法防"]["苦痛冰寒"]["粒子ID"],
            target:getPosition(),
            0,
            _____6570_503C["法防"]["苦痛冰寒"]["粒子缩放"],
            _____6570_503C["法防"]["苦痛冰寒"]["粒子持续时间"],
            150
        )
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(_____6570_503C["法防"]["苦痛冰寒"]["范围"]),
            {"敌军"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6CD5_9632__82E6_75DB_51B0_5BD2__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["苦痛冰寒"]["伤害类型"]
            local ____self_0 = _____6570_503C["法防"]["苦痛冰寒"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6CD5_9632__82E6_75DB_51B0_5BD2__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, t, 0)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
