local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["28"] = 7,["29"] = 8,["30"] = 7,["31"] = 9,["32"] = 10,["33"] = 9,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 12,["44"] = 15,["46"] = 16,["47"] = 17,["49"] = 18,["50"] = 18,["51"] = 19,["52"] = 20,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["59"] = 23,["60"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["64"] = 23,["65"] = 23,["66"] = 24,["67"] = 24,["68"] = 24,["69"] = 24,["70"] = 24,["71"] = 25,["72"] = 26,["73"] = 27,["74"] = 27,["75"] = 28,["76"] = 29,["79"] = 18,["83"] = 15,["84"] = 34,["85"] = 35,["86"] = 34,["87"] = 38,["88"] = 39,["89"] = 38,["90"] = 42,["92"] = 43,["94"] = 44,["95"] = 44,["96"] = 45,["97"] = 46,["98"] = 46,["99"] = 46,["100"] = 46,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 46,["105"] = 46,["106"] = 47,["107"] = 48,["108"] = 44,["112"] = 42,["113"] = 7,["114"] = 7,["115"] = 7,["116"] = 7,["117"] = 7,["118"] = 7,["119"] = 7});
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
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    self:play(
        "ability_1",
        1,
        0,
        -1,
        false,
        true
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(0.3))
        self:addEffect(ability.owner, 134262650, 5)
        do
            local i = 0
            while i < 5 do
                __TS__Await(self:awaitTime(0.8))
                if not self["正在施法"] then
                    break
                end
                self:addParticle(
                    134246720,
                    ability.owner,
                    y3.math.get_random_angle(),
                    1.5,
                    1,
                    nil,
                    "hit_point",
                    1,
                    true
                )
                local targets = ability.owner:findByShape(
                    ability.owner:getPosition(),
                    Shape:createCircularShape(500),
                    {"敌人"}
                )
                if targets and #targets > 0 then
                    for ____, target in ipairs(targets) do
                        local ____self_1 = _____6570_503C["精英技能"]["密教战士大招"]
                        local v = ____self_1["伤害"](____self_1, ability.owner)
                        self:hurts(target, v)
                        target:addEffect(self.skillEntity, 280121, 1)
                    end
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
function ____class_0.prototype.hurts(self, target, v)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local x = v / 3
        do
            local i = 0
            while i < 3 do
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    x,
                    AbilityType["大招"],
                    nil,
                    nil,
                    105268
                )
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134257634,
    ____class_0,
    {["施法开始"] = 0.1, ["施法引导"] = 0.3, ["施法出手"] = 5, ["施法完成"] = 0}
)
return ____exports
