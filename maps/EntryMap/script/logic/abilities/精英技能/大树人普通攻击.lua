local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["29"] = 9,["30"] = 10,["31"] = 9,["32"] = 11,["33"] = 12,["34"] = 13,["35"] = 14,["36"] = 15,["38"] = 17,["40"] = 11,["41"] = 20,["42"] = 21,["43"] = 22,["44"] = 23,["45"] = 23,["46"] = 23,["47"] = 23,["48"] = 23,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 25,["58"] = 26,["61"] = 29,["62"] = 29,["63"] = 30,["64"] = 31,["67"] = 34,["68"] = 35,["69"] = 35,["70"] = 35,["71"] = 35,["72"] = 35,["73"] = 35,["74"] = 35,["75"] = 35,["76"] = 35,["77"] = 36,["78"] = 37,["79"] = 38,["81"] = 40,["83"] = 20,["84"] = 9,["85"] = 9,["86"] = 9,["87"] = 9,["88"] = 9,["89"] = 46,["90"] = 46,["91"] = 46,["92"] = 46,["93"] = 46,["94"] = 46,["95"] = 9,["96"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
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
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("attack2", 3, 0, 1.05)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["特殊攻击"] then
        self:play("attack2", 1, 1.05, -1)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(500),
            {"敌人"}
        )
        self:addParticle(
            134239772,
            self.owner:getPosition(),
            nil,
            1.67,
            1,
            200
        )
        for ____, target in ipairs(targets) do
            target:attackTarget(self.owner, 600)
        end
    else
        local ____self_1 = _____6570_503C["精英技能"]["大树人普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
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
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134243221,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.35,
        ["施法引导"] = 0,
        ["施法出手"] = 0.85,
        ["施法完成"] = 0
    }
)
return ____exports
