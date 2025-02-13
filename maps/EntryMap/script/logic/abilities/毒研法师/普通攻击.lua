local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 5,["13"] = 5,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["28"] = 11,["29"] = 12,["30"] = 19,["31"] = 26,["32"] = 33,["33"] = 41,["34"] = 11,["35"] = 43,["36"] = 44,["37"] = 44,["38"] = 45,["39"] = 46,["40"] = 47,["41"] = 48,["43"] = 50,["44"] = 50,["45"] = 50,["46"] = 50,["47"] = 50,["48"] = 50,["49"] = 50,["52"] = 53,["53"] = 54,["55"] = 56,["56"] = 56,["57"] = 56,["58"] = 56,["59"] = 56,["60"] = 56,["61"] = 56,["64"] = 43,["65"] = 60,["66"] = 61,["67"] = 61,["68"] = 61,["69"] = 61,["71"] = 61,["72"] = 61,["74"] = 61,["75"] = 62,["76"] = 63,["77"] = 64,["78"] = 64,["79"] = 64,["80"] = 64,["81"] = 64,["82"] = 64,["83"] = 64,["85"] = 66,["86"] = 66,["87"] = 66,["88"] = 66,["90"] = 66,["91"] = 66,["93"] = 66,["94"] = 67,["95"] = 67,["96"] = 67,["97"] = 67,["98"] = 67,["99"] = 67,["100"] = 67,["101"] = 68,["102"] = 69,["103"] = 70,["104"] = 71,["105"] = 72,["106"] = 73,["107"] = 73,["108"] = 74,["109"] = 75,["110"] = 75,["112"] = 77,["113"] = 78,["116"] = 81,["117"] = 82,["118"] = 82,["119"] = 82,["120"] = 82,["121"] = 82,["122"] = 82,["123"] = 82,["125"] = 84,["126"] = 85,["127"] = 86,["128"] = 86,["129"] = 86,["130"] = 86,["131"] = 86,["132"] = 86,["134"] = 88,["137"] = 91,["138"] = 91,["139"] = 91,["140"] = 91,["141"] = 91,["142"] = 91,["143"] = 92,["144"] = 93,["145"] = 95,["146"] = 96,["149"] = 99,["150"] = 99,["151"] = 99,["152"] = 99,["153"] = 99,["154"] = 99,["155"] = 99,["156"] = 99,["157"] = 99,["158"] = 100,["159"] = 93,["160"] = 103,["162"] = 60,["163"] = 11,["164"] = 11,["165"] = 11,["166"] = 11,["167"] = 11,["168"] = 11,["169"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
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
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["毒研法师"]["普通攻击"]
    local p = ____self_1["毒液压制概率"](____self_1, self.owner)
    self["特殊攻击"] = self.owner:random("毒研术士特殊攻击", p)
    if self["特殊攻击"] then
        if self["动画参数3"] == nil then
            self:play("ability_2")
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
    local ____table__7279_6B8A_653B_51FB_4
    if self["特殊攻击"] then
        local ____self_2 = _____6570_503C["毒研法师"]["普通攻击"]
        ____table__7279_6B8A_653B_51FB_4 = ____self_2["毒液压制伤害"](____self_2, self.owner)
    else
        local ____self_3 = _____6570_503C["毒研法师"]["普通攻击"]
        ____table__7279_6B8A_653B_51FB_4 = ____self_3["伤害"](____self_3, self.owner)
    end
    local v = ____table__7279_6B8A_653B_51FB_4
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
        local ____temp_7
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_5 = _____6570_503C["毒研法师"]["普通攻击"]
            ____temp_7 = ____self_5["天赋12毒液压制目标数量"](____self_5)
        else
            local ____self_6 = _____6570_503C["毒研法师"]["普通攻击"]
            ____temp_7 = ____self_6["毒液压制目标数量"](____self_6)
        end
        local maxCount = ____temp_7
        local targets = self.owner:findTargets(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            maxCount,
            0,
            1000
        )
        for ____, t in ipairs(targets) do
            self:addBeamLink(134221268, 0.5, self.owner, t)
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            local ____self_8 = _____6570_503C["毒研法师"]["普通攻击"]
            local quantity = ____self_8["毒液压制中毒层数"](____self_8, self.owner, t)
            if self.owner:v(_____5929_8D4B_1) == 1 then
                local ____self_9 = _____6570_503C["毒研法师"]["普通攻击"]
                quantity = quantity + ____self_9["天赋11毒液压制额外中毒层数"](____self_9, self.owner, t)
            end
            quantity = quantity * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
            t:addEffect(self.skillEntity, 1, quantity)
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
        if not target or not target:isAlive() then
            target = self.owner:findTarget(
                {"敌人"},
                function(____, a) return a:isAlive() end,
                1,
                1000
            )
        end
        if not target or not target:isAlive() then
            return
        end
        local p = self:createProjectile(
            134283082,
            self.owner,
            self.owner:getAngle(),
            150
        )
        p:prepare({face_angle = true})
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            target:hurt(
                self.skillEntity,
                Formula["法术伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                103253
            )
            self:playSound(self.owner, 201365691)
        end})
        p:moverTarget(target, 2000, 0)
    end
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134271443,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
