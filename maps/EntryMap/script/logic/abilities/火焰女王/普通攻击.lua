local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 9,["29"] = 7,["30"] = 11,["31"] = 14,["32"] = 15,["33"] = 16,["34"] = 17,["36"] = 19,["38"] = 11,["39"] = 23,["40"] = 24,["41"] = 25,["44"] = 28,["45"] = 30,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 32,["50"] = 32,["51"] = 32,["52"] = 32,["53"] = 32,["54"] = 33,["55"] = 39,["56"] = 40,["57"] = 41,["58"] = 39,["59"] = 43,["60"] = 44,["63"] = 47,["65"] = 47,["67"] = 47,["68"] = 47,["70"] = 47,["74"] = 47,["75"] = 48,["76"] = 48,["77"] = 48,["78"] = 48,["79"] = 48,["80"] = 48,["81"] = 48,["82"] = 48,["83"] = 48,["84"] = 49,["85"] = 50,["86"] = 50,["87"] = 50,["88"] = 50,["91"] = 53,["92"] = 53,["93"] = 53,["94"] = 53,["96"] = 53,["97"] = 53,["99"] = 53,["100"] = 54,["101"] = 55,["102"] = 55,["103"] = 55,["104"] = 55,["105"] = 55,["106"] = 55,["107"] = 55,["108"] = 55,["109"] = 55,["110"] = 56,["111"] = 39,["112"] = 39,["113"] = 60,["115"] = 63,["116"] = 63,["117"] = 63,["118"] = 63,["119"] = 63,["120"] = 63,["121"] = 63,["122"] = 63,["123"] = 64,["124"] = 66,["125"] = 67,["128"] = 70,["129"] = 70,["130"] = 70,["131"] = 70,["132"] = 70,["133"] = 70,["134"] = 70,["135"] = 70,["136"] = 70,["137"] = 70,["138"] = 70,["139"] = 70,["140"] = 70,["141"] = 70,["142"] = 70,["143"] = 64,["144"] = 73,["146"] = 23,["147"] = 7,["148"] = 7,["149"] = 7,["150"] = 7,["151"] = 7,["152"] = 7,["153"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_18 = createAbility
local ____fight_17 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("attack2", 1, 0, 1)
    else
        self:play("attack1", 1, 0, 1)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(ability.owner, target)
    if self["特殊攻击"] then
        local p = self:createProjectile(
            134242199,
            self.owner,
            angle,
            150,
            nil,
            "right_hand"
        )
        p:prepare({hit_radius = 50, hit_same = false, hit_type = 0, absolute_height = true})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(unit)
                if not unit or not unit:isAlive() then
                    return
                end
                local ____temp_4 = self.owner:v(_____5929_8D4B_1) == 2
                if ____temp_4 then
                    local ____self_2 = self.owner
                    local ____self_2_random_3 = ____self_2.random
                    local ____self_1 = _____6570_503C["火焰女王"]["普通攻击"]
                    ____temp_4 = ____self_2_random_3(
                        ____self_2,
                        "火焰女王普攻火球附加灼烧",
                        ____self_1["天赋12_灼烧概率"](____self_1)
                    )
                end
                if ____temp_4 then
                    local ____unit_7 = unit
                    local ____unit_addEffect_8 = unit.addEffect
                    local ____ability_skillEntity_6 = ability.skillEntity
                    local ____self_5 = _____6570_503C["火焰女王"]["普通攻击"]
                    local effectEntity = ____unit_addEffect_8(
                        ____unit_7,
                        ____ability_skillEntity_6,
                        ____self_5["天赋12_灼烧buffId"](____self_5)
                    )
                    if effectEntity then
                        effectEntity:setStore(
                            Formula["展示面板_法术攻击"],
                            self.owner:formula(Formula["展示面板_法术攻击"])
                        )
                    end
                end
                local ____temp_11
                if self.owner:v(_____5929_8D4B_1) == 1 then
                    local ____self_9 = _____6570_503C["火焰女王"]["普通攻击"]
                    ____temp_11 = ____self_9["天赋11_火球伤害"](____self_9, self.owner)
                else
                    local ____self_10 = _____6570_503C["火焰女王"]["普通攻击"]
                    ____temp_11 = ____self_10["特殊攻击伤害"](____self_10, self.owner)
                end
                local v = ____temp_11
                unit.tempData[AbilityTagData["是否为AOE"]] = true
                unit:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    v,
                    AbilityType["普攻"],
                    false,
                    nil,
                    104653
                )
                unit.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        })
        p:moverLine(angle, 2000, 2000)
    else
        local p = self:createProjectile(
            134231620,
            self.owner,
            angle,
            150,
            nil,
            "left_hand"
        )
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            local ____target_15 = target
            local ____target_hurt_16 = target.hurt
            local ____self_skillEntity_13 = self.skillEntity
            local ____Formula__6CD5_672F_4F24_5BB3_14 = Formula["法术伤害"]
            local ____self_12 = _____6570_503C["火焰女王"]["普通攻击"]
            ____target_hurt_16(
                ____target_15,
                ____self_skillEntity_13,
                ____Formula__6CD5_672F_4F24_5BB3_14,
                ____self_12["伤害"](____self_12, self.owner),
                AbilityType["普攻"],
                nil,
                nil,
                104653
            )
        end})
        p:moverTarget(target, 2000, 0)
    end
end
____exports.key = ____createAbility_18(
    nil,
    ____fight_17,
    134239665,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.6}
)
return ____exports
