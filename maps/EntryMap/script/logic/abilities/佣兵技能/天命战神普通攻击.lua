local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 9,["32"] = 10,["33"] = 8,["34"] = 11,["36"] = 12,["37"] = 13,["40"] = 16,["41"] = 17,["42"] = 18,["43"] = 19,["44"] = 20,["46"] = 20,["47"] = 20,["50"] = 20,["53"] = 21,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 23,["60"] = 24,["61"] = 24,["62"] = 24,["63"] = 24,["64"] = 24,["65"] = 24,["66"] = 24,["67"] = 24,["69"] = 26,["72"] = 11,["73"] = 29,["74"] = 30,["75"] = 31,["78"] = 34,["79"] = 35,["80"] = 35,["81"] = 36,["82"] = 37,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 38,["88"] = 39,["89"] = 40,["90"] = 40,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 40,["97"] = 41,["98"] = 41,["99"] = 41,["100"] = 41,["101"] = 41,["102"] = 42,["103"] = 43,["104"] = 44,["105"] = 45,["106"] = 46,["107"] = 46,["108"] = 46,["109"] = 46,["110"] = 46,["111"] = 46,["112"] = 46,["113"] = 46,["114"] = 46,["117"] = 49,["118"] = 50,["119"] = 50,["120"] = 51,["121"] = 52,["122"] = 52,["123"] = 52,["124"] = 52,["125"] = 52,["126"] = 52,["127"] = 52,["128"] = 52,["129"] = 52,["130"] = 53,["132"] = 53,["133"] = 53,["134"] = 53,["137"] = 53,["138"] = 53,["139"] = 53,["141"] = 54,["142"] = 55,["143"] = 56,["145"] = 58,["147"] = 29,["148"] = 8,["149"] = 8,["150"] = 8,["151"] = 8,["152"] = 8,["153"] = 8,["154"] = 8});
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
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_17 = createAbility
local ____fight_16 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self.count = self.count + 1
        self["特殊攻击"] = self.count % 6 == 0
        if self["特殊攻击"] then
            self:play("ability_30001")
            local ____self_3 = self.owner
            local ____self_3_addEffect_4 = ____self_3.addEffect
            local ____self_skillEntity_2 = self.skillEntity
            local ____self_1 = _____6570_503C["佣兵技能"]["天命战神普通攻击"]
            ____self_3_addEffect_4(
                ____self_3,
                ____self_skillEntity_2,
                ____self_1["自己buffId"](____self_1)
            )
            local angle = self:getDirection(self.owner, target)
            local offsetPoint = self:offsetPoint(
                self.owner:getPosition(),
                angle,
                0
            )
            __TS__Await(self:awaitTime(0.3))
            self:addParticle(
                102343,
                offsetPoint,
                angle,
                1,
                1,
                10
            )
        else
            self:play("attack1", 0.3)
        end
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if self["特殊攻击"] then
        local ____self_5 = _____6570_503C["佣兵技能"]["天命战神普通攻击"]
        local v = ____self_5["特殊攻击伤害"](____self_5, self.owner)
        self:playSound(self.owner, 134240944)
        local angle = self:getDirection(self.owner, target)
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            750
        )
        self:playSound(self.owner, 134240944)
        self:addParticle(
            102478,
            offsetPoint,
            angle,
            1.25,
            1,
            10
        )
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(250, 1500, angle),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local ____t_8 = t
            local ____t_addEffect_9 = t.addEffect
            local ____self_skillEntity_7 = self.skillEntity
            local ____self_6 = _____6570_503C["佣兵技能"]["天命战神普通攻击"]
            ____t_addEffect_9(
                ____t_8,
                ____self_skillEntity_7,
                ____self_6["目标buffId"](____self_6)
            )
        end
    else
        self:play("attack1", 1, 0.12, -1)
        local ____self_10 = _____6570_503C["佣兵技能"]["天命战神普通攻击"]
        local v = ____self_10["伤害"](____self_10, self.owner)
        self:playSound(self.owner, 134240944)
        target:hurt(
            ability.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            134231255
        )
        local ____self_14 = self.owner
        local ____self_14_cure_15 = ____self_14.cure
        local ____ability_skillEntity_12 = ability.skillEntity
        local ____Formula__56DE_8840_503C_13 = Formula["回血值"]
        local ____self_11 = _____6570_503C["佣兵技能"]["天命战神普通攻击"]
        ____self_14_cure_15(
            ____self_14,
            ____ability_skillEntity_12,
            ____Formula__56DE_8840_503C_13,
            ____self_11["治疗"](____self_11, self.owner)
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end
end
____exports.key = ____createAbility_17(
    nil,
    ____fight_16,
    134226969,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0}
)
return ____exports
