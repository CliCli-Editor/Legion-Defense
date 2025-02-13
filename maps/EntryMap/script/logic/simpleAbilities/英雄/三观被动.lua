local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["32"] = 11,["33"] = 12,["34"] = 11,["35"] = 13,["37"] = 14,["38"] = 14,["39"] = 14,["41"] = 14,["42"] = 14,["44"] = 14,["46"] = 14,["48"] = 14,["50"] = 14,["52"] = 15,["53"] = 15,["54"] = 16,["55"] = 16,["56"] = 16,["57"] = 16,["58"] = 16,["59"] = 17,["60"] = 17,["61"] = 17,["62"] = 17,["63"] = 17,["64"] = 17,["65"] = 17,["66"] = 17,["67"] = 18,["68"] = 19,["70"] = 21,["71"] = 22,["72"] = 23,["73"] = 24,["76"] = 27,["77"] = 27,["78"] = 27,["79"] = 27,["80"] = 27,["81"] = 27,["82"] = 27,["83"] = 27,["84"] = 28,["85"] = 28,["86"] = 28,["87"] = 28,["88"] = 28,["89"] = 28,["90"] = 29,["91"] = 30,["92"] = 30,["93"] = 30,["94"] = 30,["96"] = 30,["97"] = 30,["99"] = 30,["100"] = 31,["102"] = 33,["103"] = 34,["104"] = 34,["105"] = 34,["106"] = 34,["107"] = 34,["108"] = 35,["109"] = 36,["110"] = 37,["111"] = 37,["112"] = 37,["113"] = 37,["114"] = 37,["115"] = 37,["116"] = 37,["117"] = 37,["118"] = 37,["119"] = 37,["120"] = 37,["121"] = 38,["125"] = 19,["126"] = 44,["127"] = 45,["128"] = 46,["129"] = 47,["130"] = 47,["131"] = 47,["132"] = 47,["133"] = 47,["134"] = 47,["135"] = 47,["136"] = 47,["137"] = 47,["138"] = 47,["139"] = 47,["140"] = 15,["144"] = 13,["145"] = 50});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self["投射物ID"] = 134223298
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_1 = self.owner
            local ____self_1_random_2 = ____self_1.random
            local ____self_0 = _____6570_503C["三观"]["被动"]
            ____temp_3 = ____self_1_random_2(
                ____self_1,
                "三观被动天赋额外金丹概率",
                ____self_0["天赋22概率"](____self_0)
            ) and 2 or 1
        else
            ____temp_3 = 1
        end
        local count = ____temp_3
        do
            local i = 0
            while i < count do
                local randomPos = self:offsetPoint(
                    self.owner:getPosition(),
                    math.random(0, 360),
                    math.random(0, 450)
                )
                local p = self:createProjectile(
                    self["投射物ID"],
                    self.owner,
                    0,
                    0,
                    5,
                    "throw_ball"
                )
                p:prepare({face_angle = true})
                p:listener({onFinish = function()
                    return __TS__AsyncAwaiter(function(____awaiter_resolve)
                        local pos = p:getPosition()
                        __TS__Await(self:awaitTime(3))
                        p:remove()
                        if not pos or not pos.x then
                            return ____awaiter_resolve(nil)
                        end
                        self:addParticle(
                            100564,
                            pos,
                            nil,
                            1,
                            1,
                            10
                        )
                        local targets = self.owner:findByShape(
                            pos,
                            Shape:createCircularShape(2000, self.owner),
                            {"友军"},
                            function(____, a) return a:checkTag(UnitTag["玩家英雄"]) or a:checkTag(UnitTag["佣兵"]) end
                        )
                        for ____, target in ipairs(targets) do
                            local ____target_checkTag_result_6
                            if target:checkTag(UnitTag["佣兵"]) then
                                local ____self_4 = _____6570_503C["三观"]["被动"]
                                ____target_checkTag_result_6 = ____self_4["佣兵增加护盾"](____self_4, self.owner)
                            else
                                local ____self_5 = _____6570_503C["三观"]["被动"]
                                ____target_checkTag_result_6 = ____self_5["英雄增加护盾"](____self_5, self.owner)
                            end
                            local shieldValue = ____target_checkTag_result_6
                            fightUtils:addShield(target, self, shieldValue)
                        end
                        if self.owner:getValue(_____5929_8D4B_2) == 1 then
                            targets = self.owner:findByShape(
                                pos,
                                Shape:createCircularShape(450),
                                {"敌军"}
                            )
                            for ____, target in ipairs(targets) do
                                target.tempData[AbilityTagData["是否为AOE"]] = true
                                local ____target_9 = target
                                local ____target_hurt_10 = target.hurt
                                local ____Formula__6CD5_672F_4F24_5BB3_8 = Formula["法术伤害"]
                                local ____self_7 = _____6570_503C["三观"]["被动"]
                                ____target_hurt_10(
                                    ____target_9,
                                    self,
                                    ____Formula__6CD5_672F_4F24_5BB3_8,
                                    ____self_7["天赋21伤害"](____self_7, self.owner),
                                    AbilityType["被动"]
                                )
                                target.tempData[AbilityTagData["是否为AOE"]] = nil
                            end
                        end
                    end)
                end})
                local angle = self:getDirection(self.owner, randomPos)
                local distance = self:getDistance(self.owner, randomPos)
                local parabola_height = self:getParabolaHeight(60, distance)
                p:moverLine(
                    angle,
                    distance,
                    1000,
                    nil,
                    nil,
                    nil,
                    nil,
                    50,
                    parabola_height
                )
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
