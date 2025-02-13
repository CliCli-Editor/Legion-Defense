local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 9,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 13,["34"] = 17,["35"] = 18,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 21,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 21,["52"] = 22,["53"] = 25,["54"] = 26,["55"] = 26,["56"] = 26,["57"] = 26,["58"] = 26,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 27,["66"] = 20,["67"] = 20,["69"] = 9,["70"] = 33});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
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
        local targetXs = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法攻"]["水龙卷"]["施法距离"]),
            {"敌人"}
        )
        local targetPos = self:getIntensiveAreaTarget(targetXs, _____6570_503C["法攻"]["水龙卷"]["范围"])
        if not targetPos then
            return ____awaiter_resolve(nil)
        end
        local pos = targetPos:getPosition()
        self:addParticle(
            _____6570_503C["法攻"]["水龙卷"]["粒子ID"],
            pos,
            0,
            _____6570_503C["法攻"]["水龙卷"]["粒子缩放"],
            _____6570_503C["法攻"]["水龙卷"]["粒子持续时间"],
            0
        )
        __TS__Await(self:loop(
            _____6570_503C["法攻"]["水龙卷"]["伤害计算间隔时间"],
            _____6570_503C["法攻"]["水龙卷"]["粒子持续时间"] / _____6570_503C["法攻"]["水龙卷"]["伤害计算间隔时间"],
            function()
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(_____6570_503C["法攻"]["水龙卷"]["范围"]),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_2 = t
                    local ____t_hurt_3 = t.hurt
                    local ____6570_503C__6CD5_653B__6C34_9F99_5377__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法攻"]["水龙卷"]["伤害类型"]
                    local ____self_0 = _____6570_503C["法攻"]["水龙卷"]
                    ____t_hurt_3(
                        ____t_2,
                        self,
                        ____6570_503C__6CD5_653B__6C34_9F99_5377__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, self.owner, _____6570_503C["法攻"]["水龙卷"]["等级相关数值"][self.level + 1])
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        ))
    end)
end
local ____ = fight
return ____exports
