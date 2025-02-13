local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 10,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 14,["43"] = 15,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 21,["55"] = 21,["56"] = 21,["57"] = 21,["58"] = 21,["59"] = 22,["62"] = 26,["63"] = 27,["64"] = 29,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 31,["78"] = 10,["79"] = 35});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____FightUtils = include("logic.utils.FightUtils")
local addShield = ____FightUtils.addShield
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        addShield(
            nil,
            self.owner,
            self,
            _____6570_503C["护盾"]["地狱火柱"]["护盾值"],
            nil,
            _____6570_503C["护盾"]["地狱火柱"]["护盾类型"]
        )
        local targetsX = self.owner:findTargets(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            nil,
            nil,
            2000
        )
        local targetPos = self:getIntensiveAreaTarget(targetsX, _____6570_503C["护盾"]["地狱火柱"]["范围"])
        if not targetPos then
            return ____awaiter_resolve(nil)
        end
        self:addParticle(
            _____6570_503C["护盾"]["地狱火柱"]["粒子ID"],
            targetPos:getPosition(),
            0,
            _____6570_503C["护盾"]["地狱火柱"]["粒子缩放"],
            _____6570_503C["护盾"]["地狱火柱"]["粒子持续时间"],
            0
        )
        local targets = self.owner:findByShape(
            targetPos:getPosition(),
            Shape:createCircularShape(_____6570_503C["护盾"]["地狱火柱"]["范围"], targetPos),
            {"敌军"}
        )
        if #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        __TS__Await(self:awaitTime(_____6570_503C["护盾"]["地狱火柱"]["伤害生效延迟时间"]))
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__62A4_76FE__5730_72F1_706B_67F1__4F24_5BB3_7C7B_578B_1 = _____6570_503C["护盾"]["地狱火柱"]["伤害类型"]
            local ____self_0 = _____6570_503C["护盾"]["地狱火柱"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__62A4_76FE__5730_72F1_706B_67F1__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner, _____6570_503C["护盾"]["地狱火柱"]["等级相关数值"][self.level + 1])
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
