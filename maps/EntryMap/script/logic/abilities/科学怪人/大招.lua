local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["29"] = 8,["30"] = 9,["31"] = 16,["32"] = 8,["33"] = 24,["34"] = 25,["35"] = 26,["37"] = 28,["38"] = 28,["39"] = 28,["40"] = 28,["41"] = 28,["42"] = 28,["43"] = 28,["45"] = 24,["46"] = 31,["47"] = 32,["48"] = 33,["50"] = 35,["51"] = 35,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["56"] = 35,["58"] = 38,["59"] = 38,["60"] = 39,["62"] = 39,["64"] = 40,["65"] = 42,["66"] = 42,["67"] = 43,["68"] = 43,["69"] = 43,["70"] = 43,["72"] = 43,["74"] = 43,["75"] = 44,["76"] = 45,["77"] = 45,["78"] = 46,["79"] = 46,["80"] = 46,["81"] = 46,["82"] = 46,["83"] = 46,["84"] = 47,["85"] = 48,["86"] = 49,["87"] = 50,["88"] = 51,["89"] = 52,["90"] = 50,["91"] = 54,["92"] = 55,["95"] = 58,["96"] = 59,["97"] = 60,["98"] = 61,["99"] = 62,["100"] = 63,["102"] = 63,["103"] = 63,["104"] = 63,["107"] = 63,["108"] = 63,["109"] = 63,["112"] = 50,["113"] = 50,["114"] = 67,["115"] = 31,["116"] = 8,["117"] = 8,["118"] = 8,["119"] = 8,["120"] = 8,["121"] = 8,["122"] = 8});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____8840 = ____Property["血"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_14 = createAbility
local ____fight_13 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_5")
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数2"] == nil then
        self:play("ability_5", 4, 1, -1)
    else
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local ____self_1 = _____6570_503C["科学怪人"]["大招"]
    local costHp = ____self_1["消耗血量"](____self_1, self.owner)
    local ____opt_2 = self.owner.y3Unit
    if ____opt_2 ~= nil then
        ____opt_2:set_hp(self.owner:v(_____8840) - costHp)
    end
    local angle = self.owner:getAngle()
    local ____self_4 = _____6570_503C["科学怪人"]["大招"]
    local radius = ____self_4["投射物半径"](____self_4)
    local ____temp_6
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_5 = _____6570_503C["科学怪人"]["大招"]
        ____temp_6 = ____self_5["天赋31投射物缩放"](____self_5, self.owner)
    else
        ____temp_6 = 1.5
    end
    local scale = ____temp_6
    radius = radius * scale / 1.5
    local ____self_7 = _____6570_503C["科学怪人"]["大招"]
    local v = ____self_7["伤害"](____self_7, costHp)
    local p = self:createProjectile(
        134265403,
        self.owner:getPosition(),
        angle,
        150
    )
    p:prepare({face_angle = true, hit_radius = radius})
    p:setScale(scale)
    p:setCustomData("dmg", v)
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(t)
            if not t or not t:isAlive() then
                return
            end
            local vx = p:getCustomData("dmg")
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["法术伤害"], vx, AbilityType["大招"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            if self.owner:getValue(_____5929_8D4B_3) == 2 and self.owner:isAlive() then
                local ____self_11 = self.owner
                local ____self_11_cure_12 = ____self_11.cure
                local ____self_skillEntity_9 = self.skillEntity
                local ____Formula__56DE_8840_503C_10 = Formula["回血值"]
                local ____self_8 = _____6570_503C["科学怪人"]["大招"]
                ____self_11_cure_12(
                    ____self_11,
                    ____self_skillEntity_9,
                    ____Formula__56DE_8840_503C_10,
                    ____self_8["天赋32恢复生命值"](____self_8, self.owner)
                )
            end
        end
    })
    p:moverLine(angle, 1500, 1000)
end
____exports.key = ____createAbility_14(
    nil,
    ____fight_13,
    134281543,
    ____class_0,
    {["施法开始"] = 1, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0}
)
return ____exports
