local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["34"] = 11,["35"] = 12,["36"] = 19,["37"] = 27,["38"] = 11,["39"] = 28,["40"] = 29,["42"] = 29,["43"] = 29,["45"] = 29,["48"] = 30,["49"] = 31,["51"] = 33,["52"] = 33,["53"] = 33,["54"] = 33,["55"] = 33,["56"] = 33,["57"] = 33,["59"] = 28,["60"] = 36,["61"] = 37,["62"] = 38,["63"] = 38,["64"] = 38,["65"] = 38,["66"] = 38,["67"] = 38,["68"] = 38,["70"] = 40,["71"] = 40,["72"] = 40,["73"] = 40,["75"] = 40,["76"] = 40,["78"] = 40,["79"] = 41,["80"] = 41,["81"] = 41,["82"] = 41,["84"] = 41,["85"] = 41,["87"] = 41,["88"] = 42,["89"] = 43,["92"] = 46,["93"] = 47,["94"] = 48,["95"] = 49,["96"] = 51,["97"] = 52,["100"] = 55,["101"] = 56,["102"] = 57,["103"] = 58,["104"] = 58,["105"] = 58,["106"] = 58,["107"] = 58,["108"] = 58,["109"] = 58,["110"] = 58,["111"] = 59,["112"] = 59,["113"] = 59,["114"] = 59,["115"] = 59,["116"] = 59,["117"] = 59,["118"] = 59,["119"] = 59,["120"] = 59,["121"] = 60,["122"] = 60,["123"] = 60,["124"] = 60,["125"] = 60,["126"] = 60,["127"] = 60,["128"] = 60,["129"] = 60,["130"] = 61,["131"] = 62,["132"] = 62,["133"] = 62,["134"] = 62,["135"] = 62,["136"] = 62,["137"] = 62,["138"] = 62,["139"] = 62,["142"] = 49,["143"] = 67,["144"] = 36,["145"] = 11,["146"] = 11,["147"] = 11,["148"] = 11,["149"] = 11,["150"] = 11,["151"] = 11});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
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
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____self_2 = self.owner
    local ____self_2_random_3 = ____self_2.random
    local ____self_1 = _____6570_503C["风伯"]["普通攻击"]
    self["特殊攻击"] = ____self_2_random_3(
        ____self_2,
        "风伯特殊普攻",
        ____self_1["特殊攻击概率"](____self_1)
    )
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
    local ____temp_6
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_4 = _____6570_503C["风伯"]["普通攻击"]
        ____temp_6 = ____self_4["天赋11普攻伤害"](____self_4, self.owner)
    else
        local ____self_5 = _____6570_503C["风伯"]["普通攻击"]
        ____temp_6 = ____self_5["伤害"](____self_5, self.owner)
    end
    local v = ____temp_6
    local ____temp_9
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_7 = _____6570_503C["风伯"]["普通攻击"]
        ____temp_9 = ____self_7["天赋11特殊攻击伤害"](____self_7, self.owner)
    else
        local ____self_8 = _____6570_503C["风伯"]["普通攻击"]
        ____temp_9 = ____self_8["特殊攻击伤害"](____self_8, self.owner)
    end
    local vx = ____temp_9
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134249581, self.owner, angle, 150)
    p:prepare({face_angle = true})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        if self["特殊攻击"] then
            self:addParticle(
                100608,
                target:getPosition(),
                nil,
                1,
                1,
                10
            )
            target:move(
                {_____9738_4F53},
                _____88AB_51FB_9000,
                0,
                10,
                10,
                0,
                false,
                400
            )
            target:addTimeLimitProperties(
                self.skillEntity,
                buffId,
                1,
                {},
                {_____7729_6655},
                {-1, 20},
                1
            )
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____target_12 = target
                local ____target_addEffect_13 = target.addEffect
                local ____self_skillEntity_11 = self.skillEntity
                local ____self_10 = _____6570_503C["风伯"]["普通攻击"]
                ____target_addEffect_13(
                    ____target_12,
                    ____self_skillEntity_11,
                    ____self_10["天赋12附加buff"](____self_10)
                )
            end
        end
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134238597,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.9}
)
return ____exports
