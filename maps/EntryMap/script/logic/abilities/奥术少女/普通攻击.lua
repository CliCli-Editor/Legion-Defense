local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 9,["24"] = 8,["25"] = 11,["26"] = 12,["27"] = 13,["30"] = 16,["31"] = 16,["32"] = 17,["33"] = 18,["34"] = 19,["35"] = 21,["36"] = 22,["39"] = 25,["40"] = 25,["42"] = 19,["43"] = 28,["44"] = 11,["45"] = 6,["46"] = 6,["47"] = 6,["48"] = 6,["49"] = 6,["50"] = 6,["51"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["奥术少女"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local p = self:createProjectile(134270755, self.owner, 0, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        if target ~= nil then
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        end
    end})
    p:moverTarget(target, 1200, 50)
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134226493,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0}
)
return ____exports
