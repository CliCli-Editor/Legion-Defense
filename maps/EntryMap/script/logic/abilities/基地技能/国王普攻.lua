local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["32"] = 9,["33"] = 10,["34"] = 9,["35"] = 11,["36"] = 12,["37"] = 13,["38"] = 14,["40"] = 16,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 11,["50"] = 20,["52"] = 21,["53"] = 21,["54"] = 22,["56"] = 23,["57"] = 23,["59"] = 24,["60"] = 24,["61"] = 24,["62"] = 24,["63"] = 24,["64"] = 25,["67"] = 28,["68"] = 29,["69"] = 30,["71"] = 33,["72"] = 33,["73"] = 33,["74"] = 33,["75"] = 33,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 35,["80"] = 35,["81"] = 35,["82"] = 35,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 36,["89"] = 37,["90"] = 37,["91"] = 37,["92"] = 37,["93"] = 37,["94"] = 37,["95"] = 37,["96"] = 37,["97"] = 37,["98"] = 38,["99"] = 39,["100"] = 40,["101"] = 40,["102"] = 40,["103"] = 40,["104"] = 40,["105"] = 40,["106"] = 40,["107"] = 40,["108"] = 41,["109"] = 42,["110"] = 42,["111"] = 42,["112"] = 42,["113"] = 42,["114"] = 42,["115"] = 42,["116"] = 42,["117"] = 42,["118"] = 43,["121"] = 23,["125"] = 47,["127"] = 47,["128"] = 47,["129"] = 47,["130"] = 47,["131"] = 47,["132"] = 47,["133"] = 47,["134"] = 47,["136"] = 48,["138"] = 48,["139"] = 48,["140"] = 48,["141"] = 48,["142"] = 48,["143"] = 48,["144"] = 48,["145"] = 48,["146"] = 48,["148"] = 49,["149"] = 50,["151"] = 50,["152"] = 50,["153"] = 50,["154"] = 50,["155"] = 50,["156"] = 50,["157"] = 50,["158"] = 50,["159"] = 50,["163"] = 20,["164"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_16 = createAbility
local ____fight_15 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self["特殊攻击"] = true
        self.owner:setValue(_____7279_6280_1, 0)
    else
        self["特殊攻击"] = false
    end
    self:play(
        "attack1",
        1,
        0,
        1,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["国王"]["普通攻击"]
        local v = ____self_1["普通伤害"](____self_1, self.owner)
        if self["特殊攻击"] then
            do
                local i = 0
                while i < 6 do
                    do
                        local targets = self.owner:findByShape(
                            self.owner:getPosition(),
                            Shape:createCircularShape(2000),
                            {"敌军"}
                        )
                        if not targets or #targets <= 0 then
                            return ____awaiter_resolve(nil)
                        end
                        local t = random:randomList(targets)
                        if not t or not t:isAlive() then
                            goto __continue7
                        end
                        self:addParticle(
                            134271170,
                            t:getPosition(),
                            nil,
                            1,
                            1,
                            10
                        )
                        local ____t_4 = t
                        local ____t_addEffect_5 = t.addEffect
                        local ____self_skillEntity_3 = self.skillEntity
                        local ____self_2 = _____6570_503C["国王"]["普通攻击"]
                        ____t_addEffect_5(
                            ____t_4,
                            ____self_skillEntity_3,
                            ____self_2["附加buff"](____self_2)
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(
                            self.skillEntity,
                            Formula["真实伤害"],
                            v,
                            AbilityType["普攻"],
                            nil,
                            nil,
                            134264537
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                        __TS__Await(self:awaitTime(0.1))
                        self:addParticle(
                            134250823,
                            t:getPosition(),
                            nil,
                            1,
                            1,
                            10
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(
                            self.skillEntity,
                            Formula["固定伤害"],
                            v,
                            AbilityType["普攻"],
                            nil,
                            nil,
                            134264537
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                    ::__continue7::
                    i = i + 1
                end
            end
        else
            local ____opt_6 = cast:getTargetUnit()
            if ____opt_6 ~= nil then
                local ____opt_6_addEffect_9 = ____opt_6.addEffect
                local ____self_skillEntity_8 = self.skillEntity
                local ____self_7 = _____6570_503C["水晶"]["普通攻击"]
                ____opt_6_addEffect_9(
                    ____opt_6,
                    ____self_skillEntity_8,
                    ____self_7["附加buff"](____self_7)
                )
            end
            local ____opt_11 = cast:getTargetUnit()
            if ____opt_11 ~= nil then
                ____opt_11:hurt(
                    self.skillEntity,
                    Formula["真实伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134264537
                )
            end
            __TS__Await(self:awaitTime(0.1))
            local ____opt_13 = cast:getTargetUnit()
            if ____opt_13 ~= nil then
                ____opt_13:hurt(
                    self.skillEntity,
                    Formula["固定伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134264537
                )
            end
        end
    end)
end
____exports.key = ____createAbility_16(nil, ____fight_15, 134264212, ____class_0)
return ____exports
