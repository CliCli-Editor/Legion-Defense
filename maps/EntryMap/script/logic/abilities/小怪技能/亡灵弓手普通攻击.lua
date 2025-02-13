local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 8,["24"] = 7,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 13,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 15,["40"] = 18,["41"] = 19,["42"] = 20,["43"] = 21,["44"] = 22,["45"] = 24,["46"] = 25,["49"] = 28,["50"] = 29,["51"] = 22,["52"] = 32,["54"] = 10,["55"] = 6,["56"] = 6,["57"] = 6,["58"] = 6,["59"] = 6,["60"] = 6,["61"] = 6});
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
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["亡灵弓手"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local exEnemyCount = 2
    local target = cast:getTargetUnit()
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a) return a ~= target end,
        exEnemyCount,
        1,
        1500
    )
    if not target or not target:isAlive() then
        return
    end
    targets[#targets + 1] = target
    for ____, t in ipairs(targets) do
        local angle = self.owner:getAngle()
        local p = self:createProjectile(134277625, self.owner, angle, 150)
        p:listener({onFinish = function()
            p:remove()
            if not t or not t:isAlive() then
                return
            end
            self:playSound(self.owner, 201365691)
            t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
        end})
        p:moverTarget(t, 3000, 20)
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134240670,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0.45}
)
return ____exports
