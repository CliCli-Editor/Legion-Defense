local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 11,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 18,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 21,["53"] = 24,["54"] = 25,["55"] = 26,["56"] = 26,["57"] = 26,["58"] = 26,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 27,["67"] = 13,["71"] = 11,["72"] = 33});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["闪避"]["反射激光"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        do
            local i = 0
            while i < self.level do
                local angle = random:randomRange(0, 360)
                local offsetPoint = self:offsetPoint(self.owner, angle, _____6570_503C["闪避"]["反射激光"]["矩形长"] / 2)
                local targets = self.owner:findByShape(
                    offsetPoint,
                    Shape:createRectangleShape(_____6570_503C["闪避"]["反射激光"]["矩形宽"], _____6570_503C["闪避"]["反射激光"]["矩形长"], angle),
                    {"敌人"}
                )
                local startPos = self:offsetPoint(self.owner, angle, 100)
                self:addParticle(
                    _____6570_503C["闪避"]["反射激光"]["粒子ID"],
                    startPos,
                    angle,
                    _____6570_503C["闪避"]["反射激光"]["粒子缩放"],
                    _____6570_503C["闪避"]["反射激光"]["粒子持续时间"],
                    30
                )
                if not targets then
                    return ____awaiter_resolve(nil)
                end
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_2 = t
                    local ____t_hurt_3 = t.hurt
                    local ____6570_503C__95EA_907F__53CD_5C04_6FC0_5149__4F24_5BB3_7C7B_578B_1 = _____6570_503C["闪避"]["反射激光"]["伤害类型"]
                    local ____self_0 = _____6570_503C["闪避"]["反射激光"]
                    ____t_hurt_3(
                        ____t_2,
                        self,
                        ____6570_503C__95EA_907F__53CD_5C04_6FC0_5149__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, self.owner, _____6570_503C["闪避"]["反射激光"]["等级相关数值"][self.level + 1])
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
