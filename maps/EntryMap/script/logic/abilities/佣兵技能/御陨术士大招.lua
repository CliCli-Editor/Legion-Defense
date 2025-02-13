local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 9,["27"] = 8,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 14,["35"] = 17,["36"] = 18,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 23,["47"] = 24,["48"] = 25,["49"] = 26,["50"] = 27,["53"] = 30,["54"] = 30,["55"] = 30,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 31,["62"] = 31,["63"] = 31,["64"] = 31,["65"] = 31,["66"] = 32,["67"] = 33,["68"] = 34,["69"] = 35,["70"] = 36,["72"] = 38,["74"] = 40,["76"] = 22,["77"] = 43,["78"] = 44,["81"] = 47,["82"] = 47,["83"] = 47,["84"] = 47,["85"] = 47,["86"] = 47,["87"] = 47,["88"] = 47,["89"] = 47,["90"] = 47,["91"] = 47,["92"] = 48,["93"] = 49,["94"] = 49,["95"] = 49,["96"] = 49,["98"] = 51,["99"] = 51,["100"] = 51,["101"] = 51,["102"] = 22,["103"] = 22,["104"] = 54,["105"] = 54,["106"] = 54,["107"] = 54,["108"] = 54,["109"] = 54,["110"] = 54,["111"] = 54,["112"] = 54,["113"] = 54,["114"] = 11,["115"] = 7,["116"] = 7,["117"] = 7,["118"] = 7,["119"] = 7,["120"] = 7,["121"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability_30001")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["御陨术士大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local distance = self:getDistance(self.owner, target)
    local p = self:createProjectile(
        134218130,
        self.owner:getPosition(),
        angle,
        1000
    )
    p:prepare({hit_radius = 200, face_angle = true})
    p:setCustomData("fromSky", 1)
    p:listener({
        onFinish = function()
            if p:getCustomData("fromSky") == 1 then
                p:setCustomData("fromSky", 0)
                local pos = p:getPosition()
                if pos == nil then
                    return
                end
                self:addParticle(
                    134237982,
                    pos,
                    nil,
                    2.25,
                    0.5,
                    10
                )
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(450),
                    {"敌人"}
                )
                self:playSound(self.owner, 134240944)
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                p:moverLine(angle, 1500, 1000)
            else
                p:remove()
            end
        end,
        onHit = function(t)
            if not t or not t:isAlive() then
                return
            end
            local ____t_5 = t
            local ____t_addEffect_6 = t.addEffect
            local ____ability_skillEntity_3 = ability.skillEntity
            local ____temp_4 = _____6570_503C["佣兵技能"]["御陨术士大招"]:buffId()
            local ____self_2 = _____6570_503C["佣兵技能"]["御陨术士大招"]
            local effectEntity = ____t_addEffect_6(
                ____t_5,
                ____ability_skillEntity_3,
                ____temp_4,
                ____self_2["buff层数"](____self_2)
            )
            if effectEntity then
                effectEntity:setStore(
                    Formula["展示面板_法术攻击"],
                    self.owner:formula(Formula["展示面板_法术攻击"])
                )
            end
            t:addEffect(
                ability.skillEntity,
                _____6570_503C["佣兵技能"]["御陨术士大招"]:buffId2()
            )
        end
    })
    p:moverLine(
        angle,
        distance,
        1000,
        nil,
        nil,
        nil,
        1000,
        200
    )
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134256782,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 1}
)
return ____exports
