local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["31"] = 9,["32"] = 10,["33"] = 9,["34"] = 11,["36"] = 12,["38"] = 13,["39"] = 13,["40"] = 15,["41"] = 15,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 16,["48"] = 19,["49"] = 20,["50"] = 20,["51"] = 20,["52"] = 20,["54"] = 20,["55"] = 20,["57"] = 20,["58"] = 21,["61"] = 24,["62"] = 24,["63"] = 24,["64"] = 24,["65"] = 24,["66"] = 25,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 25,["71"] = 25,["72"] = 26,["73"] = 27,["74"] = 28,["76"] = 30,["77"] = 31,["78"] = 32,["81"] = 35,["82"] = 36,["83"] = 36,["84"] = 36,["86"] = 36,["87"] = 36,["88"] = 36,["90"] = 36,["91"] = 36,["94"] = 36,["95"] = 36,["96"] = 36,["97"] = 36,["99"] = 36,["100"] = 37,["101"] = 38,["102"] = 38,["103"] = 38,["104"] = 38,["105"] = 38,["106"] = 38,["107"] = 38,["108"] = 39,["109"] = 40,["110"] = 41,["111"] = 41,["112"] = 42,["113"] = 43,["116"] = 47,["117"] = 47,["118"] = 47,["119"] = 47,["120"] = 47,["121"] = 47,["122"] = 47,["123"] = 47,["124"] = 48,["125"] = 49,["126"] = 50,["129"] = 53,["130"] = 54,["133"] = 28,["135"] = 58,["136"] = 59,["138"] = 60,["139"] = 60,["140"] = 60,["141"] = 60,["142"] = 60,["143"] = 60,["144"] = 60,["145"] = 60,["148"] = 62,["150"] = 63,["151"] = 63,["152"] = 63,["153"] = 63,["154"] = 63,["155"] = 63,["156"] = 63,["157"] = 63,["160"] = 65,["162"] = 66,["163"] = 66,["164"] = 66,["165"] = 66,["166"] = 66,["167"] = 66,["168"] = 66,["169"] = 66,["172"] = 68,["174"] = 69,["175"] = 69,["176"] = 69,["177"] = 69,["178"] = 69,["179"] = 69,["180"] = 69,["181"] = 69,["185"] = 72,["186"] = 13,["190"] = 11,["191"] = 99});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self["投射物ID"] = 134279797
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local count = 3
        do
            local i = 0
            while i < count do
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(1000),
                    {"敌军"}
                )
                if #targets == 0 then
                    break
                end
                local target = random:randomList(targets)
                local ____temp_2
                if self.owner:getValue(_____5929_8D4B_2) == 1 then
                    local ____self_0 = _____6570_503C["妖精剑士"]["被动"]
                    ____temp_2 = ____self_0["天赋21伤害1"](____self_0, self.owner)
                else
                    local ____self_1 = _____6570_503C["妖精剑士"]["被动"]
                    ____temp_2 = ____self_1["伤害"](____self_1, self.owner)
                end
                local v1 = ____temp_2
                if not target or not target:isAlive() then
                    break
                end
                local offsetPoint = self:offsetPoint(
                    self.owner:getPosition(),
                    math.random(0, 360),
                    80 + i * 50
                )
                local p = self:createProjectile(
                    self["投射物ID"],
                    offsetPoint,
                    0,
                    200 + math.random(-100 * i, 100 * i)
                )
                local isToTarget = false
                p:prepare({face_angle = true})
                p:listener({onFinish = function()
                    return __TS__AsyncAwaiter(function(____awaiter_resolve)
                        if isToTarget then
                            p:remove()
                            if not target or not target:isAlive() then
                                return ____awaiter_resolve(nil)
                            end
                            self:playSound(self.owner, 134244915)
                            local ____temp_7
                            if self.owner:getValue(_____5929_8D4B_2) == 2 then
                                local ____self_5 = self.owner
                                local ____self_5_random_6 = ____self_5.random
                                local ____temp_4 = self.owner:p(_____66B4_51FB_7387)
                                local ____self_3 = _____6570_503C["妖精剑士"]["被动"]
                                ____temp_7 = ____self_5_random_6(
                                    ____self_5,
                                    "妖精剑士被动暴击",
                                    ____temp_4 + ____self_3["天赋22额外暴击率"](____self_3)
                                )
                            else
                                ____temp_7 = self.owner:random(
                                    "妖精剑士被动暴击",
                                    self.owner:p(_____66B4_51FB_7387)
                                )
                            end
                            local critical = ____temp_7
                            target.tempData[AbilityTagData["是否为AOE"]] = true
                            target:hurt(
                                self,
                                Formula["物理伤害"],
                                v1,
                                AbilityType["被动"],
                                critical
                            )
                            target.tempData[AbilityTagData["是否为AOE"]] = nil
                            if self.owner:getValue(_____5929_8D4B_2) == 1 then
                                local ____self_8 = _____6570_503C["妖精剑士"]["被动"]
                                local v2 = ____self_8["天赋21伤害2"](____self_8, self.owner)
                                __TS__Await(self:awaitTime(0.1))
                                if not target or not target:isAlive() then
                                    return ____awaiter_resolve(nil)
                                end
                                self:addParticle(
                                    134222166,
                                    target:getPosition(),
                                    nil,
                                    0.5,
                                    1,
                                    10
                                )
                                target.tempData[AbilityTagData["是否为AOE"]] = true
                                target:hurt(self, Formula["法术伤害"], v2, AbilityType["被动"])
                                target.tempData[AbilityTagData["是否为AOE"]] = nil
                            end
                        else
                            isToTarget = true
                            p:moverTarget(target, 3000, 0)
                        end
                    end)
                end})
                repeat
                    local ____switch12 = i
                    local ____cond12 = ____switch12 == 0
                    if ____cond12 then
                        p:moverRound(
                            self.owner,
                            150,
                            600,
                            nil,
                            true,
                            1.2
                        )
                        break
                    end
                    ____cond12 = ____cond12 or ____switch12 == 1
                    if ____cond12 then
                        p:moverRound(
                            self.owner,
                            200,
                            600,
                            nil,
                            true,
                            1.3
                        )
                        break
                    end
                    ____cond12 = ____cond12 or ____switch12 == 2
                    if ____cond12 then
                        p:moverRound(
                            self.owner,
                            300,
                            600,
                            nil,
                            true,
                            1
                        )
                        break
                    end
                    ____cond12 = ____cond12 or ____switch12 == 3
                    if ____cond12 then
                        p:moverRound(
                            self.owner,
                            400,
                            600,
                            nil,
                            true,
                            1.5
                        )
                        break
                    end
                until true
                __TS__Await(self:awaitTime(0.2))
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
