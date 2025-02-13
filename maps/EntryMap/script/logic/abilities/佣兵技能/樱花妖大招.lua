local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["28"] = 8,["29"] = 9,["30"] = 16,["31"] = 8,["32"] = 23,["33"] = 24,["34"] = 25,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 27,["44"] = 23,["45"] = 30,["47"] = 31,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["54"] = 32,["56"] = 34,["58"] = 35,["59"] = 35,["60"] = 36,["61"] = 37,["62"] = 38,["63"] = 39,["64"] = 40,["65"] = 41,["66"] = 39,["67"] = 43,["68"] = 44,["71"] = 47,["72"] = 47,["73"] = 48,["74"] = 39,["75"] = 39,["76"] = 51,["77"] = 52,["78"] = 35,["82"] = 30,["83"] = 8,["84"] = 8,["85"] = 8,["86"] = 8,["87"] = 8,["88"] = 8,["89"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
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
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_10001_01", 5)
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
        local angleX = self.owner:getAngle()
        do
            local i = 0
            while i < 7 do
                local angle = angleX - 90 + i * 30
                local p = self:createProjectile(134255728, self.owner, angle, 150)
                p:prepare({hit_type = 1, hit_radius = 100, face_angle = true})
                p:listener({
                    onFinish = function()
                        p:remove()
                    end,
                    onHit = function(t)
                        if not t or not t:isAlive() or t == self.owner or not t:checkTag(UnitTag["佣兵"]) then
                            return
                        end
                        local ____self_1 = _____6570_503C["佣兵技能"]["樱花妖大招"]
                        local c = ____self_1["治疗"](____self_1, t)
                        t:cure(ability.skillEntity, Formula["回血值"], c)
                    end
                })
                p:moverLine(angle, 2000, 2000)
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134262671,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
