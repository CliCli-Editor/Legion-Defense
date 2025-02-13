local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["35"] = 11,["36"] = 12,["37"] = 13,["38"] = 11,["39"] = 15,["40"] = 16,["41"] = 17,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 22,["50"] = 23,["51"] = 24,["52"] = 25,["54"] = 27,["55"] = 28,["57"] = 15,["58"] = 31,["60"] = 32,["61"] = 33,["64"] = 36,["65"] = 37,["66"] = 38,["67"] = 38,["68"] = 39,["69"] = 40,["70"] = 40,["71"] = 40,["72"] = 40,["73"] = 40,["74"] = 41,["75"] = 41,["76"] = 41,["77"] = 41,["78"] = 41,["79"] = 42,["80"] = 42,["81"] = 42,["82"] = 42,["83"] = 42,["84"] = 42,["85"] = 42,["86"] = 42,["87"] = 43,["88"] = 44,["89"] = 45,["90"] = 45,["91"] = 45,["92"] = 45,["93"] = 45,["94"] = 45,["95"] = 45,["96"] = 46,["97"] = 47,["98"] = 48,["99"] = 48,["100"] = 48,["101"] = 48,["102"] = 48,["103"] = 48,["104"] = 48,["105"] = 48,["106"] = 48,["109"] = 51,["110"] = 52,["111"] = 52,["112"] = 52,["113"] = 52,["114"] = 52,["115"] = 52,["116"] = 52,["117"] = 52,["118"] = 52,["119"] = 52,["120"] = 52,["122"] = 54,["123"] = 55,["124"] = 55,["125"] = 55,["126"] = 55,["127"] = 55,["128"] = 55,["129"] = 55,["130"] = 55,["131"] = 56,["132"] = 57,["133"] = 57,["134"] = 57,["135"] = 57,["136"] = 57,["137"] = 57,["138"] = 58,["139"] = 59,["140"] = 61,["141"] = 62,["144"] = 65,["145"] = 65,["146"] = 65,["147"] = 65,["148"] = 65,["149"] = 65,["150"] = 65,["151"] = 65,["152"] = 65,["153"] = 66,["154"] = 59,["155"] = 69,["156"] = 70,["157"] = 70,["158"] = 70,["159"] = 70,["160"] = 71,["161"] = 71,["162"] = 71,["163"] = 71,["164"] = 71,["165"] = 71,["166"] = 71,["167"] = 71,["168"] = 71,["169"] = 71,["171"] = 73,["172"] = 74,["173"] = 75,["177"] = 31,["178"] = 11,["179"] = 11,["180"] = 11,["181"] = 11,["182"] = 11,["183"] = 11,["184"] = 11});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_16 = createAbility
local ____fight_15 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    target:getPosition(self["目标位置"])
    self["暴击"] = self.owner:random(
        "天命人猴孙普攻暴击",
        self.owner:p(_____66B4_51FB_7387)
    )
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) > 0
    if self["特殊攻击"] then
        self.owner:modifyValue(self.skillEntity, _____7279_6280_1, -1)
        self:play("attack2_01")
    else
        self:endSkill(self)
        self.owner:kill(self.owner, nil, nil, true)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local parent = fightUtils:getAncestor(self.owner)
        if not parent or not parent:isAlive() then
            return ____awaiter_resolve(nil)
        end
        __TS__Await(self:awaitTime(0.25))
        self:playSound(self.owner, 134240944)
        local ____self_1 = _____6570_503C["天命人"]["猴子猴孙普通攻击"]
        local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
        local angle = self:getDirection(self.owner, self["目标位置"])
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            angle,
            600
        )
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(200, 1200, angle),
            {"敌人"}
        )
        self:addParticle(
            102478,
            offsetPoint,
            angle,
            1,
            1,
            10
        )
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["大招"],
                self["暴击"]
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            if parent:getValue(_____5929_8D4B_1) == 2 then
                local ____t_4 = t
                local ____t_addEffect_5 = t.addEffect
                local ____self_skillEntity_3 = self.skillEntity
                local ____self_2 = _____6570_503C["天命人"]["普通攻击"]
                ____t_addEffect_5(
                    ____t_4,
                    ____self_skillEntity_3,
                    ____self_2["天赋12附加debuff"](____self_2)
                )
            end
        end
        if parent:getValue(_____5929_8D4B_1) == 1 and self["暴击"] then
            local ____parent_9 = parent
            local ____parent_cure_10 = parent.cure
            local ____self_skillEntity_7 = self.skillEntity
            local ____Formula__56DE_8840_503C_8 = Formula["回血值"]
            local ____self_6 = _____6570_503C["天命人"]["普通攻击"]
            ____parent_cure_10(
                ____parent_9,
                ____self_skillEntity_7,
                ____Formula__56DE_8840_503C_8,
                ____self_6["天赋11治疗"](____self_6, parent)
            )
        end
        if parent:getValue(_____5929_8D4B_3) == 1 then
            self:addParticle(
                134219740,
                self.owner:getPosition(),
                nil,
                1,
                1,
                10
            )
            local angle = self:getDirection(self.owner, parent)
            local p = self:createProjectile(
                134222378,
                self.owner:getPosition(),
                angle,
                150
            )
            p:prepare({face_angle = true})
            p:listener({onFinish = function()
                p:remove()
                if not parent or not parent:isAlive() then
                    return
                end
                local ____parent_13 = parent
                local ____parent_addEffect_14 = parent.addEffect
                local ____self_skillEntity_12 = self.skillEntity
                local ____self_11 = _____6570_503C["天命人"]["大招"]
                ____parent_addEffect_14(
                    ____parent_13,
                    ____self_skillEntity_12,
                    ____self_11["天赋31附加buff"](____self_11)
                )
                self.owner:kill(self.skillEntity, nil, nil, true)
            end})
            local distance = self:getDistance(self.owner, parent)
            local pHeight = self:getParabolaHeight(
                math.random(30, 60),
                distance
            )
            p:moverTarget(
                parent,
                1500,
                0,
                0,
                nil,
                nil,
                nil,
                pHeight
            )
        else
            if self.owner:getValue(_____7279_6280_1) == 0 then
                self:endSkill(self)
                self.owner:kill(self.owner, nil, nil, true)
            end
        end
    end)
end
____exports.key = ____createAbility_16(
    nil,
    ____fight_15,
    134221015,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
