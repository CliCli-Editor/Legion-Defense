local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 12,["38"] = 12,["39"] = 12,["40"] = 12,["41"] = 12,["42"] = 13,["43"] = 14,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 15,["49"] = 15,["50"] = 15,["51"] = 15,["52"] = 15,["53"] = 15,["54"] = 15,["56"] = 17,["57"] = 17,["58"] = 17,["59"] = 17,["60"] = 17,["61"] = 17,["62"] = 17,["63"] = 17,["64"] = 17,["65"] = 17,["66"] = 17,["69"] = 11,["70"] = 11,["72"] = 8,["73"] = 22});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____UnitTags = include("logic.models.UnitTags")
local isEnemy = ____UnitTags.isEnemy
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local pos = self.owner:getPosition()
        self:addParticle(
            _____6570_503C["佣兵"].A6["粒子ID"],
            pos,
            nil,
            _____6570_503C["佣兵"].A6["粒子缩放"],
            _____6570_503C["佣兵"].A6["粒子持续时间"]
        )
        __TS__Await(self:loop(
            1,
            _____6570_503C["佣兵"].A6["粒子持续时间"] / 1,
            function()
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(500),
                    {}
                )
                for ____, t in ipairs(targets) do
                    if isEnemy(nil, self.owner, t) then
                        local ____t_3 = t
                        local ____t_hurt_4 = t.hurt
                        local ____ability_1 = ability
                        local ____6570_503C__4F63_5175_A6__4F24_5BB3_7C7B_578B_2 = _____6570_503C["佣兵"].A6["伤害类型"]
                        local ____self_0 = _____6570_503C["佣兵"].A6
                        ____t_hurt_4(
                            ____t_3,
                            ____ability_1,
                            ____6570_503C__4F63_5175_A6__4F24_5BB3_7C7B_578B_2,
                            ____self_0["伤害"](____self_0)
                        )
                    else
                        local ____t_8 = t
                        local ____t_cure_9 = t.cure
                        local ____ability_6 = ability
                        local ____6570_503C__4F63_5175_A6__6CBB_7597_7C7B_578B_7 = _____6570_503C["佣兵"].A6["治疗类型"]
                        local ____self_5 = _____6570_503C["佣兵"].A6
                        ____t_cure_9(
                            ____t_8,
                            ____ability_6,
                            ____6570_503C__4F63_5175_A6__6CBB_7597_7C7B_578B_7,
                            ____self_5["治疗"](____self_5)
                        )
                    end
                end
            end
        ))
    end)
end
local ____ = fight
return ____exports
