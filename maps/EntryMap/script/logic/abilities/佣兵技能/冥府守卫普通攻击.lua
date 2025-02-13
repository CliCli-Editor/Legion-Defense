local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["32"] = 9,["33"] = 10,["34"] = 9,["35"] = 11,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 15,["41"] = 17,["43"] = 11,["44"] = 20,["46"] = 21,["47"] = 22,["48"] = 23,["49"] = 24,["50"] = 24,["52"] = 25,["53"] = 25,["54"] = 26,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 29,["70"] = 30,["71"] = 31,["72"] = 32,["73"] = 33,["74"] = 34,["76"] = 36,["77"] = 36,["78"] = 37,["79"] = 25,["83"] = 40,["84"] = 40,["85"] = 41,["86"] = 42,["89"] = 45,["90"] = 46,["91"] = 47,["92"] = 47,["93"] = 47,["94"] = 47,["95"] = 47,["96"] = 47,["97"] = 47,["98"] = 47,["99"] = 47,["100"] = 48,["101"] = 49,["102"] = 50,["104"] = 52,["107"] = 20,["108"] = 56,["109"] = 57,["110"] = 58,["112"] = 56,["113"] = 9,["114"] = 9,["115"] = 9,["116"] = 9,["117"] = 9,["118"] = 9,["119"] = 9});
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
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:v(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("ability_6", 9)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["特殊攻击"] then
            self:play("ability_6", 1, 0.9, 1.8)
            local duration = {0, 0.3, 0.3, 0.3}
            local ____self_1 = _____6570_503C["佣兵技能"]["冥府守卫普通攻击"]
            local v = ____self_1["特殊攻击每跳伤害"](____self_1, self.owner)
            do
                local i = 0
                while i < #duration do
                    __TS__Await(self:awaitTime(duration[i + 1]))
                    self:addParticle(
                        102475,
                        self.owner,
                        nil,
                        1,
                        1,
                        0,
                        "hit"
                    )
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createCircularShape(450, self.owner),
                        {"敌人"}
                    )
                    local totalDmg = 0
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        local hurt = t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                        totalDmg = totalDmg + hurt.value
                    end
                    local ____self_2 = _____6570_503C["佣兵技能"]["冥府守卫普通攻击"]
                    local c = ____self_2["特殊攻击每跳恢复"](____self_2, totalDmg)
                    self.owner:cure(ability.skillEntity, Formula["回血值"], c)
                    i = i + 1
                end
            end
        else
            local ____self_3 = _____6570_503C["佣兵技能"]["冥府守卫普通攻击"]
            local v = ____self_3["伤害"](____self_3, self.owner)
            local target = cast:getTargetUnit()
            if not target or not target:isAlive() then
                return ____awaiter_resolve(nil)
            end
            __TS__Await(self:awaitTime(0.3))
            self:playSound(self.owner, 134240944)
            target:hurt(
                ability.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                134231255
            )
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, 134259689, scale)
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["特殊攻击"] then
        self:play("ability_6", 2, 1.8, 2.4)
    end
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134261028,
    ____class_0,
    {["施法开始"] = 0.1, ["施法引导"] = 0, ["施法出手"] = 1.2, ["施法完成"] = 0.3}
)
return ____exports
