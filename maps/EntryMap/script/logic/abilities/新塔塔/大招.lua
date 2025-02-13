local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 13,["28"] = 14,["29"] = 13,["30"] = 16,["31"] = 17,["32"] = 17,["33"] = 18,["34"] = 19,["35"] = 20,["36"] = 20,["38"] = 22,["39"] = 22,["42"] = 25,["43"] = 26,["44"] = 26,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 29,["52"] = 29,["53"] = 29,["55"] = 29,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 30,["61"] = 30,["63"] = 30,["65"] = 31,["66"] = 31,["67"] = 32,["68"] = 33,["69"] = 31,["72"] = 16,["73"] = 11,["74"] = 11,["75"] = 11,["76"] = 11,["77"] = 11,["78"] = 11,["79"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____8840 = ____Property["血"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability3", 2)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["新塔塔"]["大招"]
    local id = ____self_1["分身id"](____self_1)
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_2 = _____6570_503C["新塔塔"]["大招"]
            id = ____self_2["天赋31和22分身id"](____self_2)
        else
            local ____self_3 = _____6570_503C["新塔塔"]["大招"]
            id = ____self_3["天赋31分身id"](____self_3)
        end
    else
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_4 = _____6570_503C["新塔塔"]["大招"]
            id = ____self_4["天赋22分身id"](____self_4)
        end
    end
    local ____temp_7
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_5 = _____6570_503C["新塔塔"]["大招"]
        ____temp_7 = ____self_5["天赋31分身持续时间"](____self_5)
    else
        local ____self_6 = _____6570_503C["新塔塔"]["大招"]
        ____temp_7 = ____self_6["分身持续时间"](____self_6)
    end
    local duration = ____temp_7
    local ____temp_9
    if self.owner:getValue(_____5929_8D4B_3) == 2 then
        local ____self_8 = _____6570_503C["新塔塔"]["大招"]
        ____temp_9 = ____self_8["天赋32分身数量"](____self_8)
    else
        ____temp_9 = 1
    end
    local count = ____temp_9
    do
        local i = 0
        while i < count do
            local percent = self.owner:v(_____8840) / self.owner:formula(Formula["展示面板_血量上限"])
            fightUtils:summon(self.owner, id, duration, percent)
            i = i + 1
        end
    end
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134249194,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0.2}
)
return ____exports
