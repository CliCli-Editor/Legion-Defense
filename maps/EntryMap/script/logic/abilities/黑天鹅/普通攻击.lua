local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 7,["30"] = 7,["31"] = 9,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["39"] = 11,["40"] = 12,["41"] = 13,["42"] = 11,["43"] = 14,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 16,["49"] = 17,["51"] = 19,["53"] = 14,["54"] = 22,["56"] = 23,["57"] = 24,["60"] = 27,["61"] = 28,["62"] = 29,["63"] = 29,["64"] = 30,["65"] = 31,["66"] = 32,["67"] = 33,["68"] = 35,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 36,["75"] = 36,["76"] = 37,["77"] = 37,["78"] = 37,["79"] = 37,["80"] = 37,["81"] = 37,["82"] = 37,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 38,["88"] = 38,["89"] = 38,["90"] = 39,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 41,["97"] = 42,["98"] = 43,["99"] = 44,["100"] = 45,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 46,["105"] = 46,["108"] = 46,["109"] = 46,["110"] = 46,["111"] = 46,["112"] = 46,["113"] = 46,["115"] = 46,["120"] = 46,["121"] = 46,["122"] = 46,["123"] = 46,["126"] = 33,["127"] = 51,["128"] = 51,["129"] = 51,["130"] = 51,["131"] = 51,["132"] = 51,["133"] = 51,["134"] = 51,["135"] = 51,["136"] = 51,["137"] = 52,["138"] = 53,["140"] = 53,["141"] = 53,["142"] = 53,["143"] = 53,["144"] = 53,["147"] = 53,["148"] = 53,["149"] = 53,["150"] = 53,["151"] = 53,["152"] = 53,["153"] = 53,["154"] = 53,["155"] = 53,["159"] = 56,["160"] = 56,["161"] = 57,["162"] = 58,["163"] = 59,["164"] = 59,["165"] = 59,["166"] = 59,["167"] = 59,["168"] = 59,["169"] = 59,["170"] = 59,["171"] = 59,["172"] = 59,["173"] = 60,["175"] = 61,["176"] = 61,["177"] = 62,["178"] = 63,["179"] = 63,["180"] = 63,["181"] = 63,["182"] = 63,["183"] = 63,["184"] = 63,["185"] = 63,["186"] = 63,["187"] = 64,["188"] = 65,["189"] = 65,["190"] = 65,["191"] = 65,["192"] = 65,["193"] = 65,["194"] = 65,["195"] = 65,["196"] = 65,["197"] = 65,["198"] = 61,["201"] = 67,["204"] = 22,["205"] = 11,["206"] = 11,["207"] = 11,["208"] = 11,["209"] = 11,["210"] = 11,["211"] = 11});
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
local _____7269_7406_9632_5FA1_767E_5206_6BD4 = ____Property["物理防御百分比"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_17 = createAbility
local ____fight_16 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
    self["受击粒子ID"] = 134238024
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:random(
        "黑天鹅普攻暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["特殊攻击"] then
        self:play("attack1")
    else
        self:play("ability1_1", 0.3)
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        if self["特殊攻击"] then
            local ____self_1 = _____6570_503C["黑天鹅"]["普通攻击"]
            local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
            local pos = target:getPosition()
            local p = self:createProjectile(134242611, self.owner, angle, 150)
            p:prepare({hit_radius = 100})
            p:listener({onFinish = function()
                p:remove()
                self:addParticle(
                    134266626,
                    pos,
                    nil,
                    0.5,
                    1
                )
                self:addParticle(
                    134262107,
                    pos,
                    nil,
                    0.5,
                    1
                )
                self:addParticle(
                    134246203,
                    pos,
                    nil,
                    0.5,
                    1
                )
                self:playSound(self.owner, 134275301)
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(200),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                    t.tempData[AbilityTagData["是否为AOE"]] = false
                    if self.owner:getValue(_____5929_8D4B_1) == 1 then
                        local ____t_6 = t
                        local ____t_addTimeLimitProperties_7 = t.addTimeLimitProperties
                        local ____array_5 = __TS__SparseArrayNew(ability.skillEntity, buffId2, 1)
                        local ____7269_7406_9632_5FA1_767E_5206_6BD4_3 = _____7269_7406_9632_5FA1_767E_5206_6BD4
                        local ____self_2 = _____6570_503C["黑天鹅"]["普通攻击"]
                        __TS__SparseArrayPush(
                            ____array_5,
                            {
                                ____7269_7406_9632_5FA1_767E_5206_6BD4_3,
                                ____self_2["天赋11减少防御"](____self_2)
                            },
                            {},
                            {-1, 20}
                        )
                        local ____self_4 = _____6570_503C["黑天鹅"]["普通攻击"]
                        __TS__SparseArrayPush(
                            ____array_5,
                            ____self_4["天赋11减少防御持续时间"](____self_4)
                        )
                        ____t_addTimeLimitProperties_7(
                            ____t_6,
                            __TS__SparseArraySpread(____array_5)
                        )
                    end
                end
            end})
            p:moverTarget(
                target,
                1000,
                50,
                nil,
                nil,
                nil,
                150,
                500
            )
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____self_13 = self.owner
                local ____self_13_applyTimeLimitProperties_14 = ____self_13.applyTimeLimitProperties
                local ____ability_skillEntity_11 = ability.skillEntity
                local ____self_8 = _____6570_503C["黑天鹅"]["普通攻击"]
                local ____self_8__5929_8D4B12_63D0_5347_66B4_51FB_6301_7EED_65F6_95F4_result_12 = ____self_8["天赋12提升暴击持续时间"](____self_8)
                local ____66B4_51FB_7387_10 = _____66B4_51FB_7387
                local ____self_9 = _____6570_503C["黑天鹅"]["普通攻击"]
                ____self_13_applyTimeLimitProperties_14(
                    ____self_13,
                    ____ability_skillEntity_11,
                    buffId,
                    ____self_8__5929_8D4B12_63D0_5347_66B4_51FB_6301_7EED_65F6_95F4_result_12,
                    1,
                    {
                        ____66B4_51FB_7387_10,
                        ____self_9["天赋12提升暴击"](____self_9)
                    },
                    {}
                )
            end
        else
            local ____self_15 = _____6570_503C["黑天鹅"]["普通攻击"]
            local v = ____self_15["伤害"](____self_15, self.owner)
            __TS__Await(self:awaitTime(0.1))
            self:play("ability1_3")
            self:addParticle(
                134229205,
                self.owner,
                nil,
                1,
                1,
                nil,
                "右手",
                1
            )
            self:playSound(self.owner, 134251026)
            do
                local i = 0
                while i < 3 do
                    self:play("ability1_3")
                    target:hurt(
                        ability.skillEntity,
                        Formula["物理伤害"],
                        v,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        self["受击粒子ID"]
                    )
                    __TS__Await(self:awaitTime(0.1))
                    self:addParticle(
                        134229205,
                        self.owner,
                        nil,
                        1,
                        1,
                        nil,
                        "右手",
                        1
                    )
                    i = i + 1
                end
            end
            self:play("ability1_4")
        end
    end)
end
____exports.key = ____createAbility_17(
    nil,
    ____fight_16,
    134248636,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0.75}
)
return ____exports
