local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["34"] = 11,["35"] = 12,["36"] = 19,["37"] = 26,["38"] = 11,["39"] = 27,["40"] = 28,["41"] = 29,["43"] = 31,["44"] = 31,["45"] = 31,["46"] = 31,["47"] = 31,["48"] = 31,["49"] = 31,["51"] = 33,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 35,["59"] = 35,["60"] = 35,["61"] = 35,["62"] = 35,["63"] = 36,["64"] = 36,["65"] = 36,["66"] = 36,["67"] = 36,["68"] = 36,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 37,["75"] = 38,["76"] = 39,["77"] = 39,["78"] = 40,["79"] = 41,["80"] = 42,["82"] = 42,["83"] = 42,["84"] = 42,["85"] = 42,["86"] = 42,["89"] = 42,["90"] = 42,["91"] = 42,["92"] = 42,["93"] = 42,["94"] = 42,["95"] = 42,["96"] = 42,["97"] = 42,["100"] = 27,["101"] = 45,["102"] = 46,["103"] = 47,["104"] = 47,["105"] = 47,["106"] = 47,["107"] = 47,["108"] = 47,["109"] = 47,["111"] = 49,["112"] = 50,["113"] = 51,["116"] = 54,["117"] = 54,["118"] = 54,["119"] = 54,["120"] = 54,["121"] = 55,["122"] = 55,["123"] = 55,["124"] = 55,["125"] = 55,["126"] = 57,["127"] = 58,["128"] = 59,["129"] = 59,["130"] = 59,["131"] = 59,["132"] = 59,["133"] = 59,["134"] = 59,["135"] = 59,["136"] = 59,["137"] = 59,["138"] = 60,["139"] = 61,["140"] = 63,["141"] = 61,["142"] = 67,["143"] = 68,["144"] = 69,["145"] = 69,["146"] = 69,["147"] = 69,["148"] = 69,["149"] = 69,["150"] = 69,["151"] = 69,["152"] = 69,["153"] = 69,["154"] = 70,["155"] = 71,["156"] = 73,["157"] = 71,["158"] = 77,["159"] = 79,["160"] = 79,["161"] = 80,["162"] = 80,["163"] = 80,["164"] = 80,["165"] = 80,["166"] = 80,["167"] = 80,["168"] = 80,["169"] = 80,["170"] = 81,["171"] = 81,["172"] = 81,["173"] = 81,["174"] = 81,["175"] = 81,["176"] = 81,["177"] = 81,["178"] = 82,["179"] = 83,["180"] = 84,["182"] = 86,["183"] = 88,["184"] = 89,["186"] = 89,["187"] = 89,["190"] = 89,["194"] = 45,["195"] = 11,["196"] = 11,["197"] = 11,["198"] = 11,["199"] = 11,["200"] = 11,["201"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____8840 = ____Property["血"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[7]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[8]
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability1")
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
    self:playSound(self.owner, 134219848)
    self:addParticle(
        134245480,
        self.owner,
        nil,
        1,
        0.45,
        nil,
        "leftHand",
        nil,
        true
    )
    self:addParticle(
        134245480,
        self.owner,
        nil,
        1,
        0.45,
        nil,
        "rightHand",
        nil,
        true
    )
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local level = self.owner:getLevel()
        local ____self_1 = _____6570_503C["闲青山"]["大招"]
        local c = ____self_1["天赋31恢复生命"](____self_1, self.owner, level)
        self.owner:cure(self.skillEntity, Formula["回血值"], c)
    elseif self.owner:getValue(_____5929_8D4B_3) == 2 then
        local ____self_7 = self.owner
        local ____self_7_applyTimeLimitProperties_8 = ____self_7.applyTimeLimitProperties
        local ____self_skillEntity_5 = self.skillEntity
        local ____self_2 = _____6570_503C["闲青山"]["大招"]
        local ____self_2__5929_8D4B32_6CD5_6297_6301_7EED_65F6_95F4_result_6 = ____self_2["天赋32法抗持续时间"](____self_2)
        local ____6CD5_672F_9632_5FA1_4 = _____6CD5_672F_9632_5FA1
        local ____self_3 = _____6570_503C["闲青山"]["大招"]
        ____self_7_applyTimeLimitProperties_8(
            ____self_7,
            ____self_skillEntity_5,
            buffId,
            ____self_2__5929_8D4B32_6CD5_6297_6301_7EED_65F6_95F4_result_6,
            1,
            {
                ____6CD5_672F_9632_5FA1_4,
                ____self_3["天赋32法抗"](____self_3)
            },
            {}
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
    local angle = self.owner:getAngle()
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local hui1 = self:offsetPoint(
        self.owner:getPosition(),
        angle + 120,
        600
    )
    local hui2 = self:offsetPoint(
        self.owner:getPosition(),
        angle + 240,
        600
    )
    local angle_target1 = self:getDirection(hui1, target)
    local hui1_1 = self:offsetPoint(hui1, angle_target1, 1000)
    local p1 = self:createProjectile(
        134255506,
        hui1,
        angle_target1,
        150,
        3,
        nil,
        nil,
        true
    )
    p1:prepare({hit_radius = 10, face_angle = true})
    p1:listener({onFinish = function()
        p1:remove()
    end})
    p1:moverLine(angle_target1, 2000, 1000, 10000)
    local angle_target2 = self:getDirection(hui2, target)
    local p2 = self:createProjectile(
        134255506,
        hui2,
        angle_target2,
        150,
        3,
        nil,
        nil,
        true
    )
    p2:prepare({hit_radius = 10, face_angle = true})
    p2:listener({onFinish = function()
        p2:remove()
    end})
    p2:moverLine(angle_target2, 2000, 1000, 10000)
    local ____self_9 = _____6570_503C["闲青山"]["大招"]
    local v = ____self_9["伤害"](____self_9, self.owner, target)
    target:hurt(
        self.skillEntity,
        Formula["法术伤害"],
        v,
        AbilityType["大招"],
        nil,
        nil,
        134238493
    )
    self:setUnderParticle(
        target,
        134224642,
        1.2,
        nil,
        0.85,
        50
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.3
    end
    self:setUnderParticle(target, self["脚底粒子ID"], scale)
    if target:v(_____8840) <= 0 then
        local ____self_12 = self.owner
        local ____self_12_addMp_13 = ____self_12.addMp
        local ____self_owner_11 = self.owner
        local ____self_10 = _____6570_503C["闲青山"]["大招"]
        ____self_12_addMp_13(
            ____self_12,
            ____self_owner_11,
            ____self_10["杀敌回蓝"](____self_10)
        )
    end
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134233112,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.45}
)
return ____exports
