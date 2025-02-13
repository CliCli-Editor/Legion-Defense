local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 7,["30"] = 7,["31"] = 8,["32"] = 8,["33"] = 10,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 12,["41"] = 12,["42"] = 13,["43"] = 12,["44"] = 14,["45"] = 15,["46"] = 16,["47"] = 17,["48"] = 18,["49"] = 19,["52"] = 22,["54"] = 23,["55"] = 24,["57"] = 25,["60"] = 27,["62"] = 28,["65"] = 30,["67"] = 31,["70"] = 33,["72"] = 34,["76"] = 37,["77"] = 14,["78"] = 39,["80"] = 40,["81"] = 40,["82"] = 41,["83"] = 42,["86"] = 45,["87"] = 46,["88"] = 47,["89"] = 48,["90"] = 49,["93"] = 51,["94"] = 65,["95"] = 52,["97"] = 53,["98"] = 53,["99"] = 53,["100"] = 53,["101"] = 53,["102"] = 53,["103"] = 53,["104"] = 53,["105"] = 53,["106"] = 54,["109"] = 56,["111"] = 57,["112"] = 57,["113"] = 57,["114"] = 57,["115"] = 57,["116"] = 57,["117"] = 57,["118"] = 57,["119"] = 57,["120"] = 58,["121"] = 59,["122"] = 60,["123"] = 60,["124"] = 60,["125"] = 60,["126"] = 60,["127"] = 60,["128"] = 60,["129"] = 60,["130"] = 60,["131"] = 60,["132"] = 60,["133"] = 60,["136"] = 62,["138"] = 63,["139"] = 63,["140"] = 63,["141"] = 63,["142"] = 63,["143"] = 63,["144"] = 63,["145"] = 63,["146"] = 63,["147"] = 64,["148"] = 65,["149"] = 65,["150"] = 65,["151"] = 66,["152"] = 66,["153"] = 66,["154"] = 66,["155"] = 66,["156"] = 66,["159"] = 66,["160"] = 66,["161"] = 66,["162"] = 66,["163"] = 66,["164"] = 66,["166"] = 66,["171"] = 66,["172"] = 66,["173"] = 66,["174"] = 66,["175"] = 67,["177"] = 67,["178"] = 67,["181"] = 67,["182"] = 67,["184"] = 67,["185"] = 67,["186"] = 67,["190"] = 69,["192"] = 70,["193"] = 70,["194"] = 70,["195"] = 70,["196"] = 70,["197"] = 70,["198"] = 70,["199"] = 70,["200"] = 70,["201"] = 70,["202"] = 70,["203"] = 70,["204"] = 71,["206"] = 71,["207"] = 71,["208"] = 71,["209"] = 71,["210"] = 71,["212"] = 71,["213"] = 71,["214"] = 71,["215"] = 71,["216"] = 71,["217"] = 71,["218"] = 71,["219"] = 71,["220"] = 71,["222"] = 72,["223"] = 73,["224"] = 74,["225"] = 75,["229"] = 78,["231"] = 79,["232"] = 79,["233"] = 79,["234"] = 79,["235"] = 79,["236"] = 79,["237"] = 79,["238"] = 79,["239"] = 79,["240"] = 79,["241"] = 79,["242"] = 79,["243"] = 80,["245"] = 80,["246"] = 80,["247"] = 80,["248"] = 80,["249"] = 80,["251"] = 80,["252"] = 80,["253"] = 80,["254"] = 80,["255"] = 80,["256"] = 80,["257"] = 80,["258"] = 80,["259"] = 80,["261"] = 81,["262"] = 82,["268"] = 39,["269"] = 88,["271"] = 89,["272"] = 90,["273"] = 91,["274"] = 92,["275"] = 93,["276"] = 94,["277"] = 94,["278"] = 94,["279"] = 94,["280"] = 94,["281"] = 94,["282"] = 94,["283"] = 94,["284"] = 94,["285"] = 94,["286"] = 94,["287"] = 94,["288"] = 95,["290"] = 88,["291"] = 12,["292"] = 12,["293"] = 12,["294"] = 12,["295"] = 12,["296"] = 99,["297"] = 99,["298"] = 99,["299"] = 99,["300"] = 99,["301"] = 99,["302"] = 12,["303"] = 12});
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
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_653B_51FB_767E_5206_6BD4 = ____Property["法术攻击百分比"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_38 = createAbility
local ____fight_37 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["最大段数"] = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["最大段数"] = self.owner:getEffectQuantity(282431)
    if self["最大段数"] > 0 then
        self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
        if self.owner:getValue(_____7279_6280_1) > self["最大段数"] then
            self.owner:setValue(_____7279_6280_1, 0)
        end
    end
    local aniName = "attack1"
    repeat
        local ____switch5 = self.owner:getValue(_____7279_6280_1)
        local ____cond5 = ____switch5 == 1
        if ____cond5 then
            aniName = "attack2"
            break
        end
        ____cond5 = ____cond5 or ____switch5 == 2
        if ____cond5 then
            aniName = "attack3"
            break
        end
        ____cond5 = ____cond5 or ____switch5 == 3
        if ____cond5 then
            aniName = "attack4"
            break
        end
        ____cond5 = ____cond5 or ____switch5 == 4
        if ____cond5 then
            aniName = "attack5"
            break
        end
    until true
    self:play(aniName)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local angle = self.owner:getAngle()
        self:playSound(self.owner, 134240944)
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        repeat
            local ____switch9 = self.owner:getValue(_____7279_6280_1)
            local x, targets, targetsX
            local ____cond9 = ____switch9 == 0
            if ____cond9 then
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134231255
                )
                self:setUnderParticle(target, 134259689, scale)
                break
            end
            ____cond9 = ____cond9 or ____switch9 == 1
            if ____cond9 then
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134231255
                )
                self:setUnderParticle(target, 134259689, scale)
                __TS__Await(self:awaitTime(0.1))
                local ____target_5 = target
                local ____target_hurt_6 = target.hurt
                local ____self_skillEntity_3 = self.skillEntity
                local ____Formula__6CD5_672F_4F24_5BB3_4 = Formula["法术伤害"]
                local ____self_2 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                ____target_hurt_6(
                    ____target_5,
                    ____self_skillEntity_3,
                    ____Formula__6CD5_672F_4F24_5BB3_4,
                    ____self_2["额外伤害2"](____self_2, self.owner),
                    AbilityType["普攻"]
                )
                break
            end
            ____cond9 = ____cond9 or ____switch9 == 2
            if ____cond9 then
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134231255
                )
                self:setUnderParticle(target, 134259689, scale)
                local ____temp_8 = target:formula(Formula["展示面板_法术攻击"])
                local ____self_7 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                x = ____temp_8 * ____self_7["第3段偷取法攻百分比"](____self_7)
                local ____target_14 = target
                local ____target_addTimeLimitProperties_15 = target.addTimeLimitProperties
                local ____array_13 = __TS__SparseArrayNew(self.skillEntity, buffId, 1)
                local ____6CD5_672F_653B_51FB_767E_5206_6BD4_11 = _____6CD5_672F_653B_51FB_767E_5206_6BD4
                local ____temp_10 = -1
                local ____self_9 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                __TS__SparseArrayPush(
                    ____array_13,
                    {
                        ____6CD5_672F_653B_51FB_767E_5206_6BD4_11,
                        ____temp_10 * ____self_9["第3段偷取法攻百分比"](____self_9)
                    },
                    {},
                    {-1, 20}
                )
                local ____self_12 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                __TS__SparseArrayPush(
                    ____array_13,
                    ____self_12["第3段偷取法攻持续时间"](____self_12)
                )
                ____target_addTimeLimitProperties_15(
                    ____target_14,
                    __TS__SparseArraySpread(____array_13)
                )
                local ____self_18 = self.owner
                local ____self_18_applyTimeLimitProperties_19 = ____self_18.applyTimeLimitProperties
                local ____self_skillEntity_17 = self.skillEntity
                local ____self_16 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                ____self_18_applyTimeLimitProperties_19(
                    ____self_18,
                    ____self_skillEntity_17,
                    buffId2,
                    ____self_16["第3段偷取法攻持续时间"](____self_16),
                    1,
                    {_____6CD5_672F_653B_51FB, x},
                    {}
                )
                break
            end
            ____cond9 = ____cond9 or ____switch9 == 3
            if ____cond9 then
                self:addParticle(
                    103732,
                    self.owner:getPosition(),
                    angle,
                    1,
                    1,
                    50,
                    nil,
                    nil,
                    nil,
                    true
                )
                local ____self_24 = self.owner
                local ____self_24_findByShape_25 = ____self_24.findByShape
                local ____temp_23 = self.owner:getPosition()
                local ____Shape_21 = Shape
                local ____Shape_createSectorShape_22 = Shape.createSectorShape
                local ____self_20 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                targets = ____self_24_findByShape_25(
                    ____self_24,
                    ____temp_23,
                    ____Shape_createSectorShape_22(
                        ____Shape_21,
                        ____self_20["第4段扇形半径"](____self_20),
                        90,
                        angle,
                        self.owner
                    ),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                break
            end
            ____cond9 = ____cond9 or ____switch9 == 4
            if ____cond9 then
                self:addParticle(
                    103732,
                    self.owner:getPosition(),
                    angle,
                    2,
                    1,
                    50,
                    nil,
                    nil,
                    nil,
                    true
                )
                local ____self_30 = self.owner
                local ____self_30_findByShape_31 = ____self_30.findByShape
                local ____temp_29 = self.owner:getPosition()
                local ____Shape_27 = Shape
                local ____Shape_createSectorShape_28 = Shape.createSectorShape
                local ____self_26 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
                targetsX = ____self_30_findByShape_31(
                    ____self_30,
                    ____temp_29,
                    ____Shape_createSectorShape_28(
                        ____Shape_27,
                        ____self_26["第5段扇形半径"](____self_26),
                        90,
                        angle,
                        self.owner
                    ),
                    {"敌人"}
                )
                for ____, t in ipairs(targetsX) do
                    self:xHurt(t, v)
                end
                break
            end
        until true
    end)
end
function ____class_0.prototype.xHurt(self, t, v)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        __TS__Await(self:awaitTime(0.1))
        t.tempData[AbilityTagData["是否为AOE"]] = true
        local ____t_35 = t
        local ____t_hurt_36 = t.hurt
        local ____self_skillEntity_33 = self.skillEntity
        local ____Formula__6CD5_672F_4F24_5BB3_34 = Formula["法术伤害"]
        local ____self_32 = _____6570_503C["精英技能"]["暗域树人普通攻击"]
        ____t_hurt_36(
            ____t_35,
            ____self_skillEntity_33,
            ____Formula__6CD5_672F_4F24_5BB3_34,
            ____self_32["额外伤害5"](____self_32, self.owner),
            AbilityType["普攻"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end)
end
____exports.key = ____createAbility_38(
    nil,
    ____fight_37,
    134247708,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.35,
        ["施法引导"] = 0,
        ["施法出手"] = 0.85,
        ["施法完成"] = 0
    }
)
return ____exports
