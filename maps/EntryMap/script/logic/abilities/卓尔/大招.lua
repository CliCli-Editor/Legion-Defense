local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 7,["29"] = 7,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 10,["35"] = 10,["37"] = 10,["38"] = 11,["39"] = 10,["40"] = 12,["41"] = 13,["42"] = 14,["43"] = 14,["44"] = 14,["45"] = 14,["46"] = 14,["47"] = 14,["48"] = 14,["49"] = 12,["50"] = 16,["52"] = 17,["53"] = 17,["54"] = 17,["55"] = 17,["56"] = 17,["57"] = 17,["58"] = 17,["59"] = 17,["60"] = 18,["61"] = 19,["62"] = 19,["63"] = 20,["64"] = 21,["65"] = 21,["66"] = 21,["68"] = 23,["69"] = 24,["70"] = 25,["71"] = 25,["72"] = 25,["73"] = 25,["74"] = 25,["75"] = 25,["76"] = 25,["77"] = 26,["78"] = 27,["80"] = 28,["81"] = 28,["82"] = 29,["85"] = 32,["86"] = 33,["87"] = 33,["88"] = 33,["89"] = 33,["90"] = 33,["91"] = 35,["92"] = 36,["93"] = 37,["94"] = 38,["95"] = 39,["97"] = 28,["100"] = 46,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 46,["105"] = 48,["106"] = 48,["107"] = 49,["108"] = 49,["109"] = 49,["110"] = 49,["111"] = 49,["112"] = 49,["113"] = 49,["114"] = 49,["115"] = 50,["116"] = 51,["117"] = 51,["118"] = 51,["120"] = 53,["121"] = 53,["122"] = 53,["123"] = 53,["124"] = 53,["125"] = 53,["126"] = 53,["127"] = 53,["128"] = 54,["129"] = 55,["130"] = 55,["131"] = 55,["132"] = 55,["133"] = 55,["134"] = 55,["135"] = 55,["136"] = 55,["137"] = 55,["138"] = 56,["141"] = 59,["142"] = 60,["143"] = 61,["144"] = 61,["145"] = 61,["146"] = 61,["147"] = 61,["150"] = 61,["151"] = 61,["152"] = 61,["153"] = 61,["154"] = 61,["155"] = 61,["157"] = 61,["162"] = 61,["163"] = 61,["164"] = 61,["165"] = 61,["166"] = 62,["167"] = 63,["168"] = 64,["169"] = 65,["171"] = 67,["172"] = 68,["174"] = 68,["175"] = 68,["176"] = 68,["179"] = 68,["180"] = 68,["181"] = 68,["185"] = 16,["186"] = 71,["187"] = 72,["188"] = 71,["189"] = 74,["190"] = 75,["191"] = 74,["192"] = 10,["193"] = 10,["194"] = 10,["195"] = 10,["196"] = 10,["197"] = 10,["198"] = 10});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____653B_51FB_901F_5EA6_767E_5206_6BD4 = ____Property["攻击速度百分比"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_19 = createAbility
local ____fight_18 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
    self:play(
        "ability2",
        1,
        0,
        1.2,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local duration = {
            0,
            0.15,
            0.15,
            0.2,
            0.1,
            0.15
        }
        local radius = 800
        local ____self_1 = _____6570_503C["卓尔"]["大招"]
        local v = ____self_1["前六次伤害"](____self_1, self.owner)
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____v_3 = v
            local ____self_2 = _____6570_503C["卓尔"]["大招"]
            v = ____v_3 * (1 + ____self_2["天赋31伤害提升系数"](____self_2, self.owner))
        end
        local angle = self.owner:getAngle()
        local offsetPoint = self:offsetPoint(self.owner, angle, 100)
        self:addParticle(
            134272590,
            self.owner:getPosition(),
            angle,
            1.2,
            1
        )
        self:playSound(self.owner, 134225729)
        local xx = 0
        do
            local i = 0
            while i < 6 do
                if not self["正在施法"] then
                    break
                end
                __TS__Await(self:awaitTime(duration[i + 1]))
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createSectorShape(radius, 60, angle, self.owner),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local x = t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    xx = xx + x.value
                end
                i = i + 1
            end
        end
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(radius, 180, angle, self.owner),
            {"敌人"}
        )
        local ____self_4 = _____6570_503C["卓尔"]["大招"]
        v = ____self_4["最后一次伤害"](____self_4, self.owner)
        self:play(
            "ability3",
            1,
            1.8,
            -1,
            false,
            true
        )
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____v_6 = v
            local ____self_5 = _____6570_503C["卓尔"]["大招"]
            v = ____v_6 * (1 + ____self_5["天赋31伤害提升系数"](____self_5, self.owner))
        end
        self:addParticle(
            134243404,
            self.owner,
            angle,
            1.6,
            0.6,
            10
        )
        __TS__Await(self:awaitTime(0.3))
        self:addParticle(
            134252859,
            offsetPoint,
            angle,
            2.64,
            1,
            10,
            nil
        )
        if not self["正在施法"] then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134221575)
        for ____, t in ipairs(targets) do
            local ____t_11 = t
            local ____t_addTimeLimitProperties_12 = t.addTimeLimitProperties
            local ____array_10 = __TS__SparseArrayNew(self.skillEntity, buffId, 1)
            local ____653B_51FB_901F_5EA6_767E_5206_6BD4_8 = _____653B_51FB_901F_5EA6_767E_5206_6BD4
            local ____self_7 = _____6570_503C["卓尔"]["大招"]
            __TS__SparseArrayPush(
                ____array_10,
                {
                    ____653B_51FB_901F_5EA6_767E_5206_6BD4_8,
                    ____self_7["降低攻速"](____self_7)
                },
                {},
                {-1, 20}
            )
            local ____self_9 = _____6570_503C["卓尔"]["大招"]
            __TS__SparseArrayPush(
                ____array_10,
                ____self_9["降低攻速时长"](____self_9)
            )
            ____t_addTimeLimitProperties_12(
                ____t_11,
                __TS__SparseArraySpread(____array_10)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local x = t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            xx = xx + x.value
        end
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_16 = self.owner
            local ____self_16_cure_17 = ____self_16.cure
            local ____self_skillEntity_14 = self.skillEntity
            local ____Formula__56DE_8840_503C_15 = Formula["回血值"]
            local ____self_13 = _____6570_503C["卓尔"]["大招"]
            ____self_16_cure_17(
                ____self_16,
                ____self_skillEntity_14,
                ____Formula__56DE_8840_503C_15,
                ____self_13["天赋32治疗值"](____self_13, self.owner, xx)
            )
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_19(
    nil,
    ____fight_18,
    134277169,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 2, ["施法完成"] = 0}
)
return ____exports
