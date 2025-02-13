local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 12,["37"] = 10,["38"] = 13,["39"] = 14,["40"] = 15,["41"] = 16,["42"] = 17,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 20,["50"] = 22,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["59"] = 13,["60"] = 25,["62"] = 26,["63"] = 26,["64"] = 27,["65"] = 28,["66"] = 28,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 31,["74"] = 32,["75"] = 33,["76"] = 34,["77"] = 35,["80"] = 38,["83"] = 41,["84"] = 42,["85"] = 42,["86"] = 42,["87"] = 42,["88"] = 42,["89"] = 42,["90"] = 42,["91"] = 42,["92"] = 43,["93"] = 44,["94"] = 44,["95"] = 44,["96"] = 44,["97"] = 44,["98"] = 44,["99"] = 45,["100"] = 46,["101"] = 47,["102"] = 48,["103"] = 46,["104"] = 50,["105"] = 51,["108"] = 54,["109"] = 55,["110"] = 56,["111"] = 56,["112"] = 56,["113"] = 56,["114"] = 56,["115"] = 56,["116"] = 56,["117"] = 56,["118"] = 57,["119"] = 58,["120"] = 46,["121"] = 46,["122"] = 61,["124"] = 25,["125"] = 10,["126"] = 10,["127"] = 10,["128"] = 10,["129"] = 10,["130"] = 10,["131"] = 10});
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
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
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
    self["必中"] = nil
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self.owner:getValue(_____5929_8D4B_3) == 1 and self.owner:getValue(_____7279_6280_1) == 1 then
        self["暴击"] = true
        self["必中"] = true
        self.owner:setValue(_____7279_6280_1, 0)
    else
        self["暴击"] = self.owner:random(
            "芙罗拉大招暴击率",
            self.owner:p(_____66B4_51FB_7387)
        )
        self["必中"] = nil
    end
    self:play("ability3", 2)
    self:addParticle(
        134269935,
        self.owner:getPosition(),
        nil,
        1,
        1,
        10
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["芙罗拉"]["大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_2 = _____6570_503C["芙罗拉"]["大招"]
            v = ____self_2["天赋32伤害"](____self_2, self.owner)
        end
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(1000),
            {"敌人"}
        )
        local target = cast:getTargetUnit()
        if #targets > 0 then
            local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
            if targetXs and #targetXs > 0 then
                target = targetXs[1]
            end
        end
        if not target then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240753)
        self:addParticle(
            134240733,
            self.owner:getPosition(),
            nil,
            1,
            1,
            10
        )
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            134226730,
            self.owner:getPosition(),
            angle,
            10
        )
        p:prepare({hit_radius = 200, hit_same = false})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(unit)
                if not unit or not unit:isAlive() then
                    return
                end
                unit.tempData[AbilityTagData["是否为AOE"]] = true
                unit.tempData.fuluolaDazhao = true
                unit:hurt(
                    ability.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["大招"],
                    self["暴击"],
                    self["必中"]
                )
                unit.tempData[AbilityTagData["是否为AOE"]] = nil
                unit.tempData.fuluolaDazhao = nil
            end
        })
        p:moverLine(angle, 1800, 2500)
    end)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134278565,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.4}
)
return ____exports
