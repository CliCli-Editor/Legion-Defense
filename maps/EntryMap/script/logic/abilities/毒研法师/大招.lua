local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 18,["36"] = 10,["37"] = 26,["38"] = 27,["39"] = 28,["41"] = 30,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 30,["46"] = 30,["47"] = 30,["49"] = 26,["50"] = 33,["51"] = 34,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 35,["60"] = 37,["61"] = 38,["62"] = 39,["63"] = 39,["64"] = 39,["65"] = 39,["66"] = 39,["67"] = 39,["69"] = 41,["72"] = 44,["73"] = 44,["74"] = 45,["75"] = 46,["76"] = 46,["78"] = 48,["79"] = 48,["80"] = 48,["82"] = 48,["83"] = 48,["87"] = 48,["88"] = 48,["89"] = 49,["90"] = 51,["91"] = 52,["92"] = 53,["93"] = 54,["94"] = 55,["95"] = 56,["96"] = 57,["98"] = 59,["99"] = 59,["100"] = 60,["101"] = 61,["102"] = 62,["103"] = 62,["104"] = 62,["105"] = 62,["106"] = 62,["107"] = 62,["108"] = 62,["109"] = 62,["110"] = 62,["111"] = 63,["114"] = 66,["115"] = 67,["116"] = 68,["117"] = 68,["118"] = 69,["119"] = 70,["120"] = 71,["121"] = 72,["122"] = 59,["125"] = 75,["126"] = 76,["128"] = 76,["129"] = 76,["132"] = 76,["136"] = 33,["137"] = 10,["138"] = 10,["139"] = 10,["140"] = 10,["141"] = 10,["142"] = 10,["143"] = 10});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_16 = createAbility
local ____fight_15 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[7]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[8]
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            1000
        )
    end
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["毒研法师"]["大招"]
    local v1 = ____self_1["首目标伤害"](____self_1, target)
    if self.owner:v(_____5929_8D4B_3) == 2 then
        local ____self_2 = _____6570_503C["毒研法师"]["大招"]
        v1 = v1 * ____self_2["天赋32首目标伤害系数"](____self_2)
    end
    local ____self_3 = _____6570_503C["毒研法师"]["大招"]
    local ____self_3__9644_52A0_4E2D_6BD2_5C42_6570_result_9 = ____self_3["附加中毒层数"](____self_3)
    local ____self_5 = self.owner
    local ____self_5_getEffectQuantity_6 = ____self_5.getEffectQuantity
    local ____self_4 = _____6570_503C["毒研法师"]["大招"]
    local ____self_5_getEffectQuantity_6_result_8 = ____self_5_getEffectQuantity_6(
        ____self_5,
        ____self_4["天赋31附加buff"](____self_4)
    )
    local ____self_7 = _____6570_503C["毒研法师"]["大招"]
    local quantity = ____self_3__9644_52A0_4E2D_6BD2_5C42_6570_result_9 + ____self_5_getEffectQuantity_6_result_8 * ____self_7["天赋31每层附加中毒层数"](____self_7)
    quantity = quantity * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    local targetList = {}
    self:addBeamLink(105040, 0.8, self.owner, target)
    target.tempData[AbilityTagData["是否为AOE"]] = true
    target:hurt(self.skillEntity, Formula["法术伤害"], v1, AbilityType["大招"])
    target.tempData[AbilityTagData["是否为AOE"]] = nil
    target:addEffect(self.skillEntity, 1, quantity)
    local maxCount = 5 - 1
    do
        local i = 0
        while i < maxCount do
            local oldTarget = target
            targetList[#targetList + 1] = target
            local targets = self.owner:findByShape(
                target:getPosition(),
                Shape:createCircularShape(1000),
                {"敌军"},
                function(____, a) return a:isAlive() and __TS__ArrayFindIndex(
                    targetList,
                    function(____, b) return b == a end
                ) == -1 end
            )
            if #targets == 0 then
                break
            end
            target = random:randomList(targets)
            self:addBeamLink(105040, 0.8, oldTarget, target)
            local ____self_10 = _____6570_503C["毒研法师"]["大招"]
            local v = ____self_10["弹射目标伤害"](____self_10, target)
            target.tempData[AbilityTagData["是否为AOE"]] = true
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
            target.tempData[AbilityTagData["是否为AOE"]] = nil
            target:addEffect(self.skillEntity, 1, quantity)
            i = i + 1
        end
    end
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_13 = self.owner
        local ____self_13_addEffect_14 = ____self_13.addEffect
        local ____self_skillEntity_12 = self.skillEntity
        local ____self_11 = _____6570_503C["毒研法师"]["大招"]
        ____self_13_addEffect_14(
            ____self_13,
            ____self_skillEntity_12,
            ____self_11["天赋31附加buff"](____self_11)
        )
    end
end
____exports.key = ____createAbility_16(
    nil,
    ____fight_15,
    134255682,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.85, ["施法完成"] = 0}
)
return ____exports
