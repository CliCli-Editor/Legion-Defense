local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["33"] = 11,["34"] = 12,["35"] = 19,["36"] = 11,["37"] = 26,["38"] = 27,["39"] = 28,["41"] = 30,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 30,["46"] = 30,["47"] = 30,["49"] = 26,["50"] = 33,["51"] = 34,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 35,["60"] = 37,["61"] = 37,["62"] = 38,["63"] = 39,["66"] = 42,["67"] = 43,["68"] = 44,["69"] = 45,["70"] = 47,["71"] = 48,["72"] = 49,["75"] = 52,["76"] = 53,["79"] = 56,["80"] = 57,["81"] = 57,["82"] = 57,["83"] = 57,["84"] = 57,["85"] = 57,["86"] = 57,["87"] = 57,["88"] = 58,["89"] = 58,["90"] = 58,["91"] = 58,["92"] = 58,["93"] = 59,["94"] = 60,["95"] = 61,["96"] = 62,["97"] = 63,["98"] = 63,["99"] = 63,["100"] = 63,["101"] = 63,["102"] = 63,["103"] = 63,["104"] = 63,["105"] = 63,["106"] = 63,["107"] = 63,["108"] = 63,["109"] = 63,["110"] = 63,["111"] = 63,["112"] = 63,["113"] = 63,["114"] = 63,["115"] = 63,["116"] = 63,["118"] = 45,["119"] = 67,["120"] = 33,["121"] = 11,["122"] = 11,["123"] = 11,["124"] = 11,["125"] = 11,["126"] = 11,["127"] = 11});
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
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1")
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
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["平衡车炮手大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134263169, self.owner, angle, 150)
    p:setScale(2)
    p:listener({onFinish = function()
        local pos = p:getPosition()
        if pos == nil then
            p:remove()
            return
        end
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        self:addParticle(
            102879,
            pos,
            nil,
            10,
            1,
            0
        )
        local targets = self.owner:findByShape(
            pos,
            Shape:createCircularShape(300),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local ____t_5 = t
            local ____t_addTimeLimitProperties_6 = t.addTimeLimitProperties
            local ____self_skillEntity_4 = self.skillEntity
            local ____6CD5_672F_9632_5FA1_3 = _____6CD5_672F_9632_5FA1
            local ____self_2 = _____6570_503C["佣兵技能"]["平衡车炮手大招"]
            ____t_addTimeLimitProperties_6(
                ____t_5,
                ____self_skillEntity_4,
                buffId,
                5,
                {
                    ____6CD5_672F_9632_5FA1_3,
                    ____self_2["降低法抗"](____self_2)
                },
                {},
                {-1, 20},
                3,
                1,
                3
            )
        end
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134251477,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.6}
)
return ____exports
