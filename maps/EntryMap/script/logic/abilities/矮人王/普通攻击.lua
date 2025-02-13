local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["37"] = 13,["38"] = 14,["39"] = 21,["40"] = 28,["41"] = 35,["42"] = 42,["43"] = 50,["44"] = 51,["45"] = 52,["46"] = 13,["47"] = 53,["48"] = 54,["50"] = 54,["51"] = 54,["52"] = 54,["53"] = 54,["55"] = 54,["56"] = 54,["58"] = 54,["59"] = 55,["60"] = 56,["61"] = 57,["63"] = 59,["64"] = 59,["65"] = 59,["66"] = 59,["67"] = 59,["68"] = 59,["69"] = 59,["72"] = 62,["73"] = 63,["74"] = 64,["75"] = 65,["76"] = 65,["77"] = 65,["78"] = 65,["79"] = 65,["80"] = 65,["81"] = 65,["83"] = 67,["84"] = 67,["85"] = 67,["86"] = 67,["87"] = 67,["88"] = 67,["89"] = 67,["92"] = 70,["95"] = 53,["96"] = 74,["97"] = 75,["98"] = 76,["99"] = 77,["100"] = 78,["101"] = 78,["102"] = 78,["103"] = 78,["104"] = 78,["105"] = 78,["106"] = 78,["108"] = 80,["109"] = 80,["110"] = 80,["111"] = 80,["112"] = 80,["113"] = 80,["114"] = 80,["118"] = 84,["119"] = 85,["122"] = 88,["123"] = 89,["124"] = 89,["125"] = 89,["126"] = 89,["128"] = 89,["129"] = 89,["131"] = 89,["132"] = 90,["133"] = 90,["135"] = 91,["136"] = 91,["137"] = 91,["138"] = 91,["139"] = 91,["140"] = 91,["141"] = 91,["142"] = 91,["143"] = 91,["144"] = 92,["145"] = 92,["147"] = 93,["148"] = 94,["149"] = 95,["151"] = 97,["152"] = 98,["153"] = 99,["154"] = 99,["155"] = 99,["156"] = 99,["157"] = 99,["158"] = 99,["159"] = 99,["160"] = 99,["161"] = 99,["162"] = 100,["163"] = 100,["164"] = 100,["165"] = 100,["166"] = 100,["167"] = 100,["168"] = 101,["169"] = 102,["170"] = 103,["171"] = 103,["172"] = 103,["175"] = 106,["176"] = 107,["177"] = 107,["178"] = 107,["179"] = 107,["180"] = 107,["181"] = 107,["182"] = 107,["183"] = 107,["184"] = 107,["185"] = 108,["186"] = 109,["189"] = 74,["190"] = 13,["191"] = 13,["192"] = 13,["193"] = 13,["194"] = 13,["195"] = 13,["196"] = 13});
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
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_12 = createAbility
local ____fight_11 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["动画参数5"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["特殊攻击"] = false
    self.count = 0
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____self_4 = self.owner
    local ____self_4_random_5 = ____self_4.random
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_1 = _____6570_503C["矮人王"]["普通攻击"]
        ____temp_3 = ____self_1["天赋11特殊攻击概率"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["矮人王"]["普通攻击"]
        ____temp_3 = ____self_2["特殊攻击概率"](____self_2)
    end
    self["特殊攻击"] = ____self_4_random_5(____self_4, "矮人王特殊普攻", ____temp_3)
    if self["特殊攻击"] then
        if self["动画参数5"] == nil then
            self:play("attack4")
        else
            self:play(
                self["动画参数5"].aniName,
                self["动画参数5"].playSpeed,
                self["动画参数5"].startTime,
                self["动画参数5"].endTime,
                self["动画参数5"].loop
            )
        end
    else
        self.count = self.count + 1
        if self["动画参数"] ~= nil and self["动画参数3"] ~= nil then
            if self.count % 2 == 1 then
                self:play(
                    self["动画参数"].aniName,
                    self["动画参数"].playSpeed,
                    self["动画参数"].startTime,
                    self["动画参数"].endTime,
                    self["动画参数"].loop
                )
            else
                self:play(
                    self["动画参数3"].aniName,
                    self["动画参数3"].playSpeed,
                    self["动画参数3"].startTime,
                    self["动画参数3"].endTime,
                    self["动画参数3"].loop
                )
            end
        else
            self:play(self.count % 2 == 1 and "attack1" or "attack2")
        end
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if not self["特殊攻击"] then
        if self["动画参数2"] ~= nil and self["动画参数4"] ~= nil then
            if self.count % 2 == 1 then
                self:play(
                    self["动画参数2"].aniName,
                    self["动画参数2"].playSpeed,
                    self["动画参数2"].startTime,
                    self["动画参数2"].endTime,
                    self["动画参数2"].loop
                )
            else
                self:play(
                    self["动画参数4"].aniName,
                    self["动画参数4"].playSpeed,
                    self["动画参数4"].startTime,
                    self["动画参数4"].endTime,
                    self["动画参数4"].loop
                )
            end
        end
    end
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:playSound(self.owner, 134240944)
    local ____temp_8
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_6 = _____6570_503C["矮人王"]["普通攻击"]
        ____temp_8 = ____self_6["天赋12伤害"](____self_6, self.owner)
    else
        local ____self_7 = _____6570_503C["矮人王"]["普通攻击"]
        ____temp_8 = ____self_7["伤害"](____self_7, self.owner)
    end
    local v = ____temp_8
    if self["特殊攻击"] then
        target.tempData[AbilityTagData["是否为AOE"]] = true
    end
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        self["特殊攻击"] and 104928 or 104495
    )
    if self["特殊攻击"] then
        target.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, self["脚底粒子ID"], scale)
    if self["特殊攻击"] then
        target:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 20},
            1
        )
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(400),
            {"敌人"},
            function(____, a) return a ~= target end
        )
        local total = 0
        for ____, t in ipairs(targets) do
            local ____total_10 = total
            local ____self_9 = _____6570_503C["矮人王"]["普通攻击"]
            if ____total_10 >= ____self_9["特殊攻击溅射数量"](____self_9) then
                break
            end
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                104511
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            total = total + 1
        end
    end
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134274439,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.7}
)
return ____exports
