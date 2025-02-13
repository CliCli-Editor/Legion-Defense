local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["32"] = 10,["33"] = 11,["34"] = 18,["35"] = 25,["36"] = 32,["37"] = 39,["38"] = 10,["39"] = 40,["40"] = 41,["41"] = 41,["42"] = 41,["43"] = 41,["44"] = 42,["45"] = 43,["46"] = 44,["48"] = 46,["49"] = 46,["50"] = 46,["51"] = 46,["52"] = 46,["53"] = 46,["54"] = 46,["57"] = 49,["58"] = 50,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 52,["64"] = 52,["65"] = 52,["66"] = 52,["69"] = 40,["70"] = 56,["71"] = 57,["72"] = 58,["73"] = 59,["75"] = 61,["76"] = 61,["77"] = 61,["78"] = 61,["79"] = 61,["80"] = 61,["81"] = 61,["84"] = 64,["85"] = 65,["87"] = 67,["88"] = 67,["89"] = 67,["90"] = 67,["91"] = 67,["92"] = 67,["93"] = 67,["96"] = 70,["97"] = 70,["98"] = 71,["99"] = 72,["102"] = 75,["103"] = 76,["104"] = 77,["105"] = 78,["106"] = 78,["107"] = 78,["108"] = 78,["109"] = 78,["110"] = 78,["111"] = 78,["112"] = 78,["113"] = 79,["114"] = 80,["115"] = 80,["116"] = 80,["117"] = 80,["118"] = 80,["119"] = 81,["120"] = 82,["121"] = 83,["122"] = 84,["123"] = 84,["124"] = 84,["125"] = 84,["126"] = 84,["127"] = 84,["128"] = 84,["129"] = 85,["130"] = 86,["132"] = 88,["134"] = 88,["135"] = 88,["136"] = 88,["137"] = 88,["140"] = 88,["141"] = 88,["142"] = 88,["145"] = 91,["146"] = 92,["147"] = 92,["148"] = 92,["149"] = 92,["150"] = 92,["151"] = 92,["152"] = 92,["153"] = 92,["154"] = 92,["155"] = 93,["156"] = 94,["157"] = 95,["159"] = 97,["161"] = 56,["162"] = 10,["163"] = 10,["164"] = 10,["165"] = 10,["166"] = 10,["167"] = 10,["168"] = 10});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "血火狂徒暴击概率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["暴击"] then
        if self["动画参数3"] == nil then
            self:play("ability_30003")
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
        if self["动画参数"] == nil then
            self:play("attack1", 0.2)
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
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["暴击"] then
        if self["动画参数4"] == nil then
            self:play("ability_30003", 2, 0.65, -1)
        else
            self:play(
                self["动画参数4"].aniName,
                self["动画参数4"].playSpeed,
                self["动画参数4"].startTime,
                self["动画参数4"].endTime,
                self["动画参数4"].loop
            )
        end
    else
        if self["动画参数2"] == nil then
            self:play("attack1", 1, 0.13, -1)
        else
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["血火狂徒普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if self["暴击"] then
        local angle = self:getDirection(self.owner, target)
        local offsetPoint = self:offsetPoint(self.owner, angle, 175)
        self:addParticle(
            134272586,
            offsetPoint,
            angle,
            0.5,
            2,
            10
        )
        local offsetPointX = self:offsetPoint(self.owner, angle, 500)
        local targets = self.owner:findByShape(
            offsetPointX,
            Shape:createRectangleShape(200, 1000, angle),
            {"敌人"}
        )
        local total = 0
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local hurt = t:hurt(
                ability.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"]
            )
            total = total + hurt.value
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        local ____self_6 = self.owner
        local ____self_6_cure_7 = ____self_6.cure
        local ____self_skillEntity_4 = self.skillEntity
        local ____Formula__56DE_8840_503C_5 = Formula["回血值"]
        local ____total_3 = total
        local ____self_2 = _____6570_503C["佣兵技能"]["血火狂徒普通攻击"]
        ____self_6_cure_7(
            ____self_6,
            ____self_skillEntity_4,
            ____Formula__56DE_8840_503C_5,
            ____total_3 * ____self_2["恢复系数"](____self_2)
        )
    else
        self:playSound(self.owner, 134240944)
        target:hurt(
            ability.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            self["暴击"],
            nil,
            134231255
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134283115,
    ____class_0,
    {["施法开始"] = 0.65, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0}
)
return ____exports
