local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 13,["36"] = 16,["37"] = 17,["38"] = 18,["40"] = 20,["43"] = 23,["44"] = 24,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 25,["53"] = 26,["54"] = 26,["55"] = 26,["56"] = 26,["57"] = 26,["58"] = 26,["59"] = 26,["60"] = 26,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 29,["70"] = 30,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 31,["81"] = 33,["82"] = 34,["83"] = 34,["84"] = 34,["85"] = 34,["86"] = 34,["87"] = 34,["88"] = 34,["89"] = 34,["90"] = 34,["91"] = 34,["92"] = 35,["94"] = 38,["95"] = 27,["99"] = 10,["100"] = 42});
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
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法防"]["霜华护体"]["索敌范围"]),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = self:getIntensiveAreaTarget(targets, _____6570_503C["法防"]["霜华护体"]["范围"])
        if target == nil then
            target = self.owner:getHatredTarget()
        end
        if target == nil then
            return ____awaiter_resolve(nil)
        end
        local startPos = target:getPosition()
        self:addParticle(
            134241355,
            startPos,
            nil,
            1,
            5.5,
            50
        )
        __TS__Await(self:awaitTime(0.5))
        self:addParticle(
            134225856,
            startPos,
            nil,
            1,
            5,
            50
        )
        do
            local i = 0
            while i < _____6570_503C["法防"]["霜华护体"]["粒子持续时间"] / _____6570_503C["法防"]["霜华护体"]["每跳伤害间隔时间"] do
                local targetXs = self.owner:findByShape(
                    startPos,
                    Shape:createCircularShape(_____6570_503C["法防"]["霜华护体"]["范围"]),
                    {"敌人"}
                )
                for ____, t in ipairs(targetXs) do
                    if i == 0 then
                        t:addTimeLimitProperties(
                            self,
                            buffId,
                            1,
                            {_____6570_503C["法防"]["霜华护体"]["临时效果"], _____6570_503C["法防"]["霜华护体"]["临时效果值"]},
                            {},
                            {-1, 20},
                            _____6570_503C["法防"]["霜华护体"]["临时效果持续时间"]
                        )
                    end
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_2 = t
                    local ____t_hurt_3 = t.hurt
                    local ____6570_503C__6CD5_9632__971C_534E_62A4_4F53__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["霜华护体"]["伤害类型"]
                    local ____self_0 = _____6570_503C["法防"]["霜华护体"]
                    ____t_hurt_3(
                        ____t_2,
                        self,
                        ____6570_503C__6CD5_9632__971C_534E_62A4_4F53__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, self.owner, 0)
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                __TS__Await(self:awaitTime(_____6570_503C["法防"]["霜华护体"]["每跳伤害间隔时间"]))
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
