local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["31"] = 10,["32"] = 11,["33"] = 10,["34"] = 12,["35"] = 13,["36"] = 14,["37"] = 12,["38"] = 16,["40"] = 17,["41"] = 18,["44"] = 21,["45"] = 21,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 23,["55"] = 23,["56"] = 24,["58"] = 25,["59"] = 25,["60"] = 26,["63"] = 29,["64"] = 30,["65"] = 31,["66"] = 31,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 32,["78"] = 32,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 32,["84"] = 32,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 33,["90"] = 25,["93"] = 35,["96"] = 38,["97"] = 38,["98"] = 38,["99"] = 38,["100"] = 38,["101"] = 38,["102"] = 38,["103"] = 39,["104"] = 39,["105"] = 40,["106"] = 41,["107"] = 41,["108"] = 41,["109"] = 41,["110"] = 41,["111"] = 41,["112"] = 41,["113"] = 41,["114"] = 41,["115"] = 41,["116"] = 41,["117"] = 41,["118"] = 41,["119"] = 41,["120"] = 41,["121"] = 41,["122"] = 41,["124"] = 16,["125"] = 43,["126"] = 44,["127"] = 43,["128"] = 46,["129"] = 47,["130"] = 46,["131"] = 10,["132"] = 10,["133"] = 10,["134"] = 10,["135"] = 10,["136"] = 51,["137"] = 51,["138"] = 51,["139"] = 51,["140"] = 51,["141"] = 51,["142"] = 10,["143"] = 10});
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
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
    self:play("ability2")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local ____self_1 = _____6570_503C["精英技能"]["蛇女大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local timeDurationList = {
            0.15,
            0.25,
            0.5,
            0.15,
            0.35,
            0.35
        }
        local ____self_2 = _____6570_503C["精英技能"]["蛇女大招"]
        local quantity = ____self_2["附加中毒层数"](____self_2) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        __TS__Await(self:awaitTime(0.35))
        do
            local i = 0
            while i < 6 do
                if not self["正在施法"] then
                    break
                end
                target:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                target:addEffect(self.skillEntity, 1, quantity)
                self:addParticle(
                    134274616,
                    target:getPosition(),
                    0,
                    2,
                    1
                )
                local ____target_6 = target
                local ____target_addTimeLimitProperties_7 = target.addTimeLimitProperties
                local ____self_skillEntity_5 = self.skillEntity
                local ____7269_7406_9632_5FA1_4 = _____7269_7406_9632_5FA1
                local ____self_3 = _____6570_503C["精英技能"]["蛇女大招"]
                ____target_addTimeLimitProperties_7(
                    ____target_6,
                    ____self_skillEntity_5,
                    buffId2,
                    3,
                    {
                        ____7269_7406_9632_5FA1_4,
                        ____self_3["附加物理防御叠加"](____self_3)
                    },
                    {},
                    {-1, 20}
                )
                __TS__Await(self:awaitTime(timeDurationList[i + 1]))
                i = i + 1
            end
        end
        if not self["正在施法"] then
            return ____awaiter_resolve(nil)
        end
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["大招"],
            true
        )
        local ____self_8 = _____6570_503C["精英技能"]["蛇女大招"]
        local quantity2 = ____self_8["最后一击附加中毒层数"](____self_8) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        target:addEffect(self.skillEntity, 1, quantity2)
        local ____target_12 = target
        local ____target_addTimeLimitProperties_13 = target.addTimeLimitProperties
        local ____self_skillEntity_11 = self.skillEntity
        local ____7269_7406_9632_5FA1_10 = _____7269_7406_9632_5FA1
        local ____self_9 = _____6570_503C["精英技能"]["蛇女大招"]
        ____target_addTimeLimitProperties_13(
            ____target_12,
            ____self_skillEntity_11,
            buffId2,
            3,
            {
                ____7269_7406_9632_5FA1_10,
                ____self_9["附加物理防御叠加"](____self_9)
            },
            {},
            {-1, 20}
        )
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134267311,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.5,
        ["施法引导"] = 0,
        ["施法出手"] = 2.5,
        ["施法完成"] = 0
    }
)
return ____exports
