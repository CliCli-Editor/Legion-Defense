local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 12,["40"] = 16,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["58"] = 20,["59"] = 21,["60"] = 21,["61"] = 21,["62"] = 21,["63"] = 21,["64"] = 21,["65"] = 21,["66"] = 21,["67"] = 22,["68"] = 22,["69"] = 22,["70"] = 22,["71"] = 22,["72"] = 22,["73"] = 22,["74"] = 22,["75"] = 23,["76"] = 23,["77"] = 23,["78"] = 23,["79"] = 23,["80"] = 23,["81"] = 23,["82"] = 23,["83"] = 23,["84"] = 23,["85"] = 23,["86"] = 24,["87"] = 24,["88"] = 24,["89"] = 24,["90"] = 25,["91"] = 25,["92"] = 25,["93"] = 25,["94"] = 25,["95"] = 25,["96"] = 25,["97"] = 25,["98"] = 24,["99"] = 24,["101"] = 16,["102"] = 29,["103"] = 30,["104"] = 30,["105"] = 30,["106"] = 30,["107"] = 30,["108"] = 30,["109"] = 30,["110"] = 30,["111"] = 29,["112"] = 33,["113"] = 34,["114"] = 34,["115"] = 35,["116"] = 36,["118"] = 38,["119"] = 38,["120"] = 38,["121"] = 38,["122"] = 38,["123"] = 39,["126"] = 42,["127"] = 43,["128"] = 44,["129"] = 45,["131"] = 33,["132"] = 9,["133"] = 9,["134"] = 9,["135"] = 9,["136"] = 9,["137"] = 9,["138"] = 9});
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
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack4_1",
        1,
        0,
        1.4,
        false
    )
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self.effectEntity = self.owner:addEffect(self.skillEntity, 13)
        self:removeEffect(self.skillEntity, self.owner, {self.effectEntity}, 3)
        self:play(
            "attack4_1",
            0.74,
            1.4,
            3.6,
            false
        )
        self:addParticle(
            134280433,
            self.owner,
            0,
            1,
            3,
            150
        )
        self:addParticle(
            134257684,
            self.owner:getPosition(),
            0,
            2,
            3,
            50
        )
        self:addParticle(
            134247230,
            self.owner:getPosition(),
            0,
            2,
            3,
            50
        )
        local ____fightUtils_4 = fightUtils
        local ____fightUtils_addShield_5 = fightUtils.addShield
        local ____self_owner_2 = self.owner
        local ____self_skillEntity_3 = self.skillEntity
        local ____self_1 = _____6570_503C["精英技能"]["海妖大招"]
        ____fightUtils_addShield_5(
            ____fightUtils_4,
            ____self_owner_2,
            ____self_skillEntity_3,
            ____self_1["护盾值"](____self_1, ability.owner)
        )
        __TS__Await(self:loop(
            1,
            3,
            function(____, count)
                self:addParticle(
                    134247230,
                    self.owner:getPosition(),
                    0,
                    2,
                    3,
                    50
                )
            end
        ))
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:addParticle(
        134254731,
        self.owner:getPosition(),
        0,
        3,
        0.5,
        150
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_6 = _____6570_503C["精英技能"]["海妖大招"]
    local v = ____self_6["伤害"](____self_6, self.owner)
    if self.owner:p(_____901A_7528_62A4_76FE) > 0 then
        v = v * 2
    end
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(1000),
        {"敌人"}
    )
    if not targets or #targets == 0 then
        return
    end
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134258760,
    ____class_0,
    {["施法开始"] = 1.4, ["施法引导"] = 3, ["施法出手"] = 0.3, ["施法完成"] = 1}
)
return ____exports
