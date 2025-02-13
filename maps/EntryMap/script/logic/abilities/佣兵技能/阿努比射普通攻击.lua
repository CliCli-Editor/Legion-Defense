local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["28"] = 8,["29"] = 9,["30"] = 16,["31"] = 8,["32"] = 23,["33"] = 24,["34"] = 25,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 27,["44"] = 23,["45"] = 30,["46"] = 31,["47"] = 32,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["55"] = 34,["56"] = 34,["57"] = 35,["58"] = 36,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["63"] = 37,["64"] = 37,["65"] = 37,["66"] = 38,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 43,["73"] = 43,["74"] = 43,["76"] = 43,["77"] = 43,["79"] = 43,["80"] = 44,["81"] = 45,["82"] = 46,["83"] = 48,["84"] = 49,["87"] = 52,["88"] = 53,["89"] = 54,["90"] = 55,["91"] = 46,["92"] = 58,["94"] = 30,["95"] = 8,["96"] = 8,["97"] = 8,["98"] = 8,["99"] = 8,["100"] = 8,["101"] = 8});
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
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
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
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    end
    local ____self_1 = _____6570_503C["佣兵技能"]["阿努比射普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local exEnemyCount = 3
    local target = cast:getTargetUnit()
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a) return a ~= target end,
        exEnemyCount,
        1,
        1500
    )
    if not target or not target:isAlive() then
        return
    end
    targets[#targets + 1] = target
    for ____, t in ipairs(targets) do
        local ____t_checkTag_result_4
        if t:checkTag(UnitTag["召唤物"]) then
            local ____self_2 = _____6570_503C["佣兵技能"]["阿努比射普通攻击"]
            ____t_checkTag_result_4 = ____self_2["对召唤物伤害"](____self_2, self.owner)
        else
            local ____self_3 = _____6570_503C["佣兵技能"]["阿努比射普通攻击"]
            ____t_checkTag_result_4 = ____self_3["伤害"](____self_3, self.owner)
        end
        v = ____t_checkTag_result_4
        local angle = self:getDirection(self.owner, t)
        local p = self:createProjectile(134268339, self.owner, angle, 150)
        p:listener({onFinish = function()
            p:remove()
            if not t or not t:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end})
        p:moverTarget(t, 1500, 10)
    end
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134232506,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
