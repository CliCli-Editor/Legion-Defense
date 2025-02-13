local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["29"] = 7,["30"] = 8,["31"] = 7,["32"] = 9,["33"] = 10,["34"] = 11,["35"] = 12,["36"] = 13,["38"] = 15,["40"] = 9,["41"] = 18,["42"] = 19,["43"] = 20,["46"] = 23,["47"] = 23,["48"] = 23,["49"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["56"] = 23,["57"] = 23,["59"] = 23,["61"] = 23,["62"] = 24,["63"] = 25,["64"] = 26,["65"] = 27,["66"] = 28,["67"] = 29,["68"] = 30,["69"] = 28,["70"] = 32,["72"] = 33,["75"] = 36,["76"] = 37,["77"] = 38,["78"] = 39,["79"] = 40,["80"] = 41,["81"] = 41,["82"] = 42,["83"] = 43,["86"] = 46,["87"] = 47,["88"] = 48,["91"] = 28,["92"] = 28,["93"] = 52,["95"] = 54,["96"] = 55,["98"] = 57,["99"] = 58,["102"] = 61,["103"] = 62,["104"] = 63,["105"] = 64,["106"] = 64,["107"] = 65,["108"] = 66,["111"] = 69,["114"] = 55,["115"] = 73,["117"] = 18,["118"] = 7,["119"] = 7,["120"] = 7,["121"] = 7,["122"] = 7,["123"] = 7,["124"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("attack3")
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____temp_5
    if self.owner:v(_____5929_8D4B_1) == 1 then
        local ____self_1 = _____6570_503C["妖精剑士"]["普通攻击"]
        ____temp_5 = ____self_1["天赋11伤害1"](____self_1, self.owner)
    else
        local ____temp_4
        if self.owner:v(_____5929_8D4B_1) == 2 then
            local ____self_2 = _____6570_503C["妖精剑士"]["普通攻击"]
            ____temp_4 = ____self_2["天赋12伤害"](____self_2, self.owner)
        else
            local ____self_3 = _____6570_503C["妖精剑士"]["普通攻击"]
            ____temp_4 = ____self_3["伤害"](____self_3, self.owner)
        end
        ____temp_5 = ____temp_4
    end
    local v1 = ____temp_5
    local angle = self:getDirection(self.owner, target)
    if self["特殊攻击"] then
        local p = self:createProjectile(134266553, self.owner, angle, 150)
        p:prepare({hit_radius = 50})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(target)
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    if not target or not target:isAlive() then
                        return ____awaiter_resolve(nil)
                    end
                    self:playSound(self.owner, 134240866)
                    target.tempData[AbilityTagData["是否为AOE"]] = true
                    target:hurt(self.skillEntity, Formula["物理伤害"], v1, AbilityType["普攻"])
                    target.tempData[AbilityTagData["是否为AOE"]] = nil
                    if self.owner:v(_____5929_8D4B_1) == 1 then
                        local ____self_6 = _____6570_503C["妖精剑士"]["普通攻击"]
                        local v2 = ____self_6["天赋11伤害2"](____self_6, self.owner)
                        __TS__Await(self:awaitTime(0.1))
                        if not target or not target:isAlive() then
                            return ____awaiter_resolve(nil)
                        end
                        target.tempData[AbilityTagData["是否为AOE"]] = true
                        target:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
                        target.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                end)
            end
        })
        p:moverLine(angle, 800, 2500)
    else
        local p = self:createProjectile(134266553, self.owner, angle, 150)
        p:listener({onFinish = function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                p:remove()
                if not target or not target:isAlive() then
                    return ____awaiter_resolve(nil)
                end
                self:playSound(self.owner, 134240866)
                target:hurt(self.skillEntity, Formula["物理伤害"], v1, AbilityType["普攻"])
                if self.owner:v(_____5929_8D4B_1) == 1 then
                    local ____self_7 = _____6570_503C["妖精剑士"]["普通攻击"]
                    local v2 = ____self_7["天赋11伤害2"](____self_7, self.owner)
                    __TS__Await(self:awaitTime(0.1))
                    if not target or not target:isAlive() then
                        return ____awaiter_resolve(nil)
                    end
                    target:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
                end
            end)
        end})
        p:moverTarget(target, 2000, 10)
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134267327,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0.65}
)
return ____exports
