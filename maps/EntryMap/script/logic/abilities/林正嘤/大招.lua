local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 10,["37"] = 12,["39"] = 13,["40"] = 14,["41"] = 15,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 15,["49"] = 16,["50"] = 17,["51"] = 18,["52"] = 18,["53"] = 18,["54"] = 18,["55"] = 18,["56"] = 18,["57"] = 18,["58"] = 18,["60"] = 12,["61"] = 20,["63"] = 21,["64"] = 23,["65"] = 24,["66"] = 24,["67"] = 24,["68"] = 24,["69"] = 24,["70"] = 25,["71"] = 25,["72"] = 26,["74"] = 26,["75"] = 26,["76"] = 26,["77"] = 26,["78"] = 26,["79"] = 26,["81"] = 26,["83"] = 26,["84"] = 28,["85"] = 28,["86"] = 29,["87"] = 29,["88"] = 30,["89"] = 30,["90"] = 32,["91"] = 32,["92"] = 33,["93"] = 33,["94"] = 34,["95"] = 34,["96"] = 36,["98"] = 37,["99"] = 37,["100"] = 38,["101"] = 39,["104"] = 42,["105"] = 43,["106"] = 44,["107"] = 45,["108"] = 47,["109"] = 45,["110"] = 56,["111"] = 57,["112"] = 58,["113"] = 58,["114"] = 58,["115"] = 58,["116"] = 58,["117"] = 59,["118"] = 60,["119"] = 61,["120"] = 61,["121"] = 62,["122"] = 63,["123"] = 63,["124"] = 63,["126"] = 63,["129"] = 65,["130"] = 66,["133"] = 69,["134"] = 70,["135"] = 70,["136"] = 70,["137"] = 70,["138"] = 70,["139"] = 71,["141"] = 72,["142"] = 73,["144"] = 75,["145"] = 75,["146"] = 76,["147"] = 77,["148"] = 77,["149"] = 77,["151"] = 77,["154"] = 79,["155"] = 80,["156"] = 81,["161"] = 84,["162"] = 85,["163"] = 85,["164"] = 85,["165"] = 85,["166"] = 85,["167"] = 86,["169"] = 87,["170"] = 88,["172"] = 90,["173"] = 90,["174"] = 91,["175"] = 92,["176"] = 92,["177"] = 92,["179"] = 92,["182"] = 94,["183"] = 95,["184"] = 96,["189"] = 37,["193"] = 20,["194"] = 101,["195"] = 102,["196"] = 101,["197"] = 104,["198"] = 105,["199"] = 104,["200"] = 10,["201"] = 10,["202"] = 10,["203"] = 10,["204"] = 10,["205"] = 10,["206"] = 10});
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
local _____7279_6280_3 = ____Property["特技_3"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_24 = createAbility
local ____fight_23 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self["正在施法"] = true
        self:play("ability1", 2)
        self:addParticle(
            134268834,
            self.owner:getPosition(),
            nil,
            2,
            3,
            150
        )
        __TS__Await(self:awaitTime(0.2))
        self:play("ability1", 2)
        self:addParticle(
            134268834,
            self.owner:getPosition(),
            nil,
            2,
            3,
            150
        )
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability1", 1, 1, -1)
        local angle = self.owner:getAngle()
        local pos = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            0
        )
        local ____self_1 = _____6570_503C["林正嘤"]["大招"]
        local count = ____self_1["卡牌总数量"](____self_1) + self.owner:getValue(_____7279_6280_3)
        local ____self_6 = self.owner
        local ____self_6_modifyValue_7 = ____self_6.modifyValue
        local ____self_skillEntity_4 = self.skillEntity
        local ____7279_6280_3_5 = _____7279_6280_3
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_2 = _____6570_503C["林正嘤"]["大招"]
            ____temp_3 = ____self_2["天赋31额外叠加卡牌数量"](____self_2)
        else
            ____temp_3 = 0
        end
        ____self_6_modifyValue_7(____self_6, ____self_skillEntity_4, ____7279_6280_3_5, ____temp_3)
        local ____self_8 = _____6570_503C["林正嘤"]["大招"]
        local d1 = ____self_8["距离1"](____self_8)
        local ____self_9 = _____6570_503C["林正嘤"]["大招"]
        local d2 = ____self_9["距离2"](____self_9)
        local ____self_10 = _____6570_503C["林正嘤"]["大招"]
        local d3 = ____self_10["距离3"](____self_10)
        local ____self_11 = _____6570_503C["林正嘤"]["大招"]
        local x1 = ____self_11["距离1计算伤害跳数"](____self_11)
        local ____self_12 = _____6570_503C["林正嘤"]["大招"]
        local x2 = ____self_12["距离2计算伤害跳数"](____self_12)
        local ____self_13 = _____6570_503C["林正嘤"]["大招"]
        local x3 = ____self_13["距离3计算伤害跳数"](____self_13)
        local duration = 0.5 / count
        do
            local i = 0
            while i < count do
                __TS__Await(self:awaitTime(duration))
                if not self["正在施法"] then
                    break
                end
                local angleX = math.random(-45, 45)
                local p = self:createProjectile(134235037, pos, angle + angleX, 150)
                p:prepare({hit_radius = 50, hit_same = false, face_angle = true})
                p:listener({onFinish = function()
                    p:remove()
                end})
                p:moverLine(angle + angleX, 1500, 3000)
                if i % x1 == 0 then
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createSectorShape(d1, 90, angle, self.owner),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        local ____self_14 = _____6570_503C["林正嘤"]["大招"]
                        local v = ____self_14["每跳伤害"](____self_14, self.owner)
                        if self.owner:getValue(_____5929_8D4B_3) == 2 then
                            local ____v_16 = v
                            local ____self_15 = _____6570_503C["林正嘤"]["大招"]
                            v = ____v_16 * ____self_15["天赋32每跳伤害提升系数"](
                                ____self_15,
                                self:getDirection(t, self.owner)
                            )
                        end
                        t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                end
                if i % x2 == 0 then
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createSectorShape(d2, 90, angle, self.owner),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targets) do
                        do
                            if t:distanceQuick(self.owner) < d1 * d1 then
                                goto __continue12
                            end
                            local ____self_17 = _____6570_503C["林正嘤"]["大招"]
                            local v = ____self_17["每跳伤害"](____self_17, self.owner)
                            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                                local ____v_19 = v
                                local ____self_18 = _____6570_503C["林正嘤"]["大招"]
                                v = ____v_19 * ____self_18["天赋32每跳伤害提升系数"](
                                    ____self_18,
                                    self:getDirection(t, self.owner)
                                )
                            end
                            t.tempData[AbilityTagData["是否为AOE"]] = true
                            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                            t.tempData[AbilityTagData["是否为AOE"]] = nil
                        end
                        ::__continue12::
                    end
                end
                if i % x3 == 0 then
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createSectorShape(d3, 90, angle, self.owner),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targets) do
                        do
                            if t:distanceQuick(self.owner) < d2 * d2 then
                                goto __continue17
                            end
                            local ____self_20 = _____6570_503C["林正嘤"]["大招"]
                            local v = ____self_20["每跳伤害"](____self_20, self.owner)
                            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                                local ____v_22 = v
                                local ____self_21 = _____6570_503C["林正嘤"]["大招"]
                                v = ____v_22 * ____self_21["天赋32每跳伤害提升系数"](
                                    ____self_21,
                                    self:getDirection(t, self.owner)
                                )
                            end
                            t.tempData[AbilityTagData["是否为AOE"]] = true
                            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                            t.tempData[AbilityTagData["是否为AOE"]] = nil
                        end
                        ::__continue17::
                    end
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_24(
    nil,
    ____fight_23,
    134275682,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.5, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
