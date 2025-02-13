local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 12,["37"] = 10,["38"] = 14,["39"] = 15,["40"] = 16,["43"] = 19,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 21,["49"] = 22,["50"] = 23,["51"] = 24,["53"] = 26,["55"] = 14,["56"] = 29,["58"] = 31,["59"] = 32,["60"] = 33,["61"] = 34,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 36,["66"] = 36,["67"] = 36,["68"] = 36,["69"] = 37,["70"] = 37,["71"] = 37,["72"] = 37,["73"] = 37,["74"] = 38,["75"] = 38,["76"] = 38,["77"] = 38,["78"] = 38,["79"] = 38,["80"] = 38,["81"] = 38,["82"] = 39,["83"] = 40,["84"] = 41,["85"] = 41,["86"] = 41,["87"] = 41,["88"] = 41,["89"] = 41,["90"] = 41,["91"] = 42,["92"] = 43,["93"] = 44,["94"] = 44,["95"] = 44,["96"] = 44,["97"] = 44,["98"] = 44,["99"] = 44,["100"] = 44,["101"] = 44,["104"] = 47,["105"] = 48,["107"] = 48,["108"] = 48,["109"] = 48,["112"] = 48,["113"] = 48,["114"] = 48,["118"] = 52,["119"] = 53,["122"] = 56,["123"] = 57,["124"] = 57,["125"] = 58,["126"] = 58,["127"] = 58,["128"] = 58,["129"] = 58,["130"] = 58,["131"] = 58,["132"] = 58,["133"] = 58,["134"] = 59,["135"] = 60,["136"] = 61,["140"] = 29,["141"] = 10,["142"] = 10,["143"] = 10,["144"] = 10,["145"] = 10,["146"] = 10,["147"] = 10});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    target:getPosition(self["目标位置"])
    self["暴击"] = self.owner:random(
        "天命人普攻暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("attack2_01")
    else
        self:play("attack1_02", 0.8)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["特殊攻击"] then
            __TS__Await(self:awaitTime(0.25))
            self:playSound(self.owner, 134240944)
            local ____self_1 = _____6570_503C["天命人"]["普通攻击"]
            local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
            local angle = self:getDirection(self.owner, self["目标位置"])
            local offsetPoint = self:offsetPoint(
                self.owner:getPosition(),
                angle,
                600
            )
            local targets = self.owner:findByShape(
                offsetPoint,
                Shape:createRectangleShape(200, 1200, angle),
                {"敌人"}
            )
            self:addParticle(
                102478,
                offsetPoint,
                angle,
                1,
                1,
                10
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    self["暴击"]
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
                if self.owner:getValue(_____5929_8D4B_1) == 2 then
                    local ____t_4 = t
                    local ____t_addEffect_5 = t.addEffect
                    local ____self_skillEntity_3 = self.skillEntity
                    local ____self_2 = _____6570_503C["天命人"]["普通攻击"]
                    ____t_addEffect_5(
                        ____t_4,
                        ____self_skillEntity_3,
                        ____self_2["天赋12附加debuff"](____self_2)
                    )
                end
            end
            if self.owner:getValue(_____5929_8D4B_1) == 1 and self["暴击"] then
                local ____self_9 = self.owner
                local ____self_9_cure_10 = ____self_9.cure
                local ____self_skillEntity_7 = self.skillEntity
                local ____Formula__56DE_8840_503C_8 = Formula["回血值"]
                local ____self_6 = _____6570_503C["天命人"]["普通攻击"]
                ____self_9_cure_10(
                    ____self_9,
                    ____self_skillEntity_7,
                    ____Formula__56DE_8840_503C_8,
                    ____self_6["天赋11治疗"](____self_6, self.owner)
                )
            end
        else
            local target = cast:getTargetUnit()
            if not target or not target:isAlive() then
                return ____awaiter_resolve(nil)
            end
            self:playSound(self.owner, 134240944)
            local ____self_11 = _____6570_503C["天命人"]["普通攻击"]
            local v = ____self_11["伤害"](____self_11, self.owner)
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                104136
            )
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134241065,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
