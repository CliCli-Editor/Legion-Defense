local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 9,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 16,["43"] = 17,["46"] = 20,["47"] = 20,["48"] = 21,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 23,["59"] = 24,["60"] = 25,["62"] = 27,["63"] = 13,["64"] = 29,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 32,["73"] = 33,["76"] = 36,["77"] = 36,["78"] = 37,["79"] = 38,["80"] = 38,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 38,["88"] = 39,["89"] = 40,["90"] = 41,["92"] = 43,["93"] = 29,["94"] = 8,["95"] = 8,["96"] = 8,["97"] = 8,["98"] = 8,["99"] = 8,["100"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack2",
        1,
        0,
        -1,
        false,
        true
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local p = self:createProjectile(
        134255920,
        ability._owner,
        ability._owner:getAngle(),
        150,
        0.5
    )
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["精英技能"]["密教战士普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:playSound(self.owner, 201329173)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        104768
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local p = self:createProjectile(
        134239374,
        ability._owner,
        ability._owner:getAngle(),
        150,
        0.5
    )
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_2 = _____6570_503C["精英技能"]["密教战士普通攻击"]
    local v = ____self_2["伤害"](____self_2, self.owner)
    self:playSound(self.owner, 201329173)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        104768
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134277085,
    ____class_0,
    {["施法开始"] = 0.7, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.6}
)
return ____exports
