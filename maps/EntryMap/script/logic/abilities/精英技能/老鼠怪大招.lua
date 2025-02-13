local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 10,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 14,["39"] = 15,["40"] = 14,["41"] = 18,["43"] = 19,["44"] = 20,["45"] = 20,["46"] = 21,["48"] = 22,["49"] = 22,["50"] = 23,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 26,["65"] = 27,["66"] = 28,["67"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 28,["73"] = 28,["74"] = 28,["76"] = 28,["81"] = 28,["82"] = 28,["83"] = 28,["84"] = 28,["86"] = 30,["87"] = 31,["88"] = 32,["89"] = 33,["90"] = 33,["91"] = 33,["92"] = 33,["93"] = 33,["96"] = 33,["97"] = 33,["98"] = 33,["99"] = 33,["100"] = 33,["101"] = 33,["103"] = 33,["108"] = 33,["109"] = 33,["110"] = 33,["111"] = 33,["113"] = 22,["117"] = 18,["118"] = 37,["119"] = 38,["120"] = 37,["121"] = 12,["122"] = 12,["123"] = 12,["124"] = 12,["125"] = 12,["126"] = 12,["127"] = 12});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability4", 5, 0, 2.2)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability4", 1, 2.2, 3.3)
        local ____self_1 = _____6570_503C["精英技能"]["老鼠怪大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local duration = {0, 0.6, 0.5}
        do
            local i = 0
            while i < #duration do
                __TS__Await(self:awaitTime(duration[i + 1]))
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(1000),
                    {"敌人"}
                )
                self:addParticle(
                    134228554,
                    self.owner:getPosition(),
                    nil,
                    2.5,
                    0.5,
                    10
                )
                for ____, t in ipairs(targets) do
                    if i == #duration - 1 then
                        local ____t_4 = t
                        local ____t_addTimeLimitProperties_5 = t.addTimeLimitProperties
                        local ____array_3 = __TS__SparseArrayNew(
                            self.skillEntity,
                            buffId2,
                            1,
                            {},
                            {_____7729_6655},
                            {-1, 101}
                        )
                        local ____self_2 = _____6570_503C["精英技能"]["老鼠怪大招"]
                        __TS__SparseArrayPush(
                            ____array_3,
                            ____self_2["最后一击附加眩晕时间"](____self_2)
                        )
                        ____t_addTimeLimitProperties_5(
                            ____t_4,
                            __TS__SparseArraySpread(____array_3)
                        )
                    end
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    local ____t_10 = t
                    local ____t_addTimeLimitProperties_11 = t.addTimeLimitProperties
                    local ____array_9 = __TS__SparseArrayNew(self.skillEntity, buffId, 2)
                    local ____66B4_51FB_7387_7 = _____66B4_51FB_7387
                    local ____self_6 = _____6570_503C["精英技能"]["老鼠怪大招"]
                    __TS__SparseArrayPush(
                        ____array_9,
                        {
                            ____66B4_51FB_7387_7,
                            ____self_6["附加暴击率"](____self_6)
                        },
                        {},
                        {-1, 20}
                    )
                    local ____self_8 = _____6570_503C["精英技能"]["老鼠怪大招"]
                    __TS__SparseArrayPush(
                        ____array_9,
                        ____self_8["暴击率影响持续时间"](____self_8)
                    )
                    ____t_addTimeLimitProperties_11(
                        ____t_10,
                        __TS__SparseArraySpread(____array_9)
                    )
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self:play("ability4", 5, 3.3, 4.8)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134273566,
    ____class_0,
    {["施法开始"] = 0.44, ["施法引导"] = 0, ["施法出手"] = 1.1, ["施法完成"] = 0.3}
)
return ____exports
