local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["31"] = 10,["32"] = 11,["33"] = 18,["34"] = 10,["35"] = 25,["36"] = 26,["37"] = 27,["39"] = 29,["40"] = 29,["41"] = 29,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 29,["47"] = 25,["48"] = 32,["49"] = 33,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 34,["56"] = 34,["58"] = 36,["59"] = 37,["62"] = 40,["63"] = 41,["64"] = 41,["65"] = 43,["66"] = 44,["67"] = 45,["68"] = 46,["69"] = 46,["70"] = 46,["71"] = 46,["74"] = 49,["75"] = 49,["76"] = 50,["77"] = 51,["78"] = 52,["79"] = 52,["80"] = 52,["81"] = 52,["82"] = 52,["83"] = 52,["84"] = 52,["85"] = 52,["86"] = 52,["87"] = 53,["90"] = 56,["91"] = 57,["92"] = 58,["93"] = 59,["94"] = 60,["95"] = 60,["96"] = 60,["97"] = 60,["99"] = 49,["102"] = 32,["103"] = 10,["104"] = 10,["105"] = 10,["106"] = 10,["107"] = 10,["108"] = 10,["109"] = 10});
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
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
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
    local targetX = self.owner:findTarget({"友军"}, nil, 0, 1000)
    if not targetX or not targetX:isAlive() then
        return
    end
    local targetList = {}
    local ____self_1 = _____6570_503C["佣兵技能"]["烈火元素大招"]
    local cureValue = ____self_1["治疗"](____self_1, self.owner)
    self:addBeamLink(100313, 1, self.owner, targetX)
    targetX:cure(self.skillEntity, Formula["回血值"], cureValue)
    if targetX:checkTag(UnitTag["佣兵"]) then
        targetX:addEffect(
            self.skillEntity,
            _____6570_503C["佣兵技能"]["烈火元素大招"]:buffId()
        )
    end
    do
        local i = 1
        while i < 4 do
            local oldTarget = targetX
            targetList[#targetList + 1] = targetX
            local targets = self.owner:findByShape(
                targetX:getPosition(),
                Shape:createCircularShape(500),
                {"友军"},
                function(____, a) return a:isAlive() and __TS__ArrayFindIndex(
                    targetList,
                    function(____, b) return b == a end
                ) == -1 end
            )
            if not targets or #targets <= 0 then
                return
            end
            targetX = random:randomList(targets)
            self:addBeamLink(100313, 1, oldTarget, targetX)
            targetX:cure(self.skillEntity, Formula["回血值"], cureValue)
            if targetX:checkTag(UnitTag["佣兵"]) then
                targetX:addEffect(
                    self.skillEntity,
                    _____6570_503C["佣兵技能"]["烈火元素大招"]:buffId()
                )
            end
            i = i + 1
        end
    end
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134223351,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.75}
)
return ____exports
