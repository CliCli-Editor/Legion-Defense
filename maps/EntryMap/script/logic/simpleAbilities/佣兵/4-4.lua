local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["23"] = 8,["24"] = 9,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 15,["40"] = 16,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 17,["47"] = 17,["48"] = 17,["49"] = 17,["50"] = 17,["51"] = 17,["54"] = 7,["55"] = 20});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if args == nil or #args < 1 then
            console:error("佣兵/4-4 args length < 1")
            return ____awaiter_resolve(nil)
        end
        local targets = self.owner:findByShape(
            ability.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["佣兵"].D4["伤害范围"]),
            {"敌人"}
        )
        self:addParticle(
            _____6570_503C["佣兵"].D4["粒子ID"],
            ability.owner:getPosition(),
            nil,
            _____6570_503C["佣兵"].D4["粒子缩放"],
            _____6570_503C["佣兵"].D4["粒子持续时间"]
        )
        local arg = args[1]
        for ____, t in ipairs(targets) do
            local ____t_3 = t
            local ____t_hurt_4 = t.hurt
            local ____ability_1 = ability
            local ____6570_503C__4F63_5175_D4__4F24_5BB3_7C7B_578B_2 = _____6570_503C["佣兵"].D4["伤害类型"]
            local ____self_0 = _____6570_503C["佣兵"].D4
            ____t_hurt_4(
                ____t_3,
                ____ability_1,
                ____6570_503C__4F63_5175_D4__4F24_5BB3_7C7B_578B_2,
                ____self_0["伤害"](____self_0, self.owner, arg)
            )
        end
    end)
end
local ____ = fight
return ____exports
