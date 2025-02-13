local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 6,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 9,["32"] = 9,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["40"] = 12,["41"] = 13,["42"] = 20,["43"] = 27,["44"] = 34,["45"] = 42,["46"] = 43,["47"] = 44,["48"] = 12,["49"] = 45,["50"] = 46,["51"] = 47,["52"] = 48,["53"] = 49,["54"] = 50,["56"] = 52,["57"] = 52,["58"] = 52,["59"] = 52,["60"] = 52,["61"] = 52,["62"] = 52,["65"] = 55,["66"] = 56,["67"] = 57,["68"] = 58,["69"] = 59,["71"] = 61,["74"] = 64,["75"] = 64,["76"] = 64,["77"] = 64,["78"] = 64,["79"] = 64,["80"] = 64,["83"] = 45,["84"] = 68,["86"] = 69,["87"] = 70,["90"] = 73,["91"] = 74,["92"] = 75,["93"] = 76,["94"] = 76,["95"] = 76,["96"] = 76,["97"] = 76,["98"] = 76,["99"] = 76,["101"] = 78,["103"] = 78,["104"] = 78,["105"] = 78,["106"] = 78,["107"] = 78,["108"] = 78,["110"] = 78,["111"] = 78,["113"] = 78,["114"] = 78,["116"] = 79,["117"] = 80,["119"] = 82,["120"] = 83,["121"] = 83,["122"] = 84,["123"] = 84,["124"] = 84,["125"] = 84,["126"] = 84,["127"] = 84,["128"] = 84,["129"] = 84,["130"] = 85,["131"] = 85,["132"] = 85,["133"] = 85,["134"] = 85,["135"] = 85,["136"] = 85,["137"] = 85,["138"] = 85,["139"] = 85,["140"] = 86,["141"] = 86,["142"] = 86,["143"] = 86,["144"] = 86,["145"] = 86,["146"] = 86,["147"] = 86,["148"] = 86,["149"] = 87,["150"] = 88,["151"] = 89,["152"] = 90,["153"] = 90,["154"] = 90,["155"] = 90,["156"] = 90,["157"] = 90,["160"] = 94,["161"] = 95,["162"] = 95,["163"] = 95,["164"] = 95,["165"] = 95,["166"] = 95,["167"] = 95,["169"] = 97,["170"] = 97,["171"] = 97,["172"] = 97,["174"] = 97,["175"] = 97,["177"] = 97,["178"] = 98,["179"] = 98,["180"] = 98,["181"] = 98,["182"] = 98,["183"] = 98,["184"] = 98,["185"] = 98,["186"] = 98,["187"] = 99,["188"] = 100,["189"] = 101,["191"] = 103,["194"] = 68,["195"] = 12,["196"] = 12,["197"] = 12,["198"] = 12,["199"] = 12,["200"] = 12,["201"] = 12});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_13 = createAbility
local ____fight_12 = fight
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
    self.count = 0
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self.owner:setValue(_____7279_6280_1, 0)
        self["特殊攻击"] = true
        if self["动画参数3"] == nil then
            self:play("attackslam")
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
        self["特殊攻击"] = false
        if self["动画参数"] == nil then
            self.count = self.count + 1
            if self.count % 2 == 0 then
                self:play("attack2")
            else
                self:play("attack1")
            end
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
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
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
            local ____self_4 = self.owner
            local ____self_4_findTargets_5 = ____self_4.findTargets
            local ____temp_2 = {"敌人"}
            local function ____temp_3(____, a)
                return a:isAlive()
            end
            local ____self_1 = _____6570_503C["黄金甲"]["普通攻击"]
            local targets = ____self_4_findTargets_5(
                ____self_4,
                ____temp_2,
                ____temp_3,
                ____self_1["特殊攻击目标数量"](____self_1),
                1,
                2000
            )
            if #targets == 0 then
                targets[#targets + 1] = target
            end
            for ____, t in ipairs(targets) do
                local ____self_6 = _____6570_503C["黄金甲"]["普通攻击"]
                local v = ____self_6["特殊攻击伤害"](____self_6, self.owner)
                self:addParticle(
                    134262471,
                    t:getPosition(),
                    nil,
                    1,
                    1,
                    10
                )
                t:move(
                    {_____9738_4F53},
                    _____88AB_51FB_9000,
                    0,
                    10,
                    10,
                    0,
                    false,
                    400
                )
                t:addTimeLimitProperties(
                    self.skillEntity,
                    buffId,
                    1,
                    {},
                    {_____7729_6655},
                    {-1, 20},
                    1
                )
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
                local ____self_awaitTime_8 = self.awaitTime
                local ____self_7 = _____6570_503C["黄金甲"]["普通攻击"]
                __TS__Await(____self_awaitTime_8(
                    self,
                    ____self_7["特殊攻击击飞延迟"](____self_7)
                ))
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
            local ____temp_11
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____self_9 = _____6570_503C["黄金甲"]["普通攻击"]
                ____temp_11 = ____self_9["天赋11伤害"](____self_9, self.owner)
            else
                local ____self_10 = _____6570_503C["黄金甲"]["普通攻击"]
                ____temp_11 = ____self_10["伤害"](____self_10, self.owner)
            end
            local v = ____temp_11
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                134230400
            )
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, self["脚底粒子ID"], scale)
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134279508,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.7}
)
return ____exports
