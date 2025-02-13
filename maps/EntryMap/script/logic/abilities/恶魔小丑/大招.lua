local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 10,["30"] = 12,["31"] = 10,["32"] = 14,["34"] = 15,["35"] = 16,["36"] = 17,["39"] = 20,["40"] = 20,["41"] = 21,["42"] = 21,["43"] = 22,["44"] = 23,["45"] = 23,["46"] = 23,["47"] = 24,["48"] = 24,["49"] = 24,["51"] = 27,["53"] = 28,["54"] = 28,["55"] = 29,["56"] = 30,["57"] = 31,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 31,["63"] = 31,["64"] = 31,["66"] = 33,["67"] = 33,["68"] = 33,["69"] = 33,["70"] = 33,["71"] = 33,["72"] = 33,["73"] = 33,["74"] = 33,["75"] = 33,["76"] = 33,["77"] = 33,["79"] = 35,["80"] = 37,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 38,["88"] = 38,["89"] = 39,["90"] = 39,["91"] = 39,["92"] = 39,["93"] = 39,["94"] = 39,["95"] = 39,["96"] = 39,["97"] = 40,["98"] = 41,["99"] = 41,["100"] = 41,["101"] = 41,["102"] = 41,["103"] = 42,["104"] = 43,["105"] = 44,["106"] = 45,["109"] = 49,["110"] = 50,["112"] = 50,["113"] = 50,["114"] = 50,["117"] = 50,["118"] = 50,["119"] = 50,["123"] = 52,["124"] = 52,["125"] = 53,["126"] = 54,["127"] = 54,["128"] = 54,["129"] = 54,["130"] = 54,["131"] = 54,["132"] = 54,["133"] = 54,["134"] = 55,["135"] = 55,["136"] = 55,["137"] = 55,["138"] = 55,["139"] = 55,["140"] = 55,["141"] = 55,["142"] = 56,["143"] = 57,["144"] = 57,["145"] = 57,["146"] = 57,["147"] = 57,["148"] = 58,["149"] = 59,["150"] = 60,["151"] = 61,["152"] = 62,["153"] = 63,["155"] = 65,["157"] = 68,["158"] = 52,["162"] = 28,["166"] = 14,["167"] = 8,["168"] = 8,["169"] = 8,["170"] = 8,["171"] = 8,["172"] = 8,["173"] = 8});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability5")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local _____4F24_5BB3_8303_56F4_5BBD_5EA6 = 400
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local ____self_1 = _____6570_503C["恶魔小丑"]["大招"]
        local v = ____self_1["前两击伤害"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["恶魔小丑"]["大招"]
        local v2 = ____self_2["最后一击伤害"](____self_2, self.owner)
        if self.owner:v(_____5929_8D4B_3) == 1 then
            local ____v_4 = v
            local ____self_3 = _____6570_503C["恶魔小丑"]["大招"]
            v = ____v_4 * (1 + ____self_3["天赋31伤害提升"](____self_3))
            local ____v2_6 = v2
            local ____self_5 = _____6570_503C["恶魔小丑"]["大招"]
            v2 = ____v2_6 * (1 + ____self_5["天赋31伤害提升"](____self_5))
        end
        local duration = {0, 0.55, 0.6}
        do
            local i = 0
            while i < #duration do
                local angle = self.owner:getAngle()
                if i < #duration - 1 then
                    self:addParticle(
                        134252920,
                        self.owner:getPosition(),
                        nil,
                        2,
                        0.5,
                        10
                    )
                else
                    self:addParticle(
                        134271054,
                        self.owner:getPosition(),
                        nil,
                        2,
                        0.3,
                        10,
                        nil,
                        nil,
                        nil,
                        true
                    )
                end
                __TS__Await(self:awaitTime(duration[i + 1]))
                if i < #duration - 1 then
                    self:addParticle(
                        134224632,
                        target:getPosition(),
                        angle,
                        0.7 * 1.34,
                        0.5,
                        10
                    )
                    self:addParticle(
                        134233544,
                        target:getPosition(),
                        angle,
                        1.34,
                        0.5,
                        10
                    )
                    self:playSound(self.owner, 134220629)
                    local targets = self.owner:findByShape(
                        target:getPosition(),
                        Shape:createCircularShape(_____4F24_5BB3_8303_56F4_5BBD_5EA6),
                        {"敌军"}
                    )
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(self.skillEntity, Formula["物理伤害"], i == #duration - 1 and v2 or v, AbilityType["大招"])
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                else
                    if self.owner:getValue(_____5929_8D4B_3) == 2 then
                        local ____self_10 = self.owner
                        local ____self_10_cure_11 = ____self_10.cure
                        local ____self_skillEntity_8 = self.skillEntity
                        local ____Formula__56DE_8840_503C_9 = Formula["回血值"]
                        local ____self_7 = _____6570_503C["恶魔小丑"]["大招"]
                        ____self_10_cure_11(
                            ____self_10,
                            ____self_skillEntity_8,
                            ____Formula__56DE_8840_503C_9,
                            ____self_7["天赋32恢复生命值"](____self_7, self.owner)
                        )
                    end
                    do
                        local j = 0
                        while j < 6 do
                            local offsetPoint = self:offsetPoint(target, angle, j * 1.5 * _____4F24_5BB3_8303_56F4_5BBD_5EA6)
                            self:addParticle(
                                134224632,
                                offsetPoint,
                                angle,
                                0.7 * 1.34,
                                0.5,
                                10
                            )
                            self:addParticle(
                                134233544,
                                offsetPoint,
                                angle,
                                1.34,
                                0.5,
                                10
                            )
                            self:playSound(self.owner, 134220629)
                            local targets = self.owner:findByShape(
                                offsetPoint,
                                Shape:createCircularShape(_____4F24_5BB3_8303_56F4_5BBD_5EA6),
                                {"敌军"}
                            )
                            local totalDmg = 0
                            for ____, t in ipairs(targets) do
                                t.tempData[AbilityTagData["是否为AOE"]] = true
                                local x = t:hurt(self.skillEntity, Formula["物理伤害"], v2, AbilityType["大招"])
                                t.tempData[AbilityTagData["是否为AOE"]] = nil
                                totalDmg = totalDmg + x.value
                            end
                            if totalDmg > 0 then
                            end
                            __TS__Await(self:awaitTime(0.1))
                            j = j + 1
                        end
                    end
                end
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134228884,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 1.6}
)
return ____exports
