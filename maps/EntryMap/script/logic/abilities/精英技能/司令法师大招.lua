local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 11,["30"] = 12,["31"] = 11,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 17,["38"] = 18,["41"] = 22,["42"] = 24,["43"] = 26,["44"] = 27,["45"] = 28,["46"] = 29,["47"] = 31,["48"] = 33,["49"] = 34,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 35,["57"] = 37,["60"] = 40,["61"] = 41,["62"] = 41,["63"] = 41,["64"] = 41,["65"] = 42,["66"] = 43,["67"] = 43,["68"] = 44,["69"] = 45,["70"] = 46,["71"] = 47,["72"] = 48,["74"] = 50,["76"] = 52,["77"] = 53,["78"] = 54,["79"] = 54,["80"] = 54,["81"] = 54,["82"] = 54,["83"] = 54,["84"] = 55,["85"] = 56,["88"] = 59,["89"] = 60,["90"] = 61,["91"] = 62,["92"] = 63,["93"] = 64,["94"] = 65,["95"] = 65,["96"] = 65,["97"] = 65,["98"] = 65,["99"] = 65,["100"] = 65,["101"] = 65,["102"] = 65,["103"] = 65,["105"] = 68,["106"] = 69,["107"] = 69,["108"] = 69,["109"] = 69,["110"] = 69,["111"] = 69,["112"] = 70,["114"] = 72,["117"] = 75,["118"] = 75,["119"] = 75,["120"] = 75,["121"] = 76,["122"] = 77,["123"] = 77,["124"] = 78,["125"] = 79,["126"] = 80,["127"] = 81,["128"] = 82,["130"] = 84,["132"] = 86,["135"] = 31,["136"] = 92,["137"] = 93,["138"] = 94,["139"] = 94,["140"] = 94,["141"] = 94,["142"] = 94,["143"] = 94,["144"] = 94,["145"] = 94,["146"] = 94,["147"] = 94,["148"] = 14,["149"] = 9,["150"] = 9,["151"] = 9,["152"] = 9,["153"] = 9,["154"] = 9,["155"] = 9});
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
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local isEnemy = ____UnitTags.isEnemy
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_3")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["司令法师大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local ____self_2 = _____6570_503C["精英技能"]["司令法师大招"]
    local c = ____self_2["恢复"](____self_2, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local maxCount = 5
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(134273835, self.owner, angle, 150)
    p:prepare({hit_radius = 150})
    local pos = target:getPosition()
    local list = {}
    p:listener({onFinish = function()
        if not target or not target:isAlive() then
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1000),
                {},
                function(____, a) return a:isAlive() and a ~= target end
            )
            target = random:randomList(targets)
        end
        if not target or not target:isAlive() then
            return
        end
        if maxCount > 0 then
            local x = __TS__ArrayFilter(
                list,
                function(____, a) return a == target end
            )
            local repeatCount = #x
            local ____self_3 = _____6570_503C["精英技能"]["司令法师大招"]
            v = ____self_3["伤害"](____self_3, self.owner) * (1 + repeatCount * 0.5)
            if isEnemy(nil, self.owner, target) then
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self.skillEntity, Formula["法术伤害"], v)
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                list[#list + 1] = target
            else
                target:cure(self.skillEntity, Formula["回血值"], c)
            end
            maxCount = maxCount - 1
            local oldTarget = target
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(1000),
                {},
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
            local d = self:getDistance(oldTarget, target)
            local h = self:getParabolaHeight(45, d)
            p:moverTarget(
                target,
                1500,
                150,
                nil,
                nil,
                nil,
                nil,
                h
            )
        else
            if not target or not target:isAlive() then
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(1000),
                    {},
                    function(____, a) return a:isAlive() and a ~= target end
                )
                target = random:randomList(targets)
            end
            if not target or not target:isAlive() then
                return
            end
            local x = __TS__ArrayFilter(
                list,
                function(____, a) return a == target end
            )
            local repeatCount = #x
            local ____self_4 = _____6570_503C["精英技能"]["司令法师大招"]
            v = ____self_4["伤害"](____self_4, self.owner) * (1 + repeatCount * 0.5)
            if isEnemy(nil, self.owner, target) then
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self.skillEntity, Formula["法术伤害"], v)
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                list[#list + 1] = target
            else
                target:cure(self.skillEntity, Formula["回血值"], c)
            end
            p:remove()
            return
        end
    end})
    local dx = self:getDistance(self.owner, target)
    local hx = self:getParabolaHeight(45, dx)
    p:moverTarget(
        target,
        1500,
        150,
        nil,
        nil,
        nil,
        nil,
        hx
    )
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134269652,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 1.05, ["施法完成"] = 0}
)
return ____exports
