local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 9,["34"] = 12,["36"] = 13,["37"] = 14,["40"] = 17,["41"] = 18,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 21,["55"] = 21,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 22,["60"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["64"] = 23,["65"] = 23,["66"] = 23,["67"] = 23,["68"] = 23,["69"] = 24,["70"] = 25,["71"] = 25,["72"] = 25,["73"] = 25,["76"] = 20,["77"] = 20,["79"] = 12,["80"] = 7,["81"] = 7,["82"] = 7,["83"] = 7,["84"] = 7,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 32,["90"] = 32,["91"] = 7,["92"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "ability_1",
        1,
        0,
        1,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local pos = {x = 0, y = 0}
        target:getPosition(pos)
        self:addParticle(
            134226962,
            pos,
            nil,
            1.25,
            10,
            10
        )
        __TS__Await(self:loop(
            1,
            10,
            function()
                local targetss = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(500),
                    {"敌人"}
                )
                for ____, t in ipairs(targetss) do
                    local ____t_3 = t
                    local ____t_addEffect_4 = t.addEffect
                    local ____ability_skillEntity_2 = ability.skillEntity
                    local ____self_1 = _____6570_503C["精英技能"]["炎魔普通攻击"]
                    local effectEntity = ____t_addEffect_4(
                        ____t_3,
                        ____ability_skillEntity_2,
                        ____self_1["附加effectId"](____self_1)
                    )
                    if effectEntity then
                        effectEntity:setStore(
                            Formula["展示面板_法术攻击"],
                            self.owner:formula(Formula["展示面板_法术攻击"])
                        )
                    end
                end
            end
        ))
    end)
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134231469,
    ____class_0,
    {
        ["释放范围"] = 1000,
        ["施法开始"] = 0.6,
        ["施法引导"] = 0,
        ["施法出手"] = 0.4,
        ["施法完成"] = 0
    }
)
return ____exports
