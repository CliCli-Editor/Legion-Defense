local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayReverse = ____lualib.__TS__ArrayReverse
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["32"] = 9,["33"] = 10,["34"] = 12,["35"] = 13,["36"] = 9,["37"] = 14,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 16,["43"] = 14,["44"] = 18,["45"] = 19,["46"] = 20,["49"] = 23,["51"] = 23,["52"] = 23,["55"] = 23,["56"] = 24,["57"] = 24,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 25,["65"] = 25,["66"] = 25,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 25,["71"] = 26,["72"] = 27,["73"] = 28,["74"] = 29,["75"] = 30,["76"] = 30,["77"] = 30,["78"] = 30,["79"] = 30,["80"] = 30,["81"] = 30,["82"] = 30,["83"] = 31,["84"] = 32,["85"] = 33,["86"] = 35,["87"] = 36,["90"] = 39,["91"] = 40,["92"] = 40,["93"] = 40,["94"] = 40,["95"] = 40,["96"] = 40,["97"] = 40,["98"] = 40,["99"] = 40,["100"] = 41,["102"] = 41,["104"] = 41,["105"] = 41,["107"] = 41,["111"] = 41,["112"] = 42,["113"] = 42,["114"] = 42,["115"] = 42,["116"] = 42,["117"] = 42,["118"] = 42,["119"] = 42,["120"] = 42,["122"] = 44,["123"] = 45,["124"] = 46,["125"] = 46,["126"] = 46,["128"] = 48,["129"] = 49,["130"] = 49,["131"] = 49,["132"] = 49,["133"] = 49,["134"] = 49,["135"] = 49,["136"] = 49,["137"] = 49,["138"] = 50,["139"] = 33,["140"] = 53,["141"] = 54,["142"] = 54,["143"] = 54,["144"] = 54,["145"] = 54,["146"] = 54,["147"] = 54,["148"] = 54,["149"] = 54,["150"] = 54,["152"] = 56,["153"] = 56,["154"] = 56,["155"] = 56,["157"] = 56,["158"] = 56,["160"] = 56,["161"] = 57,["162"] = 58,["164"] = 58,["165"] = 58,["168"] = 58,["172"] = 18,["173"] = 9,["174"] = 9,["175"] = 9,["176"] = 9,["177"] = 9,["178"] = 9,["179"] = 9});
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
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_27 = createAbility
local ____fight_26 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
    self["投射物ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[1] or 134269788
    self["受击特效ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[2] or 134277239
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self["暴击"] = self.owner:random(
        "爱神普攻暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    self:play(self["暴击"] and "attack2" or "attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local tx = cast:getTargetUnit()
    if not tx or not tx:isAlive() then
        return
    end
    local ____self_2 = self.owner
    local ____self_2_getEffectQuantity_3 = ____self_2.getEffectQuantity
    local ____self_1 = _____6570_503C["爱神"]["普通攻击"]
    local count = ____self_2_getEffectQuantity_3(
        ____self_2,
        ____self_1["分裂叠加buffId"](____self_1)
    ) + 1
    local ____self_4 = _____6570_503C["爱神"]["普通攻击"]
    local v = ____self_4["伤害"](____self_4, self.owner)
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(
            1200,
            180,
            self.owner:getAngle(),
            self.owner
        ),
        {"敌人"},
        function(____, a) return a ~= tx end,
        count - 1,
        0
    )
    targets[#targets + 1] = tx
    __TS__ArrayReverse(targets)
    for ____, target in ipairs(targets) do
        local angleX = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            self["投射物ID"],
            self.owner,
            angleX,
            0,
            nil,
            "attack1"
        )
        p:prepare({face_angle = true})
        p:setCustomData("dmg", v)
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            local ____target_7 = target
            local ____target_addEffect_8 = target.addEffect
            local ____self_skillEntity_6 = self.skillEntity
            local ____self_5 = _____6570_503C["爱神"]["普通攻击"]
            ____target_addEffect_8(
                ____target_7,
                ____self_skillEntity_6,
                ____self_5["对敌人附加buffId"](____self_5)
            )
            local ____temp_12 = self.owner:getValue(_____5929_8D4B_1) == 1 and self["暴击"]
            if ____temp_12 then
                local ____self_10 = self.owner
                local ____self_10_random_11 = ____self_10.random
                local ____self_9 = _____6570_503C["爱神"]["普通攻击"]
                ____temp_12 = ____self_10_random_11(
                    ____self_10,
                    "爱神天赋11普攻概率",
                    ____self_9["天赋11附加撕裂概率"](____self_9)
                )
            end
            if ____temp_12 then
                local ____target_15 = target
                local ____target_addEffect_16 = target.addEffect
                local ____self_skillEntity_14 = self.skillEntity
                local ____self_13 = _____6570_503C["爱神"]["大招"]
                ____target_addEffect_16(
                    ____target_15,
                    ____self_skillEntity_14,
                    ____self_13["天赋31附加buffId"](____self_13)
                )
            end
            local vx = p:getCustomData("dmg")
            if tx ~= target then
                local ____vx_18 = vx
                local ____self_17 = _____6570_503C["爱神"]["普通攻击"]
                vx = ____vx_18 * ____self_17["分裂箭伤害系数"](____self_17)
            end
            target.tempData[AbilityTagData["是否为AOE"]] = true
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                vx,
                AbilityType["普攻"],
                nil,
                nil,
                self["受击特效ID"]
            )
            target.tempData[AbilityTagData["是否为AOE"]] = nil
        end})
        local distance = self:getDistance(self.owner, target)
        p:moverLine(
            angleX,
            distance - 100,
            2500,
            nil,
            nil,
            nil,
            150,
            150
        )
    end
    local ____temp_21
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_19 = _____6570_503C["爱神"]["普通攻击"]
        ____temp_21 = ____self_19["天赋12普攻分裂概率"](____self_19)
    else
        local ____self_20 = _____6570_503C["爱神"]["普通攻击"]
        ____temp_21 = ____self_20["普攻分裂概率"](____self_20)
    end
    local px = ____temp_21
    if self.owner:random("爱神普攻分裂概率", px) then
        local ____self_24 = self.owner
        local ____self_24_addEffect_25 = ____self_24.addEffect
        local ____self_skillEntity_23 = self.skillEntity
        local ____self_22 = _____6570_503C["爱神"]["普通攻击"]
        ____self_24_addEffect_25(
            ____self_24,
            ____self_skillEntity_23,
            ____self_22["分裂叠加buffId"](____self_22)
        )
    end
end
____exports.key = ____createAbility_27(
    nil,
    ____fight_26,
    134278341,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.75}
)
return ____exports
