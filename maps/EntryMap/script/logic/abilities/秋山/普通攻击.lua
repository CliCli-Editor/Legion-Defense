local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 6,["30"] = 6,["31"] = 6,["32"] = 7,["33"] = 7,["34"] = 7,["35"] = 7,["36"] = 7,["37"] = 8,["38"] = 8,["39"] = 9,["40"] = 9,["41"] = 11,["42"] = 12,["43"] = 13,["44"] = 14,["45"] = 14,["46"] = 14,["47"] = 14,["48"] = 14,["50"] = 14,["51"] = 15,["52"] = 16,["53"] = 14,["54"] = 17,["55"] = 18,["56"] = 19,["57"] = 20,["59"] = 22,["60"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["65"] = 23,["66"] = 23,["68"] = 23,["69"] = 24,["70"] = 25,["71"] = 26,["72"] = 27,["75"] = 30,["76"] = 30,["77"] = 30,["78"] = 30,["79"] = 31,["80"] = 17,["81"] = 33,["82"] = 34,["83"] = 35,["86"] = 38,["88"] = 39,["89"] = 41,["90"] = 40,["92"] = 41,["93"] = 41,["94"] = 41,["95"] = 41,["97"] = 41,["98"] = 41,["100"] = 41,["101"] = 42,["102"] = 43,["103"] = 43,["104"] = 43,["105"] = 43,["106"] = 43,["107"] = 43,["108"] = 43,["109"] = 43,["110"] = 43,["111"] = 44,["112"] = 45,["113"] = 46,["115"] = 48,["118"] = 50,["120"] = 51,["121"] = 51,["122"] = 51,["123"] = 51,["125"] = 51,["126"] = 51,["128"] = 51,["129"] = 52,["130"] = 52,["131"] = 52,["132"] = 52,["134"] = 52,["136"] = 52,["138"] = 53,["139"] = 53,["140"] = 54,["141"] = 55,["142"] = 56,["143"] = 57,["144"] = 57,["145"] = 57,["147"] = 59,["148"] = 60,["149"] = 61,["150"] = 62,["152"] = 64,["153"] = 64,["154"] = 64,["155"] = 64,["156"] = 64,["157"] = 64,["158"] = 65,["159"] = 66,["160"] = 67,["161"] = 68,["162"] = 66,["163"] = 70,["164"] = 71,["167"] = 74,["168"] = 75,["169"] = 75,["170"] = 75,["171"] = 75,["172"] = 75,["173"] = 75,["174"] = 75,["175"] = 76,["176"] = 76,["177"] = 76,["178"] = 76,["179"] = 76,["180"] = 76,["181"] = 76,["182"] = 76,["183"] = 76,["184"] = 76,["185"] = 77,["186"] = 77,["187"] = 77,["188"] = 77,["189"] = 77,["190"] = 77,["191"] = 77,["192"] = 77,["193"] = 77,["194"] = 78,["195"] = 78,["196"] = 78,["197"] = 78,["198"] = 78,["199"] = 78,["200"] = 78,["201"] = 78,["202"] = 78,["204"] = 80,["205"] = 81,["206"] = 81,["207"] = 81,["208"] = 81,["209"] = 81,["210"] = 81,["211"] = 81,["212"] = 82,["213"] = 83,["214"] = 84,["215"] = 84,["216"] = 84,["217"] = 84,["218"] = 84,["221"] = 84,["222"] = 84,["223"] = 84,["224"] = 84,["225"] = 84,["226"] = 84,["228"] = 84,["233"] = 84,["234"] = 84,["235"] = 84,["236"] = 84,["238"] = 66,["239"] = 66,["240"] = 88,["241"] = 53,["246"] = 91,["248"] = 92,["249"] = 92,["250"] = 93,["251"] = 93,["252"] = 93,["253"] = 93,["254"] = 93,["255"] = 93,["256"] = 93,["257"] = 93,["258"] = 93,["259"] = 93,["260"] = 93,["261"] = 93,["262"] = 93,["263"] = 93,["264"] = 94,["265"] = 95,["266"] = 96,["267"] = 97,["270"] = 100,["272"] = 102,["273"] = 102,["274"] = 102,["275"] = 102,["276"] = 102,["277"] = 102,["278"] = 102,["279"] = 102,["280"] = 102,["281"] = 103,["282"] = 104,["283"] = 104,["284"] = 104,["285"] = 104,["286"] = 104,["287"] = 104,["288"] = 105,["289"] = 106,["290"] = 107,["291"] = 108,["292"] = 106,["293"] = 110,["294"] = 111,["297"] = 114,["298"] = 115,["299"] = 115,["300"] = 115,["302"] = 115,["304"] = 115,["305"] = 116,["306"] = 117,["307"] = 117,["308"] = 117,["309"] = 117,["310"] = 117,["311"] = 117,["312"] = 117,["313"] = 118,["314"] = 119,["316"] = 119,["317"] = 119,["318"] = 119,["320"] = 119,["321"] = 120,["322"] = 120,["323"] = 120,["324"] = 120,["325"] = 120,["326"] = 120,["327"] = 120,["328"] = 120,["329"] = 120,["330"] = 121,["331"] = 121,["332"] = 121,["333"] = 121,["334"] = 121,["335"] = 121,["336"] = 121,["337"] = 121,["338"] = 121,["339"] = 121,["340"] = 122,["341"] = 122,["342"] = 122,["343"] = 122,["344"] = 122,["345"] = 122,["346"] = 122,["347"] = 122,["349"] = 106,["350"] = 106,["351"] = 126,["352"] = 127,["353"] = 128,["354"] = 128,["355"] = 128,["356"] = 128,["357"] = 128,["358"] = 128,["359"] = 128,["360"] = 128,["361"] = 128,["362"] = 128,["363"] = 128,["364"] = 129,["366"] = 129,["367"] = 129,["368"] = 129,["371"] = 129,["372"] = 129,["373"] = 129,["375"] = 130,["376"] = 128,["377"] = 128,["381"] = 33,["382"] = 135,["385"] = 136,["386"] = 137,["388"] = 138,["389"] = 139,["390"] = 140,["391"] = 141,["393"] = 143,["394"] = 144,["395"] = 145,["399"] = 148,["401"] = 149,["402"] = 150,["403"] = 151,["406"] = 153,["408"] = 154,["409"] = 154,["410"] = 154,["411"] = 154,["412"] = 154,["413"] = 154,["414"] = 154,["418"] = 157,["423"] = 135,["424"] = 14,["425"] = 14,["426"] = 14,["427"] = 14,["428"] = 14,["429"] = 14,["430"] = 14});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7269_7406_9632_5FA1_767E_5206_6BD4 = ____Property["物理防御百分比"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____7279_6280_3 = ____Property["特技_3"]
local ____Status = include("logic.models.Status")
local _____51BB_7ED3 = ____Status["冻结"]
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local buffId3 = genEffectId(nil)
local ____createAbility_45 = createAbility
local ____fight_44 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["攻击模式"] = 0
    self["暴击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_2) == 0 then
        self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
        self["攻击模式"] = self.owner:getValue(_____7279_6280_1) % 4 == 0 and 1 or 0
    else
        self["攻击模式"] = 2
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_1 = _____6570_503C["秋山"]["普通攻击"]
            ____temp_3 = ____self_1["天赋22踏风斩次数上限"](____self_1)
        else
            local ____self_2 = _____6570_503C["秋山"]["普通攻击"]
            ____temp_3 = ____self_2["踏风斩次数上限"](____self_2)
        end
        local maxNum = ____temp_3
        if self.owner:getValue(_____7279_6280_3) >= maxNum then
            self["攻击模式"] = 0
            self.owner:setValue(_____7279_6280_2, 0)
            self.owner:setValue(_____7279_6280_3, 0)
        end
    end
    self["暴击"] = self.owner:random(
        "秋山普攻暴击概率",
        self.owner:p(_____66B4_51FB_7387)
    )
    self:setAnimation()
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    repeat
        local ____switch8 = self["攻击模式"]
        local v1, scale, v2, count, v3, targetX, p, x
        local ____cond8 = ____switch8 == 0
        if ____cond8 then
            local ____temp_6
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____self_4 = _____6570_503C["秋山"]["普通攻击"]
                ____temp_6 = ____self_4["天赋11伤害"](____self_4, self.owner)
            else
                local ____self_5 = _____6570_503C["秋山"]["普通攻击"]
                ____temp_6 = ____self_5["伤害"](____self_5, self.owner)
            end
            v1 = ____temp_6
            self:playSound(self.owner, 134240944)
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v1,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                101576
            )
            scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, 134259689, scale)
            break
        end
        ____cond8 = ____cond8 or ____switch8 == 1
        if ____cond8 then
            local ____temp_9
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____self_7 = _____6570_503C["秋山"]["普通攻击"]
                ____temp_9 = ____self_7["天赋12飓风斩伤害"](____self_7, self.owner)
            else
                local ____self_8 = _____6570_503C["秋山"]["普通攻击"]
                ____temp_9 = ____self_8["飓风斩伤害"](____self_8, self.owner)
            end
            v2 = ____temp_9
            local ____temp_11
            if self.owner:getValue(_____5929_8D4B_3) == 1 and self.owner:getEffectQuantity(_____6570_503C["秋山"]["大招"]:buffId()) > 0 then
                local ____self_10 = _____6570_503C["秋山"]["普通攻击"]
                ____temp_11 = ____self_10["天赋31飓风斩数量"](____self_10)
            else
                ____temp_11 = 1
            end
            count = ____temp_11
            do
                local i = 0
                while i < count do
                    local v22 = v2
                    local angleX2 = angle
                    if i > 0 then
                        local ____v2_13 = v2
                        local ____self_12 = _____6570_503C["秋山"]["普通攻击"]
                        v22 = ____v2_13 * ____self_12["天赋31飓风斩伤害系数"](____self_12)
                    end
                    if i == 1 then
                        angleX2 = angle - 30
                    elseif i == 2 then
                        angleX2 = angle + 30
                    end
                    local p = self:createProjectile(
                        134229130,
                        self.owner:getPosition(),
                        angleX2,
                        0
                    )
                    p:prepare({hit_radius = 200, hit_same = false, face_angle = true})
                    p:listener({
                        onFinish = function()
                            p:remove()
                        end,
                        onHit = function(t)
                            if t == nil or not t:isAlive() then
                                return
                            end
                            self:playSound(self.owner, 134240944)
                            local ____t_15 = t
                            local ____t_getEffectQuantity_16 = t.getEffectQuantity
                            local ____self_14 = _____6570_503C["秋山"]["普通攻击"]
                            if ____t_getEffectQuantity_16(
                                ____t_15,
                                ____self_14["飓风斩附加buffId"](____self_14)
                            ) <= 0 then
                                t:move(
                                    {_____9738_4F53},
                                    _____88AB_51FB_9000,
                                    angle,
                                    10,
                                    10,
                                    0,
                                    false,
                                    500
                                )
                                local ____t_19 = t
                                local ____t_addEffect_20 = t.addEffect
                                local ____self_skillEntity_18 = self.skillEntity
                                local ____self_17 = _____6570_503C["秋山"]["普通攻击"]
                                ____t_addEffect_20(
                                    ____t_19,
                                    ____self_skillEntity_18,
                                    ____self_17["飓风斩附加buffId"](____self_17)
                                )
                                t:addTimeLimitProperties(
                                    self.skillEntity,
                                    buffId,
                                    1,
                                    {},
                                    {_____7729_6655},
                                    {-1, 101},
                                    1
                                )
                            end
                            t.tempData[AbilityTagData["是否为AOE"]] = true
                            t:hurt(
                                self.skillEntity,
                                Formula["固定伤害"],
                                v22,
                                AbilityType["普攻"],
                                self["暴击"]
                            )
                            t.tempData[AbilityTagData["是否为AOE"]] = nil
                            if self.owner:getValue(_____5929_8D4B_3) == 2 and self.owner:getEffectQuantity(_____6570_503C["秋山"]["大招"]:buffId()) > 0 then
                                local ____t_25 = t
                                local ____t_addTimeLimitProperties_26 = t.addTimeLimitProperties
                                local ____array_24 = __TS__SparseArrayNew(self.skillEntity, buffId2, 1)
                                local ____7269_7406_9632_5FA1_767E_5206_6BD4_22 = _____7269_7406_9632_5FA1_767E_5206_6BD4
                                local ____self_21 = _____6570_503C["秋山"]["普通攻击"]
                                __TS__SparseArrayPush(
                                    ____array_24,
                                    {
                                        ____7269_7406_9632_5FA1_767E_5206_6BD4_22,
                                        ____self_21["天赋32飓风斩降低物防百分比"](____self_21)
                                    },
                                    {},
                                    {-1, 20}
                                )
                                local ____self_23 = _____6570_503C["秋山"]["普通攻击"]
                                __TS__SparseArrayPush(
                                    ____array_24,
                                    ____self_23["天赋32飓风斩降低物防持续时间"](____self_23)
                                )
                                ____t_addTimeLimitProperties_26(
                                    ____t_25,
                                    __TS__SparseArraySpread(____array_24)
                                )
                            end
                        end
                    })
                    p:moverLine(angleX2, 1000, 2000)
                    i = i + 1
                end
            end
            break
        end
        ____cond8 = ____cond8 or ____switch8 == 2
        if ____cond8 then
            local ____self_27 = _____6570_503C["秋山"]["普通攻击"]
            v3 = ____self_27["踏风斩伤害"](____self_27, self.owner)
            targetX = self.owner:findTarget(
                {"敌军"},
                function(____, a)
                    local ____a_29 = a
                    local ____a_getEffectQuantity_30 = a.getEffectQuantity
                    local ____self_28 = _____6570_503C["秋山"]["普通攻击"]
                    return ____a_getEffectQuantity_30(
                        ____a_29,
                        ____self_28["飓风斩附加buffId"](____self_28)
                    ) > 0
                end,
                0,
                800
            )
            if not targetX or not targetX:isAlive() then
                self.owner:setValue(_____7279_6280_2, 0)
                self.owner:setValue(_____7279_6280_3, 0)
                self:endSkill(self)
                return
            else
                self.owner:modifyValue(self.skillEntity, _____7279_6280_3, 1)
            end
            local ____targetX_33 = targetX
            local ____targetX_removeEffect_34 = targetX.removeEffect
            local ____self_skillEntity_32 = self.skillEntity
            local ____self_31 = _____6570_503C["秋山"]["普通攻击"]
            ____targetX_removeEffect_34(
                ____targetX_33,
                ____self_skillEntity_32,
                {____self_31["飓风斩附加buffId"](____self_31)}
            )
            angle = self:getDirection(self.owner, targetX)
            p = self:createProjectile(
                134279929,
                self.owner:getPosition(),
                angle,
                0
            )
            p:prepare({hit_radius = 200, hit_same = false, face_angle = true})
            p:listener({
                onFinish = function()
                    p:remove()
                end,
                onHit = function(t)
                    if t == nil or not t:isAlive() then
                        return
                    end
                    self:playSound(self.owner, 134240944)
                    local ____temp_35
                    if self.owner:getValue(_____5929_8D4B_2) == 2 then
                        ____temp_35 = true
                    else
                        ____temp_35 = self["暴击"]
                    end
                    local critical = ____temp_35
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["固定伤害"],
                        v3,
                        AbilityType["被动"],
                        critical
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    local ____temp_38 = self.owner:getValue(_____5929_8D4B_2) == 1
                    if ____temp_38 then
                        local ____temp_37 = self.owner:getValue(_____7279_6280_3)
                        local ____self_36 = _____6570_503C["秋山"]["普通攻击"]
                        ____temp_38 = ____temp_37 % ____self_36["天赋21击飞所需踏风斩次数"](____self_36) == 0
                    end
                    if ____temp_38 then
                        t:addTimeLimitProperties(
                            self.skillEntity,
                            buffId3,
                            1,
                            {},
                            {_____7729_6655},
                            {-1, 101},
                            1
                        )
                        t:move(
                            {_____9738_4F53},
                            _____88AB_51FB_9000,
                            angle,
                            10,
                            10,
                            0,
                            false,
                            500
                        )
                        self:addParticle(
                            134239418,
                            t:getPosition(),
                            nil,
                            1,
                            1,
                            10
                        )
                    end
                end
            })
            x = self.owner:formula(Formula["展示面板_攻速"]) / 100
            p:moverLine(angle, 800, 1500 * x)
            self.owner:move(
                {_____7729_6655, _____51BB_7ED3},
                _____9738_4F53,
                angle,
                800,
                1500 * x,
                0,
                true,
                nil,
                nil,
                function()
                    local ____self_42 = self.owner
                    local ____self_42_cure_43 = ____self_42.cure
                    local ____self_skillEntity_40 = self.skillEntity
                    local ____Formula__56DE_8840_503C_41 = Formula["回血值"]
                    local ____self_39 = _____6570_503C["秋山"]["普通攻击"]
                    ____self_42_cure_43(
                        ____self_42,
                        ____self_skillEntity_40,
                        ____Formula__56DE_8840_503C_41,
                        ____self_39["踏风斩治疗"](____self_39, self.owner)
                    )
                    self:endSkill(self)
                end
            )
            break
        end
    until true
