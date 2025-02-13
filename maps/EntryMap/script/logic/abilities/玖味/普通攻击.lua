local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["32"] = 10,["33"] = 11,["34"] = 10,["35"] = 12,["36"] = 13,["37"] = 14,["38"] = 15,["39"] = 16,["41"] = 18,["43"] = 12,["44"] = 21,["45"] = 22,["46"] = 23,["49"] = 26,["50"] = 27,["51"] = 28,["52"] = 28,["53"] = 29,["54"] = 30,["55"] = 31,["56"] = 32,["57"] = 33,["58"] = 34,["59"] = 34,["60"] = 34,["61"] = 34,["62"] = 34,["63"] = 35,["64"] = 35,["65"] = 35,["66"] = 35,["67"] = 35,["68"] = 36,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 36,["75"] = 36,["76"] = 37,["77"] = 38,["78"] = 39,["79"] = 40,["80"] = 41,["82"] = 43,["83"] = 44,["85"] = 44,["86"] = 44,["87"] = 44,["90"] = 44,["91"] = 44,["92"] = 44,["96"] = 47,["97"] = 48,["98"] = 48,["99"] = 48,["100"] = 48,["102"] = 48,["103"] = 48,["105"] = 48,["106"] = 49,["107"] = 50,["108"] = 50,["109"] = 50,["110"] = 50,["111"] = 50,["112"] = 50,["113"] = 50,["114"] = 50,["115"] = 50,["116"] = 51,["117"] = 52,["118"] = 53,["120"] = 55,["122"] = 21,["123"] = 10,["124"] = 10,["125"] = 10,["126"] = 10,["127"] = 10,["128"] = 10,["129"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____4F53_578B = ____Property["体型"]
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
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
        self:play("attack1", 1.14)
    else
        self:play("attack2", 0.86)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if self["特殊攻击"] then
        self:play("attack1", 0.92, 0.4, -1)
        local ____self_1 = _____6570_503C["大头"]["普通攻击"]
        local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
        self:playSound(self.owner, 134240944)
        local scale = math.floor(self.owner:p(_____4F53_578B) * 10) / 10
        local width = 150 * scale
        local length = 1000 * scale
        local angle = self:getDirection(self.owner, target)
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            length / 2
        )
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(width, length, angle),
            {"敌人"}
        )
        self:addParticle(
            134240874,
            self.owner:getPosition(),
            angle,
            1.2 * scale,
            1,
            5
        )
        self:playSound(self.owner, 134240944)
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        if #targets > 0 and self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_5 = self.owner
            local ____self_5_cure_6 = ____self_5.cure
            local ____self_skillEntity_3 = self.skillEntity
            local ____Formula__56DE_8840_503C_4 = Formula["回血值"]
            local ____self_2 = _____6570_503C["大头"]["普通攻击"]
            ____self_5_cure_6(
                ____self_5,
                ____self_skillEntity_3,
                ____Formula__56DE_8840_503C_4,
                ____self_2["天赋11特殊攻击恢复"](____self_2, self.owner, #targets)
            )
        end
    else
        self:play("attack2", 1.08, 0.3, -1)
        local ____temp_9
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_7 = _____6570_503C["大头"]["普通攻击"]
            ____temp_9 = ____self_7["天赋12伤害"](____self_7, self.owner)
        else
            local ____self_8 = _____6570_503C["大头"]["普通攻击"]
            ____temp_9 = ____self_8["伤害"](____self_8, self.owner)
        end
        local v = ____temp_9
        self:playSound(self.owner, 134240944)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            102228
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134260887,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 0}
)
return ____exports
