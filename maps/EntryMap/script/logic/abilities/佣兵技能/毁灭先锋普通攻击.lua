local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["31"] = 11,["32"] = 12,["33"] = 13,["34"] = 14,["35"] = 21,["36"] = 11,["37"] = 28,["38"] = 29,["39"] = 30,["40"] = 31,["41"] = 32,["42"] = 33,["44"] = 35,["45"] = 35,["46"] = 35,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["53"] = 38,["54"] = 39,["56"] = 41,["57"] = 41,["58"] = 41,["59"] = 41,["60"] = 41,["61"] = 41,["62"] = 41,["65"] = 28,["66"] = 45,["67"] = 46,["68"] = 47,["71"] = 50,["72"] = 51,["73"] = 52,["74"] = 52,["75"] = 52,["76"] = 52,["77"] = 52,["78"] = 52,["79"] = 52,["80"] = 52,["81"] = 53,["82"] = 54,["83"] = 56,["86"] = 59,["87"] = 60,["90"] = 63,["91"] = 64,["92"] = 65,["93"] = 65,["94"] = 65,["95"] = 65,["96"] = 65,["97"] = 65,["98"] = 65,["99"] = 65,["100"] = 66,["101"] = 66,["102"] = 66,["103"] = 66,["104"] = 66,["105"] = 67,["106"] = 68,["107"] = 69,["108"] = 69,["109"] = 69,["110"] = 69,["111"] = 69,["112"] = 69,["113"] = 69,["114"] = 69,["115"] = 69,["116"] = 69,["117"] = 69,["118"] = 69,["119"] = 70,["121"] = 54,["122"] = 74,["124"] = 76,["125"] = 76,["126"] = 77,["127"] = 77,["128"] = 77,["129"] = 77,["130"] = 77,["131"] = 77,["132"] = 77,["133"] = 77,["134"] = 78,["135"] = 79,["136"] = 81,["137"] = 82,["140"] = 85,["141"] = 86,["142"] = 79,["143"] = 89,["145"] = 45,["146"] = 11,["147"] = 11,["148"] = 11,["149"] = 11,["150"] = 11,["151"] = 11,["152"] = 11});
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
    self.count = 0
    self["特殊攻击"] = false
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.count = self.count + 1
    self["特殊攻击"] = self.count % 5 == 0
    if self["特殊攻击"] then
        if self["动画参数2"] == nil then
            self:play("sk10", 3)
        else
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
    else
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
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    if self["特殊攻击"] then
        local p = self:createProjectile(
            134218973,
            self.owner,
            angle,
            0,
            nil,
            "attack1"
        )
        p:prepare({face_angle = true})
        p:listener({onFinish = function()
            if not target or not target:isAlive() then
                return
            end
            local pos = p:getPosition()
            if pos == nil then
                return
            end
            p:remove()
            self:playSound(self.owner, 134240944)
            self:addParticle(
                134240733,
                pos,
                nil,
                1.125,
                1,
                10
            )
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(450),
                {"敌人"}
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                local ____t_4 = t
                local ____t_hurt_5 = t.hurt
                local ____ability_skillEntity_2 = ability.skillEntity
                local ____Formula__7269_7406_4F24_5BB3_3 = Formula["物理伤害"]
                local ____self_1 = _____6570_503C["佣兵技能"]["毁灭先锋普通攻击"]
                ____t_hurt_5(
                    ____t_4,
                    ____ability_skillEntity_2,
                    ____Formula__7269_7406_4F24_5BB3_3,
                    ____self_1["特殊攻击伤害"](____self_1, self.owner, t),
                    AbilityType["普攻"]
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        end})
        p:moverTarget(target, 2000, 10)
    else
        local ____self_6 = _____6570_503C["佣兵技能"]["毁灭先锋普通攻击"]
        local v = ____self_6["伤害"](____self_6, self.owner)
        local p = self:createProjectile(
            134233243,
            self.owner,
            angle,
            0,
            nil,
            "attack1"
        )
        p:prepare({face_angle = true})
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
        end})
        p:moverTarget(target, 2000, 10)
    end
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134247858,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0.5}
)
return ____exports
