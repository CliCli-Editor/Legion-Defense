local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 18,["37"] = 10,["38"] = 26,["39"] = 27,["40"] = 28,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 30,["46"] = 30,["47"] = 30,["48"] = 30,["50"] = 26,["51"] = 33,["53"] = 34,["54"] = 35,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["64"] = 39,["65"] = 40,["66"] = 41,["69"] = 44,["70"] = 44,["71"] = 44,["72"] = 44,["74"] = 44,["75"] = 44,["77"] = 44,["78"] = 45,["79"] = 46,["80"] = 47,["81"] = 48,["82"] = 49,["83"] = 50,["84"] = 51,["85"] = 51,["86"] = 51,["87"] = 51,["88"] = 51,["89"] = 51,["90"] = 51,["91"] = 52,["93"] = 54,["94"] = 54,["95"] = 55,["96"] = 56,["97"] = 57,["98"] = 58,["99"] = 59,["100"] = 59,["102"] = 60,["103"] = 60,["104"] = 60,["105"] = 60,["106"] = 60,["107"] = 60,["108"] = 60,["109"] = 60,["110"] = 60,["111"] = 60,["112"] = 61,["114"] = 61,["116"] = 61,["117"] = 61,["119"] = 61,["123"] = 61,["124"] = 62,["125"] = 62,["126"] = 62,["127"] = 62,["128"] = 62,["129"] = 62,["130"] = 62,["131"] = 62,["132"] = 62,["134"] = 64,["135"] = 64,["136"] = 64,["137"] = 64,["138"] = 64,["139"] = 64,["140"] = 65,["143"] = 68,["144"] = 69,["145"] = 70,["146"] = 70,["147"] = 70,["148"] = 70,["149"] = 70,["150"] = 70,["151"] = 70,["152"] = 71,["153"] = 72,["154"] = 73,["158"] = 54,["161"] = 78,["163"] = 78,["165"] = 78,["166"] = 78,["168"] = 78,["172"] = 78,["173"] = 79,["174"] = 79,["175"] = 79,["176"] = 79,["177"] = 79,["178"] = 79,["179"] = 79,["180"] = 79,["181"] = 79,["183"] = 81,["184"] = 82,["185"] = 82,["186"] = 82,["187"] = 82,["188"] = 82,["189"] = 82,["190"] = 82,["191"] = 82,["192"] = 82,["195"] = 33,["196"] = 10,["197"] = 10,["198"] = 10,["199"] = 10,["200"] = 10,["201"] = 10,["202"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_35 = createAbility
local ____fight_34 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1", 2)
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
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数2"] == nil then
            self:play("attack1", 1, 0.8, -1)
        else
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
        local target = cast:getTargetUnit()
        local newTarget = cast:getTargetUnit()
        if not target or not newTarget then
            return ____awaiter_resolve(nil)
        end
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_1 = _____6570_503C["雨师"]["普通攻击"]
            ____temp_3 = ____self_1["天赋12伤害"](____self_1, self.owner)
        else
            local ____self_2 = _____6570_503C["雨师"]["普通攻击"]
            ____temp_3 = ____self_2["伤害"](____self_2, self.owner)
        end
        local v = ____temp_3
        self:playSound(self.owner, 134221216)
        self:addBeamLink(103985, 0.5, self.owner, target)
        target.tempData[AbilityTagData["是否为AOE"]] = true
        target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        local maxCount = 5
        local ____target_5 = target
        local ____target_getEffectQuantity_6 = target.getEffectQuantity
        local ____self_4 = _____6570_503C["雨师"]["普通攻击"]
        local oldTargetEffectQuantity = ____target_getEffectQuantity_6(
            ____target_5,
            ____self_4["附加buff"](____self_4)
        )
        local ix = false
        do
            local i = 0
            while i < maxCount do
                __TS__Await(self:awaitTime(0.1))
                local oldTarget = newTarget
                console:log(oldTarget.id, oldTargetEffectQuantity)
                if oldTargetEffectQuantity > 0 then
                    if i == 0 then
                        ix = true
                    end
                    local ____oldTarget_9 = oldTarget
                    local ____oldTarget_modifyEffectQuantity_10 = oldTarget.modifyEffectQuantity
                    local ____self_skillEntity_8 = self.skillEntity
                    local ____self_7 = _____6570_503C["雨师"]["普通攻击"]
                    ____oldTarget_modifyEffectQuantity_10(
                        ____oldTarget_9,
                        ____self_skillEntity_8,
                        ____self_7["附加buff"](____self_7),
                        -1
                    )
                    local ____temp_14 = self.owner:getValue(_____5929_8D4B_1) == 1 and i > 0
                    if ____temp_14 then
                        local ____self_12 = self.owner
                        local ____self_12_random_13 = ____self_12.random
                        local ____self_11 = _____6570_503C["雨师"]["普通攻击"]
                        ____temp_14 = ____self_12_random_13(
                            ____self_12,
                            "雨师普攻天赋11附加印记概率",
                            ____self_11["天赋11附加buff概率"](____self_11)
                        )
                    end
                    if ____temp_14 then
                        local ____oldTarget_17 = oldTarget
                        local ____oldTarget_addEffect_18 = oldTarget.addEffect
                        local ____self_skillEntity_16 = self.skillEntity
                        local ____self_15 = _____6570_503C["雨师"]["普通攻击"]
                        ____oldTarget_addEffect_18(
                            ____oldTarget_17,
                            ____self_skillEntity_16,
                            ____self_15["附加buff"](____self_15)
                        )
                    end
                    local targets = self.owner:findByShape(
                        oldTarget:getPosition(),
                        Shape:createCircularShape(1000),
                        {"敌军"},
                        function(____, a) return a:isAlive() and a ~= oldTarget end
                    )
                    if #targets == 0 then
                        break
                    end
                    newTarget = random:randomList(targets)
                    self:addBeamLink(103985, 0.5, oldTarget, newTarget)
                    local ____newTarget_20 = newTarget
                    local ____newTarget_getEffectQuantity_21 = newTarget.getEffectQuantity
                    local ____self_19 = _____6570_503C["雨师"]["普通攻击"]
                    oldTargetEffectQuantity = ____newTarget_getEffectQuantity_21(
                        ____newTarget_20,
                        ____self_19["附加buff"](____self_19)
                    )
                    newTarget.tempData[AbilityTagData["是否为AOE"]] = true
                    newTarget:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                    newTarget.tempData[AbilityTagData["是否为AOE"]] = nil
                else
                    break
                end
                i = i + 1
            end
        end
        local ____temp_25 = self.owner:getValue(_____5929_8D4B_1) == 1
        if ____temp_25 then
            local ____self_23 = self.owner
            local ____self_23_random_24 = ____self_23.random
            local ____self_22 = _____6570_503C["雨师"]["普通攻击"]
            ____temp_25 = ____self_23_random_24(
                ____self_23,
                "雨师普攻天赋11附加印记概率",
                ____self_22["天赋11附加buff概率"](____self_22)
            )
        end
        if ____temp_25 then
            local ____newTarget_28 = newTarget
            local ____newTarget_addEffect_29 = newTarget.addEffect
            local ____self_skillEntity_27 = self.skillEntity
            local ____self_26 = _____6570_503C["雨师"]["普通攻击"]
            ____newTarget_addEffect_29(
                ____newTarget_28,
                ____self_skillEntity_27,
                ____self_26["附加buff"](____self_26)
            )
        end
        if not ix then
            local ____target_32 = target
            local ____target_addEffect_33 = target.addEffect
            local ____self_skillEntity_31 = self.skillEntity
            local ____self_30 = _____6570_503C["雨师"]["普通攻击"]
            ____target_addEffect_33(
                ____target_32,
                ____self_skillEntity_31,
                ____self_30["附加buff"](____self_30)
            )
        end
    end)
end
____exports.key = ____createAbility_35(
    nil,
    ____fight_34,
    134250260,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.6}
)
return ____exports
