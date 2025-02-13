local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["32"] = 10,["33"] = 11,["34"] = 12,["35"] = 13,["36"] = 10,["37"] = 14,["38"] = 15,["39"] = 16,["40"] = 17,["41"] = 18,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 23,["48"] = 25,["51"] = 14,["52"] = 29,["53"] = 30,["54"] = 31,["55"] = 32,["57"] = 35,["59"] = 37,["60"] = 38,["63"] = 41,["64"] = 41,["65"] = 42,["66"] = 43,["67"] = 44,["68"] = 45,["70"] = 47,["71"] = 48,["72"] = 49,["73"] = 49,["74"] = 50,["76"] = 52,["77"] = 53,["78"] = 54,["79"] = 54,["80"] = 54,["81"] = 54,["82"] = 54,["83"] = 54,["84"] = 54,["85"] = 54,["86"] = 54,["87"] = 54,["88"] = 54,["89"] = 54,["90"] = 55,["91"] = 55,["92"] = 55,["93"] = 55,["94"] = 55,["95"] = 56,["96"] = 57,["97"] = 57,["98"] = 58,["99"] = 59,["101"] = 61,["103"] = 61,["105"] = 61,["106"] = 61,["108"] = 61,["112"] = 61,["113"] = 62,["114"] = 62,["115"] = 62,["116"] = 62,["117"] = 62,["118"] = 62,["119"] = 62,["120"] = 62,["123"] = 29,["124"] = 10,["125"] = 10,["126"] = 10,["127"] = 10,["128"] = 10,["129"] = 10,["130"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
    self.count = 0
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self.owner:setValue(_____7279_6280_1, 0)
        self["特殊攻击"] = true
        self:play("ability4", 0.83)
    else
        self["特殊攻击"] = false
        self.count = self.count + 1
        if self.count % 2 == 0 then
            self:play("attack2")
        else
            self:play("attack1")
        end
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["特殊攻击"] then
        self:play("ability4", 1, 0.36, -1)
        self:playSound(self.owner, 134264532)
    else
        self:playSound(self.owner, 134244204)
    end
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_1 = _____6570_503C["龛"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    target:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, self["脚底粒子ID"], scale)
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_2 = _____6570_503C["龛"]["普通攻击"]
        local quantity = ____self_2["天赋11普攻附加中毒层数"](____self_2) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        target:addEffect(self.skillEntity, 1, quantity)
    end
    if self["特殊攻击"] then
        local angle = self:getDirection(self.owner, target)
        self:addParticle(
            134248186,
            self.owner:getPosition(),
            angle,
            0.75,
            1,
            50,
            nil,
            nil,
            nil,
            true
        )
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(600, 60, angle, self.owner),
            {"敌人"}
        )
        local level = self.owner:getLevel()
        local ____self_3 = _____6570_503C["龛"]["普通攻击"]
        local quantity2 = ____self_3["特殊攻击中毒层数"](____self_3, level) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        for ____, t in ipairs(targets) do
            t:addEffect(self.skillEntity, 1, quantity2)
        end
        local ____temp_7 = self.owner:getValue(_____5929_8D4B_1) == 2
        if ____temp_7 then
            local ____self_5 = self.owner
            local ____self_5_random_6 = ____self_5.random
            local ____self_4 = _____6570_503C["龛"]["普通攻击"]
            ____temp_7 = ____self_5_random_6(
                ____self_5,
                "龛天赋12召唤僵尸概率",
                ____self_4["天赋12特殊攻击召唤僵尸概率"](____self_4)
            )
        end
        if ____temp_7 then
            fightUtils:summon(
                self.owner,
                10,
                nil,
                nil,
                1,
                8
            )
        end
    end
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134277062,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
