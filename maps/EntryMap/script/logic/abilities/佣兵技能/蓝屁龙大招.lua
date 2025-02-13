local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 10,["30"] = 9,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 15,["38"] = 19,["39"] = 20,["40"] = 21,["41"] = 22,["42"] = 23,["43"] = 24,["44"] = 25,["46"] = 27,["47"] = 27,["48"] = 28,["49"] = 29,["50"] = 30,["51"] = 30,["52"] = 30,["53"] = 30,["54"] = 30,["55"] = 30,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 31,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 37,["66"] = 38,["67"] = 27,["70"] = 12,["71"] = 8,["72"] = 8,["73"] = 8,["74"] = 8,["75"] = 8,["76"] = 8,["77"] = 8});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["蓝屁龙大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
    local targetList = {}
    self:addBeamLink(100578, 0.5, self.owner, target)
    target.tempData[AbilityTagData["是否为AOE"]] = true
    target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
    target.tempData[AbilityTagData["是否为AOE"]] = nil
    local maxCount = 2
    do
        local i = 0
        while i < maxCount do
            local oldTarget = target
            targetList[#targetList + 1] = target
            local targets = self.owner:findByShape(
                target:getPosition(),
                Shape:createCircularShape(1000),
                {"敌军"},
                function(____, a) return a:isAlive() and __TS__ArrayFindIndex(
                    targetList,
                    function(____, b) return b == a end
                ) == -1 end
            )
            if #targets == 0 then
                return
            end
            target = random:randomList(targets)
            self:addBeamLink(100578, 0.5, oldTarget, target)
            target.tempData[AbilityTagData["是否为AOE"]] = true
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            target.tempData[AbilityTagData["是否为AOE"]] = nil
            i = i + 1
        end
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134222575,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.65, ["施法完成"] = 0.35}
)
return ____exports
