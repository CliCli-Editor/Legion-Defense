local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["28"] = 9,["29"] = 10,["30"] = 17,["31"] = 9,["32"] = 25,["33"] = 26,["34"] = 27,["36"] = 29,["37"] = 29,["38"] = 29,["39"] = 29,["40"] = 29,["41"] = 29,["42"] = 29,["44"] = 25,["45"] = 32,["46"] = 33,["47"] = 34,["48"] = 34,["49"] = 34,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["55"] = 36,["56"] = 37,["59"] = 40,["60"] = 40,["61"] = 41,["62"] = 42,["63"] = 43,["64"] = 44,["65"] = 45,["66"] = 47,["67"] = 48,["68"] = 49,["71"] = 52,["72"] = 53,["73"] = 54,["74"] = 55,["75"] = 56,["77"] = 56,["78"] = 56,["79"] = 56,["82"] = 56,["83"] = 56,["84"] = 56,["86"] = 57,["87"] = 58,["88"] = 58,["89"] = 58,["90"] = 58,["91"] = 58,["92"] = 58,["93"] = 58,["94"] = 58,["95"] = 58,["98"] = 58,["99"] = 58,["100"] = 58,["101"] = 58,["104"] = 61,["106"] = 61,["108"] = 61,["109"] = 61,["111"] = 61,["114"] = 61,["118"] = 61,["119"] = 62,["120"] = 62,["121"] = 63,["123"] = 45,["124"] = 67,["125"] = 32,["126"] = 70,["127"] = 71,["128"] = 72,["131"] = 76,["132"] = 76,["133"] = 76,["134"] = 76,["135"] = 76,["136"] = 77,["137"] = 78,["138"] = 79,["139"] = 80,["140"] = 80,["141"] = 80,["142"] = 80,["143"] = 80,["144"] = 80,["145"] = 80,["146"] = 80,["147"] = 80,["148"] = 80,["149"] = 80,["150"] = 81,["151"] = 82,["152"] = 82,["153"] = 83,["154"] = 70,["155"] = 9,["156"] = 9,["157"] = 9,["158"] = 9,["159"] = 9,["160"] = 9,["161"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_19 = createAbility
local ____fight_18 = fight
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
        self:play("ability_2")
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
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_1 = _____6570_503C["灵魄"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134254234, self.owner, angle, 150)
    p:prepare({face_angle = true})
    p:setCustomData("dmg", v)
    p:listener({onFinish = function()
        local x = p:getCustomData("dmg")
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local hurt = target:hurt(self.skillEntity, Formula["法术伤害"], x, AbilityType["普攻"])
        if hurt.critical then
            self:createP()
            local ____self_5 = self.owner
            local ____self_5_cure_6 = ____self_5.cure
            local ____self_skillEntity_3 = self.skillEntity
            local ____Formula__56DE_8840_503C_4 = Formula["回血值"]
            local ____self_2 = _____6570_503C["灵魄"]["普通攻击"]
            ____self_5_cure_6(
                ____self_5,
                ____self_skillEntity_3,
                ____Formula__56DE_8840_503C_4,
                ____self_2["恢复"](____self_2, self.owner)
            )
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____target_10 = target
                local ____target_hurt_11 = target.hurt
                local ____self_skillEntity_8 = self.skillEntity
                local ____Formula__56FA_5B9A_4F24_5BB3_9 = Formula["固定伤害"]
                local ____self_7 = _____6570_503C["灵魄"]["普通攻击"]
                ____target_hurt_11(
                    ____target_10,
                    ____self_skillEntity_8,
                    ____Formula__56FA_5B9A_4F24_5BB3_9,
                    ____self_7["天赋12法爆时额外固伤"](
                        ____self_7,
                        self.owner:getValue(_____7279_6280_2)
                    ),
                    AbilityType["普攻"]
                )
            end
        end
        local ____temp_15 = self.owner:getValue(_____5929_8D4B_1) == 1
        if ____temp_15 then
            local ____self_13 = self.owner
            local ____self_13_random_14 = ____self_13.random
            local ____self_12 = _____6570_503C["灵魄"]["普通攻击"]
            ____temp_15 = ____self_13_random_14(
                ____self_13,
                "灵魄普攻天赋11中毒",
                ____self_12["天赋11附加中毒概率"](
                    ____self_12,
                    self.owner:getValue(_____7279_6280_2)
                )
            )
        end
        if ____temp_15 then
            local ____self_16 = _____6570_503C["灵魄"]["普通攻击"]
            local quantity = ____self_16["天赋11附加中毒层数"](____self_16) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
            target:addEffect(self.skillEntity, 1, quantity)
        end
    end})
    p:moverTarget(target, 2500, 0)
end
function ____class_0.prototype.createP(self)
    local count = self.owner:getValue(_____7279_6280_2)
    if count > 10 then
        return
    end
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        math.random(0, 360),
        80
    )
    local p = self:createProjectile(134247090, offsetPoint, 0, 150)
    p:prepare({face_angle = true})
    p:setCustomData("isToTarget", 0)
    p:moverRound(
        self.owner,
        300,
        137,
        nil,
        count % 2 == 0,
        nil,
        nil,
        1,
        300
    )
    local unitDataType = self.owner.customData
    local ____unitDataType_projectileList_17 = unitDataType.projectileList
    ____unitDataType_projectileList_17[#____unitDataType_projectileList_17 + 1] = p
    self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
end
____exports.key = ____createAbility_19(
    nil,
    ____fight_18,
    134264126,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.65}
)
return ____exports
