local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 12,["40"] = 15,["41"] = 16,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 18,["47"] = 19,["49"] = 21,["50"] = 21,["51"] = 22,["53"] = 25,["54"] = 26,["55"] = 27,["57"] = 29,["58"] = 30,["60"] = 32,["63"] = 35,["64"] = 15,["65"] = 37,["66"] = 38,["67"] = 39,["70"] = 42,["71"] = 43,["72"] = 43,["73"] = 43,["74"] = 43,["76"] = 43,["77"] = 43,["79"] = 43,["80"] = 44,["81"] = 45,["82"] = 45,["83"] = 45,["84"] = 45,["85"] = 45,["86"] = 46,["87"] = 46,["88"] = 46,["89"] = 46,["90"] = 46,["91"] = 46,["92"] = 46,["93"] = 46,["94"] = 47,["95"] = 48,["96"] = 49,["97"] = 50,["98"] = 50,["99"] = 50,["100"] = 50,["101"] = 50,["102"] = 50,["103"] = 50,["104"] = 50,["105"] = 51,["107"] = 53,["109"] = 53,["110"] = 53,["111"] = 53,["112"] = 53,["113"] = 53,["116"] = 53,["117"] = 53,["118"] = 53,["119"] = 53,["120"] = 53,["121"] = 53,["122"] = 53,["123"] = 53,["124"] = 53,["127"] = 55,["128"] = 55,["129"] = 56,["130"] = 57,["131"] = 57,["132"] = 57,["133"] = 57,["134"] = 57,["135"] = 57,["136"] = 57,["137"] = 57,["138"] = 57,["139"] = 58,["140"] = 59,["141"] = 60,["143"] = 62,["145"] = 37,["146"] = 12,["147"] = 12,["148"] = 12,["149"] = 12,["150"] = 12,["151"] = 12,["152"] = 12});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____95EA_907F_7387 = ____Property["闪避率"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_14 = createAbility
local ____fight_13 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
    self["暴击"] = self.owner:random(
        "希露普通攻击暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        self["特殊攻击"] = self["暴击"]
    else
        local ____self_1 = _____6570_503C["希露"]["普通攻击"]
        local x = ____self_1["特殊攻击所需次数"](____self_1)
        self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) % (x + 1) == 0
    end
    local aniName = "attack1"
    if self["特殊攻击"] then
        aniName = "ability2"
    else
        if self["暴击"] then
            aniName = "attack3"
        else
            aniName = self.owner:getValue(_____7279_6280_1) % 2 == 0 and "attack2" or "attack1"
        end
    end
    self:play(aniName)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if self["特殊攻击"] then
        local ____temp_4
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_2 = _____6570_503C["希露"]["普通攻击"]
            ____temp_4 = ____self_2["天赋12特殊攻击伤害"](____self_2, self.owner)
        else
            local ____self_3 = _____6570_503C["希露"]["普通攻击"]
            ____temp_4 = ____self_3["特殊攻击伤害"](____self_3, self.owner)
        end
        local v = ____temp_4
        local angle = self:getDirection(self.owner, target)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(400, 90, angle, self.owner),
            {"敌军"}
        )
        self:addParticle(
            134248339,
            self.owner:getPosition(),
            angle,
            0.67,
            1,
            150
        )
        self:playSound(self.owner, 134240944)
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                true
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        local ____self_10 = self.owner
        local ____self_10_applyTimeLimitProperties_11 = ____self_10.applyTimeLimitProperties
        local ____self_skillEntity_8 = self.skillEntity
        local ____self_5 = _____6570_503C["希露"]["普通攻击"]
        local ____self_5__7279_6B8A_653B_51FB_95EA_907F_6301_7EED_65F6_95F4_result_9 = ____self_5["特殊攻击闪避持续时间"](____self_5)
        local ____95EA_907F_7387_7 = _____95EA_907F_7387
        local ____self_6 = _____6570_503C["希露"]["普通攻击"]
        ____self_10_applyTimeLimitProperties_11(
            ____self_10,
            ____self_skillEntity_8,
            buffId,
            ____self_5__7279_6B8A_653B_51FB_95EA_907F_6301_7EED_65F6_95F4_result_9,
            1,
            {
                ____95EA_907F_7387_7,
                ____self_6["特殊攻击提升闪避"](____self_6)
            },
            {}
        )
    else
        local ____self_12 = _____6570_503C["希露"]["普通攻击"]
        local v = ____self_12["伤害"](____self_12, self.owner)
        self:playSound(self.owner, 134240944)
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
        self:setUnderParticle(target, 134259689, scale)
    end
end
____exports.key = ____createAbility_14(
    nil,
    ____fight_13,
    134281268,
    ____class_0,
    {["施法开始"] = 0.27, ["施法引导"] = 0, ["施法出手"] = 0.43, ["施法完成"] = 0}
)
return ____exports
