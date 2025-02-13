local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["30"] = 9,["31"] = 11,["32"] = 9,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 14,["39"] = 15,["41"] = 17,["43"] = 12,["44"] = 21,["45"] = 22,["46"] = 22,["47"] = 23,["48"] = 24,["49"] = 25,["50"] = 25,["51"] = 25,["52"] = 25,["53"] = 25,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 26,["60"] = 27,["62"] = 27,["63"] = 27,["64"] = 27,["65"] = 27,["66"] = 27,["67"] = 27,["68"] = 27,["72"] = 30,["73"] = 31,["74"] = 32,["75"] = 33,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 33,["80"] = 33,["81"] = 33,["82"] = 33,["83"] = 33,["84"] = 34,["85"] = 35,["86"] = 36,["87"] = 37,["89"] = 39,["92"] = 42,["93"] = 43,["96"] = 46,["97"] = 47,["98"] = 47,["99"] = 47,["100"] = 47,["101"] = 47,["102"] = 47,["103"] = 47,["104"] = 47,["105"] = 47,["106"] = 48,["107"] = 49,["108"] = 50,["110"] = 52,["112"] = 21,["113"] = 9,["114"] = 9,["115"] = 9,["116"] = 9,["117"] = 9,["118"] = 9,["119"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____66B4_51FB_7387 = ____Property["暴击率"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["暴击"] then
        self:play("attack2", 0.88)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["海妖普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    if self["暴击"] then
        local angle = self.owner:getAngle()
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(
                500,
                180,
                self.owner:getAngle(),
                self.owner
            ),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            local ____opt_2 = cast:getTargetUnit()
            if ____opt_2 ~= nil then
                ____opt_2:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    self["暴击"]
                )
            end
            return
        end
        self:playSound(self.owner, 201329173)
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
        end
    else
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 201329173)
        target:hurt(
            self.skillEntity,
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
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134246602,
    ____class_0,
    {["施法开始"] = 0.85, ["施法引导"] = 0, ["施法出手"] = 1.26, ["施法完成"] = 0}
)
return ____exports
