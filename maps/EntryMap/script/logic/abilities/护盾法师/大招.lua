local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["30"] = 8,["31"] = 10,["32"] = 11,["33"] = 10,["34"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 19,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["47"] = 20,["48"] = 20,["50"] = 20,["51"] = 21,["52"] = 21,["53"] = 21,["54"] = 21,["55"] = 21,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 22,["60"] = 23,["61"] = 23,["62"] = 23,["63"] = 23,["64"] = 24,["65"] = 24,["66"] = 24,["67"] = 24,["68"] = 24,["69"] = 25,["70"] = 26,["72"] = 23,["73"] = 23,["75"] = 14,["76"] = 8,["77"] = 8,["78"] = 8,["79"] = 8,["80"] = 8,["81"] = 8,["82"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_13 = createAbility
local ____fight_11 = fight
local ____temp_12 = -1
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("skill1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        local pos = target and target:getPosition()
        self.owner:setValue(_____7279_6280_1, pos and pos.x)
        self.owner:setValue(_____7279_6280_2, pos and pos.y)
        local ____self_7 = _____6570_503C["护盾法师"]["大招"]
        local v = ____self_7["伤害"](____self_7)
        local ____temp_10
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_8 = _____6570_503C["护盾法师"]["大招"]
            ____temp_10 = ____self_8["天赋31_大招持续时间"](____self_8)
        else
            local ____self_9 = _____6570_503C["护盾法师"]["大招"]
            ____temp_10 = ____self_9["持续时间"](____self_9)
        end
        local timex = ____temp_10
        self:addParticle(
            -1,
            pos,
            nil,
            1,
            timex,
            50
        )
        self.owner:addEffect(self.skillEntity, _____6570_503C["护盾法师"]["大招"].buffId, 1)
        __TS__Await(self:loop(
            1,
            timex,
            function(____, count)
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(500),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                end
            end
        ))
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_11,
    ____temp_12,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
