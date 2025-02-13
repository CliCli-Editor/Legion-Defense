local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["28"] = 8,["29"] = 9,["30"] = 16,["31"] = 8,["32"] = 23,["33"] = 24,["34"] = 25,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 27,["44"] = 23,["45"] = 30,["46"] = 31,["47"] = 32,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["55"] = 34,["56"] = 34,["57"] = 35,["58"] = 36,["61"] = 39,["62"] = 40,["63"] = 41,["64"] = 42,["65"] = 44,["66"] = 45,["69"] = 48,["70"] = 49,["71"] = 49,["72"] = 49,["73"] = 49,["74"] = 49,["75"] = 50,["76"] = 50,["77"] = 50,["78"] = 50,["79"] = 50,["80"] = 50,["81"] = 50,["82"] = 50,["83"] = 51,["84"] = 52,["85"] = 53,["86"] = 54,["88"] = 42,["89"] = 58,["90"] = 30,["91"] = 8,["92"] = 8,["93"] = 8,["94"] = 8,["95"] = 8,["96"] = 8,["97"] = 8});
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
local ____createAbility_3 = createAbility
local ____fight_2 = fight
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
    local ____self_1 = _____6570_503C["佣兵技能"]["红色小法师普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134266796, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(200),
            {"敌人"}
        )
        self:addParticle(
            102742,
            target:getPosition(),
            nil,
            2,
            1,
            10
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134259641,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0.4}
)
return ____exports
