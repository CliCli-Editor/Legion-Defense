local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["32"] = 9,["33"] = 10,["34"] = 17,["35"] = 24,["36"] = 9,["37"] = 32,["38"] = 33,["39"] = 34,["41"] = 36,["42"] = 36,["43"] = 36,["44"] = 36,["45"] = 36,["46"] = 36,["47"] = 36,["49"] = 32,["50"] = 39,["51"] = 40,["52"] = 40,["53"] = 40,["54"] = 40,["55"] = 40,["56"] = 40,["57"] = 40,["58"] = 40,["59"] = 40,["60"] = 40,["61"] = 40,["62"] = 39,["63"] = 42,["65"] = 43,["66"] = 44,["67"] = 44,["68"] = 44,["69"] = 44,["70"] = 44,["71"] = 44,["72"] = 44,["74"] = 46,["75"] = 47,["76"] = 47,["77"] = 47,["78"] = 47,["79"] = 47,["80"] = 48,["81"] = 49,["82"] = 50,["83"] = 50,["84"] = 50,["85"] = 50,["86"] = 51,["88"] = 51,["89"] = 51,["90"] = 51,["91"] = 51,["92"] = 51,["93"] = 51,["94"] = 51,["96"] = 52,["98"] = 52,["100"] = 53,["101"] = 53,["102"] = 53,["103"] = 53,["105"] = 53,["106"] = 53,["108"] = 53,["110"] = 54,["111"] = 54,["112"] = 55,["113"] = 56,["114"] = 56,["115"] = 56,["116"] = 56,["117"] = 56,["118"] = 57,["119"] = 58,["120"] = 59,["121"] = 60,["123"] = 54,["126"] = 63,["127"] = 64,["129"] = 64,["130"] = 64,["133"] = 64,["138"] = 42,["139"] = 67,["140"] = 68,["141"] = 69,["142"] = 69,["143"] = 69,["144"] = 69,["145"] = 69,["146"] = 69,["147"] = 69,["149"] = 71,["151"] = 67,["152"] = 9,["153"] = 9,["154"] = 9,["155"] = 9,["156"] = 9,["157"] = 9,["158"] = 9});
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
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[7]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_1")
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    self:addParticle(
        104373,
        self.owner,
        nil,
        1,
        1.4,
        0,
        "weapon",
        2,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数2"] ~= nil then
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
        local angle = self.owner:getAngle()
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            100
        )
        local duration = {0.2, 0.2, 0.2}
        local effectEntities = self.owner:getEffectEntities(104439)
        local ____opt_1 = effectEntities[1]
        local ____temp_5 = ____opt_1 and ____opt_1:s(1) or 0
        local ____opt_3 = effectEntities[1]
        local value = ____temp_5 - (____opt_3 and ____opt_3:s(0) or 0)
        local ____opt_6 = effectEntities[1]
        if ____opt_6 ~= nil then
            local ____opt_6_setStore_9 = ____opt_6.setStore
            local ____opt_7 = effectEntities[1]
            ____opt_6_setStore_9(
                ____opt_6,
                0,
                ____opt_7 and ____opt_7:s(1) or 0
            )
        end
        local ____opt_11 = effectEntities[1]
        if ____opt_11 ~= nil then
            ____opt_11:setStore(2, 0)
        end
        local ____temp_15
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_13 = _____6570_503C["战狂"]["大招"]
            ____temp_15 = ____self_13["天赋31伤害"](____self_13, value)
        else
            local ____self_14 = _____6570_503C["战狂"]["大招"]
            ____temp_15 = ____self_14["伤害"](____self_14, value)
        end
        local v = ____temp_15
        do
            local i = 0
            while i < #duration do
                __TS__Await(self:awaitTime(duration[i + 1]))
                local targets = self.owner:findByShape(
                    offsetPoint,
                    Shape:createSectorShape(350, 180, angle * (-1) ^ i, self.owner),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                i = i + 1
            end
        end
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_18 = self.owner
            local ____self_18_addEffect_19 = ____self_18.addEffect
            local ____self_skillEntity_17 = self.skillEntity
            local ____self_16 = _____6570_503C["战狂"]["大招"]
            ____self_18_addEffect_19(
                ____self_18,
                ____self_skillEntity_17,
                ____self_16["天赋32附加buff"](____self_16)
            )
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["动画参数3"] ~= nil then
        self:play(
            self["动画参数3"].aniName,
            self["动画参数3"].playSpeed,
            self["动画参数3"].startTime,
            self["动画参数3"].endTime,
            self["动画参数3"].loop
        )
    else
        self:play("ability_1", 2.5, 1, -1)
    end
end
____exports.key = ____createAbility_21(
    nil,
    ____fight_20,
    134277035,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.4, ["施法出手"] = 0.6, ["施法完成"] = 0.4}
)
return ____exports
