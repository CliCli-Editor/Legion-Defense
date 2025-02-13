local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["34"] = 11,["35"] = 12,["36"] = 11,["37"] = 13,["38"] = 14,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 15,["43"] = 16,["45"] = 18,["47"] = 13,["48"] = 21,["49"] = 22,["50"] = 22,["51"] = 23,["52"] = 24,["55"] = 27,["56"] = 28,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 29,["61"] = 29,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 31,["71"] = 32,["72"] = 33,["73"] = 33,["74"] = 33,["75"] = 33,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 33,["80"] = 33,["81"] = 34,["82"] = 35,["83"] = 36,["84"] = 37,["86"] = 39,["87"] = 40,["88"] = 40,["89"] = 40,["90"] = 40,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 40,["97"] = 40,["98"] = 40,["99"] = 40,["100"] = 40,["101"] = 40,["102"] = 40,["103"] = 40,["104"] = 40,["107"] = 43,["108"] = 43,["109"] = 43,["110"] = 43,["111"] = 43,["112"] = 43,["113"] = 43,["114"] = 43,["115"] = 43,["116"] = 44,["117"] = 45,["118"] = 46,["120"] = 48,["122"] = 21,["123"] = 11,["124"] = 11,["125"] = 11,["126"] = 11,["127"] = 11,["128"] = 11,["129"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "异形怪物普通攻击暴击概率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["暴击"] then
        self:play("attack2")
    else
        self:play("attack1", 1, 0.1, -1)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["异形怪物普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    if self["暴击"] then
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(200, target),
            {"敌人"}
        )
        self:addParticle(
            104498,
            target:getPosition(),
            nil,
            2,
            1,
            10
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                ability.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                134231255
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local scale = 1
            if t:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(t, 134259689, scale)
            local ____t_5 = t
            local ____t_addTimeLimitProperties_6 = t.addTimeLimitProperties
            local ____self_skillEntity_4 = self.skillEntity
            local ____7269_7406_9632_5FA1_3 = _____7269_7406_9632_5FA1
            local ____self_2 = _____6570_503C["佣兵技能"]["异形怪物普通攻击"]
            ____t_addTimeLimitProperties_6(
                ____t_5,
                ____self_skillEntity_4,
                buffId,
                1,
                {
                    ____7269_7406_9632_5FA1_3,
                    ____self_2["物防降低"](____self_2)
                },
                {},
                {-1, 20},
                3
            )
        end
    else
        target:hurt(
            ability.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            self["暴击"],
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
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134245837,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