end
function ____class_0.prototype.setAnimation(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        repeat
            local ____switch28 = self["攻击模式"]
            local ____cond28 = ____switch28 == 0
            if ____cond28 then
                if self["暴击"] then
                    self:play("ability1", 1.43)
                    __TS__Await(self:awaitTime(0.28))
                    self:play("ability1", 0.83, 0.4, -1)
                else
                    local x = self.owner:getValue(_____7279_6280_1) % 4
                    local aniName = x == 1 and "attack1" or (x == 2 and "attack2" or "attack3")
                    self:play(aniName, 1)
                end
                break
            end
            ____cond28 = ____cond28 or ____switch28 == 1
            if ____cond28 then
                self:play("ability2", 1.25)
                __TS__Await(self:awaitTime(0.28))
                self:play("ability2", 0.9, 0.35, -1)
                break
            end
            ____cond28 = ____cond28 or ____switch28 == 2
            if ____cond28 then
                self:play(
                    "ability3",
                    1,
                    0.17,
                    0.35,
                    true
                )
                break
            end
            do
                console:error("未知的攻击模式")
                break
            end
        until true
    end)
end
____exports.key = ____createAbility_45(
    nil,
    ____fight_44,
    134257400,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.28, ["施法完成"] = 0.72}
)
return ____exports
