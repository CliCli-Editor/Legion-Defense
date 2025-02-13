local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["33"] = 11,["34"] = 12,["35"] = 13,["36"] = 14,["37"] = 15,["38"] = 11,["39"] = 16,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 19,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["56"] = 22,["57"] = 23,["58"] = 24,["59"] = 25,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 26,["65"] = 26,["66"] = 26,["67"] = 26,["69"] = 29,["70"] = 30,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["82"] = 16,["83"] = 36,["84"] = 37,["85"] = 37,["86"] = 37,["87"] = 37,["88"] = 37,["89"] = 38,["90"] = 39,["91"] = 40,["92"] = 41,["94"] = 43,["95"] = 44,["96"] = 45,["98"] = 47,["99"] = 48,["100"] = 49,["101"] = 49,["102"] = 50,["103"] = 51,["104"] = 51,["106"] = 53,["107"] = 53,["108"] = 54,["109"] = 55,["110"] = 56,["111"] = 56,["113"] = 59,["114"] = 60,["116"] = 62,["118"] = 64,["119"] = 65,["120"] = 66,["122"] = 68,["123"] = 69,["124"] = 70,["125"] = 71,["126"] = 72,["127"] = 70,["128"] = 74,["129"] = 75,["132"] = 78,["133"] = 79,["134"] = 80,["135"] = 80,["136"] = 80,["137"] = 81,["138"] = 82,["139"] = 83,["140"] = 84,["141"] = 84,["142"] = 84,["145"] = 87,["146"] = 88,["147"] = 88,["148"] = 88,["149"] = 88,["150"] = 88,["151"] = 88,["152"] = 88,["153"] = 89,["154"] = 70,["155"] = 70,["156"] = 92,["157"] = 36,["158"] = 11,["159"] = 11,["160"] = 11,["161"] = 11,["162"] = 11,["163"] = 11,["164"] = 11});
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
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
    self["暴击"] = false
    self["普攻投射物ID"] = 134241838
    self["暴击投射物ID"] = 134217767
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self["暴击"] = self.owner:random(
            "芙罗拉普攻暴击概率",
            self.owner:p(_____66B4_51FB_7387)
        )
        if self["暴击"] then
            self:play("attack2", 0.75, 0, 0.15)
            self:addParticle(
                134256229,
                self.owner:getPosition(),
                self.owner:getAngle(),
                1,
                1,
                150
            )
        else
            self.count = self.count + 1
            if self.count % 2 == 0 then
                self:play("attack1")
                __TS__Await(self:awaitTime(0.1))
                self:addParticle(
                    134272617,
                    self.owner:getPosition(),
                    self.owner:getAngle(),
                    1,
                    1,
                    150
                )
            else
                self:play("attack3")
                __TS__Await(self:awaitTime(0.1))
                self:addParticle(
                    134237981,
                    self.owner:getPosition(),
                    self.owner:getAngle(),
                    1,
                    1,
                    150
                )
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(800, self.owner),
        {"敌人"}
    )
    local target = random:randomList(targets)
    if not target or not target:isAlive() then
        console:log("芙罗拉普攻没有目标")
        target = cast:getTargetUnit()
    end
    if not target then
        console:log("芙罗拉普攻没有目标2")
        target = self:offsetPoint(self.owner, 0, 300)
    end
    local angle = self:getDirection(self.owner, target)
    self.owner:setAngle(angle, 0.01)
    local ____self_1 = _____6570_503C["芙罗拉"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_2 = _____6570_503C["芙罗拉"]["普通攻击"]
        v = ____self_2["天赋12伤害"](____self_2, self.owner)
    end
    local ____self_3 = _____6570_503C["芙罗拉"]["普通攻击"]
    local radius = ____self_3["投射物碰撞半径"](____self_3)
    if self["暴击"] then
        self:play("attack2", 1.08, 0.15, -1)
        local ____self_4 = _____6570_503C["芙罗拉"]["普通攻击"]
        radius = ____self_4["暴击投射物碰撞半径"](____self_4)
    end
    if self["暴击"] then
        self:playSound(self.owner, 134259963)
    else
        self:playSound(self.owner, 134257877)
    end
    local p = self:createProjectile(self["暴击"] and self["暴击投射物ID"] or self["普攻投射物ID"], self.owner, angle, 150)
    if self["暴击"] then
        p:setCustomData("attackTypes", -1)
    end
    p:setCustomData("damage", v)
    p:prepare({hit_radius = radius, hit_same = false})
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(unit)
            if not unit or not unit:isAlive() then
                return
            end
            local vx = p:getCustomData("damage")
            if p:getCustomData("attackTypes") > 0 then
                local ____vx_6 = vx
                local ____self_5 = _____6570_503C["芙罗拉"]["普通攻击"]
                vx = ____vx_6 * ____self_5["穿透伤害系数"](____self_5)
            elseif p:getCustomData("attackTypes") == 0 then
                p:setCustomData("attackTypes", 1)
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____vx_8 = vx
                    local ____self_7 = _____6570_503C["芙罗拉"]["普通攻击"]
                    vx = ____vx_8 * ____self_7["天赋11首目标伤害系数"](____self_7)
                end
            end
            unit.tempData[AbilityTagData["是否为AOE"]] = true
            unit:hurt(
                ability.skillEntity,
                Formula["物理伤害"],
                vx,
                AbilityType["普攻"],
                self["暴击"]
            )
            unit.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    })
    p:moverLine(angle, 1200, 2500)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134232715,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.8}
)
return ____exports
