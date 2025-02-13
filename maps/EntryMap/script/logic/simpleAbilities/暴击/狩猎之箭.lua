local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["24"] = 7,["25"] = 8,["26"] = 7,["27"] = 10,["29"] = 11,["30"] = 13,["31"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 20,["44"] = 21,["47"] = 24,["48"] = 25,["49"] = 26,["50"] = 28,["51"] = 30,["52"] = 33,["53"] = 33,["54"] = 33,["55"] = 33,["56"] = 33,["57"] = 33,["58"] = 33,["59"] = 33,["60"] = 33,["61"] = 33,["62"] = 34,["63"] = 35,["64"] = 37,["65"] = 38,["68"] = 41,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 43,["73"] = 43,["74"] = 43,["75"] = 43,["76"] = 43,["77"] = 43,["78"] = 43,["79"] = 45,["80"] = 35,["81"] = 48,["82"] = 48,["83"] = 48,["84"] = 48,["85"] = 48,["86"] = 48,["87"] = 48,["88"] = 48,["89"] = 48,["90"] = 48,["91"] = 49,["92"] = 15,["96"] = 10,["97"] = 52});
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
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.cd = _____6570_503C["暴击"]["狩猎之箭"]["技能CD"]
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("暴击/狩猎之箭 level " .. tostring(self.level))
        local count = 0
        count = _____6570_503C["暴击"]["狩猎之箭"]["等级相关数值"][self.level + 1]
        do
            local i = 0
            while i < count do
                if not self.owner:isAlive() then
                    break
                end
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(_____6570_503C["暴击"]["狩猎之箭"]["索敌范围"]),
                    {"敌人"}
                )
                local target = random:randomList(targets)
                if not target then
                    break
                end
                local angle = self:getDirection(ability.owner, target)
                local distance = self:getDistance(ability.owner, target)
                local height = self:getParabolaHeight(45, distance)
                ability.owner:setAngle(angle)
                local startPos = self:offsetPoint(ability.owner, 0, 0)
                local p = self:createProjectile(
                    _____6570_503C["暴击"]["狩猎之箭"]["投射物ID"],
                    startPos,
                    angle,
                    150,
                    nil,
                    nil,
                    nil,
                    true
                )
                p:prepare({hit_type = 0, hit_radius = _____6570_503C["暴击"]["狩猎之箭"]["投射物碰撞体积"]})
                p:listener({onFinish = function()
                    if not target or not target:isAlive() then
                        p:remove()
                        return
                    end
                    local ____self_0 = _____6570_503C["暴击"]["狩猎之箭"]
                    local damage = ____self_0["伤害"](____self_0, self.owner, count)
                    target:hurt(self, _____6570_503C["暴击"]["狩猎之箭"]["伤害类型"], damage)
                    self:addParticle(
                        134227384,
                        target:getPosition(),
                        nil,
                        0.5,
                        1,
                        200
                    )
                    p:remove()
                end})
                p:moverTarget(
                    target,
                    _____6570_503C["暴击"]["狩猎之箭"]["投射物飞行速度"],
                    _____6570_503C["暴击"]["狩猎之箭"]["投射物碰撞体积"],
                    nil,
                    nil,
                    nil,
                    nil,
                    height
                )
                __TS__Await(self:awaitTime(_____6570_503C["暴击"]["狩猎之箭"]["投射物发射间隔时间"]))
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
