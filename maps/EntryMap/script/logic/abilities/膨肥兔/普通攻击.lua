local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["32"] = 10,["33"] = 11,["34"] = 10,["35"] = 12,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["41"] = 13,["42"] = 13,["44"] = 13,["45"] = 14,["46"] = 15,["47"] = 16,["48"] = 17,["50"] = 12,["51"] = 21,["52"] = 22,["53"] = 23,["56"] = 27,["57"] = 27,["58"] = 28,["59"] = 29,["60"] = 29,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 31,["70"] = 32,["71"] = 32,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 32,["78"] = 32,["79"] = 33,["80"] = 34,["81"] = 34,["82"] = 34,["83"] = 34,["84"] = 34,["85"] = 34,["86"] = 35,["87"] = 35,["88"] = 35,["90"] = 36,["91"] = 36,["93"] = 37,["94"] = 38,["95"] = 39,["97"] = 41,["98"] = 42,["99"] = 42,["100"] = 42,["101"] = 42,["102"] = 42,["103"] = 42,["104"] = 43,["105"] = 44,["106"] = 45,["107"] = 47,["108"] = 48,["111"] = 51,["112"] = 52,["113"] = 53,["114"] = 53,["115"] = 53,["116"] = 53,["117"] = 53,["118"] = 53,["119"] = 53,["120"] = 53,["121"] = 53,["122"] = 54,["123"] = 45,["124"] = 57,["125"] = 58,["126"] = 59,["127"] = 59,["128"] = 59,["129"] = 59,["130"] = 59,["131"] = 59,["132"] = 59,["133"] = 59,["134"] = 59,["135"] = 59,["138"] = 36,["141"] = 61,["142"] = 62,["143"] = 62,["145"] = 63,["146"] = 63,["147"] = 64,["148"] = 63,["153"] = 67,["154"] = 67,["155"] = 67,["156"] = 67,["157"] = 67,["158"] = 67,["159"] = 67,["160"] = 67,["161"] = 67,["163"] = 69,["164"] = 70,["165"] = 71,["166"] = 72,["168"] = 74,["169"] = 21,["170"] = 10,["171"] = 10,["172"] = 10,["173"] = 10,["174"] = 10,["175"] = 10,["176"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_1 = _____6570_503C["膨肥兔"]["普通攻击"]
        ____temp_3 = ____self_1["天赋12特殊攻击概率"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["膨肥兔"]["普通攻击"]
        ____temp_3 = ____self_2["特殊攻击概率"](____self_2)
    end
    local percent = ____temp_3
    self["特殊攻击"] = self.owner:random("膨肥兔特殊攻击概率", percent)
    self:play("attack1")
    if self.owner.roleId == 134225821 then
        self:addEffect(self.owner, 134259545, 1)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_4 = _____6570_503C["膨肥兔"]["普通攻击"]
    local v = ____self_4["伤害"](____self_4, self.owner)
    if self["特殊攻击"] then
        local ____self_5 = _____6570_503C["膨肥兔"]["普通攻击"]
        v = ____self_5["特殊攻击伤害"](____self_5, self.owner)
        self:addParticle(
            134234995,
            target:getPosition(),
            0,
            1,
            1,
            10
        )
        target.tempData[AbilityTagData["是否为AOE"]] = true
        target:hurt(
            self.skillEntity,
            Formula["法术伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            134242217
        )
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(400, self.owner),
            {"敌人"},
            function(____, a) return a ~= target end
        )
        local ____v_7 = v
        local ____self_6 = _____6570_503C["膨肥兔"]["普通攻击"]
        local vx = ____v_7 * ____self_6["特殊攻击伤害系数"](____self_6)
        do
            local i = 0
            while i < 4 do
                do
                    local t = targets[i + 1]
                    if not t or not t:isAlive() then
                        goto __continue8
                    end
                    local angle = self:getDirection(target, t)
                    local p = self:createProjectile(
                        134247837,
                        target:getPosition(),
                        angle,
                        150
                    )
                    p:prepare({face_angle = true})
                    p:setCustomData("dmg", vx)
                    p:listener({onFinish = function()
                        p:remove()
                        if not t or not t:isAlive() then
                            return
                        end
                        local dmg = p:getCustomData("dmg")
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(
                            self.skillEntity,
                            Formula["法术伤害"],
                            dmg,
                            AbilityType["普攻"],
                            nil,
                            nil,
                            134242217
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end})
                    local distance = self:getDistance(target, t)
                    local ph = self:getParabolaHeight(angle, distance)
                    p:moverTarget(
                        t,
                        1000,
                        0,
                        nil,
                        nil,
                        nil,
                        nil,
                        ph
                    )
                end
                ::__continue8::
                i = i + 1
            end
        end
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_8 = _____6570_503C["膨肥兔"]["普通攻击"]
            local count = ____self_8["天赋11净化debuff数量"](____self_8)
            do
                local i = 0
                while i < count do
                    fightUtils:removeRandomDebuff(self.skillEntity, self.owner)
                    i = i + 1
                end
            end
        end
    else
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            134242217
        )
    end
    self:playSound(self.owner, 134240944)
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134278262,
    ____class_0,
    {["施法开始"] = 0.45, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0}
)
return ____exports
