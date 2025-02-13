local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 10,["36"] = 10,["37"] = 11,["38"] = 10,["39"] = 13,["41"] = 14,["42"] = 15,["43"] = 17,["44"] = 18,["45"] = 19,["47"] = 21,["48"] = 22,["50"] = 25,["51"] = 26,["52"] = 27,["53"] = 29,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 33,["78"] = 34,["79"] = 35,["80"] = 35,["81"] = 35,["82"] = 35,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["89"] = 39,["90"] = 41,["91"] = 42,["92"] = 42,["93"] = 43,["95"] = 45,["96"] = 47,["97"] = 48,["98"] = 49,["99"] = 49,["100"] = 49,["101"] = 49,["102"] = 49,["103"] = 49,["104"] = 49,["105"] = 50,["106"] = 50,["107"] = 52,["108"] = 52,["109"] = 52,["110"] = 52,["111"] = 52,["112"] = 53,["113"] = 54,["114"] = 55,["115"] = 55,["116"] = 55,["117"] = 55,["118"] = 55,["119"] = 55,["120"] = 55,["121"] = 55,["122"] = 55,["123"] = 56,["125"] = 58,["126"] = 58,["127"] = 58,["128"] = 58,["130"] = 58,["131"] = 58,["133"] = 58,["134"] = 59,["136"] = 13,["137"] = 10,["138"] = 10,["139"] = 10,["140"] = 10,["141"] = 10,["142"] = 10,["143"] = 10});
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
local _____7279_6280_3 = ____Property["特技_3"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____Status = include("logic.models.Status")
local _____9738_4F53 = ____Status["霸体"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["水球位置"] = nil
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self.owner:modifyValue(self.skillEntity, _____7279_6280_3, 1)
        self:play("skill8_1", 1 / 0.6)
        local target = cast:getTargetUnit()
        if not target then
            target = self.owner:findTarget({"敌人"}, nil, 1, 1000)
        end
        if not target then
            target = self.owner
        end
        self:playSound(self.owner, 134251903)
        local pos = target:getPosition()
        self["水球位置"] = {x = pos.x, y = pos.y}
        self:addParticle(
            134217924,
            self["水球位置"],
            0,
            1.5,
            2
        )
        self:addParticle(
            134234903,
            self["水球位置"],
            0,
            1.5,
            1,
            nil,
            nil,
            nil,
            nil,
            true
        )
        local targets = self.owner:findByShape(
            self["水球位置"],
            Shape:createCircularShape(300),
            {"敌军"}
        )
        for ____, t in ipairs(targets) do
            local angle = self:getDirection(ability.owner, target)
            t:move(
                {_____9738_4F53},
                _____88AB_51FB_9000,
                angle,
                -100,
                40,
                -1,
                false
            )
        end
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local level = self.owner:getLevel()
            local ____self_1 = _____6570_503C["冰霜女王"]["大招"]
            local v3 = ____self_1["天赋31大招护盾"](____self_1, level)
            fightUtils:addShield(self.owner, self.skillEntity, v3)
        end
        __TS__Await(self:awaitTime(1))
        self:play("skill8_2")
        self:playSound(self.owner, 134269206)
        self:addParticle(
            134254731,
            self["水球位置"],
            0,
            2,
            1
        )
        local ____self_2 = _____6570_503C["冰霜女王"]["大招"]
        local v = ____self_2["伤害"](____self_2, self.owner)
        local targetsX = self.owner:findByShape(
            self["水球位置"],
            Shape:createCircularShape(500),
            {"敌军"}
        )
        for ____, t in ipairs(targetsX) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["法术伤害"],
                v,
                AbilityType["大招"],
                nil,
                nil,
                104653
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        local ____temp_5
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_3 = _____6570_503C["冰霜女王"]["大招"]
            ____temp_5 = ____self_3["天赋32叠加buff"](____self_3)
        else
            local ____self_4 = _____6570_503C["冰霜女王"]["大招"]
            ____temp_5 = ____self_4["叠加buff"](____self_4)
        end
        local buffId = ____temp_5
        self.owner:addEffect(self.skillEntity, buffId)
    end)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134273695,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 1.6, ["施法完成"] = 0}
)
return ____exports
