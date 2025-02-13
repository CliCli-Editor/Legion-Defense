local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["29"] = 9,["30"] = 10,["31"] = 11,["32"] = 12,["33"] = 9,["34"] = 13,["35"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["40"] = 19,["42"] = 13,["43"] = 22,["44"] = 23,["45"] = 23,["46"] = 24,["47"] = 25,["50"] = 28,["51"] = 29,["52"] = 29,["53"] = 29,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 30,["61"] = 31,["62"] = 32,["64"] = 34,["65"] = 35,["66"] = 36,["67"] = 36,["68"] = 37,["69"] = 38,["70"] = 38,["72"] = 40,["73"] = 41,["75"] = 44,["76"] = 44,["77"] = 45,["78"] = 46,["79"] = 46,["81"] = 48,["82"] = 48,["83"] = 48,["84"] = 48,["85"] = 48,["86"] = 48,["87"] = 48,["88"] = 48,["89"] = 48,["90"] = 49,["92"] = 22,["93"] = 9,["94"] = 9,["95"] = 9,["96"] = 9,["97"] = 9,["98"] = 9,["99"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.isRight = false
    self["左脚底粒子ID"] = 134274413
    self["右脚底粒子ID"] = 134223542
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
    self.isRight = self.owner:getValue(_____7279_6280_1) % 2 == 0
    if self.isRight then
        self:play("attack2", 0.78)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["苍坤"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:playSound(self.owner, 134266174)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        nil,
        nil,
        nil,
        134239232
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    local unitLevel = self.owner:getLevel()
    if self.isRight then
        local ____self_2 = _____6570_503C["苍坤"]["普通攻击"]
        local shieldValue = ____self_2["右手护盾"](____self_2)
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_3 = _____6570_503C["苍坤"]["普通攻击"]
            shieldValue = shieldValue + ____self_3["天赋12额外护盾"](____self_3, unitLevel)
        end
        fightUtils:addShield(self.owner, self.skillEntity, shieldValue)
        self:setUnderParticle(target, self["右脚底粒子ID"], scale)
    else
        local ____self_4 = _____6570_503C["苍坤"]["普通攻击"]
        local exV = ____self_4["左手固定伤害"](____self_4)
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_5 = _____6570_503C["苍坤"]["普通攻击"]
            exV = exV + ____self_5["天赋11额外固定伤害"](____self_5, unitLevel)
        end
        target:hurt(
            self.skillEntity,
            Formula["固定伤害"],
            exV,
            nil,
            nil,
            nil,
            134236557
        )
        self:setUnderParticle(target, self["左脚底粒子ID"], scale)
    end
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134278036,
    ____class_0,
    {["施法开始"] = 0.28, ["施法引导"] = 0, ["施法出手"] = 0.47, ["施法完成"] = 0}
)
return ____exports
