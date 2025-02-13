local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 13,["35"] = 14,["36"] = 13,["37"] = 16,["39"] = 17,["40"] = 18,["43"] = 22,["44"] = 22,["45"] = 23,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 24,["53"] = 24,["54"] = 25,["55"] = 26,["56"] = 27,["57"] = 28,["58"] = 29,["61"] = 32,["62"] = 33,["63"] = 33,["64"] = 33,["65"] = 33,["66"] = 33,["70"] = 33,["72"] = 33,["79"] = 33,["80"] = 33,["81"] = 33,["83"] = 33,["88"] = 33,["89"] = 33,["90"] = 33,["91"] = 33,["92"] = 26,["93"] = 35,["94"] = 36,["95"] = 37,["96"] = 38,["97"] = 39,["99"] = 26,["100"] = 26,["101"] = 43,["103"] = 16,["104"] = 11,["105"] = 11,["106"] = 11,["107"] = 11,["108"] = 11,["109"] = 47,["110"] = 47,["111"] = 47,["112"] = 47,["113"] = 47,["114"] = 47,["115"] = 11,["116"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability2")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget({"敌人"}, nil, 2, 2000)
        if not target then
            return ____awaiter_resolve(nil)
        end
        local ____self_1 = _____6570_503C["精英技能"]["右埃及兄弟大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            134231598,
            self.owner,
            angle,
            300,
            nil,
            "right_hand"
        )
        p:prepare({hit_radius = 50})
        p:listener({
            onFinish = function()
                p:remove()
                if not target or not target:isAlive() then
                    return
                end
                target:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                local ____target_7 = target
                local ____target_addTimeLimitProperties_8 = target.addTimeLimitProperties
                local ____array_6 = __TS__SparseArrayNew(ability.skillEntity, buffId, 3)
                local ____array_4 = __TS__SparseArrayNew(_____7269_7406_9632_5FA1)
                local ____self_2 = _____6570_503C["精英技能"]["右埃及兄弟大招"]
                __TS__SparseArrayPush(
                    ____array_4,
                    ____self_2["降低双抗"](____self_2),
                    _____6CD5_672F_9632_5FA1
                )
                local ____self_3 = _____6570_503C["精英技能"]["右埃及兄弟大招"]
                __TS__SparseArrayPush(
                    ____array_4,
                    ____self_3["降低双抗"](____self_3)
                )
                __TS__SparseArrayPush(
                    ____array_6,
                    {__TS__SparseArraySpread(____array_4)},
                    {},
                    {-1, 20}
                )
                local ____self_5 = _____6570_503C["精英技能"]["右埃及兄弟大招"]
                __TS__SparseArrayPush(
                    ____array_6,
                    ____self_5["降防持续时间"](____self_5)
                )
                ____target_addTimeLimitProperties_8(
                    ____target_7,
                    __TS__SparseArraySpread(____array_6)
                )
            end,
            onHit = function(unit)
                if unit ~= nil and unit:isAlive() then
                    unit.tempData[AbilityTagData["是否为AOE"]] = true
                    unit:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    unit.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        })
        p:moverTarget(target, 2500, 50)
    end)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134220383,
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
