local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 9,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 12,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 12,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 18,["47"] = 21,["48"] = 21,["49"] = 22,["50"] = 23,["51"] = 24,["52"] = 25,["53"] = 26,["54"] = 27,["55"] = 28,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 32,["63"] = 33,["64"] = 33,["65"] = 33,["66"] = 33,["68"] = 35,["69"] = 36,["70"] = 37,["72"] = 25,["73"] = 40,["74"] = 41,["77"] = 44,["78"] = 44,["79"] = 44,["80"] = 44,["81"] = 45,["82"] = 46,["83"] = 46,["84"] = 46,["85"] = 46,["87"] = 25,["88"] = 25,["89"] = 51,["90"] = 15,["91"] = 10,["92"] = 10,["93"] = 10,["94"] = 10,["95"] = 10,["96"] = 10,["97"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "ability_2",
        1,
        0,
        0.35,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play(
        "ability_2",
        1,
        1.2,
        -1,
        false
    )
    local target = self.owner:findTarget({"敌人"}, nil, 2, 1500)
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["精英技能"]["火元素大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134270152, self.owner, angle, 150)
    p:prepare({hit_radius = 100})
    p:listener({
        onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            local effectEntity = target:addEffect(
                self.skillEntity,
                _____6570_503C["精英技能"]["火元素大招"]:buffId()
            )
            if effectEntity then
                effectEntity:setStore(
                    Formula["展示面板_法术攻击"],
                    self.owner:formula(Formula["展示面板_法术攻击"])
                )
            end
            target:hurt(ability.skillEntity, Formula["法术伤害"], v)
            if target:getValue(_____8840) <= 0 then
                self.owner:addMp(self.skillEntity, 100)
            end
        end,
        onHit = function(t)
            if not t or not t:isAlive() or t == target then
                return
            end
            local effectEntity = t:addEffect(
                self.skillEntity,
                _____6570_503C["精英技能"]["火元素大招"]:buffId()
            )
            if effectEntity then
                effectEntity:setStore(
                    Formula["展示面板_法术攻击"],
                    self.owner:formula(Formula["展示面板_法术攻击"])
                )
            end
        end
    })
    p:moverTarget(target, 3000, 0)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134218201,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.58, ["施法完成"] = 0}
)
return ____exports
