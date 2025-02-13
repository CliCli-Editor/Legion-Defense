local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["23"] = 7,["24"] = 9,["25"] = 7,["26"] = 10,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 10,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 17,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 23,["47"] = 25,["48"] = 26,["51"] = 29,["52"] = 30,["53"] = 30,["54"] = 30,["55"] = 30,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 31,["62"] = 32,["63"] = 32,["64"] = 32,["65"] = 32,["67"] = 34,["68"] = 23,["69"] = 37,["70"] = 14,["71"] = 7,["72"] = 7,["73"] = 7,["74"] = 7,["75"] = 7,["76"] = 41,["77"] = 41,["78"] = 41,["79"] = 41,["80"] = 41,["81"] = 41,["82"] = 7,["83"] = 7});
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
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.count = self.count + 1
    self:play(
        self.count % 2 ~= 0 and "attack1" or "attack2",
        1,
        0,
        1,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["炎魔普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134261409, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local ____target_4 = target
        local ____target_addEffect_5 = target.addEffect
        local ____ability_skillEntity_3 = ability.skillEntity
        local ____self_2 = _____6570_503C["精英技能"]["炎魔普通攻击"]
        local effectEntity = ____target_addEffect_5(
            ____target_4,
            ____ability_skillEntity_3,
            ____self_2["附加effectId"](____self_2)
        )
        if effectEntity then
            effectEntity:setStore(
                Formula["展示面板_法术攻击"],
                self.owner:formula(Formula["展示面板_法术攻击"])
            )
        end
        target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    end})
    p:moverTarget(target, 1500, 10)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134243834,
    ____class_0,
    {
        ["释放范围"] = 850,
        ["施法开始"] = 0.4,
        ["施法引导"] = 0,
        ["施法出手"] = 0.6,
        ["施法完成"] = 0
    }
)
return ____exports
