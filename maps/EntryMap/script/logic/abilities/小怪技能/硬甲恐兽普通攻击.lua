local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["30"] = 10,["31"] = 11,["32"] = 12,["33"] = 10,["34"] = 13,["35"] = 14,["36"] = 15,["38"] = 17,["39"] = 18,["40"] = 13,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 22,["45"] = 23,["48"] = 26,["49"] = 27,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 28,["54"] = 28,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 31,["70"] = 32,["71"] = 33,["73"] = 35,["74"] = 20,["75"] = 10,["76"] = 10,["77"] = 10,["78"] = 10,["79"] = 10,["80"] = 10,["81"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
    self.targetNum = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.count % 8 == 1 then
        self.targetNum = self.owner:randomList("硬甲恐兽第几次普攻眩晕", {5, 6, 7, 0})
    end
    self.count = (self.count + 1) % 8
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["硬甲恐兽"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
    if self.count == self.targetNum then
        target:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 101, 20},
            1
        )
    end
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        134231255
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134252779,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
