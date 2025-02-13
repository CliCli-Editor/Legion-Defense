local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 9,["28"] = 11,["29"] = 12,["32"] = 16,["33"] = 18,["34"] = 19,["35"] = 20,["36"] = 20,["37"] = 20,["38"] = 20,["39"] = 20,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 21,["47"] = 24,["48"] = 24,["49"] = 25,["50"] = 26,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 28,["63"] = 31,["64"] = 32,["65"] = 33,["66"] = 34,["67"] = 35,["68"] = 35,["69"] = 35,["70"] = 35,["71"] = 35,["72"] = 35,["73"] = 35,["74"] = 35,["75"] = 35,["76"] = 35,["77"] = 36,["79"] = 24,["83"] = 9,["84"] = 41});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget({"敌人"}, nil, 0, _____6570_503C["法攻"]["闪电链"]["索敌范围"])
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local targetList = {}
        self:addBeamLink(_____6570_503C["法攻"]["闪电链"]["粒子ID"], _____6570_503C["法攻"]["闪电链"]["粒子持续时间"], self.owner, target)
        target.tempData[AbilityTagData["是否为AOE"]] = true
        local ____target_2 = target
        local ____target_hurt_3 = target.hurt
        local ____6570_503C__6CD5_653B__95EA_7535_94FE__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法攻"]["闪电链"]["伤害类型"]
        local ____self_0 = _____6570_503C["法攻"]["闪电链"]
        ____target_hurt_3(
            ____target_2,
            self,
            ____6570_503C__6CD5_653B__95EA_7535_94FE__4F24_5BB3_7C7B_578B_1,
            ____self_0["伤害"](____self_0, target, _____6570_503C["法攻"]["闪电链"]["等级相关数值"][self.level + 1])
        )
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        do
            local i = 0
            while i < _____6570_503C["法攻"]["闪电链"]["最大弹射次数"] do
                local oldTarget = target
                targetList[#targetList + 1] = target
                local targets = self.owner:findByShape(
                    target:getPosition(),
                    Shape:createCircularShape(_____6570_503C["法攻"]["闪电链"]["索敌范围"]),
                    {"敌军"},
                    function(____, a) return a:isAlive() and __TS__ArrayFindIndex(
                        targetList,
                        function(____, b) return b == a end
                    ) == -1 end
                )
                if #targets == 0 then
                    return ____awaiter_resolve(nil)
                end
                target = random:randomList(targets)
                self:addBeamLink(_____6570_503C["法攻"]["闪电链"]["粒子ID"], _____6570_503C["法攻"]["闪电链"]["粒子持续时间"], oldTarget, target)
                if target and target:isAlive() then
                    target.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____target_6 = target
                    local ____target_hurt_7 = target.hurt
                    local ____6570_503C__6CD5_653B__95EA_7535_94FE__4F24_5BB3_7C7B_578B_5 = _____6570_503C["法攻"]["闪电链"]["伤害类型"]
                    local ____self_4 = _____6570_503C["法攻"]["闪电链"]
                    ____target_hurt_7(
                        ____target_6,
                        self,
                        ____6570_503C__6CD5_653B__95EA_7535_94FE__4F24_5BB3_7C7B_578B_5,
                        ____self_4["伤害"](____self_4, target, _____6570_503C["法攻"]["闪电链"]["等级相关数值"][self.level + 1])
                    )
                    target.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
