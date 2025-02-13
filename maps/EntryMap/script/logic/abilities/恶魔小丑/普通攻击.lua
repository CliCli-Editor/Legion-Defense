local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 10,["32"] = 11,["33"] = 8,["34"] = 12,["35"] = 13,["36"] = 14,["37"] = 15,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 20,["46"] = 21,["48"] = 23,["50"] = 12,["51"] = 27,["52"] = 28,["53"] = 29,["54"] = 30,["55"] = 31,["56"] = 31,["57"] = 31,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 31,["63"] = 32,["64"] = 32,["65"] = 32,["66"] = 32,["67"] = 32,["68"] = 33,["69"] = 34,["70"] = 34,["71"] = 35,["72"] = 36,["73"] = 36,["75"] = 38,["76"] = 39,["77"] = 39,["78"] = 39,["79"] = 39,["80"] = 39,["81"] = 39,["82"] = 39,["83"] = 39,["84"] = 39,["85"] = 40,["88"] = 43,["89"] = 43,["90"] = 44,["92"] = 44,["93"] = 44,["94"] = 44,["95"] = 44,["96"] = 44,["97"] = 44,["98"] = 44,["99"] = 44,["100"] = 44,["103"] = 27,["104"] = 8,["105"] = 8,["106"] = 8,["107"] = 8,["108"] = 8,["109"] = 8,["110"] = 8});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) > 0
    if self["特殊攻击"] then
        self.owner:modifyValue(self.skillEntity, _____7279_6280_1, -1)
    end
    self["暴击"] = self.owner:random(
        "恶魔小丑暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self["特殊攻击"] then
        self:play("attack3", 0.88)
    elseif self["暴击"] then
        self:play("attack2", 0.8)
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:playSound(self.owner, 134218731)
    if self["特殊攻击"] then
        local angle = self.owner:getAngle()
        self:addParticle(
            134226001,
            self.owner:getPosition(),
            angle + 90,
            1,
            1,
            150
        )
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createSectorShape(350, 180, angle, self.owner),
            {"敌军"}
        )
        for ____, t in ipairs(targets) do
            local ____self_1 = _____6570_503C["恶魔小丑"]["普通攻击"]
            local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____self_2 = _____6570_503C["恶魔小丑"]["普通攻击"]
                v = ____self_2["天赋12_特殊伤害加强"](____self_2, self.owner)
            end
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                134254992
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    else
        local ____self_3 = _____6570_503C["恶魔小丑"]["普通攻击"]
        local v = ____self_3["伤害"](____self_3, self.owner)
        local ____opt_4 = cast:getTargetUnit()
        if ____opt_4 ~= nil then
            ____opt_4:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"],
                nil,
                134254992
            )
        end
    end
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134218384,
    ____class_0,
    {["施法开始"] = 0.25, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.5}
)
return ____exports
