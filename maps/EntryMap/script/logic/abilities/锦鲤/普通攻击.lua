local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["30"] = 11,["31"] = 12,["32"] = 19,["33"] = 26,["34"] = 33,["35"] = 41,["36"] = 42,["37"] = 11,["38"] = 44,["39"] = 45,["40"] = 45,["41"] = 45,["42"] = 45,["44"] = 45,["45"] = 45,["47"] = 45,["48"] = 46,["49"] = 47,["50"] = 48,["51"] = 49,["52"] = 50,["53"] = 50,["54"] = 50,["55"] = 50,["57"] = 52,["58"] = 52,["59"] = 52,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 52,["66"] = 55,["67"] = 56,["69"] = 58,["70"] = 58,["71"] = 58,["72"] = 58,["73"] = 58,["74"] = 58,["75"] = 58,["78"] = 44,["79"] = 63,["80"] = 64,["81"] = 65,["82"] = 66,["85"] = 69,["86"] = 70,["87"] = 71,["88"] = 71,["89"] = 71,["90"] = 71,["91"] = 71,["92"] = 71,["94"] = 73,["95"] = 73,["96"] = 73,["97"] = 73,["98"] = 73,["99"] = 73,["100"] = 73,["102"] = 76,["103"] = 76,["104"] = 76,["105"] = 76,["107"] = 76,["108"] = 76,["110"] = 76,["111"] = 77,["112"] = 78,["113"] = 79,["114"] = 80,["116"] = 82,["117"] = 83,["118"] = 84,["119"] = 85,["120"] = 86,["121"] = 87,["122"] = 88,["123"] = 89,["124"] = 90,["126"] = 92,["128"] = 86,["129"] = 95,["130"] = 96,["133"] = 99,["134"] = 100,["135"] = 101,["136"] = 101,["137"] = 101,["138"] = 101,["139"] = 101,["140"] = 101,["141"] = 101,["142"] = 101,["143"] = 101,["144"] = 102,["145"] = 86,["146"] = 86,["147"] = 105,["149"] = 107,["150"] = 108,["151"] = 108,["152"] = 108,["153"] = 108,["154"] = 108,["155"] = 108,["156"] = 108,["158"] = 110,["159"] = 110,["160"] = 111,["161"] = 111,["162"] = 111,["163"] = 111,["164"] = 111,["165"] = 111,["166"] = 111,["167"] = 111,["168"] = 111,["169"] = 112,["170"] = 113,["171"] = 114,["173"] = 116,["174"] = 117,["176"] = 63,["177"] = 11,["178"] = 11,["179"] = 11,["180"] = 11,["181"] = 11,["182"] = 11,["183"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
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
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["特殊攻击"] = false
    self.index = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_1 = _____6570_503C["锦鲤"]["普通攻击"]
        ____temp_3 = ____self_1["天赋12回旋刃概率"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["锦鲤"]["普通攻击"]
        ____temp_3 = ____self_2["回旋刃概率"](____self_2, self.owner)
    end
    local p = ____temp_3
    self["特殊攻击"] = self.owner:random("锦鲤特殊攻击概率", p)
    if self["特殊攻击"] then
        self.index = self.index + 1
        if self["动画参数3"] == nil then
            self:play(
                "attack" .. tostring(self.index % 2 + 2),
                0.71
            )
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        self:endSkill(self)
        return
    end
    if self["特殊攻击"] then
        if self["动画参数4"] == nil then
            self:play(
                "attack" .. tostring(self.index % 2 + 2),
                1,
                0.25,
                -1
            )
        else
            self:play(
                self["动画参数4"].aniName,
                self["动画参数4"].playSpeed,
                self["动画参数4"].startTime,
                self["动画参数4"].endTime,
                self["动画参数4"].loop
            )
        end
        local ____temp_6
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_4 = _____6570_503C["锦鲤"]["普通攻击"]
            ____temp_6 = ____self_4["天赋11回旋刃伤害"](____self_4, self.owner)
        else
            local ____self_5 = _____6570_503C["锦鲤"]["普通攻击"]
            ____temp_6 = ____self_5["回旋刃伤害"](____self_5, self.owner)
        end
        local v = ____temp_6
        local angle = self:getDirection(self.owner, target)
        local pId = 134265045
        if self.owner.roleId == 134223911 then
            pId = 134252371
        end
        local p = self:createProjectile(134265045, self.owner, angle, 150)
        p:prepare({face_angle = true, hit_radius = 100})
        p:setCustomData("fromOwner", 1)
        p:setCustomData("dmg", v)
        p:listener({
            onFinish = function()
                if p:getCustomData("fromOwner") > 0 then
                    p:setCustomData("fromOwner", 0)
                    p:moverTarget(self.owner, 3000, 0)
                else
                    p:remove()
                end
            end,
            onHit = function(t)
                if not t or not t:isAlive() then
                    return
                end
                local v = p:getCustomData("dmg")
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134238024
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        })
        p:moverLine(angle, 1000, 3000)
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
        local ____self_7 = _____6570_503C["锦鲤"]["普通攻击"]
        local v = ____self_7["伤害"](____self_7, self.owner)
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
        self:playSound(self.owner, 201346518)
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134253133,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
