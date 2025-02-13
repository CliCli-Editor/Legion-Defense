local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["32"] = 11,["33"] = 12,["34"] = 14,["35"] = 11,["36"] = 15,["37"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["44"] = 17,["45"] = 17,["47"] = 17,["48"] = 18,["49"] = 19,["50"] = 20,["52"] = 25,["53"] = 26,["55"] = 15,["56"] = 30,["57"] = 31,["58"] = 32,["61"] = 35,["62"] = 36,["63"] = 36,["64"] = 37,["65"] = 38,["66"] = 38,["67"] = 38,["68"] = 38,["69"] = 38,["70"] = 38,["71"] = 38,["72"] = 38,["73"] = 38,["74"] = 39,["75"] = 40,["76"] = 41,["78"] = 43,["80"] = 30,["81"] = 47,["83"] = 48,["84"] = 49,["85"] = 50,["86"] = 50,["87"] = 50,["88"] = 50,["90"] = 50,["91"] = 50,["93"] = 50,["95"] = 51,["97"] = 51,["98"] = 51,["99"] = 51,["102"] = 52,["103"] = 53,["104"] = 53,["105"] = 53,["106"] = 53,["107"] = 53,["108"] = 53,["109"] = 53,["110"] = 53,["111"] = 53,["112"] = 53,["113"] = 54,["114"] = 54,["115"] = 54,["116"] = 54,["117"] = 54,["118"] = 54,["119"] = 54,["120"] = 54,["121"] = 55,["122"] = 56,["123"] = 57,["124"] = 58,["126"] = 60,["127"] = 51,["131"] = 47,["132"] = 11,["133"] = 11,["134"] = 11,["135"] = 11,["136"] = 11,["137"] = 11,["138"] = 11});
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
    self.count = 0
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____self_4 = self.owner
    local ____self_4_random_5 = ____self_4.random
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_1 = _____6570_503C["玲珑"]["普通攻击"]
        ____temp_3 = ____self_1["天赋11特殊攻击概率"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["玲珑"]["普通攻击"]
        ____temp_3 = ____self_2["特殊攻击概率"](____self_2, self.owner)
    end
    self["特殊攻击"] = ____self_4_random_5(____self_4, "玲珑普攻特殊攻击概率", ____temp_3)
    if self["特殊攻击"] then
        self:play("attack1")
        self:spAtk()
    else
        self.count = self.count + 1
        self:play(self.count % 2 == 1 and "ability2" or "ability3")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if not self["特殊攻击"] then
        local ____self_6 = _____6570_503C["玲珑"]["普通攻击"]
        local v = ____self_6["伤害"](____self_6, self.owner)
        self:playSound(self.owner, 134240944)
        target:hurt(
            self.skillEntity,
            Formula["法术伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            101027
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end
end
function ____class_0.prototype.spAtk(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(0.2))
        local duration = 0.2
        local ____temp_9
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_7 = _____6570_503C["玲珑"]["普通攻击"]
            ____temp_9 = ____self_7["天赋12特殊攻击伤害"](____self_7, self.owner)
        else
            local ____self_8 = _____6570_503C["玲珑"]["普通攻击"]
            ____temp_9 = ____self_8["特殊攻击伤害"](____self_8, self.owner)
        end
        local v = ____temp_9
        do
            local i = 0
            while true do
                local ____i_11 = i
                local ____self_10 = _____6570_503C["玲珑"]["普通攻击"]
                if not (____i_11 < ____self_10["特殊攻击段数"](____self_10)) then
                    break
                end
                self:playSound(self.owner, 134240944)
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createSectorShape(
                        350,
                        60,
                        self.owner:getAngle(),
                        self.owner
                    ),
                    {"敌军"}
                )
                self:addParticle(
                    134268224,
                    self.owner:getPosition(),
                    self.owner:getAngle(),
                    1,
                    1,
                    150
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                __TS__Await(self:awaitTime(duration))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134254781,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
