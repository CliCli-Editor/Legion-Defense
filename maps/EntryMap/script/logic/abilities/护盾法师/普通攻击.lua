local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["31"] = 8,["32"] = 10,["33"] = 8,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 14,["40"] = 15,["42"] = 17,["44"] = 12,["45"] = 20,["46"] = 21,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["52"] = 22,["53"] = 22,["55"] = 22,["56"] = 23,["57"] = 23,["58"] = 23,["60"] = 23,["62"] = 23,["63"] = 24,["64"] = 24,["65"] = 24,["66"] = 24,["68"] = 24,["70"] = 24,["71"] = 25,["72"] = 26,["73"] = 27,["74"] = 28,["75"] = 30,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 31,["80"] = 31,["81"] = 31,["82"] = 31,["83"] = 31,["85"] = 32,["86"] = 33,["87"] = 34,["88"] = 34,["89"] = 34,["90"] = 34,["91"] = 35,["92"] = 35,["93"] = 36,["94"] = 36,["95"] = 36,["96"] = 36,["97"] = 36,["98"] = 37,["99"] = 38,["100"] = 38,["101"] = 38,["102"] = 38,["103"] = 38,["104"] = 38,["105"] = 38,["106"] = 38,["107"] = 38,["110"] = 28,["111"] = 43,["112"] = 20,["113"] = 8,["114"] = 8,["115"] = 8,["116"] = 8,["117"] = 8,["118"] = 8,["119"] = 8});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_12 = createAbility
local ____fight_10 = fight
local ____temp_11 = -1
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "护盾法师暴击率",
        self.owner:p(_____66B4_51FB_7387)
    )
    if self.owner:getValue(_____5929_8D4B_1) == 1 and self["暴击"] then
        self:play("attack3", 1, 0, 1)
    else
        self:play("attack1", 1, 0, 1)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_1 = _____6570_503C["护盾法师"]["普通攻击"]
        ____temp_3 = ____self_1["天赋12_伤害"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["护盾法师"]["普通攻击"]
        ____temp_3 = ____self_2["普通伤害"](____self_2, self.owner)
    end
    local v = ____temp_3
    local ____temp_4
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        ____temp_4 = self["暴击"]
    else
        ____temp_4 = false
    end
    local cri = ____temp_4
    local ____temp_6
    if self.owner:getValue(_____5929_8D4B_1) == 1 and self["暴击"] then
        local ____self_5 = _____6570_503C["护盾法师"]["普通攻击"]
        ____temp_6 = ____self_5["天赋11_加蓝"](____self_5)
    else
        ____temp_6 = 5
    end
    local addMpNum = ____temp_6
    local angle = self:getDirection(ability.owner, target)
    local p = self:createProjectile(-1, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if target ~= nil then
            target:hurt(
                self.skillEntity,
                Formula["法术伤害"],
                v,
                AbilityType["普攻"],
                cri
            )
        end
        self.owner:addMp(self.skillEntity, addMpNum)
        if self.owner:getEffectQuantity(_____6570_503C["护盾法师"]["大招"].buffId) > 0 then
            local pos = {
                x = self.owner:getValue(_____7279_6280_1),
                y = self.owner:getValue(_____7279_6280_2)
            }
            local ____self_9 = _____6570_503C["护盾法师"]["普通攻击"]
            local v2 = ____self_9["天赋32_伤害"](____self_9, self.owner)
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(500),
                {"敌人"}
            )
            for ____, t in ipairs(targets) do
                t:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    v2,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    -1
                )
            end
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_10,
    ____temp_11,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
