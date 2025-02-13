local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 12,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 16,["48"] = 17,["49"] = 18,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 19,["57"] = 19,["58"] = 19,["59"] = 20,["60"] = 21,["61"] = 21,["62"] = 22,["63"] = 22,["64"] = 22,["65"] = 22,["66"] = 22,["67"] = 22,["68"] = 22,["69"] = 22,["70"] = 23,["71"] = 23,["72"] = 23,["73"] = 23,["74"] = 23,["75"] = 24,["76"] = 25,["77"] = 26,["78"] = 27,["79"] = 29,["80"] = 29,["81"] = 29,["82"] = 29,["83"] = 29,["84"] = 29,["85"] = 29,["86"] = 29,["87"] = 29,["88"] = 29,["89"] = 29,["90"] = 30,["93"] = 33,["94"] = 29,["95"] = 29,["96"] = 35,["97"] = 35,["98"] = 35,["99"] = 35,["100"] = 35,["101"] = 35,["102"] = 35,["103"] = 35,["104"] = 35,["108"] = 12,["109"] = 40});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local pos = self:offsetPoint(
            self.owner,
            self.owner:getAngle(),
            500
        )
        self:playSound(self.owner, 134235187)
        self:addParticle(
            134248486,
            pos,
            nil,
            1.5,
            2,
            10
        )
        __TS__Await(self:awaitTime(0.5))
        self:playSound(self.owner, 134256472)
        local summonEntity = fightUtils:summon(
            self.owner,
            23,
            nil,
            nil,
            nil,
            nil,
            pos
        )
        if summonEntity ~= nil then
            local ____self_0 = _____6570_503C["法攻"]["魔能替身"]
            local v = ____self_0["伤害"](____self_0, self.owner)
            self:addParticle(
                134239772,
                self.owner:getPosition(),
                nil,
                4,
                1,
                300
            )
            local targets = summonEntity:findByShape(
                pos,
                Shape:createCircularShape(1200, summonEntity),
                {"敌人"}
            )
            for ____, target in ipairs(targets) do
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self, _____6570_503C["法攻"]["魔能替身"]["伤害类型"], v)
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                target:move(
                    {_____9738_4F53, _____88AB_51FB_9000},
                    _____88AB_51FB_9000,
                    self.owner:getAngle(),
                    10,
                    10,
                    0,
                    false,
                    500,
                    true,
                    function()
                        if summonEntity == nil or not summonEntity:isAlive() then
                            return
                        end
                        target:attackTarget(summonEntity, 1500)
                    end
                )
                target:addTimeLimitProperties(
                    self,
                    buffId,
                    1,
                    {},
                    {_____7729_6655},
                    {-1, 101, 20},
                    1
                )
            end
        end
    end)
end
local ____ = fight
return ____exports
