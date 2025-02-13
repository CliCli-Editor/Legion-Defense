local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["26"] = 8,["27"] = 10,["28"] = 8,["29"] = 11,["30"] = 12,["31"] = 11,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 17,["37"] = 18,["38"] = 19,["39"] = 20,["40"] = 22,["41"] = 23,["44"] = 26,["45"] = 27,["46"] = 28,["47"] = 28,["48"] = 28,["49"] = 28,["50"] = 29,["51"] = 30,["52"] = 30,["53"] = 30,["54"] = 30,["56"] = 20,["57"] = 34,["58"] = 14,["59"] = 8,["60"] = 8,["61"] = 8,["62"] = 8,["63"] = 8,["64"] = 8,["65"] = 8});
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
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.buffCount = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["火元素普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134220487, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        local effectEntity = target:addEffect(
            self.skillEntity,
            _____6570_503C["精英技能"]["火元素普通攻击"]:buffId()
        )
        if effectEntity then
            effectEntity:setStore(
                Formula["展示面板_法术攻击"],
                self.owner:formula(Formula["展示面板_法术攻击"])
            )
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134239607,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.78, ["施法完成"] = 0}
)
return ____exports
