local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["38"] = 12,["39"] = 13,["40"] = 14,["41"] = 15,["44"] = 18,["47"] = 21,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 23,["55"] = 24,["56"] = 25,["57"] = 26,["58"] = 24,["59"] = 28,["60"] = 29,["61"] = 30,["62"] = 31,["63"] = 31,["64"] = 31,["65"] = 31,["66"] = 31,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 32,["74"] = 24,["75"] = 24,["76"] = 36,["78"] = 9,["79"] = 39});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法防"]["法术杀手"]["索敌范围"]),
            {"敌人"}
        )
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            2000
        )
        if #targets > 0 then
            local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
            if targetXs and #targetXs > 0 then
                target = targetXs[1]
            end
        end
        if not target then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            _____6570_503C["法防"]["法术杀手"]["投射物ID"],
            self.owner:getPosition(),
            angle,
            150
        )
        p:prepare({hit_radius = _____6570_503C["法防"]["法术杀手"]["投射物碰撞体积"], hit_same = false})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(target)
                if target and target:isAlive() then
                    target.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____target_2 = target
                    local ____target_hurt_3 = target.hurt
                    local ____6570_503C__6CD5_9632__6CD5_672F_6740_624B__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法防"]["法术杀手"]["伤害类型"]
                    local ____self_0 = _____6570_503C["法防"]["法术杀手"]
                    ____target_hurt_3(
                        ____target_2,
                        self,
                        ____6570_503C__6CD5_9632__6CD5_672F_6740_624B__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, self.owner, _____6570_503C["法防"]["法术杀手"]["等级相关数值"][self.level + 1])
                    )
                    target.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        })
        p:moverLine(angle, _____6570_503C["法防"]["法术杀手"]["索敌范围"], _____6570_503C["法防"]["法术杀手"]["投射物飞行速度"])
    end)
end
local ____ = fight
return ____exports
