local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 9,["31"] = 9,["32"] = 11,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["40"] = 13,["41"] = 15,["42"] = 16,["43"] = 17,["44"] = 13,["45"] = 19,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 21,["51"] = 22,["52"] = 23,["54"] = 25,["56"] = 19,["57"] = 28,["59"] = 29,["60"] = 30,["61"] = 30,["62"] = 31,["63"] = 32,["64"] = 32,["65"] = 33,["66"] = 34,["67"] = 34,["68"] = 34,["70"] = 36,["71"] = 37,["72"] = 37,["73"] = 37,["74"] = 37,["75"] = 37,["76"] = 37,["77"] = 37,["78"] = 37,["80"] = 38,["81"] = 38,["82"] = 39,["83"] = 40,["84"] = 40,["85"] = 40,["86"] = 40,["87"] = 40,["88"] = 42,["89"] = 42,["90"] = 42,["91"] = 42,["92"] = 42,["93"] = 42,["94"] = 42,["95"] = 42,["96"] = 42,["97"] = 42,["98"] = 43,["99"] = 44,["100"] = 45,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 46,["105"] = 46,["106"] = 46,["107"] = 46,["108"] = 47,["109"] = 48,["110"] = 49,["111"] = 49,["112"] = 49,["113"] = 49,["114"] = 49,["115"] = 49,["116"] = 49,["117"] = 49,["118"] = 49,["119"] = 50,["120"] = 51,["121"] = 51,["122"] = 51,["123"] = 51,["126"] = 54,["127"] = 55,["128"] = 55,["129"] = 55,["130"] = 55,["131"] = 55,["132"] = 55,["133"] = 55,["134"] = 55,["135"] = 56,["136"] = 57,["137"] = 58,["139"] = 60,["141"] = 38,["145"] = 64,["146"] = 65,["149"] = 68,["150"] = 69,["151"] = 70,["152"] = 71,["154"] = 73,["155"] = 73,["156"] = 73,["157"] = 73,["158"] = 73,["159"] = 73,["160"] = 73,["161"] = 73,["162"] = 73,["163"] = 74,["164"] = 76,["167"] = 28,["168"] = 13,["169"] = 13,["170"] = 13,["171"] = 13,["172"] = 13,["173"] = 13,["174"] = 13});
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
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____Status = include("logic.models.Status")
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
    self["暴击"] = false
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    self["特殊攻击"] = self["暴击"]
    if self["特殊攻击"] then
        self:play("ability1")
    else
        self:play("attack1", 0.5, 0, 0.2)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self.owner:setValue(_____7279_6280_1, 0)
        local ____self_1 = _____6570_503C["壹壹"]["普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        if self["特殊攻击"] then
            local ____self_2 = _____6570_503C["壹壹"]["普通攻击"]
            v = ____self_2["特殊攻击伤害"](____self_2, self.owner)
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____v_4 = v
                local ____self_3 = _____6570_503C["壹壹"]["普通攻击"]
                v = ____v_4 * (1 + ____self_3["天赋11特殊攻击伤害提升"](____self_3))
            end
            local duration = {0, 0.2}
            self.owner:applyTimeLimitProperties(
                self.skillEntity,
                buffId,
                1,
                1,
                {},
                {_____9738_4F53}
            )
            do
                local i = 0
                while i < 2 do
                    __TS__Await(self:awaitTime(duration[i + 1]))
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createCircularShape(450),
                        {"敌人"}
                    )
                    self:addParticle(
                        134272361,
                        self.owner:getPosition(),
                        nil,
                        2,
                        3,
                        -40,
                        nil,
                        1
                    )
                    self:playSound(self.owner, 134262327)
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(
                            self.skillEntity,
                            Formula["物理伤害"],
                            v,
                            AbilityType["普攻"],
                            self["暴击"]
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                        if self.owner:getValue(_____5929_8D4B_1) == 2 then
                            local ____t_7 = t
                            local ____t_addEffect_8 = t.addEffect
                            local ____self_skillEntity_6 = self.skillEntity
                            local ____self_5 = _____6570_503C["壹壹"]["普通攻击"]
                            local effectEntity = ____t_addEffect_8(
                                ____t_7,
                                ____self_skillEntity_6,
                                ____self_5["天赋12buff"](____self_5)
                            )
                            if effectEntity then
                                effectEntity:setStore(
                                    Formula["展示面板_物理攻击"],
                                    self.owner:formula(Formula["展示面板_物理攻击"])
                                )
                            end
                        end
                        local angelto = self:getDirection(self.owner, t)
                        self:addParticle(
                            134234650,
                            t:getPosition(),
                            angelto,
                            1,
                            1,
                            80
                        )
                        local scale = 1
                        if t:checkTag(UnitTag["玩家英雄"]) then
                            scale = 0.3
                        end
                        self:setUnderParticle(t, self["脚底粒子ID"], scale)
                    end
                    i = i + 1
                end
            end
        else
            local target = cast:getTargetUnit()
            if not target then
                return ____awaiter_resolve(nil)
            end
            self:play("attack1", 1, 0.2, -1)
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.3
            end
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                134254992
            )
            self:playSound(self.owner, 134223088)
            self:setUnderParticle(target, self["脚底粒子ID"], scale)
        end
    end)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134279605,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0}
)
return ____exports
