local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 11,["27"] = 10,["28"] = 14,["29"] = 15,["30"] = 16,["31"] = 16,["32"] = 16,["33"] = 16,["35"] = 16,["36"] = 16,["38"] = 16,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["44"] = 17,["45"] = 17,["47"] = 17,["48"] = 18,["49"] = 19,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 21,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 21,["60"] = 21,["61"] = 21,["62"] = 21,["63"] = 22,["64"] = 23,["66"] = 25,["67"] = 26,["68"] = 26,["69"] = 26,["70"] = 26,["71"] = 26,["72"] = 27,["73"] = 27,["74"] = 28,["75"] = 29,["78"] = 14,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8,["83"] = 8,["84"] = 8,["85"] = 8});
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
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("idle2", 1, 0, 0.5)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("idle2", 3.8, 2.3, -1)
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_2) == 2 then
        local ____self_1 = _____6570_503C["膨肥兔"]["被动"]
        ____temp_3 = ____self_1["天赋22附加buff"](____self_1)
    else
        local ____self_2 = _____6570_503C["膨肥兔"]["被动"]
        ____temp_3 = ____self_2["附加buff"](____self_2)
    end
    local buffId = ____temp_3
    local ____temp_6
    if self.owner:getValue(_____5929_8D4B_2) == 2 then
        local ____self_4 = _____6570_503C["膨肥兔"]["被动"]
        ____temp_6 = ____self_4["天赋22影响范围"](____self_4)
    else
        local ____self_5 = _____6570_503C["膨肥兔"]["被动"]
        ____temp_6 = ____self_5["影响范围"](____self_5)
    end
    local range = ____temp_6
    local particle = self.owner:getValue(_____5929_8D4B_2) == 1 and 134240619 or 105256
    local scale = self.owner:getValue(_____5929_8D4B_2) == 1 and 1.25 or (self.owner:getValue(_____5929_8D4B_2) == 2 and 3 or 2)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(range, self.owner),
        {"友军"}
    )
    self:addParticle(
        particle,
        self.owner:getPosition(),
        nil,
        scale,
        2,
        10
    )
    for ____, t in ipairs(targets) do
        t:addEffect(self.skillEntity, buffId)
    end
    if self.owner:getValue(_____5929_8D4B_2) == 1 then
        local targetXs = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(range, self.owner),
            {"敌军"}
        )
        local ____self_7 = _____6570_503C["膨肥兔"]["被动"]
        local quantity = ____self_7["天赋21附加毒层数"](____self_7) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        for ____, t in ipairs(targetXs) do
            t:addEffect(self.skillEntity, 1, quantity)
        end
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134251064,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
