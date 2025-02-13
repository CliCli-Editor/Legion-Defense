local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 13,["37"] = 16,["38"] = 18,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 20,["46"] = 21,["47"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["59"] = 23,["60"] = 23,["61"] = 23,["63"] = 24,["64"] = 21,["65"] = 28,["67"] = 10,["68"] = 30});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["恢复"]["生命飞弹"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targetX = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["恢复"]["生命飞弹"]["索敌范围"]),
            {"敌人"}
        )
        if not targetX or #targetX == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = random:randomList(targetX)
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            _____6570_503C["恢复"]["生命飞弹"]["投射物ID"],
            self.owner:getPosition(),
            angle,
            150
        )
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["恢复"]["生命飞弹"]["投射物碰撞体积"]})
        p:listener({onFinish = function()
            local ____opt_0 = target
            if ____opt_0 ~= nil then
                local ____opt_0_hurt_3 = ____opt_0.hurt
                local ____6570_503C__6062_590D__751F_547D_98DE_5F39__4F24_5BB3_7C7B_578B_2 = _____6570_503C["恢复"]["生命飞弹"]["伤害类型"]
                local ____self_1 = _____6570_503C["恢复"]["生命飞弹"]
                ____opt_0_hurt_3(
                    ____opt_0,
                    self,
                    ____6570_503C__6062_590D__751F_547D_98DE_5F39__4F24_5BB3_7C7B_578B_2,
                    ____self_1["伤害"](____self_1, self.owner, 0),
                    nil,
                    nil,
                    nil,
                    _____6570_503C["恢复"]["生命飞弹"]["命中特效ID"]
                )
            end
            p:remove()
        end})
        p:moverTarget(target, _____6570_503C["恢复"]["生命飞弹"]["投射物飞行速度"], _____6570_503C["恢复"]["生命飞弹"]["投射物碰撞体积"])
    end)
end
local ____ = fight
return ____exports
