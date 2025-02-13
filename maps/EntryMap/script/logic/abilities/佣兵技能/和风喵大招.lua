local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 9,["25"] = 8,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 13,["30"] = 14,["33"] = 17,["34"] = 18,["35"] = 19,["36"] = 20,["37"] = 21,["38"] = 22,["39"] = 20,["40"] = 24,["41"] = 25,["44"] = 28,["45"] = 20,["46"] = 20,["47"] = 31,["48"] = 11,["49"] = 7,["50"] = 7,["51"] = 7,["52"] = 7,["53"] = 7,["54"] = 7,["55"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["和风喵大招"]
    local c = ____self_1["治疗"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134262361, self.owner, angle, 150)
    p:prepare({hit_type = 1, hit_radius = 200})
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(unit)
            if not unit or not unit:isAlive() or not unit:checkTag(UnitTag["佣兵"]) then
                return
            end
            unit:cure(self.skillEntity, Formula["回血值"], c)
        end
    })
    p:moverLine(angle, 1000, 3000)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134281058,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
