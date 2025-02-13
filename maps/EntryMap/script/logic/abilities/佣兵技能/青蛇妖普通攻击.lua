local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["29"] = 11,["30"] = 11,["31"] = 12,["33"] = 12,["34"] = 12,["36"] = 12,["38"] = 12,["39"] = 13,["40"] = 14,["43"] = 17,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 19,["57"] = 20,["58"] = 21,["59"] = 23,["60"] = 24,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 29,["67"] = 30,["68"] = 21,["69"] = 33,["70"] = 34,["71"] = 18,["75"] = 10,["76"] = 6,["77"] = 6,["78"] = 6,["79"] = 6,["80"] = 6,["81"] = 6,["82"] = 6});
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
        local ____self_1 = _____6570_503C["佣兵技能"]["青蛇妖普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local ____self_3 = self.owner
        local ____self_3_random_4 = ____self_3.random
        local ____self_2 = _____6570_503C["佣兵技能"]["青蛇妖普通攻击"]
        local count = ____self_3_random_4(
            ____self_3,
            "青蛇妖额外投射物概率",
            ____self_2["额外攻击概率"](____self_2)
        ) and 2 or 1
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        do
            local i = 0
            while i < count do
                local p = self:createProjectile(
                    134259683,
                    self.owner,
                    angle,
                    150,
                    nil,
                    "attack1",
                    nil,
                    true
                )
                p:prepare({face_angle = true})
                p:listener({onFinish = function()
                    p:remove()
                    if not target or not target:isAlive() then
                        return
                    end
                    self:playSound(self.owner, 134240944)
                    local ____self_5 = _____6570_503C["佣兵技能"]["青蛇妖普通攻击"]
                    local quantity = ____self_5["叠毒层数"](____self_5) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                    target:addEffect(self.skillEntity, 1, quantity)
                    target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                end})
                p:moverTarget(target, 1500, 10)
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134228500,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.45, ["施法完成"] = 0.55}
)
return ____exports
