local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 10,["30"] = 13,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 17,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 23,["47"] = 24,["48"] = 25,["49"] = 26,["52"] = 29,["53"] = 30,["56"] = 33,["57"] = 34,["58"] = 34,["59"] = 34,["60"] = 34,["61"] = 35,["62"] = 36,["63"] = 37,["64"] = 37,["68"] = 40,["69"] = 41,["70"] = 34,["71"] = 34,["73"] = 13,["74"] = 44,["75"] = 44,["76"] = 8,["77"] = 8,["78"] = 8,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["奥术少女"]["大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(1000),
            {"敌军"}
        )
        if #targets == 0 then
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        local target = cast:getTargetUnit()
        local maxHp = 0
        for ____, targetX in ipairs(targets) do
            local hp = targetX:v(_____8840)
            if hp > maxHp then
                maxHp = hp
                target = targetX
            end
        end
        if not target or not target:isAlive() then
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        local link = self:addBeamLink(134265330, 5, self.owner, target)
        __TS__Await(self:loop(
            0.2,
            25,
            function()
                if self.owner:v(_____8840) <= 0 or target:v(_____8840) <= 0 then
                    self:endSkill(ability)
                    if link ~= nil then
                        link:remove()
                    end
                    return
                end
                local hurt = target:hurt(self.owner, Formula["真实伤害"], v, AbilityType["大招"])
                self.owner:cure(self.skillEntity, Formula["回血值"], hurt.value)
            end
        ))
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134223250,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 5, ["施法出手"] = 0, ["施法完成"] = 0.2}
)
return ____exports
