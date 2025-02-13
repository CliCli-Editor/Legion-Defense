local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 18,["36"] = 25,["37"] = 32,["38"] = 40,["39"] = 41,["40"] = 10,["41"] = 42,["42"] = 43,["43"] = 44,["44"] = 45,["45"] = 46,["46"] = 47,["48"] = 49,["49"] = 49,["50"] = 49,["51"] = 49,["52"] = 49,["53"] = 49,["54"] = 49,["57"] = 52,["58"] = 53,["59"] = 54,["61"] = 56,["62"] = 56,["63"] = 56,["64"] = 56,["65"] = 56,["66"] = 56,["67"] = 56,["70"] = 42,["71"] = 60,["72"] = 61,["73"] = 62,["74"] = 63,["76"] = 65,["77"] = 65,["78"] = 65,["79"] = 65,["80"] = 65,["81"] = 65,["82"] = 65,["84"] = 67,["85"] = 67,["86"] = 67,["87"] = 67,["88"] = 67,["89"] = 67,["90"] = 67,["91"] = 67,["92"] = 69,["93"] = 69,["94"] = 70,["95"] = 70,["96"] = 70,["97"] = 70,["98"] = 70,["99"] = 71,["100"] = 72,["101"] = 73,["102"] = 74,["103"] = 75,["104"] = 76,["105"] = 76,["106"] = 76,["107"] = 76,["108"] = 76,["109"] = 76,["110"] = 76,["111"] = 76,["112"] = 76,["115"] = 79,["116"] = 80,["118"] = 80,["119"] = 80,["122"] = 80,["127"] = 83,["128"] = 84,["129"] = 84,["130"] = 84,["131"] = 84,["132"] = 84,["133"] = 84,["134"] = 84,["136"] = 86,["137"] = 87,["140"] = 90,["141"] = 90,["142"] = 91,["143"] = 91,["144"] = 91,["145"] = 91,["146"] = 91,["147"] = 91,["148"] = 91,["149"] = 91,["150"] = 91,["151"] = 92,["152"] = 93,["153"] = 94,["155"] = 96,["156"] = 97,["158"] = 60,["159"] = 10,["160"] = 10,["161"] = 10,["162"] = 10,["163"] = 10,["164"] = 10,["165"] = 10});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
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
    self["特殊攻击"] = false
    self.index = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) > 0
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        if self["动画参数3"] == nil then
            self:play("ability_2", 6)
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
        self.index = self.index + 1
        if self["动画参数"] == nil then
            self:play("attack" .. tostring(self.index % 2 + 1))
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
    if self["特殊攻击"] then
        if self["动画参数4"] == nil then
            self:play("ability_2", 0.8, 3.6, -1)
        else
            self:play(
                self["动画参数4"].aniName,
                self["动画参数4"].playSpeed,
                self["动画参数4"].startTime,
                self["动画参数4"].endTime,
                self["动画参数4"].loop
            )
        end
        self:addParticle(
            104548,
            self.owner:getPosition(),
            nil,
            1.17,
            1,
            10
        )
        local ____self_1 = _____6570_503C["科学怪人"]["普通攻击"]
        local v = ____self_1["爆气伤害"](____self_1, self.owner)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(350, self.owner),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____t_4 = t
                local ____t_addEffect_5 = t.addEffect
                local ____self_skillEntity_3 = self.skillEntity
                local ____self_2 = _____6570_503C["科学怪人"]["普通攻击"]
                ____t_addEffect_5(
                    ____t_4,
                    ____self_skillEntity_3,
                    ____self_2["天赋11爆气附加buff"](____self_2)
                )
            end
        end
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_8 = self.owner
            local ____self_8_addEffect_9 = ____self_8.addEffect
            local ____self_skillEntity_7 = self.skillEntity
            local ____self_6 = _____6570_503C["科学怪人"]["普通攻击"]
            ____self_8_addEffect_9(
                ____self_8,
                ____self_skillEntity_7,
                ____self_6["天赋12爆气附加buff"](____self_6)
            )
        end
    else
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
            return
        end
        local ____self_10 = _____6570_503C["科学怪人"]["普通攻击"]
        local v = ____self_10["伤害"](____self_10, self.owner)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            134238024
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
        self:playSound(self.owner, 134240944)
    end
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134281802,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
