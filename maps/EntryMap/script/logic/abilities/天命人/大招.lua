local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 10,["36"] = 12,["37"] = 13,["38"] = 12,["39"] = 15,["40"] = 15,["41"] = 18,["42"] = 19,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 22,["50"] = 25,["51"] = 25,["52"] = 26,["53"] = 26,["54"] = 26,["55"] = 26,["56"] = 26,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["62"] = 27,["63"] = 27,["64"] = 27,["65"] = 27,["66"] = 27,["67"] = 27,["68"] = 27,["69"] = 27,["70"] = 27,["71"] = 28,["72"] = 29,["74"] = 29,["76"] = 29,["77"] = 29,["79"] = 29,["83"] = 29,["84"] = 30,["85"] = 31,["87"] = 25,["90"] = 18,["91"] = 35,["92"] = 36,["93"] = 37,["94"] = 38,["97"] = 41,["98"] = 41,["99"] = 41,["100"] = 41,["101"] = 42,["102"] = 43,["103"] = 43,["104"] = 44,["105"] = 45,["106"] = 45,["107"] = 45,["108"] = 45,["109"] = 45,["110"] = 46,["111"] = 46,["112"] = 46,["113"] = 46,["114"] = 46,["115"] = 47,["116"] = 47,["117"] = 47,["118"] = 47,["119"] = 47,["120"] = 47,["121"] = 47,["122"] = 47,["123"] = 48,["124"] = 49,["125"] = 50,["126"] = 50,["127"] = 50,["128"] = 50,["129"] = 50,["130"] = 50,["131"] = 50,["132"] = 51,["133"] = 52,["134"] = 53,["135"] = 53,["136"] = 53,["137"] = 53,["138"] = 53,["139"] = 53,["140"] = 53,["141"] = 53,["142"] = 53,["145"] = 56,["146"] = 57,["148"] = 57,["149"] = 57,["150"] = 57,["153"] = 57,["154"] = 57,["155"] = 57,["158"] = 35,["159"] = 10,["160"] = 10,["161"] = 10,["162"] = 10,["163"] = 10,["164"] = 10,["165"] = 10});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_21 = createAbility
local ____fight_20 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability1", 2)
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability1", 1, 1.5, 2.25)
    local ____self_1 = _____6570_503C["天命人"]["大招"]
    local count = ____self_1["召唤数量"](____self_1)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    do
        local i = 0
        while i < count do
            local pos = self:offsetPoint(
                target:getPosition(),
                i * (360 / count),
                350
            )
            local ____fightUtils_4 = fightUtils
            local ____fightUtils_summon_5 = fightUtils.summon
            local ____self_owner_3 = self.owner
            local ____self_2 = _____6570_503C["天命人"]["大招"]
            local summonEntity = ____fightUtils_summon_5(
                ____fightUtils_4,
                ____self_owner_3,
                22,
                ____self_2["持续时间"](____self_2),
                nil,
                nil,
                nil,
                pos
            )
            if summonEntity then
                local ____temp_9 = self.owner:getValue(_____5929_8D4B_3) == 2
                if ____temp_9 then
                    local ____self_7 = self.owner
                    local ____self_7_random_8 = ____self_7.random
                    local ____self_6 = _____6570_503C["天命人"]["大招"]
                    ____temp_9 = ____self_7_random_8(
                        ____self_7,
                        "天命人大招猴子猴孙额外当头一棒概率",
                        ____self_6["天赋32额外当头一棒概率"](____self_6)
                    )
                end
                local spCount = ____temp_9 and 2 or 1
                summonEntity:setValue(_____7279_6280_1, spCount)
                summonEntity:attackTarget(target, 500)
            end
            i = i + 1
        end
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self:play("ability1", 2, 2.25, -1)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self["暴击"] = self.owner:random(
        "天命人大招暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    self:playSound(self.owner, 134240944)
    local ____self_10 = _____6570_503C["天命人"]["普通攻击"]
    local v = ____self_10["特殊攻击伤害"](____self_10, self.owner)
    local angle = self:getDirection(self.owner, target)
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        600
    )
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createRectangleShape(200, 1200, angle),
        {"敌人"}
    )
    self:addParticle(
        102478,
        self.owner:getPosition(),
        angle,
        1,
        1,
        10
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["大招"],
            self["暴击"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____t_13 = t
            local ____t_addEffect_14 = t.addEffect
            local ____self_skillEntity_12 = self.skillEntity
            local ____self_11 = _____6570_503C["天命人"]["普通攻击"]
            ____t_addEffect_14(
                ____t_13,
                ____self_skillEntity_12,
                ____self_11["天赋12附加debuff"](____self_11)
            )
        end
    end
    if self.owner:getValue(_____5929_8D4B_1) == 1 and self["暴击"] then
        local ____self_18 = self.owner
        local ____self_18_cure_19 = ____self_18.cure
        local ____self_skillEntity_16 = self.skillEntity
        local ____Formula__56DE_8840_503C_17 = Formula["回血值"]
        local ____self_15 = _____6570_503C["天命人"]["普通攻击"]
        ____self_18_cure_19(
            ____self_18,
            ____self_skillEntity_16,
            ____Formula__56DE_8840_503C_17,
            ____self_15["天赋11治疗"](____self_15, self.owner)
        )
    end
end
____exports.key = ____createAbility_21(
    nil,
    ____fight_20,
    134248688,
    ____class_0,
    {["施法开始"] = 0.25, ["施法引导"] = 0.5, ["施法出手"] = 0.75, ["施法完成"] = 0.25}
)
return ____exports
