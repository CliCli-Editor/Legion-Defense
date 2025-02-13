local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["32"] = 9,["33"] = 10,["34"] = 17,["35"] = 24,["36"] = 32,["37"] = 9,["38"] = 33,["39"] = 34,["41"] = 34,["42"] = 34,["44"] = 34,["45"] = 34,["47"] = 35,["48"] = 36,["49"] = 37,["51"] = 39,["52"] = 39,["53"] = 39,["54"] = 39,["55"] = 39,["56"] = 39,["57"] = 39,["60"] = 42,["61"] = 43,["63"] = 45,["64"] = 45,["65"] = 45,["66"] = 45,["67"] = 45,["68"] = 45,["69"] = 45,["72"] = 33,["73"] = 49,["74"] = 50,["75"] = 51,["78"] = 54,["79"] = 55,["80"] = 56,["81"] = 57,["82"] = 58,["83"] = 59,["85"] = 61,["86"] = 61,["87"] = 61,["88"] = 61,["90"] = 61,["91"] = 61,["93"] = 61,["94"] = 62,["95"] = 63,["96"] = 63,["97"] = 63,["98"] = 63,["99"] = 63,["100"] = 63,["101"] = 63,["102"] = 63,["103"] = 64,["104"] = 65,["105"] = 67,["106"] = 68,["107"] = 65,["108"] = 71,["109"] = 71,["110"] = 71,["111"] = 71,["112"] = 71,["113"] = 71,["114"] = 71,["115"] = 71,["116"] = 71,["117"] = 71,["119"] = 73,["120"] = 74,["121"] = 74,["122"] = 74,["123"] = 74,["124"] = 74,["125"] = 74,["126"] = 74,["128"] = 76,["129"] = 76,["130"] = 76,["131"] = 76,["132"] = 76,["133"] = 76,["134"] = 76,["135"] = 76,["136"] = 77,["137"] = 78,["138"] = 78,["139"] = 78,["140"] = 78,["141"] = 78,["142"] = 78,["143"] = 78,["144"] = 78,["145"] = 79,["146"] = 81,["147"] = 82,["148"] = 83,["151"] = 86,["152"] = 87,["153"] = 88,["154"] = 89,["155"] = 90,["156"] = 91,["158"] = 79,["159"] = 95,["161"] = 49,["162"] = 99,["163"] = 100,["164"] = 100,["165"] = 100,["166"] = 100,["167"] = 100,["168"] = 100,["169"] = 101,["170"] = 102,["171"] = 102,["172"] = 102,["173"] = 102,["174"] = 102,["175"] = 102,["176"] = 102,["177"] = 102,["178"] = 103,["179"] = 104,["180"] = 105,["181"] = 103,["182"] = 107,["183"] = 108,["186"] = 111,["187"] = 112,["188"] = 113,["189"] = 114,["190"] = 103,["191"] = 103,["192"] = 117,["193"] = 99,["194"] = 120,["196"] = 121,["197"] = 121,["198"] = 121,["199"] = 121,["200"] = 121,["201"] = 121,["202"] = 121,["203"] = 121,["205"] = 122,["207"] = 122,["208"] = 122,["209"] = 122,["212"] = 123,["213"] = 124,["214"] = 124,["215"] = 124,["216"] = 124,["217"] = 124,["218"] = 125,["219"] = 126,["220"] = 127,["221"] = 127,["222"] = 127,["223"] = 127,["224"] = 127,["225"] = 127,["226"] = 127,["227"] = 127,["228"] = 127,["229"] = 127,["230"] = 127,["231"] = 127,["232"] = 128,["234"] = 122,["238"] = 120,["239"] = 9,["240"] = 9,["241"] = 9,["242"] = 9,["243"] = 9,["244"] = 9,["245"] = 9});
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
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_21 = createAbility
local ____fight_20 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____self_2 = self.owner
    local ____self_2_random_3 = ____self_2.random
    local ____self_1 = _____6570_503C["游侠"]["普通攻击"]
    self["特殊攻击"] = ____self_2_random_3(
        ____self_2,
        "游侠特殊攻击",
        ____self_1["特殊攻击概率"](____self_1, self.owner)
    )
    if self["特殊攻击"] then
        if self["动画参数3"] == nil then
            self:play("ability_1", 1.6)
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
    if not target then
        return
    end
    local pos = {x = 0, y = 0}
    target:getPosition(pos)
    local angle = self:getDirection(self.owner, target)
    if self["特殊攻击"] then
        if self["动画参数3"] == nil then
            self:play("ability_1", 1.58, 0.4, -1)
        end
        local ____temp_6
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_4 = _____6570_503C["游侠"]["普通攻击"]
            ____temp_6 = ____self_4["天赋12特殊攻击影响范围"](____self_4)
        else
            local ____self_5 = _____6570_503C["游侠"]["普通攻击"]
            ____temp_6 = ____self_5["特殊攻击影响范围"](____self_5)
        end
        local radius = ____temp_6
        local distance = self:getDistance(self.owner, target) / 2
        local p = self:createProjectile(
            134223720,
            self.owner,
            0,
            0,
            nil,
            "weaponL"
        )
        p:prepare({face_angle = false})
        p:listener({onFinish = function()
            p:remove()
            self:spHurt(pos, radius)
        end})
        p:moverLine(
            angle,
            distance,
            3000,
            nil,
            nil,
            nil,
            nil,
            1000
        )
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
        local p = self:createProjectile(
            134230332,
            self.owner,
            angle,
            0,
            nil,
            "weaponL"
        )
        p:prepare({face_angle = true})
        local ____p_8 = p
        local ____p_setCustomData_9 = p.setCustomData
        local ____self_7 = _____6570_503C["游侠"]["普通攻击"]
        ____p_setCustomData_9(
            ____p_8,
            "dmg",
            ____self_7["伤害"](____self_7, self.owner)
        )
        p:listener({onFinish = function()
            local x = p:getCustomData("dmg")
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            local hurt = target:hurt(self.skillEntity, Formula["物理伤害"], x, AbilityType["普攻"])
            if self.owner:getValue(_____5929_8D4B_1) == 1 and hurt.critical then
                self:multiAtk(target, angle)
                self:multiAtk(target, angle + 120)
                self:multiAtk(target, angle + 240)
            end
        end})
        p:moverTarget(target, 4000, 0)
    end
