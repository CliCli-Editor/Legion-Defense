local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["28"] = 8,["29"] = 9,["30"] = 10,["31"] = 11,["32"] = 18,["33"] = 25,["34"] = 32,["35"] = 8,["36"] = 39,["37"] = 40,["38"] = 41,["39"] = 42,["40"] = 43,["41"] = 44,["43"] = 46,["44"] = 46,["45"] = 46,["46"] = 46,["47"] = 46,["48"] = 46,["49"] = 46,["52"] = 49,["53"] = 50,["55"] = 52,["56"] = 52,["57"] = 52,["58"] = 52,["59"] = 52,["60"] = 52,["61"] = 52,["64"] = 39,["65"] = 56,["66"] = 57,["67"] = 58,["70"] = 61,["71"] = 62,["72"] = 63,["73"] = 64,["75"] = 66,["76"] = 66,["77"] = 66,["78"] = 66,["79"] = 66,["80"] = 66,["81"] = 66,["83"] = 68,["84"] = 68,["85"] = 69,["86"] = 69,["87"] = 69,["88"] = 69,["89"] = 69,["90"] = 70,["91"] = 70,["92"] = 70,["93"] = 70,["94"] = 70,["95"] = 70,["96"] = 70,["97"] = 70,["98"] = 71,["99"] = 71,["100"] = 71,["101"] = 71,["102"] = 71,["103"] = 72,["104"] = 73,["105"] = 74,["106"] = 75,["107"] = 76,["109"] = 76,["110"] = 76,["113"] = 76,["118"] = 79,["119"] = 80,["120"] = 80,["121"] = 80,["122"] = 80,["123"] = 80,["124"] = 80,["125"] = 80,["127"] = 82,["128"] = 82,["129"] = 83,["130"] = 83,["131"] = 83,["132"] = 83,["133"] = 83,["134"] = 83,["135"] = 83,["136"] = 83,["137"] = 84,["138"] = 85,["139"] = 87,["140"] = 88,["143"] = 91,["144"] = 92,["145"] = 93,["146"] = 94,["147"] = 94,["148"] = 94,["149"] = 94,["150"] = 94,["151"] = 94,["152"] = 94,["153"] = 94,["154"] = 94,["156"] = 85,["157"] = 98,["159"] = 56,["160"] = 8,["161"] = 8,["162"] = 8,["163"] = 8,["164"] = 8,["165"] = 8,["166"] = 8});
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
    self.count = 0
    self["特殊攻击"] = false
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.count = self.count + 1
    self["特殊攻击"] = self.count % 9 == 0
    if self["特殊攻击"] then
        if self["动画参数3"] == nil then
            self:play("attack3", 2)
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
        if self["动画参数4"] == nil then
            self:play("attack3", 1, 0.4, -1)
        else
            self:play(
                self["动画参数4"].aniName,
                self["动画参数4"].playSpeed,
                self["动画参数4"].startTime,
                self["动画参数4"].endTime,
                self["动画参数4"].loop
            )
        end
        local ____self_1 = _____6570_503C["佣兵技能"]["卢金易普通攻击"]
        local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            750
        )
        self:addParticle(
            134237868,
            offsetPoint,
            angle,
            2,
            1,
            150
        )
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(150, 1500, angle),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local ____self_4 = self.owner
            local ____self_4_addEffect_5 = ____self_4.addEffect
            local ____self_skillEntity_3 = self.skillEntity
            local ____self_2 = _____6570_503C["佣兵技能"]["卢金易普通攻击"]
            ____self_4_addEffect_5(
                ____self_4,
                ____self_skillEntity_3,
                ____self_2["特殊攻击附加buffId"](____self_2)
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
        local ____self_6 = _____6570_503C["佣兵技能"]["卢金易普通攻击"]
        local v = ____self_6["伤害"](____self_6, self.owner)
        local p = self:createProjectile(
            134275151,
            self.owner,
            angle,
            0,
            nil,
            "atk_01"
        )
        p:prepare({face_angle = true})
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            local hurt = target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            if hurt.critical then
                local ____target_9 = target
                local ____target_addEffect_10 = target.addEffect
                local ____self_skillEntity_8 = self.skillEntity
                local ____self_7 = _____6570_503C["佣兵技能"]["卢金易普通攻击"]
                ____target_addEffect_10(
                    ____target_9,
                    ____self_skillEntity_8,
                    ____self_7["暴击附加buffId"](____self_7)
                )
            end
        end})
        p:moverTarget(target, 2000, 10)
    end
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134235167,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.4}
)
return ____exports
