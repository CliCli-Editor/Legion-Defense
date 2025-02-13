local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["25"] = 8,["26"] = 10,["27"] = 8,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 14,["42"] = 16,["44"] = 11,["45"] = 20,["46"] = 21,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["55"] = 25,["56"] = 25,["57"] = 26,["58"] = 27,["61"] = 30,["62"] = 31,["63"] = 32,["64"] = 33,["65"] = 35,["66"] = 36,["69"] = 39,["70"] = 40,["71"] = 40,["72"] = 40,["73"] = 40,["74"] = 40,["75"] = 40,["76"] = 40,["77"] = 41,["78"] = 42,["79"] = 42,["80"] = 43,["82"] = 33,["83"] = 49,["84"] = 20,["85"] = 8,["86"] = 8,["87"] = 8,["88"] = 8,["89"] = 8,["90"] = 8,["91"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____66B4_51FB_7387 = ____Property["暴击率"]
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "恶魔普攻暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["暴击"] then
        self:play(
            "attack2",
            1.2,
            0,
            0.6,
            false
        )
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["暴击"] then
        self:play(
            "attack2",
            0.9,
            0.6,
            -1,
            false
        )
    end
    local ____self_1 = _____6570_503C["精英技能"]["恶魔普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134244120, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        target:hurt(
            ability.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            self["暴击"]
        )
        if self["暴击"] then
            local ____self_2 = _____6570_503C["精英技能"]["恶魔普通攻击"]
            v = ____self_2["暴击额外伤害"](____self_2, self.owner)
            target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134261163,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
