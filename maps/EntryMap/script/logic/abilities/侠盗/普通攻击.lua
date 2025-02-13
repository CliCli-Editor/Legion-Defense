local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["35"] = 10,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 15,["40"] = 16,["41"] = 10,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 17,["46"] = 21,["48"] = 22,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 24,["55"] = 24,["56"] = 25,["57"] = 26,["58"] = 27,["60"] = 27,["61"] = 27,["64"] = 27,["69"] = 29,["70"] = 33,["71"] = 30,["73"] = 31,["74"] = 32,["75"] = 33,["76"] = 33,["77"] = 34,["78"] = 35,["79"] = 35,["81"] = 37,["82"] = 38,["84"] = 38,["88"] = 38,["89"] = 40,["90"] = 40,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 41,["95"] = 41,["96"] = 41,["97"] = 41,["98"] = 41,["99"] = 41,["100"] = 41,["101"] = 41,["103"] = 43,["104"] = 44,["106"] = 46,["107"] = 47,["108"] = 48,["109"] = 49,["110"] = 50,["111"] = 52,["112"] = 53,["114"] = 55,["115"] = 56,["117"] = 56,["121"] = 56,["122"] = 57,["123"] = 58,["124"] = 58,["125"] = 58,["126"] = 58,["128"] = 58,["129"] = 58,["131"] = 58,["132"] = 59,["133"] = 61,["134"] = 62,["135"] = 62,["136"] = 62,["137"] = 62,["138"] = 62,["139"] = 62,["140"] = 62,["141"] = 62,["146"] = 71,["148"] = 72,["149"] = 73,["150"] = 73,["151"] = 73,["152"] = 73,["153"] = 73,["154"] = 73,["155"] = 73,["156"] = 74,["157"] = 75,["158"] = 75,["159"] = 76,["160"] = 77,["161"] = 77,["163"] = 79,["164"] = 79,["165"] = 80,["166"] = 81,["167"] = 81,["169"] = 83,["171"] = 83,["175"] = 83,["176"] = 84,["177"] = 85,["178"] = 85,["179"] = 85,["180"] = 85,["182"] = 85,["183"] = 85,["185"] = 85,["187"] = 87,["188"] = 88,["189"] = 90,["190"] = 90,["191"] = 90,["192"] = 90,["193"] = 90,["194"] = 91,["195"] = 91,["196"] = 91,["197"] = 91,["198"] = 91,["199"] = 91,["200"] = 91,["201"] = 91,["202"] = 92,["203"] = 93,["205"] = 95,["206"] = 96,["207"] = 97,["208"] = 98,["209"] = 99,["210"] = 101,["211"] = 102,["213"] = 104,["214"] = 105,["215"] = 107,["216"] = 108,["217"] = 108,["218"] = 108,["219"] = 108,["220"] = 108,["221"] = 108,["222"] = 108,["223"] = 108,["228"] = 112,["229"] = 113,["230"] = 115,["231"] = 115,["232"] = 116,["233"] = 117,["234"] = 117,["236"] = 119,["237"] = 120,["239"] = 120,["243"] = 120,["244"] = 122,["245"] = 122,["246"] = 122,["247"] = 122,["248"] = 122,["249"] = 123,["250"] = 123,["251"] = 123,["252"] = 123,["253"] = 123,["254"] = 123,["255"] = 123,["256"] = 123,["258"] = 125,["259"] = 126,["261"] = 128,["262"] = 129,["263"] = 130,["264"] = 131,["265"] = 132,["266"] = 134,["267"] = 135,["269"] = 137,["270"] = 138,["272"] = 138,["276"] = 138,["277"] = 139,["278"] = 140,["279"] = 140,["280"] = 140,["281"] = 140,["283"] = 140,["284"] = 140,["286"] = 140,["287"] = 141,["288"] = 143,["289"] = 144,["290"] = 144,["291"] = 144,["292"] = 144,["293"] = 144,["294"] = 144,["295"] = 144,["296"] = 144,["303"] = 21,["304"] = 10,["305"] = 10,["306"] = 10,["307"] = 10,["308"] = 10,["309"] = 10,["310"] = 10});
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
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_39 = createAbility
local ____fight_38 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["脚底粒子ID"] = 134259689
    self["身上粒子ID"] = 134248462
    self["特殊粒子ID"] = 134261801
    self["aoe范围"] = 350
    self["攻击类型"] = 1
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
    self["攻击类型"] = self.owner:getValue(_____7279_6280_1) % 3
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self.owner:getAngle()
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(self["aoe范围"], 180, angle, self.owner),
            {"敌人"}
        )
        local ____self_1 = _____6570_503C["侠盗"]["普通攻击"]
        local mp = ____self_1["被动回蓝"](____self_1)
        self.owner:addMp(self.skillEntity, mp)
        if self.owner:getValue(_____5929_8D4B_2) == 1 then
            local ____self_4 = self.owner
            local ____self_4_addEffect_5 = ____self_4.addEffect
            local ____self_skillEntity_3 = self.skillEntity
            local ____self_2 = _____6570_503C["侠盗"]["普通攻击"]
            ____self_4_addEffect_5(
                ____self_4,
                ____self_skillEntity_3,
                ____self_2["天赋21buff"](____self_2)
            )
        end
        repeat
            local ____switch5 = self["攻击类型"]
            local v2, v3, quantity, offsetPoint, v
            local ____cond5 = ____switch5 == 2
            if ____cond5 then
                self:play("attack2")
                __TS__Await(self:awaitTime(0.2))
                local ____self_6 = _____6570_503C["侠盗"]["普通攻击"]
                v2 = ____self_6["第二击伤害"](____self_6, self.owner)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____self_7 = _____6570_503C["侠盗"]["普通攻击"]
                    v2 = ____self_7["天赋11第二击伤害"](____self_7, self.owner)
                end
                self:playSound(self.owner, 134281085)
                local ____self_9 = self.owner
                local ____self_9_getEffectQuantity_10 = ____self_9.getEffectQuantity
                local ____self_8 = _____6570_503C["侠盗"]["大招"]
                if ____self_9_getEffectQuantity_10(
                    ____self_9,
                    ____self_8["附加effectId"](____self_8)
                ) > 0 then
                    local offsetPoint = self:offsetPoint(
                        self.owner:getPosition(),
                        angle,
                        250
                    )
                    self:addParticle(
                        134273322,
                        offsetPoint,
                        angle,
                        1,
                        1,
                        50
                    )
                end
                if #targets <= 0 then
                    targets[#targets + 1] = cast:getTargetUnit()
                end
                for ____, t in ipairs(targets) do
                    local scale = 1
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v2, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    if t:checkTag(UnitTag["玩家英雄"]) then
                        scale = 0.3
                    end
                    self:setUnderParticle(t, self["脚底粒子ID"], scale)
                    local ____self_12 = self.owner
                    local ____self_12_getEffectQuantity_13 = ____self_12.getEffectQuantity
                    local ____self_11 = _____6570_503C["侠盗"]["大招"]
                    if ____self_12_getEffectQuantity_13(
                        ____self_12,
                        ____self_11["附加effectId"](____self_11)
                    ) > 0 then
                        local level = self.owner:getLevel()
                        local ____temp_16
                        if self.owner:getValue(_____5929_8D4B_3) == 2 then
                            local ____self_14 = _____6570_503C["侠盗"]["普通攻击"]
                            ____temp_16 = ____self_14["天赋32大招中毒层数"](____self_14, level)
                        else
                            local ____self_15 = _____6570_503C["侠盗"]["普通攻击"]
                            ____temp_16 = ____self_15["大招额外中毒层数"](____self_15, level)
                        end
                        local quantity = ____temp_16 * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                        t:addEffect(self.skillEntity, 1, quantity)
                        local angelto = self:getDirection(self.owner, t)
                        self:addParticle(
                            134248462,
                            t:getPosition(),
                            angelto,
                            1,
                            1,
                            80
                        )
                    end
                end
                break
            end
            ____cond5 = ____cond5 or ____switch5 == 0
            if ____cond5 then
                self:play("attack3")
                self:addParticle(
                    134255122,
                    self.owner:getPosition(),
                    angle,
                    1,
                    1
                )
                __TS__Await(self:awaitTime(0.25))
                local ____self_17 = _____6570_503C["侠盗"]["普通攻击"]
                v3 = ____self_17["第三击伤害"](____self_17, self.owner)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____self_18 = _____6570_503C["侠盗"]["普通攻击"]
                    v3 = ____self_18["天赋11第三击伤害"](____self_18, self.owner)
                end
                local ____self_19 = _____6570_503C["侠盗"]["普通攻击"]
                quantity = ____self_19["最后一击附加中毒层数"](____self_19)
                if self.owner:getValue(_____5929_8D4B_1) == 2 then
                    local ____self_20 = _____6570_503C["侠盗"]["普通攻击"]
                    quantity = quantity + ____self_20["天赋12额外附加中毒层数"](____self_20)
                end
                local ____self_22 = self.owner
                local ____self_22_getEffectQuantity_23 = ____self_22.getEffectQuantity
                local ____self_21 = _____6570_503C["侠盗"]["大招"]
                if ____self_22_getEffectQuantity_23(
                    ____self_22,
                    ____self_21["附加effectId"](____self_21)
                ) > 0 then
                    local level = self.owner:getLevel()
                    local ____temp_26
                    if self.owner:getValue(_____5929_8D4B_3) == 2 then
                        local ____self_24 = _____6570_503C["侠盗"]["普通攻击"]
                        ____temp_26 = ____self_24["天赋32大招中毒层数"](____self_24, level)
                    else
                        local ____self_25 = _____6570_503C["侠盗"]["普通攻击"]
                        ____temp_26 = ____self_25["大招额外中毒层数"](____self_25, level)
                    end
                    quantity = quantity + ____temp_26
                end
                quantity = quantity * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                self:playSound(self.owner, 134281085)
                offsetPoint = self:offsetPoint(
                    self.owner:getPosition(),
                    angle,
                    250
                )
                self:addParticle(
                    134229795,
                    offsetPoint,
                    angle,
                    1,
                    1,
                    50
                )
                if #targets <= 0 then
                    targets[#targets + 1] = cast:getTargetUnit()
                end
                for ____, t in ipairs(targets) do
                    local scale = 1
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v3, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    if t:checkTag(UnitTag["玩家英雄"]) then
                        scale = 0.3
                    end
                    self:setUnderParticle(t, self["脚底粒子ID"], scale)
                    t:addEffect(self.skillEntity, 1, quantity)
                    local angelto = self:getDirection(self.owner, t)
                    self:addParticle(
                        134248462,
                        t:getPosition(),
                        angelto,
                        1,
                        1,
                        80
                    )
                end
                break
            end
            do
                self:play("attack1")
                __TS__Await(self:awaitTime(0.35))
                local ____self_27 = _____6570_503C["侠盗"]["普通攻击"]
                v = ____self_27["第一击伤害"](____self_27, self.owner)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____self_28 = _____6570_503C["侠盗"]["普通攻击"]
                    v = ____self_28["天赋11第一击伤害"](____self_28, self.owner)
                end
                self:playSound(self.owner, 134281085)
                local ____self_30 = self.owner
                local ____self_30_getEffectQuantity_31 = ____self_30.getEffectQuantity
                local ____self_29 = _____6570_503C["侠盗"]["大招"]
                if ____self_30_getEffectQuantity_31(
                    ____self_30,
                    ____self_29["附加effectId"](____self_29)
                ) > 0 then
                    local offsetPoint = self:offsetPoint(
                        self.owner:getPosition(),
                        angle,
                        250
                    )
                    self:addParticle(
                        134219644,
                        offsetPoint,
                        angle,
                        1,
                        1,
                        50
                    )
                end
                if #targets <= 0 then
                    targets[#targets + 1] = cast:getTargetUnit()
                end
                for ____, t in ipairs(targets) do
                    local scale = 1
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    if t:checkTag(UnitTag["玩家英雄"]) then
                        scale = 0.3
                    end
                    self:setUnderParticle(t, self["脚底粒子ID"], scale)
                    local ____self_33 = self.owner
                    local ____self_33_getEffectQuantity_34 = ____self_33.getEffectQuantity
                    local ____self_32 = _____6570_503C["侠盗"]["大招"]
                    if ____self_33_getEffectQuantity_34(
                        ____self_33,
                        ____self_32["附加effectId"](____self_32)
                    ) > 0 then
                        local level = self.owner:getLevel()
                        local ____temp_37
                        if self.owner:getValue(_____5929_8D4B_3) == 2 then
                            local ____self_35 = _____6570_503C["侠盗"]["普通攻击"]
                            ____temp_37 = ____self_35["天赋32大招中毒层数"](____self_35, level)
                        else
                            local ____self_36 = _____6570_503C["侠盗"]["普通攻击"]
                            ____temp_37 = ____self_36["大招额外中毒层数"](____self_36, level) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                        end
                        local quantity = ____temp_37
                        t:addEffect(self.skillEntity, 1, quantity)
                        local angelto = self:getDirection(self.owner, t)
                        self:addParticle(
                            134248462,
                            t:getPosition(),
                            angelto,
                            1,
                            1,
                            80
                        )
                    end
                end
                break
            end
        until true
    end)
end
____exports.key = ____createAbility_39(
    nil,
    ____fight_38,
    134239730,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.5}
)
return ____exports
