local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 9,["29"] = 9,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["37"] = 12,["38"] = 13,["39"] = 12,["40"] = 14,["41"] = 15,["42"] = 14,["43"] = 17,["45"] = 18,["46"] = 19,["49"] = 22,["50"] = 23,["51"] = 23,["53"] = 24,["54"] = 24,["55"] = 25,["56"] = 26,["57"] = 27,["58"] = 28,["59"] = 29,["60"] = 30,["61"] = 31,["62"] = 32,["63"] = 30,["64"] = 34,["66"] = 35,["69"] = 38,["70"] = 38,["71"] = 38,["72"] = 38,["74"] = 38,["75"] = 38,["77"] = 38,["78"] = 39,["79"] = 40,["81"] = 42,["82"] = 42,["83"] = 42,["84"] = 42,["85"] = 42,["86"] = 42,["87"] = 42,["88"] = 42,["89"] = 43,["90"] = 44,["91"] = 45,["92"] = 46,["93"] = 47,["95"] = 47,["96"] = 47,["97"] = 47,["98"] = 47,["99"] = 47,["103"] = 47,["105"] = 47,["112"] = 47,["113"] = 47,["114"] = 47,["115"] = 47,["116"] = 47,["117"] = 47,["120"] = 49,["121"] = 50,["122"] = 50,["123"] = 51,["124"] = 52,["126"] = 54,["127"] = 55,["130"] = 58,["131"] = 58,["132"] = 58,["133"] = 58,["134"] = 58,["135"] = 58,["136"] = 58,["137"] = 58,["138"] = 59,["139"] = 60,["140"] = 61,["143"] = 30,["144"] = 30,["145"] = 65,["146"] = 24,["149"] = 74,["150"] = 75,["151"] = 76,["152"] = 77,["155"] = 17,["156"] = 12,["157"] = 12,["158"] = 12,["159"] = 12,["160"] = 12,["161"] = 12,["162"] = 12});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____653B_51FB_901F_5EA6_767E_5206_6BD4 = ____Property["攻击速度百分比"]
local _____7269_7406_653B_51FB_767E_5206_6BD4 = ____Property["物理攻击百分比"]
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["投射物ID"] = 134221111
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability_2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local pList = {}
        local ____self_1 = _____6570_503C["妖精剑士"]["大招"]
        local countx = ____self_1["血剑数量"](____self_1)
        do
            local i = 0
            while i < countx do
                local randomAngle = math.random(0, 360)
                local offsetPoint = self:offsetPoint(target, randomAngle, 800)
                local angle = self:getDirection(offsetPoint, target)
                local p = self:createProjectile(self["投射物ID"], offsetPoint, angle, 50)
                p:prepare({hit_radius = 100})
                p:listener({
                    onFinish = function()
                        p:remove()
                    end,
                    onHit = function(unit)
                        return __TS__AsyncAwaiter(function(____awaiter_resolve)
                            if not unit or not unit:isAlive() then
                                return ____awaiter_resolve(nil)
                            end
                            local ____temp_4
                            if self.owner:v(_____5929_8D4B_3) == 1 then
                                local ____self_2 = _____6570_503C["妖精剑士"]["大招"]
                                ____temp_4 = ____self_2["天赋31伤害1"](____self_2, self.owner)
                            else
                                local ____self_3 = _____6570_503C["妖精剑士"]["大招"]
                                ____temp_4 = ____self_3["伤害"](____self_3, self.owner)
                            end
                            local v1 = ____temp_4
                            if unit ~= target then
                                v1 = v1 * 0.5
                            end
                            self:addParticle(
                                134258427,
                                unit:getPosition(),
                                angle,
                                1,
                                1,
                                50
                            )
                            unit.tempData[AbilityTagData["是否为AOE"]] = true
                            unit:hurt(self.skillEntity, Formula["物理伤害"], v1, AbilityType["大招"])
                            unit.tempData[AbilityTagData["是否为AOE"]] = nil
                            if unit:getValue(_____8840) <= 0 and self.owner:v(_____5929_8D4B_3) == 2 then
                                local ____self_11 = self.owner
                                local ____self_11_applyTimeLimitProperties_12 = ____self_11.applyTimeLimitProperties
                                local ____self_skillEntity_9 = self.skillEntity
                                local ____self_5 = _____6570_503C["妖精剑士"]["大招"]
                                local ____self_5__5929_8D4B32buff_6301_7EED_65F6_95F4_result_10 = ____self_5["天赋32buff持续时间"](____self_5)
                                local ____array_8 = __TS__SparseArrayNew(_____7269_7406_653B_51FB_767E_5206_6BD4)
                                local ____self_6 = _____6570_503C["妖精剑士"]["大招"]
                                __TS__SparseArrayPush(
                                    ____array_8,
                                    ____self_6["天赋32提升攻击攻速"](____self_6),
                                    _____653B_51FB_901F_5EA6_767E_5206_6BD4
                                )
                                local ____self_7 = _____6570_503C["妖精剑士"]["大招"]
                                __TS__SparseArrayPush(
                                    ____array_8,
                                    ____self_7["天赋32提升攻击攻速"](____self_7)
                                )
                                ____self_11_applyTimeLimitProperties_12(
                                    ____self_11,
                                    ____self_skillEntity_9,
                                    buffId,
                                    ____self_5__5929_8D4B32buff_6301_7EED_65F6_95F4_result_10,
                                    1,
                                    {__TS__SparseArraySpread(____array_8)},
                                    {}
                                )
                            end
                            if self.owner:v(_____5929_8D4B_3) == 1 then
                                local ____self_13 = _____6570_503C["妖精剑士"]["大招"]
                                local v2 = ____self_13["天赋31伤害2"](____self_13, self.owner)
                                if unit ~= target then
                                    v2 = v2 * 0.5
                                end
                                __TS__Await(self:awaitTime(0.1))
                                if not unit or not unit:isAlive() then
                                    return ____awaiter_resolve(nil)
                                end
                                self:addParticle(
                                    134258427,
                                    unit:getPosition(),
                                    angle,
                                    1,
                                    1,
                                    50
                                )
                                unit.tempData[AbilityTagData["是否为AOE"]] = true
                                unit:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["大招"])
                                unit.tempData[AbilityTagData["是否为AOE"]] = nil
                            end
                        end)
                    end
                })
                pList[#pList + 1] = {p = p, angle = angle}
                i = i + 1
            end
        end
        for ____, pClz in ipairs(pList) do
            __TS__Await(self:awaitTime(0.1))
            pClz.p:moverLine(pClz.angle, 2000, 6000)
            self:playSound(self.owner, 134271798)
        end
    end)
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134257849,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0.7}
)
return ____exports
