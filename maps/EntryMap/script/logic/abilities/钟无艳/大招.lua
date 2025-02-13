local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["34"] = 12,["35"] = 13,["36"] = 12,["37"] = 15,["38"] = 16,["39"] = 15,["40"] = 18,["41"] = 35,["42"] = 36,["45"] = 39,["46"] = 39,["47"] = 39,["48"] = 39,["49"] = 39,["50"] = 39,["51"] = 39,["52"] = 40,["53"] = 41,["54"] = 41,["55"] = 41,["56"] = 41,["57"] = 42,["59"] = 42,["60"] = 42,["61"] = 42,["62"] = 42,["63"] = 42,["64"] = 42,["65"] = 42,["67"] = 43,["69"] = 43,["71"] = 44,["72"] = 44,["73"] = 45,["74"] = 46,["75"] = 46,["76"] = 46,["78"] = 48,["79"] = 48,["80"] = 48,["81"] = 48,["82"] = 48,["83"] = 48,["84"] = 48,["85"] = 48,["86"] = 48,["87"] = 48,["88"] = 48,["89"] = 49,["90"] = 49,["91"] = 49,["92"] = 49,["93"] = 49,["94"] = 49,["95"] = 49,["96"] = 49,["97"] = 49,["98"] = 50,["99"] = 51,["100"] = 52,["102"] = 52,["103"] = 52,["106"] = 52,["110"] = 18,["111"] = 12,["112"] = 12,["113"] = 12,["114"] = 12,["115"] = 12,["116"] = 12,["117"] = 12});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_21 = createAbility
local ____fight_20 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["技能特效粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 2)[1] or 134220748
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability4")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:addParticle(
        self["技能特效粒子ID"],
        target,
        nil,
        1,
        0.3
    )
    local effectEntities = self.owner:getEffectEntities(102531)
    local ____opt_1 = effectEntities[1]
    local ____temp_5 = ____opt_1 and ____opt_1:s(1) or 0
    local ____opt_3 = effectEntities[1]
    local value = ____temp_5 - (____opt_3 and ____opt_3:s(0) or 0)
    local ____opt_6 = effectEntities[1]
    if ____opt_6 ~= nil then
        local ____opt_6_setStore_9 = ____opt_6.setStore
        local ____opt_7 = effectEntities[1]
        ____opt_6_setStore_9(
            ____opt_6,
            0,
            ____opt_7 and ____opt_7:s(1) or 0
        )
    end
    local ____opt_11 = effectEntities[1]
    if ____opt_11 ~= nil then
        ____opt_11:setStore(2, 0)
    end
    local ____self_13 = _____6570_503C["钟无艳"]["大招"]
    local v = ____self_13["伤害"](____self_13, value)
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____v_15 = v
        local ____self_14 = _____6570_503C["钟无艳"]["大招"]
        v = ____v_15 * (1 + ____self_14["天赋31伤害提升系数"](____self_14))
    end
    target:move(
        {_____9738_4F53, _____88AB_51FB_9000},
        _____88AB_51FB_9000,
        self.owner:getAngle(),
        10,
        10,
        0,
        false,
        500,
        true
    )
    target:addTimeLimitProperties(
        self.skillEntity,
        buffId,
        1,
        {},
        {_____7729_6655},
        {-1, 101, 20},
        1
    )
    target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
    if self.owner:getValue(_____5929_8D4B_3) == 2 then
        local ____self_18 = self.owner
        local ____self_18_addEffect_19 = ____self_18.addEffect
        local ____self_skillEntity_17 = self.skillEntity
        local ____self_16 = _____6570_503C["钟无艳"]["大招"]
        ____self_18_addEffect_19(
            ____self_18,
            ____self_skillEntity_17,
            ____self_16["天赋32effectId"](____self_16)
        )
    end
end
____exports.key = ____createAbility_21(
    nil,
    ____fight_20,
    134252242,
    ____class_0,
    {["施法开始"] = 0.35, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 0}
)
return ____exports
