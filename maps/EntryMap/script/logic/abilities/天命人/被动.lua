local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 12,["34"] = 15,["35"] = 9,["36"] = 17,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 19,["43"] = 20,["46"] = 23,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 25,["57"] = 26,["59"] = 26,["60"] = 26,["63"] = 26,["68"] = 29,["69"] = 17,["70"] = 8,["71"] = 8,["72"] = 8,["73"] = 8,["74"] = 8,["75"] = 8,["76"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(500, self.owner),
        {"敌人"}
    )
    if #targets <= 0 then
        self:endSkill(self)
        return
    end
    self:play("attack2_02")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(500, self.owner),
        {"敌人"}
    )
    if #targets <= 0 then
        self:endSkill(self)
        return
    end
    for ____, t in ipairs(targets) do
        local ____t_3 = t
        local ____t_addEffect_4 = t.addEffect
        local ____self_skillEntity_2 = self.skillEntity
        local ____self_1 = _____6570_503C["天命人"]["被动"]
        ____t_addEffect_4(
            ____t_3,
            ____self_skillEntity_2,
            ____self_1["附加debuff"](____self_1)
        )
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_7 = self.owner
            local ____self_7_addEffect_8 = ____self_7.addEffect
            local ____self_skillEntity_6 = self.skillEntity
            local ____self_5 = _____6570_503C["天命人"]["被动"]
            ____self_7_addEffect_8(
                ____self_7,
                ____self_skillEntity_6,
                ____self_5["天赋22自身附加buffId"](____self_5)
            )
        end
    end
    self.owner:setValue(_____7279_6280_2, 0)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134241366,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.8, ["施法完成"] = 0.2}
)
return ____exports
