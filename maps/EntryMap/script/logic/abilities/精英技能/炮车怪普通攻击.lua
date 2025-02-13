local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 9,["26"] = 8,["27"] = 12,["29"] = 13,["30"] = 14,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 17,["41"] = 19,["42"] = 20,["45"] = 23,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 24,["55"] = 24,["56"] = 24,["57"] = 24,["58"] = 17,["59"] = 27,["61"] = 12,["62"] = 7,["63"] = 7,["64"] = 7,["65"] = 7,["66"] = 7,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 7,["74"] = 7});
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
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            134225578,
            self.owner,
            angle,
            0,
            nil,
            "attack1"
        )
        p:prepare({hit_radius = 50})
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            local ____target_4 = target
            local ____target_hurt_5 = target.hurt
            local ____ability_skillEntity_2 = ability.skillEntity
            local ____Formula__56FA_5B9A_4F24_5BB3_3 = Formula["固定伤害"]
            local ____self_1 = _____6570_503C["精英技能"]["炮车怪普通攻击"]
            ____target_hurt_5(
                ____target_4,
                ____ability_skillEntity_2,
                ____Formula__56FA_5B9A_4F24_5BB3_3,
                ____self_1["伤害"](____self_1, self.owner),
                AbilityType["普攻"]
            )
        end})
        p:moverTarget(target, 1500, 50)
    end)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134258407,
    ____class_0,
    {
        ["释放范围"] = 1200,
        ["施法开始"] = 0,
        ["施法引导"] = 0,
        ["施法出手"] = 0.12,
        ["施法完成"] = 0.42 - 0.12
    }
)
return ____exports
