local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 8,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 10,["26"] = 10,["27"] = 11,["28"] = 10,["29"] = 12,["31"] = 14,["32"] = 15,["33"] = 16,["34"] = 17,["35"] = 18,["36"] = 19,["39"] = 22,["42"] = 26,["43"] = 26,["44"] = 26,["45"] = 26,["46"] = 26,["47"] = 27,["48"] = 28,["49"] = 29,["52"] = 32,["53"] = 33,["54"] = 34,["55"] = 35,["56"] = 36,["57"] = 37,["60"] = 40,["61"] = 41,["62"] = 42,["63"] = 43,["66"] = 46,["67"] = 47,["68"] = 48,["69"] = 48,["70"] = 48,["71"] = 48,["72"] = 48,["73"] = 48,["74"] = 48,["75"] = 48,["76"] = 48,["77"] = 48,["78"] = 49,["79"] = 50,["80"] = 52,["81"] = 53,["84"] = 56,["85"] = 56,["86"] = 56,["87"] = 56,["88"] = 56,["89"] = 56,["90"] = 56,["91"] = 56,["92"] = 56,["93"] = 56,["94"] = 56,["95"] = 56,["96"] = 56,["97"] = 56,["98"] = 58,["99"] = 50,["100"] = 61,["101"] = 62,["103"] = 64,["104"] = 65,["106"] = 12,["107"] = 67});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local stopCount = -1
local alreadyCast = false
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["闪避"]["反射飞弹"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local stopStartCount = self.owner:getStatistics("受到物理伤害次数")
        if stopCount == -1 then
            stopCount = stopStartCount
        elseif stopStartCount - stopCount >= _____6570_503C["闪避"]["反射飞弹"]["受到物理伤害停止次数"] then
            stopCount = -1
            alreadyCast = false
            return ____awaiter_resolve(nil)
        end
        if alreadyCast then
            return ____awaiter_resolve(nil)
        end
        local targetXs = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["闪避"]["反射飞弹"]["范围"]),
            {"敌人"}
        )
        if not targetXs or #targetXs == 0 then
            stopCount = -1
            alreadyCast = false
            return ____awaiter_resolve(nil)
        end
        alreadyCast = true
        local i = 0
        while stopCount ~= -1 do
            if not self.owner:isAlive() then
                stopCount = -1
                alreadyCast = false
                return ____awaiter_resolve(nil)
            end
            local target = random:randomList(targetXs)
            if not target or not target:isAlive() then
                stopCount = -1
                alreadyCast = false
                return ____awaiter_resolve(nil)
            end
            i = i + 1
            local angle = self:getDirection(self.owner, target)
            local p = self:createProjectile(
                _____6570_503C["闪避"]["反射飞弹"]["投射物ID"],
                self.owner,
                angle,
                150,
                1,
                nil,
                nil,
                true
            )
            p:prepare({hit_type = 0, hit_radius = _____6570_503C["闪避"]["反射飞弹"]["投射物碰撞体积"], face_angle = true})
            p:listener({onFinish = function()
                if not target or not target:isAlive() then
                    p:remove()
                    return
                end
                local ____target_2 = target
                local ____target_hurt_3 = target.hurt
                local ____6570_503C__95EA_907F__53CD_5C04_98DE_5F39__4F24_5BB3_7C7B_578B_1 = _____6570_503C["闪避"]["反射飞弹"]["伤害类型"]
                local ____self_0 = _____6570_503C["闪避"]["反射飞弹"]
                ____target_hurt_3(
                    ____target_2,
                    self,
                    ____6570_503C__95EA_907F__53CD_5C04_98DE_5F39__4F24_5BB3_7C7B_578B_1,
                    ____self_0["伤害"](____self_0, self.owner, 0),
                    nil,
                    nil,
                    nil,
                    _____6570_503C["闪避"]["反射飞弹"]["命中特效ID"]
                )
                p:remove()
            end})
            p:moverTarget(target, _____6570_503C["闪避"]["反射飞弹"]["投射物飞行速度"], _____6570_503C["闪避"]["反射飞弹"]["投射物碰撞体积"])
            __TS__Await(self:awaitTime(_____6570_503C["闪避"]["反射飞弹"]["触发间隔"]))
        end
        stopCount = -1
        alreadyCast = false
    end)
end
local ____ = fight
return ____exports
