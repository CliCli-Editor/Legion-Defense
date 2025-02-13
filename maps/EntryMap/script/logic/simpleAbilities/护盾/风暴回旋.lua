local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 12,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 14,["40"] = 18,["41"] = 20,["42"] = 22,["43"] = 23,["44"] = 24,["45"] = 26,["46"] = 28,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 29,["53"] = 30,["55"] = 32,["56"] = 33,["59"] = 36,["60"] = 37,["61"] = 38,["62"] = 38,["63"] = 38,["64"] = 38,["65"] = 38,["66"] = 38,["67"] = 38,["68"] = 38,["69"] = 38,["70"] = 38,["71"] = 39,["73"] = 41,["74"] = 41,["75"] = 41,["76"] = 41,["77"] = 41,["78"] = 41,["79"] = 41,["80"] = 41,["81"] = 41,["83"] = 43,["84"] = 44,["85"] = 45,["86"] = 46,["87"] = 46,["88"] = 46,["89"] = 46,["90"] = 46,["91"] = 46,["92"] = 47,["93"] = 48,["96"] = 51,["97"] = 52,["98"] = 53,["101"] = 56,["102"] = 57,["103"] = 58,["104"] = 59,["106"] = 62,["109"] = 26,["110"] = 68,["112"] = 12,["113"] = 71});
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
local ____UnitTags = include("logic.models.UnitTags")
local isEnemy = ____UnitTags.isEnemy
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
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            0,
            2000
        )
        if not target then
            return ____awaiter_resolve(nil)
        end
        local maxCount = _____6570_503C["护盾"]["风暴回旋"]["最大弹射次数"]
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(134219652, self.owner, angle, 150)
        p:prepare({hit_radius = 150})
        local pos = target:getPosition()
        p:listener({onFinish = function()
            if not target or not target:isAlive() then
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(1000),
                    {"敌军", "友军"},
                    function(____, a) return a:isAlive() and a ~= target end
                )
                target = random:randomList(targets)
            end
            if not target or not target:isAlive() then
                p:remove()
                return
            end
            if isEnemy(nil, self.owner, target) then
                target.tempData[AbilityTagData["是否为AOE"]] = true
                local ____target_2 = target
                local ____target_hurt_3 = target.hurt
                local ____6570_503C__62A4_76FE__98CE_66B4_56DE_65CB__4F24_5BB3_7C7B_578B_1 = _____6570_503C["护盾"]["风暴回旋"]["伤害类型"]
                local ____self_0 = _____6570_503C["护盾"]["风暴回旋"]
                ____target_hurt_3(
                    ____target_2,
                    self,
                    ____6570_503C__62A4_76FE__98CE_66B4_56DE_65CB__4F24_5BB3_7C7B_578B_1,
                    ____self_0["伤害"](____self_0, self.owner, _____6570_503C["护盾"]["风暴回旋"]["等级相关数值"][self.level + 1])
                )
                target.tempData[AbilityTagData["是否为AOE"]] = nil
            else
                local ____addShield_6 = addShield
                local ____target_5 = target
                local ____self_4 = _____6570_503C["护盾"]["风暴回旋"]
                ____addShield_6(
                    nil,
                    ____target_5,
                    self,
                    ____self_4["护盾增加值"](____self_4, _____6570_503C["护盾"]["风暴回旋"]["等级相关数值"][self.level + 1])
                )
            end
            if maxCount > 0 then
                maxCount = maxCount - 1
                local oldTarget = target
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(1000),
                    {"敌军", "友军"},
                    function(____, a) return a:isAlive() and a ~= target end
                )
                if #targets == 0 then
                    p:remove()
                    return
                end
                target = random:randomList(targets)
                if not target or not target:isAlive() then
                    p:remove()
                    return
                end
                pos = target:getPosition()
                angle = self:getDirection(oldTarget, target)
                p.angle = angle
                p:moverTarget(target, 1500, 150)
            else
                p:remove()
                return
            end
        end})
        p:moverTarget(target, 1500, 150)
    end)
end
local ____ = fight
return ____exports
