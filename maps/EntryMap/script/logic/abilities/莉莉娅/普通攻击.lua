local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 5,["26"] = 5,["27"] = 6,["28"] = 6,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["33"] = 9,["35"] = 9,["36"] = 10,["37"] = 9,["38"] = 11,["39"] = 12,["40"] = 13,["41"] = 14,["42"] = 15,["45"] = 18,["46"] = 19,["47"] = 20,["48"] = 21,["50"] = 23,["52"] = 11,["53"] = 26,["55"] = 27,["56"] = 28,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 29,["61"] = 29,["62"] = 29,["63"] = 29,["64"] = 29,["65"] = 30,["66"] = 31,["67"] = 31,["68"] = 32,["69"] = 33,["70"] = 33,["71"] = 33,["72"] = 33,["73"] = 33,["74"] = 34,["75"] = 35,["76"] = 36,["77"] = 37,["78"] = 38,["79"] = 38,["80"] = 38,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 39,["88"] = 40,["89"] = 40,["90"] = 40,["91"] = 40,["93"] = 42,["94"] = 43,["95"] = 44,["98"] = 47,["99"] = 48,["101"] = 50,["102"] = 50,["103"] = 51,["104"] = 52,["107"] = 55,["108"] = 55,["109"] = 55,["110"] = 55,["112"] = 55,["113"] = 55,["115"] = 55,["116"] = 56,["118"] = 57,["119"] = 57,["120"] = 58,["121"] = 59,["124"] = 62,["125"] = 63,["126"] = 63,["127"] = 63,["128"] = 63,["129"] = 63,["130"] = 63,["131"] = 63,["132"] = 63,["133"] = 63,["134"] = 64,["135"] = 57,["140"] = 26,["141"] = 9,["142"] = 9,["143"] = 9,["144"] = 9,["145"] = 9,["146"] = 9,["147"] = 9});
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
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____7279_6280_3 = ____Property["特技_3"]
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.owner:getValue(_____5929_8D4B_2) == 2 and self.owner:getValue(_____7279_6280_3) > 0 then
        self.owner:setValue(_____7279_6280_3, 0)
        self:endSkill(self)
        self.owner:triggerSkill("莉莉娅/被动")
        return
    end
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        self:play("attack1")
    else
        self:play("ability1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["特殊攻击"] then
            local angle = self.owner:getAngle()
            self:addParticle(
                134259184,
                self.owner:getPosition(),
                angle,
                2,
                1,
                150
            )
            __TS__Await(self:awaitTime(0.07))
            local ____self_1 = _____6570_503C["莉莉"]["普通攻击"]
            local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
            self:playSound(self.owner, 134240944)
            local targets = self.owner:findByShape(
                self.owner:getPosition(),
                Shape:createSectorShape(350, 180, angle, self.owner),
                {"敌军"}
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
                local ____t_4 = t
                local ____t_addEffect_5 = t.addEffect
                local ____self_skillEntity_3 = self.skillEntity
                local ____self_2 = _____6570_503C["莉莉"]["普通攻击"]
                local effectEntity = ____t_addEffect_5(
                    ____t_4,
                    ____self_skillEntity_3,
                    ____self_2["特殊攻击附加buffId"](____self_2)
                )
                if effectEntity then
                    effectEntity:setStore(
                        Formula["展示面板_物理攻击"],
                        self.owner:formula(Formula["展示面板_物理攻击"])
                    )
                end
                if self.owner:getValue(_____5929_8D4B_1) == 2 and self.owner:getValue(_____7279_6280_2) < 3 and (not t:isAlive() or t:v(_____8840) <= 0) then
                    self.owner:setValue(_____7279_6280_1, 1)
                    self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
                end
            end
            __TS__Await(self:awaitTime(0.63))
            self:endSkill(self)
        else
            local ____self_6 = _____6570_503C["莉莉"]["普通攻击"]
            local v = ____self_6["普通伤害"](____self_6, self.owner)
            local target = cast:getTargetUnit()
            if not target or not target:isAlive() then
                return ____awaiter_resolve(nil)
            end
            local ____temp_9
            if self.owner:getValue(_____5929_8D4B_1) == 1 then
                local ____self_7 = _____6570_503C["莉莉"]["普通攻击"]
                ____temp_9 = ____self_7["天赋11普攻伤害频率"](____self_7, self.owner)
            else
                local ____self_8 = _____6570_503C["莉莉"]["普通攻击"]
                ____temp_9 = ____self_8["普攻伤害频率"](____self_8)
            end
            local count = ____temp_9
            local duration = 2 / count * (1 / self.owner:formula(Formula["展示面板_攻速"]) * 100)
            do
                local i = 0
                while i < count do
                    if not target:isAlive() then
                        self:endSkill(self)
                        return ____awaiter_resolve(nil)
                    end
                    self:playSound(self.owner, 134240944)
                    target:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        v,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        100804
                    )
                    __TS__Await(self:awaitTime(duration))
                    i = i + 1
                end
            end
        end
    end)
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134261592,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 1.5, ["施法完成"] = 0.6}
)
return ____exports
