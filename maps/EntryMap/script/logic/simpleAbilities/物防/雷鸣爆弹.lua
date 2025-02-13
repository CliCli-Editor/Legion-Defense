local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 10,["24"] = 11,["25"] = 12,["26"] = 12,["27"] = 12,["28"] = 12,["29"] = 13,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 16,["39"] = 21,["40"] = 23,["43"] = 26,["44"] = 29,["45"] = 29,["46"] = 29,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 29,["53"] = 29,["54"] = 30,["55"] = 31,["56"] = 33,["57"] = 34,["60"] = 38,["61"] = 38,["62"] = 38,["63"] = 38,["64"] = 38,["65"] = 38,["66"] = 38,["67"] = 38,["68"] = 38,["69"] = 38,["70"] = 39,["71"] = 39,["72"] = 39,["73"] = 39,["74"] = 39,["75"] = 39,["76"] = 39,["77"] = 39,["78"] = 39,["79"] = 40,["80"] = 41,["81"] = 41,["82"] = 41,["83"] = 41,["84"] = 41,["85"] = 41,["86"] = 41,["87"] = 41,["88"] = 41,["89"] = 42,["90"] = 42,["91"] = 42,["92"] = 42,["93"] = 42,["94"] = 42,["95"] = 42,["96"] = 42,["97"] = 31,["98"] = 45,["100"] = 13,["101"] = 55});
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
local _____653B_51FB = ____Property["攻击"]
local ____UnitData = include("logic.models.UnitData")
local UnitOrder = ____UnitData.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId1 = genEffectId(nil)
local buffId2 = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["物防"]["雷鸣爆弹"]["索敌范围"]),
            {"敌军"}
        )
        if #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs then
            return ____awaiter_resolve(nil)
        end
        local target = targetXs[1]
        local p = self:createProjectile(
            134260639,
            self.owner,
            self:getDirection(self.owner, target),
            50,
            1,
            nil,
            nil,
            true
        )
        p:prepare({hit_type = 0, hit_radius = 50, face_angle = true})
        p:listener({onFinish = function()
            if not target or not target:isAlive() then
                p:remove()
                return
            end
            local ____target_2 = target
            local ____target_hurt_3 = target.hurt
            local ____6570_503C__7269_9632__96F7_9E23_7206_5F39__4F24_5BB3_7C7B_578B_1 = _____6570_503C["物防"]["雷鸣爆弹"]["伤害类型"]
            local ____self_0 = _____6570_503C["物防"]["雷鸣爆弹"]
            ____target_hurt_3(
                ____target_2,
                self,
                ____6570_503C__7269_9632__96F7_9E23_7206_5F39__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, 0)
            )
            self:addParticle(
                134280409,
                target,
                nil,
                1,
                1,
                50,
                "hit_point"
            )
            local x = target:p(_____653B_51FB) * _____6570_503C["物防"]["雷鸣爆弹"]["自身临时效果值"]
            target:addTimeLimitProperties(
                self,
                buffId1,
                1,
                {_____6570_503C["物防"]["雷鸣爆弹"]["临时效果"], _____6570_503C["物防"]["雷鸣爆弹"]["敌方临时效果值"]},
                {},
                {-1, 20},
                _____6570_503C["物防"]["雷鸣爆弹"]["临时效果持续时间"]
            )
            self.owner:applyTimeLimitProperties(
                self,
                buffId2,
                _____6570_503C["物防"]["雷鸣爆弹"]["临时效果持续时间"],
                1,
                {_____653B_51FB, x},
                {}
            )
        end})
        p:moverTarget(target, 5000, 0)
    end)
end
local ____ = fight
return ____exports
