local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 8,["28"] = 9,["29"] = 10,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 14,["37"] = 15,["38"] = 14,["39"] = 17,["41"] = 18,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 20,["50"] = 21,["51"] = 22,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 24,["57"] = 24,["58"] = 24,["59"] = 24,["60"] = 25,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 26,["66"] = 26,["67"] = 26,["68"] = 26,["69"] = 26,["71"] = 28,["72"] = 28,["73"] = 28,["74"] = 28,["75"] = 28,["76"] = 28,["77"] = 28,["78"] = 28,["79"] = 28,["81"] = 30,["82"] = 31,["83"] = 32,["85"] = 34,["86"] = 35,["87"] = 35,["88"] = 35,["89"] = 35,["90"] = 35,["91"] = 35,["92"] = 35,["93"] = 35,["95"] = 37,["96"] = 37,["97"] = 37,["98"] = 37,["99"] = 37,["100"] = 37,["101"] = 37,["102"] = 37,["104"] = 40,["105"] = 41,["107"] = 42,["108"] = 42,["109"] = 43,["110"] = 44,["113"] = 47,["114"] = 48,["115"] = 48,["116"] = 48,["117"] = 48,["118"] = 48,["119"] = 48,["120"] = 48,["121"] = 48,["122"] = 48,["123"] = 49,["124"] = 49,["125"] = 49,["126"] = 49,["127"] = 49,["128"] = 49,["129"] = 49,["130"] = 49,["131"] = 49,["132"] = 49,["133"] = 49,["134"] = 49,["135"] = 50,["136"] = 42,["140"] = 17,["141"] = 12,["142"] = 12,["143"] = 12,["144"] = 12,["145"] = 12,["146"] = 12,["147"] = 12});
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
local _____653B_51FB = ____Property["攻击"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local buffId3 = genEffectId(nil)
local buffId4 = genEffectId(nil)
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    self:play("ability4")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local count = self.owner:getValue(_____5929_8D4B_3) == 2 and 6 or 4
        local targets = self.owner:findTargets(
            {"敌人"},
            nil,
            count,
            0,
            450 + self.owner:getCollisionRadius()
        )
        local x = 0
        local y = 0
        for ____, t in ipairs(targets) do
            local ____math_floor_3 = math.floor
            local ____temp_2 = self.owner:getValue(_____5929_8D4B_3) == 1 and t:formula(Formula["展示面板_物理攻击"]) or t:formula(Formula["展示面板_物理防御"])
            local ____self_1 = _____6570_503C["玲珑"]["大招"]
            local xx = ____math_floor_3(____temp_2 * ____self_1["偷取双抗系数"](____self_1, self.owner))
            local ____math_floor_6 = math.floor
            local ____temp_5 = self.owner:getValue(_____5929_8D4B_3) == 1 and t:formula(Formula["展示面板_法术攻击"]) or t:formula(Formula["展示面板_法术防御"])
            local ____self_4 = _____6570_503C["玲珑"]["大招"]
            local yy = ____math_floor_6(____temp_5 * ____self_4["偷取双抗系数"](____self_4, self.owner))
            if self.owner:getValue(_____5929_8D4B_3) == 1 then
                t:addTimeLimitProperties(
                    self.skillEntity,
                    buffId,
                    1,
                    {_____653B_51FB, -xx, _____6CD5_672F_653B_51FB, -yy},
                    {},
                    {-1, 20},
                    3
                )
            else
                t:addTimeLimitProperties(
                    self.skillEntity,
                    buffId2,
                    1,
                    {_____7269_7406_9632_5FA1, -xx, _____6CD5_672F_9632_5FA1, -yy},
                    {},
                    {-1, 20},
                    3
                )
            end
            self:addBeamLink(104847, 3, self.owner, t)
            x = x + xx
            y = y + yy
        end
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            self.owner:applyTimeLimitProperties(
                self.skillEntity,
                buffId3,
                3,
                1,
                {_____653B_51FB, x, _____6CD5_672F_653B_51FB, y},
                {}
            )
        else
            self.owner:applyTimeLimitProperties(
                self.skillEntity,
                buffId4,
                3,
                1,
                {_____7269_7406_9632_5FA1, x, _____6CD5_672F_9632_5FA1, y},
                {}
            )
        end
        local target = cast:getTargetUnit()
        local duration = 0.6 / 4
        do
            local i = 0
            while i < 4 do
                if not target or not target:isAlive() then
                    self:endSkill(self)
                    return ____awaiter_resolve(nil)
                end
                self:playSound(self.owner, 134240944)
                self:addParticle(
                    134235794,
                    self.owner,
                    0,
                    1,
                    1,
                    0,
                    "skill1"
                )
                local ____target_10 = target
                local ____target_hurt_11 = target.hurt
                local ____self_skillEntity_8 = self.skillEntity
                local ____Formula__6CD5_672F_4F24_5BB3_9 = Formula["法术伤害"]
                local ____self_7 = _____6570_503C["玲珑"]["大招"]
                ____target_hurt_11(
                    ____target_10,
                    ____self_skillEntity_8,
                    ____Formula__6CD5_672F_4F24_5BB3_9,
                    ____self_7["伤害"](____self_7, self.owner),
                    AbilityType["大招"]
                )
                __TS__Await(self:awaitTime(duration))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134270319,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.4, ["施法出手"] = 0.6, ["施法完成"] = 0.4}
)
return ____exports
