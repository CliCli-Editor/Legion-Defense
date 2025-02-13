local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 9,["28"] = 10,["29"] = 9,["30"] = 12,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 14,["43"] = 14,["44"] = 14,["45"] = 14,["46"] = 16,["47"] = 16,["48"] = 16,["49"] = 16,["50"] = 17,["51"] = 17,["52"] = 17,["53"] = 17,["54"] = 17,["55"] = 17,["56"] = 17,["57"] = 18,["58"] = 18,["59"] = 18,["60"] = 18,["61"] = 18,["62"] = 19,["63"] = 20,["64"] = 20,["65"] = 21,["66"] = 22,["67"] = 23,["69"] = 16,["70"] = 16,["72"] = 12,["73"] = 27,["74"] = 28,["75"] = 27,["76"] = 7,["77"] = 7,["78"] = 7,["79"] = 7,["80"] = 7,["81"] = 7,["82"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability2", 1, 0, 1.35)
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play(
            "ability2",
            2,
            1.35,
            3.35,
            true
        )
        self:addParticle(
            134246792,
            self.owner,
            nil,
            0.5,
            2
        )
        __TS__Await(self:loop(
            0.3,
            6,
            function()
                self:addParticle(
                    134277559,
                    self.owner:getPosition(),
                    nil,
                    2,
                    1
                )
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(600),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    local ____self_1 = _____6570_503C["精英技能"]["守护神大招"]
                    local v = ____self_1["每跳伤害"](____self_1, self.owner)
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        ))
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability2", 1, 3.35, 4.8)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134230486,
    ____class_0,
    {["施法开始"] = 1.35, ["施法引导"] = 2, ["施法出手"] = 1.45, ["施法完成"] = 0}
)
return ____exports
