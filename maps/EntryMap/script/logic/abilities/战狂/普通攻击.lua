local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 10,["36"] = 10,["37"] = 11,["38"] = 18,["39"] = 25,["40"] = 32,["41"] = 40,["42"] = 41,["43"] = 10,["44"] = 43,["45"] = 44,["46"] = 45,["47"] = 46,["48"] = 47,["49"] = 48,["51"] = 50,["52"] = 50,["53"] = 50,["54"] = 50,["55"] = 50,["56"] = 50,["57"] = 50,["60"] = 53,["61"] = 54,["63"] = 56,["64"] = 56,["65"] = 56,["66"] = 56,["67"] = 56,["68"] = 56,["69"] = 56,["72"] = 43,["73"] = 60,["75"] = 61,["76"] = 63,["77"] = 64,["78"] = 65,["79"] = 65,["80"] = 65,["81"] = 65,["82"] = 65,["83"] = 65,["84"] = 65,["86"] = 67,["87"] = 67,["88"] = 67,["89"] = 67,["90"] = 67,["91"] = 68,["92"] = 68,["93"] = 68,["94"] = 68,["95"] = 68,["96"] = 68,["97"] = 68,["98"] = 68,["99"] = 69,["100"] = 69,["101"] = 69,["102"] = 69,["103"] = 69,["104"] = 70,["105"] = 71,["107"] = 73,["108"] = 74,["109"] = 75,["110"] = 76,["111"] = 76,["113"] = 78,["114"] = 79,["115"] = 79,["116"] = 79,["117"] = 79,["118"] = 79,["119"] = 79,["120"] = 79,["121"] = 79,["122"] = 79,["123"] = 79,["124"] = 79,["125"] = 79,["126"] = 80,["128"] = 82,["130"] = 82,["131"] = 82,["132"] = 82,["135"] = 82,["136"] = 82,["137"] = 82,["139"] = 83,["140"] = 84,["141"] = 85,["143"] = 85,["144"] = 85,["145"] = 85,["148"] = 85,["149"] = 85,["150"] = 85,["152"] = 86,["153"] = 87,["154"] = 88,["156"] = 88,["157"] = 88,["158"] = 88,["161"] = 88,["162"] = 88,["163"] = 88,["167"] = 91,["168"] = 92,["169"] = 92,["170"] = 92,["171"] = 92,["172"] = 92,["173"] = 92,["174"] = 92,["176"] = 94,["177"] = 95,["180"] = 98,["181"] = 98,["182"] = 99,["183"] = 99,["184"] = 99,["185"] = 99,["186"] = 99,["187"] = 99,["188"] = 99,["189"] = 99,["190"] = 99,["191"] = 100,["192"] = 101,["193"] = 102,["195"] = 104,["198"] = 60,["199"] = 10,["200"] = 10,["201"] = 10,["202"] = 10,["203"] = 10,["204"] = 10,["205"] = 10});
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
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_24 = createAbility
local ____fight_23 = fight
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
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        if self["动画参数3"] == nil then
            self:play("attack1")
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
            self:play("ability_2", 2)
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
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:playSound(self.owner, 134240944)
        if self["特殊攻击"] then
            if self["动画参数4"] ~= nil then
                self:play(
                    self["动画参数4"].aniName,
                    self["动画参数4"].playSpeed,
                    self["动画参数4"].startTime,
                    self["动画参数4"].endTime,
                    self["动画参数4"].loop
                )
            end
            local offsetPoint = self:offsetPoint(
                self.owner:getPosition(),
                self.owner:getAngle(),
                300
            )
            self:addParticle(
                105470,
                offsetPoint,
                nil,
                1,
                1,
                10
            )
            local targets = self.owner:findByShape(
                offsetPoint,
                Shape:createCircularShape(400),
                {"敌人"}
            )
            if #targets == 0 then
                targets[#targets + 1] = cast:getTargetUnit()
            end
            local total = 0
            for ____, t in ipairs(targets) do
                if t:p(_____901A_7528_62A4_76FE) > 0 then
                    local ____self_1 = _____6570_503C["战狂"]["普通攻击"]
                    total = total + ____self_1["天赋12特殊攻击额外恢复"](____self_1, t)
                end
                t.tempData[AbilityTagData["是否为AOE"]] = true
                local ____t_5 = t
                local ____t_hurt_6 = t.hurt
                local ____self_skillEntity_3 = self.skillEntity
                local ____Formula__7269_7406_4F24_5BB3_4 = Formula["物理伤害"]
                local ____self_2 = _____6570_503C["战狂"]["普通攻击"]
                ____t_hurt_6(
                    ____t_5,
                    ____self_skillEntity_3,
                    ____Formula__7269_7406_4F24_5BB3_4,
                    ____self_2["特殊攻击伤害"](____self_2, self.owner),
                    AbilityType["普攻"]
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
            local ____self_10 = self.owner
            local ____self_10_cure_11 = ____self_10.cure
            local ____self_skillEntity_8 = self.skillEntity
            local ____Formula__56DE_8840_503C_9 = Formula["回血值"]
            local ____self_7 = _____6570_503C["战狂"]["普通攻击"]
            ____self_10_cure_11(
                ____self_10,
                ____self_skillEntity_8,
                ____Formula__56DE_8840_503C_9,
                ____self_7["特殊攻击恢复"](____self_7, self.owner)
            )
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                __TS__Await(self:awaitTime(0.1))
                local ____self_15 = self.owner
                local ____self_15_cure_16 = ____self_15.cure
                local ____self_skillEntity_13 = self.skillEntity
                local ____Formula__56DE_8840_503C_14 = Formula["回血值"]
                local ____self_12 = _____6570_503C["战狂"]["普通攻击"]
                ____self_15_cure_16(
                    ____self_15,
                    ____self_skillEntity_13,
                    ____Formula__56DE_8840_503C_14,
                    ____self_12["天赋11特殊攻击恢复"](____self_12, self.owner)
                )
            elseif self.owner:getValue(_____5929_8D4B_1) == 2 and total > 0 then
                __TS__Await(self:awaitTime(0.1))
                local ____self_20 = self.owner
                local ____self_20_cure_21 = ____self_20.cure
                local ____self_skillEntity_18 = self.skillEntity
                local ____Formula__56DE_8840_503C_19 = Formula["回血值"]
                local ____self_17 = _____6570_503C["战狂"]["普通攻击"]
                ____self_20_cure_21(
                    ____self_20,
                    ____self_skillEntity_18,
                    ____Formula__56DE_8840_503C_19,
                    ____self_17["天赋12总回血量"](____self_17, total, self.owner)
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
            if not target then
                return ____awaiter_resolve(nil)
            end
            local ____self_22 = _____6570_503C["战狂"]["普通攻击"]
            local v = ____self_22["伤害"](____self_22, self.owner)
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                103558
            )
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, self["脚底粒子ID"], scale)
        end
    end)
end
____exports.key = ____createAbility_24(
    nil,
    ____fight_23,
    134272849,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.65}
)
return ____exports
