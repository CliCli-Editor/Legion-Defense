local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["25"] = 8,["26"] = 9,["27"] = 8,["28"] = 10,["29"] = 11,["30"] = 12,["31"] = 10,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 17,["39"] = 20,["40"] = 21,["41"] = 22,["42"] = 23,["43"] = 25,["44"] = 26,["47"] = 29,["48"] = 30,["49"] = 23,["50"] = 33,["51"] = 34,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 36,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["65"] = 14,["66"] = 8,["67"] = 8,["68"] = 8,["69"] = 8,["70"] = 8,["71"] = 8,["72"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.count = (self.count + 1) % 3
    self:play("attack")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["鸡裁判普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134234784, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 1500, 50)
    if self.count == 0 then
        local t = self.owner:findTarget(
            {"友军"},
            function(____, a) return not a:checkTag(UnitTag["玩家英雄"]) end,
            0,
            1000 + self.owner:getCollisionRadius()
        )
        if t ~= nil then
            t:addEffect(
                self.skillEntity,
                _____6570_503C["佣兵技能"]["鸡裁判普通攻击"]:buffId()
            )
        end
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134251929,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.8}
)
return ____exports
