local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 6,["29"] = 9,["30"] = 11,["31"] = 12,["34"] = 15,["35"] = 18,["36"] = 19,["37"] = 20,["38"] = 21,["39"] = 21,["40"] = 21,["41"] = 21,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 22,["48"] = 19,["49"] = 24,["50"] = 19,["51"] = 19,["52"] = 27,["53"] = 9,["54"] = 5});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____AbilityBase = include("framework.fight.AbilityBase")
local AbilityBase = ____AbilityBase.AbilityBase
local createAbility = ____AbilityBase.createAbility
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack1",
        1,
        0,
        0.5,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self:getDirection(ability.owner, target)
    local p = self:createProjectile(134248815, self.owner, angle, 150)
    p:listener({
        onFinish = function()
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                100,
                AbilityType["普攻"],
                nil,
                nil,
                104653
            )
            p:remove()
        end,
        onHit = function(unit)
        end
    })
    p:moverTarget(target, 500, 0)
end
____exports.key = ____createAbility_2(nil, ____fight_1, 134236329, ____class_0)
return ____exports
