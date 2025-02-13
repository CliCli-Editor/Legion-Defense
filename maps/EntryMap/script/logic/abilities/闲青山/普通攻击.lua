local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 15,["40"] = 16,["41"] = 23,["42"] = 30,["43"] = 37,["44"] = 44,["45"] = 51,["46"] = 10,["47"] = 58,["48"] = 59,["49"] = 59,["50"] = 59,["51"] = 59,["52"] = 60,["53"] = 61,["54"] = 62,["56"] = 64,["57"] = 65,["58"] = 65,["59"] = 65,["60"] = 65,["61"] = 65,["62"] = 65,["63"] = 65,["65"] = 67,["66"] = 68,["67"] = 68,["68"] = 68,["69"] = 68,["70"] = 68,["71"] = 68,["72"] = 68,["74"] = 70,["75"] = 70,["76"] = 70,["77"] = 70,["78"] = 70,["79"] = 70,["80"] = 70,["84"] = 58,["85"] = 76,["86"] = 77,["87"] = 78,["88"] = 79,["89"] = 79,["90"] = 79,["91"] = 79,["92"] = 79,["93"] = 79,["94"] = 79,["96"] = 81,["97"] = 82,["98"] = 82,["99"] = 82,["100"] = 82,["101"] = 82,["102"] = 82,["103"] = 82,["105"] = 84,["106"] = 84,["107"] = 84,["108"] = 84,["109"] = 84,["110"] = 84,["111"] = 84,["115"] = 88,["116"] = 89,["119"] = 92,["120"] = 92,["121"] = 93,["122"] = 93,["123"] = 93,["124"] = 93,["125"] = 93,["126"] = 93,["127"] = 93,["128"] = 93,["129"] = 93,["130"] = 94,["131"] = 95,["132"] = 96,["133"] = 97,["134"] = 98,["135"] = 98,["136"] = 99,["137"] = 100,["139"] = 102,["140"] = 103,["141"] = 104,["142"] = 105,["144"] = 105,["145"] = 105,["146"] = 105,["149"] = 105,["150"] = 105,["151"] = 105,["155"] = 76,["156"] = 109,["157"] = 110,["158"] = 111,["159"] = 111,["160"] = 111,["161"] = 111,["162"] = 111,["163"] = 111,["164"] = 111,["165"] = 111,["166"] = 111,["167"] = 111,["168"] = 112,["169"] = 112,["170"] = 112,["171"] = 112,["172"] = 112,["173"] = 113,["174"] = 114,["175"] = 115,["176"] = 115,["177"] = 115,["178"] = 115,["179"] = 115,["180"] = 115,["181"] = 115,["182"] = 115,["183"] = 115,["184"] = 116,["185"] = 117,["186"] = 118,["187"] = 119,["189"] = 121,["191"] = 109,["192"] = 10,["193"] = 10,["194"] = 10,["195"] = 10,["196"] = 10,["197"] = 10,["198"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
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
    self["暴击"] = false
    self["普攻身上粒子ID"] = 134236177
    self["额外伤害身上粒子ID"] = 134218740
    self["普攻脚底粒子ID"] = 134259689
    self["额外伤害脚底粒子ID"] = 134259689
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["动画参数5"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数6"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["动画参数"] == nil or self["动画参数3"] == nil or self["动画参数5"] == nil then
        local aniName = self["暴击"] and "attack2" or "attack1"
        self:play(aniName)
    else
        if self.owner:getValue(_____7279_6280_1) == 1 then
            self:play(
                self["动画参数5"].aniName,
                self["动画参数5"].playSpeed,
                self["动画参数5"].startTime,
                self["动画参数5"].endTime,
                self["动画参数5"].loop
            )
        else
            if self["暴击"] then
                self:play(
                    self["动画参数3"].aniName,
                    self["动画参数3"].playSpeed,
                    self["动画参数3"].startTime,
                    self["动画参数3"].endTime,
                    self["动画参数3"].loop
                )
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
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数2"] ~= nil and self["动画参数4"] ~= nil and self["动画参数6"] ~= nil then
        if self.owner:getValue(_____7279_6280_1) == 1 then
            self:play(
                self["动画参数6"].aniName,
                self["动画参数6"].playSpeed,
                self["动画参数6"].startTime,
                self["动画参数6"].endTime,
                self["动画参数6"].loop
            )
        else
            if self["暴击"] then
                self:play(
                    self["动画参数4"].aniName,
                    self["动画参数4"].playSpeed,
                    self["动画参数4"].startTime,
                    self["动画参数4"].endTime,
                    self["动画参数4"].loop
                )
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
    end
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_1 = _____6570_503C["闲青山"]["普通攻击"]
    local v = ____self_1["普通伤害"](____self_1, self.owner)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        self["暴击"],
        nil,
        self["普攻身上粒子ID"]
    )
    self:playSound(self.owner, 134252233)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self.owner:setValue(_____7279_6280_1, 0)
        local scale = 1
        local ____self_2 = _____6570_503C["闲青山"]["普通攻击"]
        local vx1 = ____self_2["强化额外伤害"](____self_2, self.owner)
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.3
        end
        self:setUnderParticle(target, self["普攻脚底粒子ID"], scale)
        self:sectorHurt(vx1, target)
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_6 = self.owner
            local ____self_6_cure_7 = ____self_6.cure
            local ____self_skillEntity_4 = self.skillEntity
            local ____Formula__56DE_8840_503C_5 = Formula["回血值"]
            local ____self_3 = _____6570_503C["闲青山"]["普通攻击"]
            ____self_6_cure_7(
                ____self_6,
                ____self_skillEntity_4,
                ____Formula__56DE_8840_503C_5,
                ____self_3["天赋12恢复生命"](____self_3, self.owner)
            )
        end
    end
end
function ____class_0.prototype.sectorHurt(self, v, target)
    local angle = self:getDirection(self.owner, target)
    self:addParticle(
        134282479,
        self.owner,
        0,
        1,
        1,
        150,
        "",
        1
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(500, 60, angle, self.owner),
        {"敌军"}
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(
            self.skillEntity,
            Formula["法术伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            self["额外伤害身上粒子ID"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        local scale = 1
        if t:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, self["额外伤害脚底粒子ID"], scale)
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134235480,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 0}
)
return ____exports