end
function ____class_0.prototype.multiAtk(self, target, angle)
    local p = self:createProjectile(
        134230332,
        target:getPosition(),
        angle,
        150
    )
    p:prepare({face_angle = true, hit_radius = 100})
    local ____p_11 = p
    local ____p_setCustomData_12 = p.setCustomData
    local ____self_10 = _____6570_503C["游侠"]["普通攻击"]
    ____p_setCustomData_12(
        ____p_11,
        "dmg",
        ____self_10["天赋11暴击分裂箭伤害"](____self_10, self.owner)
    )
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(t)
            if not t or not t:isAlive() or t == target then
                return
            end
            local x = p:getCustomData("dmg")
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["物理伤害"], x, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    })
    p:moverLine(angle, 1000, 3000)
end
function ____class_0.prototype.spHurt(self, pos, radius)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:addParticle(
            134263025,
            pos,
            nil,
            radius / 200,
            1.5,
            10
        )
        do
            local i = 0
            while true do
                local ____i_19 = i
                local ____self_18 = _____6570_503C["游侠"]["普通攻击"]
                if not (____i_19 < ____self_18["特殊攻击伤害次数"](____self_18)) then
                    break
                end
                __TS__Await(self:awaitTime(0.5))
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(radius),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_16 = t
                    local ____t_hurt_17 = t.hurt
                    local ____self_skillEntity_14 = self.skillEntity
                    local ____Formula__7269_7406_4F24_5BB3_15 = Formula["物理伤害"]
                    local ____self_13 = _____6570_503C["游侠"]["普通攻击"]
                    ____t_hurt_17(
                        ____t_16,
                        ____self_skillEntity_14,
                        ____Formula__7269_7406_4F24_5BB3_15,
                        ____self_13["特殊攻击伤害"](____self_13, self.owner),
                        AbilityType["普攻"]
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_21(
    nil,
    ____fight_20,
    134221798,
    ____class_0,
    {["施法开始"] = 0.25, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.6}
)
return ____exports
