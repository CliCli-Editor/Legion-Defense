local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 9,["32"] = 16,["33"] = 8,["34"] = 23,["35"] = 24,["36"] = 25,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 27,["43"] = 27,["44"] = 27,["46"] = 23,["47"] = 30,["49"] = 31,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["54"] = 32,["55"] = 32,["56"] = 32,["58"] = 34,["59"] = 34,["60"] = 35,["61"] = 36,["64"] = 40,["65"] = 41,["66"] = 41,["67"] = 41,["68"] = 41,["69"] = 41,["70"] = 42,["71"] = 42,["72"] = 42,["73"] = 42,["74"] = 42,["75"] = 42,["76"] = 42,["77"] = 42,["78"] = 43,["79"] = 44,["80"] = 45,["81"] = 46,["82"] = 47,["83"] = 48,["85"] = 48,["86"] = 48,["89"] = 48,["94"] = 30,["95"] = 8,["96"] = 8,["97"] = 8,["98"] = 8,["99"] = 8,["100"] = 8,["101"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1")
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数2"] ~= nil then
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
        local ____self_1 = _____6570_503C["佣兵技能"]["水元素大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local buffId = _____6570_503C["佣兵技能"]["水元素大招"]:buffId()
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(600),
            {"敌人"}
        )
        self:addParticle(
            100726,
            target:getPosition(),
            nil,
            1.5,
            3,
            10
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            t:addEffect(self.skillEntity, buffId)
            local ____self_4 = self.owner
            local ____self_4_addMp_5 = ____self_4.addMp
            local ____self_skillEntity_3 = self.skillEntity
            local ____self_2 = _____6570_503C["佣兵技能"]["水元素大招"]
            ____self_4_addMp_5(
                ____self_4,
                ____self_skillEntity_3,
                ____self_2["每个击中单位回蓝"](____self_2)
            )
        end
    end)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134268880,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.75}
)
return ____exports
