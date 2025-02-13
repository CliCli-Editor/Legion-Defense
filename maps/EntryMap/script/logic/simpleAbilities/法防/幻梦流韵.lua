local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 12,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 15,["43"] = 15,["45"] = 16,["46"] = 16,["47"] = 17,["48"] = 18,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 20,["56"] = 21,["57"] = 22,["58"] = 23,["61"] = 26,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 31,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 32,["84"] = 32,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 32,["90"] = 33,["91"] = 34,["92"] = 34,["93"] = 34,["94"] = 34,["95"] = 34,["96"] = 34,["97"] = 34,["98"] = 34,["100"] = 16,["104"] = 10,["105"] = 38});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法防"]["幻梦流韵"]["索敌范围"]),
            {"敌军"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            134221763,
            self.owner:getPosition(),
            nil,
            0.5,
            5,
            50
        )
        do
            local i = 0
            while i < _____6570_503C["法防"]["幻梦流韵"]["造成伤害次数"] do
                __TS__Await(self:awaitTime(_____6570_503C["法防"]["幻梦流韵"]["每次造成伤害间隔时间"]))
                local maxHp = 0
                local target = self.owner:findTarget(
                    {"敌人"},
                    function(____, a) return a:isAlive() end,
                    1,
                    2000
                )
                for ____, t in ipairs(targets) do
                    if t:v(_____8840) > maxHp then
                        maxHp = t:v(_____8840)
                        target = t
                    end
                end
                if not target or not target:isAlive() then
                    return ____awaiter_resolve(nil)
                end
                self:addParticle(
                    134253257,
                    target:getPosition(),
                    nil,
                    1,
                    1,
                    25
                )
                self:addParticle(
                    134264173,
                    target:getPosition(),
                    nil,
                    1,
                    1,
                    25
                )
                local ____target_2 = target
                local ____target_hurt_3 = target.hurt
                local ____6570_503C__6CD5_9632__5E7B_68A6_6D41_97F5__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["幻梦流韵"]["伤害类型"]
                local ____self_0 = _____6570_503C["法防"]["幻梦流韵"]
                ____target_hurt_3(
                    ____target_2,
                    self,
                    ____6570_503C__6CD5_9632__5E7B_68A6_6D41_97F5__4F24_5BB3_7C7B_578B_1,
                    ____self_0["伤害"](____self_0, self.owner)
                )
                if self.owner:random("幻梦流韵", _____6570_503C["法防"]["幻梦流韵"]["触发效果概率"]) then
                    self.owner:applyTimeLimitProperties(
                        self,
                        buffId,
                        _____6570_503C["法防"]["幻梦流韵"]["临时效果持续时间"],
                        2,
                        {_____6570_503C["法防"]["幻梦流韵"]["临时效果"], _____6570_503C["法防"]["幻梦流韵"]["临时效果值"]},
                        {}
                    )
                end
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
