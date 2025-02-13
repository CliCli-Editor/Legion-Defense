local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 12,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 14,["32"] = 15,["33"] = 14,["34"] = 17,["35"] = 18,["36"] = 19,["37"] = 20,["40"] = 24,["41"] = 25,["44"] = 28,["45"] = 30,["46"] = 31,["47"] = 31,["48"] = 31,["49"] = 31,["50"] = 31,["51"] = 31,["52"] = 31,["53"] = 31,["54"] = 32,["55"] = 33,["56"] = 34,["57"] = 36,["58"] = 38,["59"] = 39,["62"] = 42,["63"] = 43,["64"] = 43,["65"] = 43,["66"] = 43,["67"] = 43,["68"] = 43,["69"] = 44,["71"] = 46,["72"] = 47,["73"] = 48,["74"] = 49,["75"] = 50,["76"] = 51,["79"] = 54,["83"] = 58,["84"] = 59,["85"] = 59,["86"] = 60,["87"] = 61,["88"] = 62,["89"] = 63,["91"] = 65,["92"] = 66,["93"] = 67,["94"] = 67,["95"] = 67,["96"] = 67,["97"] = 67,["98"] = 67,["99"] = 68,["100"] = 69,["102"] = 71,["104"] = 73,["105"] = 74,["108"] = 77,["109"] = 78,["110"] = 79,["111"] = 80,["112"] = 81,["114"] = 83,["115"] = 84,["116"] = 85,["119"] = 88,["124"] = 94,["127"] = 97,["128"] = 97,["129"] = 98,["130"] = 99,["131"] = 100,["132"] = 101,["134"] = 103,["137"] = 36,["138"] = 109,["139"] = 17,["140"] = 12,["141"] = 12,["142"] = 12,["143"] = 12,["144"] = 12,["145"] = 12,["146"] = 12});
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
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____UnitTags = include("logic.models.UnitTags")
local isEnemy = ____UnitTags.isEnemy
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("skill1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local maxCount = 3
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local parent = fightUtils:getAncestor(self.owner)
    if not parent or not parent:isAlive() then
        return
    end
    local parentAtk = parent:formula(Formula["展示面板_法术攻击"])
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(
        134266945,
        self.owner,
        angle,
        0,
        nil,
        "attack1"
    )
    p:prepare({face_angle = true})
    p:setCustomData("maxCount", maxCount)
    local pos = target:getPosition()
    p:listener({onFinish = function()
        if not self.owner or not self.owner:isAlive() then
            p:remove()
            return
        end
        if not target or not target:isAlive() then
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1500),
                {"敌人"},
                function(____, a) return a:isAlive() and a ~= target end
            )
            target = random:randomList(targets)
        end
        local maxCount = p:getCustomData("maxCount")
        if not target or not target:isAlive() then
            if maxCount > 0 then
                p:setCustomData("maxCount", maxCount - 1)
                target = parent
                p:moverTarget(target, 2000, 10)
                return
            else
                p:remove()
                return
            end
        end
        if maxCount > 0 then
            local ____self_1 = _____6570_503C["吉格"]["蝮蛇普通攻击"]
            local v = ____self_1["伤害"](____self_1, self.owner, parentAtk, maxCount)
            if isEnemy(nil, target, self.owner) then
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                target.tempData[AbilityTagData["是否为AOE"]] = nil
            end
            p:setCustomData("maxCount", maxCount - 1)
            local oldTarget = target
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1500),
                {"敌人"},
                function(____, a) return a:isAlive() and a ~= target end
            )
            if #targets == 0 then
                target = parent
            else
                target = random:randomList(targets)
            end
            if not target or not target:isAlive() then
                p:remove()
                return
            end
            pos = target:getPosition()
            angle = self:getDirection(oldTarget, target)
            p.angle = angle
            if target ~= nil then
                p:moverTarget(target, 2000, 10)
            else
                if maxCount > 0 then
                    target = parent
                    p:moverTarget(target, 2000, 10)
                    return
                else
                    p:remove()
                    return
                end
            end
        else
            if not target or not target:isAlive() then
                return
            end
            local ____self_2 = _____6570_503C["吉格"]["蝮蛇普通攻击"]
            local v = ____self_2["伤害"](____self_2, self.owner, parentAtk, maxCount)
            if isEnemy(nil, target, self.owner) then
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                target.tempData[AbilityTagData["是否为AOE"]] = nil
            end
            p:remove()
            return
        end
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134280393,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.43, ["施法完成"] = 0.37}
)
return ____exports
