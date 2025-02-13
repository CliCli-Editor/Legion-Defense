local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 10,["29"] = 9,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 15,["37"] = 18,["38"] = 20,["39"] = 22,["40"] = 23,["41"] = 24,["42"] = 26,["43"] = 28,["44"] = 29,["45"] = 29,["46"] = 29,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 30,["52"] = 32,["53"] = 33,["56"] = 36,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["62"] = 37,["63"] = 37,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 40,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 43,["73"] = 43,["74"] = 43,["75"] = 43,["76"] = 43,["77"] = 44,["78"] = 45,["81"] = 48,["82"] = 49,["83"] = 50,["84"] = 51,["85"] = 52,["87"] = 55,["88"] = 56,["91"] = 59,["92"] = 59,["93"] = 59,["94"] = 59,["96"] = 59,["97"] = 59,["99"] = 59,["100"] = 60,["101"] = 61,["102"] = 62,["103"] = 63,["106"] = 26,["107"] = 69,["108"] = 12,["109"] = 8,["110"] = 8,["111"] = 8,["112"] = 8,["113"] = 8,["114"] = 8,["115"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["蓝发少女普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local maxCount = 3
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134235948, self.owner, angle, 150)
    p:prepare({hit_radius = 150, face_angle = true})
    local pos = target:getPosition()
    p:listener({onFinish = function()
        if not target or not target:isAlive() then
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1000),
                {"敌人"},
                function(____, a) return a:isAlive() and a ~= target end
            )
            target = random:randomList(targets)
        end
        if not target or not target:isAlive() then
            p:remove()
            return
        end
        if maxCount > 0 then
            local ____temp_4
            if #target:findOwnedEffects({20}) > 0 then
                local ____self_2 = _____6570_503C["佣兵技能"]["蓝发少女普通攻击"]
                ____temp_4 = ____self_2["伤害提升后的伤害"](____self_2, self.owner)
            else
                local ____self_3 = _____6570_503C["佣兵技能"]["蓝发少女普通攻击"]
                ____temp_4 = ____self_3["伤害"](____self_3, self.owner)
            end
            v = ____temp_4
            target.tempData[AbilityTagData["是否为AOE"]] = true
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            target.tempData[AbilityTagData["是否为AOE"]] = nil
            maxCount = maxCount - 1
            local oldTarget = target
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1000),
                {"敌人"},
                function(____, a) return a:isAlive() and a ~= target end
            )
            if #targets == 0 then
                p:remove()
                return
            end
            target = random:randomList(targets)
            pos = target:getPosition()
            angle = self:getDirection(oldTarget, target)
            p.angle = angle
            p:moverTarget(target, 2000, 10)
        else
            if not target or not target:isAlive() then
                p:remove()
                return
            end
            local ____temp_7
            if #target:findOwnedEffects({20}) > 0 then
                local ____self_5 = _____6570_503C["佣兵技能"]["蓝发少女普通攻击"]
                ____temp_7 = ____self_5["伤害提升后的伤害"](____self_5, self.owner)
            else
                local ____self_6 = _____6570_503C["佣兵技能"]["蓝发少女普通攻击"]
                ____temp_7 = ____self_6["伤害"](____self_6, self.owner)
            end
            v = ____temp_7
            target.tempData[AbilityTagData["是否为AOE"]] = true
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
            target.tempData[AbilityTagData["是否为AOE"]] = nil
            p:remove()
            return
        end
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134261774,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
