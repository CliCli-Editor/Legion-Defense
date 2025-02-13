local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 9,["29"] = 8,["30"] = 11,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 13,["45"] = 13,["46"] = 13,["47"] = 14,["48"] = 15,["49"] = 15,["50"] = 15,["51"] = 15,["52"] = 15,["53"] = 15,["54"] = 15,["55"] = 16,["56"] = 16,["57"] = 17,["58"] = 18,["59"] = 19,["60"] = 20,["61"] = 20,["62"] = 20,["63"] = 20,["64"] = 20,["65"] = 20,["66"] = 20,["67"] = 20,["68"] = 20,["69"] = 21,["70"] = 22,["71"] = 22,["72"] = 22,["73"] = 22,["74"] = 22,["75"] = 22,["76"] = 22,["77"] = 22,["78"] = 22,["79"] = 22,["80"] = 22,["81"] = 22,["83"] = 24,["84"] = 25,["85"] = 26,["87"] = 26,["88"] = 26,["91"] = 26,["95"] = 29,["96"] = 29,["97"] = 29,["98"] = 29,["99"] = 29,["100"] = 29,["101"] = 29,["102"] = 29,["103"] = 29,["104"] = 30,["105"] = 30,["106"] = 30,["107"] = 30,["108"] = 30,["109"] = 30,["110"] = 30,["111"] = 30,["112"] = 30,["114"] = 11,["115"] = 7,["116"] = 7,["117"] = 7,["118"] = 7,["119"] = 7,["120"] = 7,["121"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_27 = createAbility
local ____fight_26 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("idle3", 4)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self:playSound(self.owner, 134240944)
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a)
            local ____a_2 = a
            local ____a_getEffectQuantity_3 = a.getEffectQuantity
            local ____self_1 = _____6570_503C["爱神"]["普通攻击"]
            return ____a_getEffectQuantity_3(
                ____a_2,
                ____self_1["对敌人附加buffId"](____self_1)
            ) > 0
        end,
        nil,
        nil,
        2000
    )
    for ____, target in ipairs(targets) do
        local ____target_5 = target
        local ____target_getEffectQuantity_6 = target.getEffectQuantity
        local ____self_4 = _____6570_503C["爱神"]["普通攻击"]
        local quantity = ____target_getEffectQuantity_6(
            ____target_5,
            ____self_4["对敌人附加buffId"](____self_4)
        )
        local ____self_7 = _____6570_503C["爱神"]["大招"]
        local v = ____self_7["伤害"](____self_7, self.owner, quantity)
        target.tempData[AbilityTagData["是否为AOE"]] = true
        target:hurt(self.skillEntity, Formula["真实伤害"], v, AbilityType["大招"])
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        local ____target_10 = target
        local ____target_addEffect_11 = target.addEffect
        local ____self_skillEntity_9 = self.skillEntity
        local ____self_8 = _____6570_503C["爱神"]["大招"]
        ____target_addEffect_11(
            ____target_10,
            ____self_skillEntity_9,
            ____self_8["天赋31附加buffId"](____self_8)
        )
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____target_16 = target
            local ____target_addEffect_17 = target.addEffect
            local ____self_skillEntity_14 = self.skillEntity
            local ____self_12 = _____6570_503C["爱神"]["大招"]
            local ____self_12__5929_8D4B31_9644_52A0buffId_result_15 = ____self_12["天赋31附加buffId"](____self_12)
            local ____self_13 = _____6570_503C["爱神"]["大招"]
            ____target_addEffect_17(
                ____target_16,
                ____self_skillEntity_14,
                ____self_12__5929_8D4B31_9644_52A0buffId_result_15,
                ____self_13["天赋31附加buff层数"](____self_13, quantity)
            )
        end
        if self.owner:getValue(_____5929_8D4B_3) == 2 and (not target:isAlive() or target:v(_____8840) <= 0) then
            self.owner:setValue(_____7279_6280_2, 1)
            local ____self_20 = self.owner
            local ____self_20_addEffect_21 = ____self_20.addEffect
            local ____self_skillEntity_19 = self.skillEntity
            local ____self_18 = _____6570_503C["爱神"]["大招"]
            ____self_20_addEffect_21(
                ____self_20,
                ____self_skillEntity_19,
                ____self_18["天赋32附加buffId"](____self_18)
            )
        end
        local ____target_24 = target
        local ____target_removeEffect_25 = target.removeEffect
        local ____self_skillEntity_23 = self.skillEntity
        local ____self_22 = _____6570_503C["爱神"]["普通攻击"]
        ____target_removeEffect_25(
            ____target_24,
            ____self_skillEntity_23,
            {____self_22["对敌人附加buffId"](____self_22)}
        )
        self:addParticle(
            104061,
            target,
            nil,
            1,
            1,
            0,
            "hit_point"
        )
    end
end
____exports.key = ____createAbility_27(
    nil,
    ____fight_26,
    134230231,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
