local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 9,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 12,["36"] = 13,["37"] = 13,["38"] = 14,["39"] = 15,["40"] = 13,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 17,["47"] = 17,["48"] = 17,["49"] = 17,["50"] = 17,["52"] = 18,["53"] = 18,["54"] = 19,["55"] = 20,["57"] = 20,["58"] = 20,["61"] = 20,["62"] = 20,["63"] = 20,["65"] = 18,["69"] = 23,["70"] = 23,["71"] = 24,["72"] = 23,["75"] = 26,["76"] = 26,["77"] = 26,["78"] = 26,["79"] = 26,["80"] = 26,["81"] = 26,["82"] = 26,["83"] = 27,["84"] = 27,["85"] = 27,["86"] = 27,["87"] = 27,["88"] = 27,["89"] = 27,["90"] = 28,["93"] = 31,["94"] = 32,["95"] = 33,["96"] = 33,["97"] = 33,["98"] = 33,["99"] = 33,["100"] = 33,["101"] = 33,["102"] = 33,["103"] = 33,["104"] = 33,["105"] = 34,["108"] = 9,["109"] = 38});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:addParticle(
            _____6570_503C["法防"]["免死冻结"]["粒子ID1"],
            self.owner:getPosition(),
            0,
            _____6570_503C["法防"]["免死冻结"]["粒子缩放1"],
            _____6570_503C["法防"]["免死冻结"]["粒子持续时间1"],
            0
        )
        local stateIds = {}
        do
            local i = 0
            while i < #_____6570_503C["法防"]["免死冻结"]["临时状态"] do
                local state = _____6570_503C["法防"]["免死冻结"]["临时状态"][i + 1]
                stateIds[#stateIds + 1] = self.owner:addTemporaryState(self, state)
                i = i + 1
            end
        end
        self.owner:applyTimeLimitProperties(
            self,
            buffId,
            _____6570_503C["法防"]["免死冻结"]["状态持续时间"],
            2,
            {_____6570_503C["法防"]["免死冻结"]["buff类型1"], _____6570_503C["法防"]["免死冻结"]["buff数值1"], _____6570_503C["法防"]["免死冻结"]["buff类型2"], _____6570_503C["法防"]["免死冻结"]["buff数值2"]},
            {}
        )
        do
            local i = 0
            while i < _____6570_503C["法防"]["免死冻结"]["状态持续时间"] / _____6570_503C["法防"]["免死冻结"]["每跳恢复间隔时间"] do
                __TS__Await(self:awaitTime(_____6570_503C["法防"]["免死冻结"]["每跳恢复间隔时间"]))
                local ____self_2 = self.owner
                local ____self_2_cure_3 = ____self_2.cure
                local ____6570_503C__6CD5_9632__514D_6B7B_51BB_7ED3__6CBB_7597_7C7B_578B_1 = _____6570_503C["法防"]["免死冻结"]["治疗类型"]
                local ____self_0 = _____6570_503C["法防"]["免死冻结"]
                ____self_2_cure_3(
                    ____self_2,
                    self,
                    ____6570_503C__6CD5_9632__514D_6B7B_51BB_7ED3__6CBB_7597_7C7B_578B_1,
                    ____self_0["治疗"](____self_0, self.owner, 0)
                )
                i = i + 1
            end
        end
        do
            local i = 0
            while i < #stateIds do
                self.owner:removeTemporaryState(self, stateIds[i + 1])
                i = i + 1
            end
        end
        self:addParticle(
            _____6570_503C["法防"]["免死冻结"]["粒子ID2"],
            self.owner:getPosition(),
            0,
            _____6570_503C["法防"]["免死冻结"]["粒子缩放2"],
            _____6570_503C["法防"]["免死冻结"]["粒子持续时间2"],
            0
        )
        local targets = self.owner:findTargets(
            {"敌人"},
            nil,
            nil,
            1,
            _____6570_503C["法防"]["免死冻结"]["范围"]
        )
        if not targets or #targets <= 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_6 = t
            local ____t_hurt_7 = t.hurt
            local ____6570_503C__6CD5_9632__514D_6B7B_51BB_7ED3__4F24_5BB3_7C7B_578B_5 = _____6570_503C["法防"]["免死冻结"]["伤害类型"]
            local ____self_4 = _____6570_503C["法防"]["免死冻结"]
            ____t_hurt_7(
                ____t_6,
                self,
                ____6570_503C__6CD5_9632__514D_6B7B_51BB_7ED3__4F24_5BB3_7C7B_578B_5,
                ____self_4["伤害"](____self_4, t, 0)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
