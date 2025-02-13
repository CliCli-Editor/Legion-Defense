local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 12,["29"] = 11,["30"] = 14,["31"] = 15,["32"] = 16,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 18,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 20,["52"] = 21,["53"] = 22,["54"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 22,["60"] = 22,["61"] = 22,["62"] = 22,["64"] = 22,["65"] = 22,["66"] = 22,["68"] = 22,["69"] = 22,["71"] = 22,["72"] = 23,["73"] = 24,["74"] = 25,["75"] = 26,["76"] = 27,["77"] = 27,["78"] = 27,["79"] = 27,["80"] = 27,["81"] = 27,["82"] = 27,["83"] = 27,["84"] = 27,["85"] = 28,["86"] = 29,["87"] = 29,["88"] = 29,["89"] = 29,["92"] = 32,["94"] = 34,["95"] = 34,["96"] = 34,["97"] = 34,["98"] = 34,["99"] = 34,["100"] = 34,["101"] = 34,["102"] = 35,["104"] = 35,["105"] = 35,["106"] = 35,["109"] = 35,["110"] = 35,["111"] = 35,["113"] = 14,["114"] = 9,["115"] = 9,["116"] = 9,["117"] = 9,["118"] = 9,["119"] = 9,["120"] = 9});
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
local ____createAbility_18 = createAbility
local ____fight_17 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        600
    )
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createCircularShape(600),
        {"敌军"}
    )
    self:playSound(self.owner, 134240944)
    self:addParticle(
        104769,
        offsetPoint,
        angle,
        3,
        1,
        10
    )
    local totalDmg = 0
    for ____, t in ipairs(targets) do
        local ____temp_7
        local ____temp_4 = self.owner:getValue(_____5929_8D4B_3) == 1
        if ____temp_4 then
            local ____t_2 = t
            local ____t_getEffectQuantity_3 = t.getEffectQuantity
            local ____self_1 = _____6570_503C["莉莉"]["大招"]
            ____temp_4 = ____t_getEffectQuantity_3(
                ____t_2,
                ____self_1["天赋32附加buffId"](____self_1)
            ) > 0
        end
        if ____temp_4 then
            local ____self_5 = _____6570_503C["莉莉"]["大招"]
            ____temp_7 = ____self_5["天赋31对流血伤害"](____self_5, self.owner)
        else
            local ____self_6 = _____6570_503C["莉莉"]["大招"]
            ____temp_7 = ____self_6["伤害"](____self_6, self.owner)
        end
        local v = ____temp_7
        t.tempData[AbilityTagData["是否为AOE"]] = true
        local hurt = t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____t_10 = t
            local ____t_addEffect_11 = t.addEffect
            local ____self_skillEntity_9 = self.skillEntity
            local ____self_8 = _____6570_503C["莉莉"]["大招"]
            local effectEntity = ____t_addEffect_11(
                ____t_10,
                ____self_skillEntity_9,
                ____self_8["天赋32附加buffId"](____self_8)
            )
            if effectEntity then
                effectEntity:setStore(
                    Formula["展示面板_物理攻击"],
                    self.owner:formula(Formula["展示面板_物理攻击"])
                )
            end
        end
        totalDmg = totalDmg + hurt.value
    end
    self:addParticle(
        100036,
        self.owner:getPosition(),
        nil,
        1,
        1,
        10
    )
    local ____self_15 = self.owner
    local ____self_15_cure_16 = ____self_15.cure
    local ____self_skillEntity_13 = self.skillEntity
    local ____Formula__56DE_8840_503C_14 = Formula["回血值"]
    local ____self_12 = _____6570_503C["莉莉"]["大招"]
    ____self_15_cure_16(
        ____self_15,
        ____self_skillEntity_13,
        ____Formula__56DE_8840_503C_14,
        ____self_12["治疗"](____self_12, self.owner, totalDmg)
    )
end
____exports.key = ____createAbility_18(
    nil,
    ____fight_17,
    134276449,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 0.35}
)
return ____exports
