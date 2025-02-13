local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 8,["25"] = 7,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 13,["33"] = 16,["34"] = 17,["35"] = 18,["36"] = 19,["37"] = 20,["38"] = 21,["39"] = 19,["40"] = 23,["41"] = 24,["44"] = 27,["45"] = 28,["46"] = 29,["47"] = 30,["48"] = 19,["49"] = 19,["50"] = 33,["51"] = 10,["52"] = 6,["53"] = 6,["54"] = 6,["55"] = 6,["56"] = 6,["57"] = 6,["58"] = 6});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability_10001_01", 2)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["绿龙"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self.owner:getAngle()
    local p = self:createProjectile(134263471, self.owner, angle, 150)
    p:prepare({face_angle = true, hit_radius = 100})
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(unit)
            if not unit or not unit:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            unit.tempData[AbilityTagData["是否为AOE"]] = true
            unit:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            unit.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    })
    p:moverLine(angle, 1500, 3000)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134244494,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0.5}
)
return ____exports
