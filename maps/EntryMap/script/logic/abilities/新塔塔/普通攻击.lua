local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["29"] = 8,["30"] = 10,["31"] = 8,["32"] = 11,["33"] = 12,["34"] = 13,["35"] = 14,["36"] = 15,["38"] = 17,["39"] = 18,["41"] = 11,["42"] = 21,["44"] = 22,["45"] = 23,["46"] = 23,["47"] = 24,["48"] = 25,["49"] = 25,["51"] = 27,["52"] = 28,["54"] = 29,["55"] = 29,["56"] = 30,["57"] = 31,["58"] = 32,["59"] = 33,["60"] = 29,["64"] = 36,["65"] = 37,["66"] = 37,["67"] = 38,["68"] = 39,["69"] = 39,["71"] = 41,["72"] = 42,["75"] = 45,["76"] = 46,["77"] = 47,["78"] = 47,["79"] = 47,["80"] = 47,["81"] = 47,["82"] = 47,["83"] = 47,["84"] = 47,["85"] = 47,["86"] = 47,["87"] = 48,["88"] = 49,["89"] = 51,["90"] = 52,["93"] = 55,["94"] = 56,["95"] = 56,["96"] = 56,["97"] = 56,["98"] = 56,["99"] = 56,["100"] = 56,["101"] = 56,["102"] = 56,["103"] = 49,["104"] = 59,["105"] = 60,["108"] = 21,["109"] = 64,["111"] = 65,["112"] = 66,["113"] = 66,["114"] = 66,["115"] = 66,["116"] = 66,["117"] = 66,["118"] = 66,["119"] = 66,["120"] = 66,["121"] = 66,["122"] = 67,["123"] = 68,["124"] = 69,["125"] = 70,["126"] = 68,["127"] = 72,["128"] = 73,["131"] = 76,["132"] = 77,["133"] = 77,["134"] = 77,["135"] = 77,["136"] = 77,["137"] = 77,["138"] = 77,["139"] = 77,["140"] = 77,["141"] = 78,["142"] = 68,["143"] = 68,["144"] = 81,["145"] = 82,["147"] = 64,["148"] = 8,["149"] = 8,["150"] = 8,["151"] = 8,["152"] = 8,["153"] = 8,["154"] = 8});
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
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self.owner:setValue(_____7279_6280_1, 0)
        self["特殊攻击"] = true
        self:play("attack1")
    else
        self["特殊攻击"] = false
        self:play("ability1_3")
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["特殊攻击"] then
            local ____self_1 = _____6570_503C["新塔塔"]["普通攻击"]
            local v = ____self_1["三连击伤害"](____self_1, self.owner)
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____self_2 = _____6570_503C["新塔塔"]["普通攻击"]
                v = ____self_2["天赋12三连击伤害"](____self_2, self.owner)
            end
            local angle = self.owner:getAngle()
            local duration = {0, 0.25, 0.2}
            do
                local i = 0
                while i < #duration do
                    __TS__Await(self:awaitTime(duration[i + 1]))
                    local angleX = angle - 20 + i * 20
                    self:playSound(self.owner, 134282111)
                    self["三连击"](self, v, angleX)
                    i = i + 1
                end
            end
        else
            self:play("ability1_3", 0.5, 0.3, -1)
            local ____self_3 = _____6570_503C["新塔塔"]["普通攻击"]
            local v = ____self_3["普通伤害"](____self_3, self.owner)
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____self_4 = _____6570_503C["新塔塔"]["普通攻击"]
                v = ____self_4["天赋11普攻伤害"](____self_4, self.owner)
            end
            local target = cast:getTargetUnit()
            if not target then
                return ____awaiter_resolve(nil)
            end
            self:playSound(self.owner, 134282111)
            local angle = self:getDirection(ability.owner, target)
            local p = self:createProjectile(
                134220427,
                self.owner,
                angle,
                150,
                nil,
                "left_hand",
                nil,
                true
            )
            p:prepare({hit_radius = 50, face_angle = true})
            p:listener({onFinish = function()
                p:remove()
                if not target or not target:isAlive() then
                    return
                end
                target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                self:addParticle(
                    134254799,
                    target,
                    nil,
                    0.5,
                    1,
                    nil,
                    "hit_point"
                )
            end})
            __TS__Await(self:awaitTime(0.05))
            p:moverTarget(target, 3000, 0)
        end
    end)
end
____class_0.prototype["三连击"] = function(self, v, angle)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local offsetPoint = self:offsetPoint(self.owner, angle, 40)
        local p = self:createProjectile(
            134220427,
            offsetPoint,
            angle,
            150,
            nil,
            nil,
            nil,
            true
        )
        p:prepare({hit_radius = 50, face_angle = true})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(unit)
                if not unit or not unit:isAlive() then
                    return
                end
                unit.tempData[AbilityTagData["是否为AOE"]] = true
                unit:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    134242217
                )
                unit.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        })
        p:moverLine(angle, 1800, 3000)
        __TS__Await(self:awaitTime(0.05))
    end)
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134259473,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0.7}
)
return ____exports
