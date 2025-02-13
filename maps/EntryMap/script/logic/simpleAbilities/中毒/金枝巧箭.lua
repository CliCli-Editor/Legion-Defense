local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 11,["34"] = 14,["35"] = 16,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 18,["47"] = 19,["48"] = 21,["50"] = 21,["51"] = 21,["52"] = 21,["53"] = 21,["54"] = 21,["55"] = 21,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 21,["60"] = 21,["61"] = 21,["62"] = 21,["64"] = 23,["65"] = 19,["66"] = 26,["67"] = 27,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 28,["73"] = 28,["74"] = 28,["75"] = 28,["76"] = 28,["77"] = 28,["79"] = 8,["80"] = 30});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targetX = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["中毒"]["金枝巧箭"]["索敌范围"]),
            {"敌人"},
            function(____, a) return a:getEffectQuantity(1) > 0 end
        )
        if not targetX or #targetX == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = random:randomList(targetX)
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            _____6570_503C["中毒"]["金枝巧箭"]["投射物ID"],
            self.owner:getPosition(),
            angle,
            150,
            nil,
            nil,
            nil,
            true
        )
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["中毒"]["金枝巧箭"]["投射物碰撞体积"]})
        p:listener({onFinish = function()
            local ____opt_0 = target
            if ____opt_0 ~= nil then
                local ____opt_0_hurt_3 = ____opt_0.hurt
                local ____6570_503C__4E2D_6BD2__91D1_679D_5DE7_7BAD__4F24_5BB3_7C7B_578B_2 = _____6570_503C["中毒"]["金枝巧箭"]["伤害类型"]
                local ____self_1 = _____6570_503C["中毒"]["金枝巧箭"]
                ____opt_0_hurt_3(
                    ____opt_0,
                    self,
                    ____6570_503C__4E2D_6BD2__91D1_679D_5DE7_7BAD__4F24_5BB3_7C7B_578B_2,
                    ____self_1["伤害"](____self_1, target, _____6570_503C["中毒"]["金枝巧箭"]["等级相关数值"][self.level + 1]),
                    nil,
                    nil,
                    nil,
                    _____6570_503C["中毒"]["金枝巧箭"]["命中特效ID"]
                )
            end
            p:remove()
        end})
        local d = self:getDistance(self.owner, target)
        local h = self:getParabolaHeight(45, d)
        p:moverTarget(
            target,
            _____6570_503C["中毒"]["金枝巧箭"]["投射物飞行速度"],
            _____6570_503C["中毒"]["金枝巧箭"]["投射物碰撞体积"],
            nil,
            nil,
            nil,
            nil,
            h
        )
    end)
end
local ____ = fight
return ____exports
