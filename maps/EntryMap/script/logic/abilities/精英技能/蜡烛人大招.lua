local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 11,["28"] = 10,["29"] = 13,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 16,["36"] = 17,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 20,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 21,["62"] = 13,["63"] = 8,["64"] = 8,["65"] = 8,["66"] = 8,["67"] = 8,["68"] = 8,["69"] = 8});
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
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability1", 2)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(600, self.owner),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        local angle = self:getDirection(self.owner, t)
        t:move(
            {_____9738_4F53},
            _____88AB_51FB_9000,
            angle,
            200,
            1000,
            -100,
            false
        )
        local ____t_3 = t
        local ____t_addEffect_4 = t.addEffect
        local ____ability_skillEntity_2 = ability.skillEntity
        local ____self_1 = _____6570_503C["精英技能"]["蜡烛人普通攻击"]
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
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134227574,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
