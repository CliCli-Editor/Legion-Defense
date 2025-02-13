local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 4,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 7,["29"] = 7,["30"] = 8,["31"] = 8,["32"] = 10,["33"] = 10,["34"] = 10,["35"] = 10,["36"] = 10,["38"] = 10,["39"] = 11,["40"] = 10,["41"] = 12,["42"] = 13,["43"] = 12,["44"] = 15,["45"] = 16,["46"] = 17,["47"] = 18,["48"] = 18,["49"] = 18,["50"] = 18,["51"] = 18,["52"] = 18,["53"] = 18,["54"] = 18,["56"] = 18,["57"] = 18,["59"] = 18,["60"] = 15,["61"] = 20,["62"] = 21,["63"] = 21,["64"] = 21,["65"] = 21,["66"] = 21,["67"] = 21,["68"] = 21,["69"] = 20,["70"] = 23,["72"] = 24,["73"] = 25,["74"] = 26,["76"] = 23,["77"] = 28,["78"] = 29,["79"] = 28,["80"] = 31,["82"] = 32,["83"] = 32,["84"] = 33,["85"] = 33,["86"] = 33,["87"] = 33,["88"] = 34,["89"] = 35,["92"] = 38,["93"] = 38,["94"] = 38,["95"] = 38,["96"] = 38,["97"] = 39,["98"] = 39,["99"] = 39,["100"] = 39,["101"] = 39,["102"] = 39,["103"] = 39,["104"] = 39,["105"] = 40,["106"] = 41,["107"] = 42,["108"] = 43,["109"] = 44,["111"] = 33,["112"] = 33,["113"] = 47,["114"] = 47,["115"] = 47,["116"] = 47,["117"] = 47,["118"] = 48,["119"] = 49,["120"] = 50,["121"] = 50,["122"] = 50,["123"] = 50,["127"] = 50,["128"] = 50,["129"] = 50,["131"] = 50,["132"] = 50,["133"] = 50,["134"] = 50,["135"] = 51,["136"] = 52,["137"] = 52,["138"] = 52,["139"] = 52,["140"] = 52,["141"] = 52,["142"] = 52,["143"] = 52,["144"] = 52,["145"] = 53,["146"] = 54,["147"] = 54,["148"] = 54,["149"] = 54,["154"] = 31,["155"] = 10,["156"] = 10,["157"] = 10,["158"] = 10,["159"] = 10,["160"] = 10,["161"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_18 = createAbility
local ____fight_17 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    self:setHurt()
    self:play("ability2_1", 2)
    local ____fightUtils_6 = fightUtils
    local ____fightUtils_addShield_7 = fightUtils.addShield
    local ____self_owner_4 = self.owner
    local ____self_skillEntity_5 = self.skillEntity
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_1 = _____6570_503C["三观"]["大招"]
        ____temp_3 = ____self_1["天赋31吃小孩护盾"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["三观"]["大招"]
        ____temp_3 = ____self_2["吃小孩护盾"](____self_2, self.owner)
    end
    ____fightUtils_addShield_7(____fightUtils_6, ____self_owner_4, ____self_skillEntity_5, ____temp_3)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play(
        "ability2_2",
        3,
        0,
        -1,
        true
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability2_3", 2)
        __TS__Await(self:awaitTime(0.85))
        self["正在施法"] = false
    end)
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
function ____class_0.prototype.setHurt(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_8 = _____6570_503C["三观"]["大招"]
        local v = ____self_8["每跳伤害"](____self_8, self.owner)
        __TS__Await(self:loop(
            0.5,
            4,
            function(____, count)
                if not self["正在施法"] then
                    self:endSkill(self)
                    return
                end
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(600, self.owner),
                    {"敌人"}
                )
                self:addParticle(
                    100719,
                    self.owner:getPosition(),
                    nil,
                    1.2,
                    1,
                    10
                )
                self:playSound(self.owner, 134240944)
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        ))
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(600, self.owner),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            local angle = self:getDirection(self.owner, t)
            local ____t_11 = t
            local ____t_move_12 = t.move
            local ____array_10 = __TS__SparseArrayNew({_____9738_4F53}, _____88AB_51FB_9000, angle)
            local ____self_9 = _____6570_503C["三观"]["大招"]
            __TS__SparseArrayPush(
                ____array_10,
                ____self_9["吐小孩击退距离"](____self_9),
                1000,
                -10,
                false
            )
            ____t_move_12(
                ____t_11,
                __TS__SparseArraySpread(____array_10)
            )
            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                local ____t_15 = t
                local ____t_addEffect_16 = t.addEffect
                local ____self_skillEntity_14 = self.skillEntity
                local ____self_13 = _____6570_503C["三观"]["大招"]
                local effectEntity = ____t_addEffect_16(
                    ____t_15,
                    ____self_skillEntity_14,
                    ____self_13["天赋32吐小孩附加buffId"](____self_13)
                )
                if effectEntity then
                    effectEntity:setStore(
                        Formula["展示面板_法术攻击"],
                        self.owner:formula(Formula["展示面板_法术攻击"])
                    )
                end
            end
        end
    end)
end
____exports.key = ____createAbility_18(
    nil,
    ____fight_17,
    134263095,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.79, ["施法出手"] = 0.39, ["施法完成"] = 0.82}
)
return ____exports
