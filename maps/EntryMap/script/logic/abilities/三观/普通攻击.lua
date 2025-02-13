local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 12,["34"] = 11,["35"] = 14,["36"] = 15,["37"] = 16,["40"] = 19,["41"] = 19,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["47"] = 20,["48"] = 20,["50"] = 20,["51"] = 21,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 22,["60"] = 22,["61"] = 22,["62"] = 22,["64"] = 24,["65"] = 25,["66"] = 25,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 25,["71"] = 25,["72"] = 25,["73"] = 25,["74"] = 26,["75"] = 27,["76"] = 28,["78"] = 30,["79"] = 31,["80"] = 32,["81"] = 33,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 35,["89"] = 35,["90"] = 35,["91"] = 36,["92"] = 37,["93"] = 39,["94"] = 40,["97"] = 43,["98"] = 44,["99"] = 44,["100"] = 44,["101"] = 44,["102"] = 44,["103"] = 44,["104"] = 44,["105"] = 44,["106"] = 45,["107"] = 45,["108"] = 45,["109"] = 45,["110"] = 45,["111"] = 46,["112"] = 47,["113"] = 48,["114"] = 49,["116"] = 37,["117"] = 53,["118"] = 54,["119"] = 54,["120"] = 54,["121"] = 54,["122"] = 55,["123"] = 55,["124"] = 55,["125"] = 55,["126"] = 55,["127"] = 55,["128"] = 55,["129"] = 55,["130"] = 55,["131"] = 55,["132"] = 14,["133"] = 10,["134"] = 10,["135"] = 10,["136"] = 10,["137"] = 10,["138"] = 10,["139"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack2")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["三观"]["普通攻击"]
    local v1 = ____self_1["伤害"](____self_1, self.owner)
    local ____temp_4
    if self.owner:getValue(_____5929_8D4B_1) == 2 and self.owner:p(_____901A_7528_62A4_76FE) > 0 then
        local ____self_2 = _____6570_503C["三观"]["普通攻击"]
        ____temp_4 = ____self_2["天赋12有护盾时投掷伤害"](____self_2, self.owner)
    else
        local ____self_3 = _____6570_503C["三观"]["普通攻击"]
        ____temp_4 = ____self_3["投掷伤害"](____self_3, self.owner)
    end
    local v2 = ____temp_4
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____fightUtils_8 = fightUtils
        local ____fightUtils_addShield_9 = fightUtils.addShield
        local ____self_owner_6 = self.owner
        local ____self_skillEntity_7 = self.skillEntity
        local ____self_5 = _____6570_503C["三观"]["普通攻击"]
        ____fightUtils_addShield_9(
            ____fightUtils_8,
            ____self_owner_6,
            ____self_skillEntity_7,
            ____self_5["天赋11获得护盾"](____self_5, self.owner)
        )
    end
    self:playSound(self.owner, 134240944)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v1,
        AbilityType["普攻"],
        nil,
        nil,
        134231255
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
    local targetX = self.owner:findTarget({"敌军"}, nil, 2, 1000)
    if not targetX or not target:isAlive() then
        targetX = target
    end
    local p = self:createProjectile(
        134257317,
        self.owner,
        0,
        0,
        nil,
        "attack2"
    )
    p:prepare({face_angle = true})
    p:listener({onFinish = function()
        p:remove()
        if not targetX or not targetX:isAlive() then
            return
        end
        self:playSound(self.owner, 134240944)
        self:addParticle(
            100114,
            targetX:getPosition(),
            nil,
            1,
            1,
            10
        )
        local targets = self.owner:findByShape(
            targetX:getPosition(),
            Shape:createCircularShape(350, targetX),
            {"敌人"}
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end})
    local distance = self:getDistance(self.owner, targetX)
    local parabola_height = math.max(
        self:getParabolaHeight(45, distance),
        500
    )
    p:moverTarget(
        targetX,
        1500,
        10,
        nil,
        nil,
        nil,
        nil,
        parabola_height
    )
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134257039,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
