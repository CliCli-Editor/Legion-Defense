local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 11,["32"] = 12,["33"] = 11,["34"] = 14,["36"] = 15,["37"] = 16,["38"] = 16,["39"] = 17,["40"] = 17,["42"] = 18,["43"] = 18,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 20,["53"] = 22,["54"] = 23,["55"] = 24,["57"] = 26,["58"] = 27,["61"] = 18,["65"] = 14,["66"] = 31,["68"] = 32,["69"] = 32,["70"] = 32,["71"] = 32,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 33,["77"] = 34,["78"] = 35,["79"] = 36,["80"] = 37,["82"] = 39,["84"] = 41,["86"] = 31,["87"] = 9,["88"] = 9,["89"] = 9,["90"] = 9,["91"] = 9,["92"] = 45,["93"] = 45,["94"] = 45,["95"] = 45,["96"] = 45,["97"] = 45,["98"] = 9,["99"] = 9});
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
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack3")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack3", 1.58, 0.6)
        local ____self_1 = _____6570_503C["精英技能"]["魔女大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["精英技能"]["魔女大招"]
        local vex = ____self_2["额外伤害"](____self_2, self.owner)
        do
            local i = 0
            while i < 16 do
                do
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createCircularShape(1000),
                        {"敌人"}
                    )
                    if #targets == 0 then
                        break
                    end
                    local target = random:randomList(targets)
                    if not target or not target:isAlive() then
                        goto __continue4
                    end
                    self:setHurt(target, v, vex)
                    __TS__Await(self:awaitTime(0.3))
                end
                ::__continue4::
                i = i + 1
            end
        end
    end)
end
function ____class_0.prototype.setHurt(self, target, v, vex)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:addParticle(
            134259863,
            target:getPosition(),
            nil,
            1,
            0.5,
            0
        )
        __TS__Await(self:awaitTime(0.5))
        target.tempData[AbilityTagData["是否为AOE"]] = true
        if target:p(_____901A_7528_62A4_76FE) > 0 then
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
            target:hurt(self.skillEntity, Formula["真实伤害"], vex, AbilityType["大招"])
        else
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
        end
        target.tempData[AbilityTagData["是否为AOE"]] = nil
    end)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134235731,
    ____class_0,
    {
        ["释放范围"] = 1000,
        ["施法开始"] = 0.6,
        ["施法引导"] = 0,
        ["施法出手"] = 0.6,
        ["施法完成"] = 0
    }
)
return ____exports
