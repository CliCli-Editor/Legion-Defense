local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["34"] = 9,["35"] = 10,["36"] = 11,["37"] = 9,["38"] = 12,["39"] = 13,["40"] = 14,["41"] = 12,["42"] = 16,["44"] = 17,["45"] = 18,["49"] = 21,["50"] = 25,["51"] = 22,["53"] = 23,["54"] = 24,["55"] = 25,["56"] = 25,["57"] = 26,["58"] = 27,["59"] = 27,["61"] = 29,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 32,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 33,["80"] = 34,["81"] = 35,["82"] = 35,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 36,["89"] = 37,["90"] = 38,["92"] = 40,["94"] = 42,["95"] = 43,["97"] = 43,["98"] = 43,["101"] = 43,["107"] = 46,["109"] = 47,["110"] = 48,["111"] = 49,["112"] = 49,["113"] = 49,["114"] = 49,["115"] = 49,["116"] = 49,["117"] = 49,["118"] = 50,["119"] = 50,["120"] = 50,["121"] = 50,["123"] = 50,["124"] = 50,["126"] = 50,["127"] = 51,["128"] = 52,["132"] = 55,["133"] = 56,["134"] = 57,["135"] = 57,["136"] = 58,["137"] = 59,["138"] = 59,["140"] = 61,["141"] = 62,["142"] = 63,["144"] = 63,["145"] = 63,["148"] = 63,["152"] = 65,["153"] = 66,["154"] = 67,["155"] = 68,["157"] = 70,["162"] = 16,["163"] = 9,["164"] = 9,["165"] = 9,["166"] = 9,["167"] = 9,["168"] = 9,["169"] = 9});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
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
    self["脚底粒子ID"] = 134259689
    self["攻击类型"] = 1
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
    self["攻击类型"] = self.owner:getValue(_____7279_6280_1) % 3
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        repeat
            local ____switch5 = self["攻击类型"]
            local v, angle, targets, critical, c, v2, hurt, scale
            local ____cond5 = ____switch5 == 2
            if ____cond5 then
                self:play("ability3_2")
                __TS__Await(self:awaitTime(0.3))
                local ____self_1 = _____6570_503C["熊猫人"]["普通攻击"]
                v = ____self_1["第二击伤害"](____self_1, self.owner)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____self_2 = _____6570_503C["熊猫人"]["普通攻击"]
                    v = ____self_2["天赋11第二击伤害"](____self_2, self.owner)
                end
                angle = self:getDirection(self.owner, target)
                targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createSectorShape(350, 60, angle, self.owner),
                    {"敌人"}
                )
                self:addParticle(
                    134265518,
                    self.owner:getPosition(),
                    angle,
                    1,
                    1,
                    150
                )
                self:playSound(self.owner, 134244581)
                critical = self.owner:random(
                    "熊猫人普攻第二击暴击",
                    self.owner:p(_____66B4_51FB_7387)
                )
                for ____, t in ipairs(targets) do
                    t:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        v,
                        AbilityType["普攻"],
                        critical
                    )
                    local scale = 1
                    if t:checkTag(UnitTag["玩家英雄"]) then
                        scale = 0.5
                    end
                    self:setUnderParticle(t, self["脚底粒子ID"], scale)
                end
                if self.owner:getValue(_____5929_8D4B_2) == 2 and critical then
                    local ____self_5 = self.owner
                    local ____self_5_addEffect_6 = ____self_5.addEffect
                    local ____self_skillEntity_4 = self.skillEntity
                    local ____self_3 = _____6570_503C["熊猫人"]["普通攻击"]
                    ____self_5_addEffect_6(
                        ____self_5,
                        ____self_skillEntity_4,
                        ____self_3["天赋22buff"](____self_3)
                    )
                end
                break
            end
            ____cond5 = ____cond5 or ____switch5 == 0
            if ____cond5 then
                self:play("attack3", 1, 0.7, 1.7)
                __TS__Await(self:awaitTime(0.3))
                self:addParticle(
                    134241986,
                    self.owner,
                    nil,
                    1,
                    1
                )
                local ____temp_9
                if self.owner:getValue(_____5929_8D4B_1) == 2 then
                    local ____self_7 = _____6570_503C["熊猫人"]["普通攻击"]
                    ____temp_9 = ____self_7["天赋12治疗"](____self_7, self.owner)
                else
                    local ____self_8 = _____6570_503C["熊猫人"]["普通攻击"]
                    ____temp_9 = ____self_8["第三段治疗"](____self_8, self.owner)
                end
                c = ____temp_9
                self.owner:cure(self.skillEntity, Formula["回血值"], c)
                self:playSound(self.owner, 134265953)
                break
            end
            do
                self:play("attack1")
                __TS__Await(self:awaitTime(0.4))
                local ____self_10 = _____6570_503C["熊猫人"]["普通攻击"]
                v2 = ____self_10["第一击伤害"](____self_10, self.owner)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____self_11 = _____6570_503C["熊猫人"]["普通攻击"]
                    v2 = ____self_11["天赋11第一击伤害"](____self_11, self.owner)
                end
                hurt = target:hurt(self.skillEntity, Formula["物理伤害"], v2, AbilityType["普攻"])
                if self.owner:getValue(_____5929_8D4B_2) == 2 and hurt.critical then
                    local ____self_14 = self.owner
                    local ____self_14_addEffect_15 = ____self_14.addEffect
                    local ____self_skillEntity_13 = self.skillEntity
                    local ____self_12 = _____6570_503C["熊猫人"]["普通攻击"]
                    ____self_14_addEffect_15(
                        ____self_14,
                        ____self_skillEntity_13,
                        ____self_12["天赋22buff"](____self_12)
                    )
                end
                self:playSound(self.owner, 134244581)
                scale = 1
                if target:checkTag(UnitTag["玩家英雄"]) then
                    scale = 0.5
                end
                self:setUnderParticle(target, self["脚底粒子ID"], scale)
                break
            end
        until true
    end)
end
____exports.key = ____createAbility_17(
    nil,
    ____fight_16,
    134244590,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
