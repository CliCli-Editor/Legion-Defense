local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["33"] = 9,["34"] = 10,["35"] = 11,["36"] = 9,["37"] = 12,["38"] = 13,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 14,["43"] = 14,["44"] = 15,["45"] = 16,["48"] = 19,["49"] = 12,["50"] = 21,["51"] = 22,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 24,["58"] = 25,["61"] = 28,["62"] = 29,["64"] = 29,["65"] = 29,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["74"] = 30,["75"] = 30,["77"] = 30,["78"] = 31,["79"] = 31,["80"] = 32,["82"] = 33,["83"] = 33,["84"] = 34,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 35,["89"] = 35,["90"] = 35,["91"] = 35,["92"] = 35,["93"] = 36,["94"] = 37,["95"] = 38,["96"] = 39,["97"] = 39,["98"] = 39,["99"] = 39,["100"] = 40,["101"] = 41,["102"] = 42,["103"] = 40,["104"] = 44,["105"] = 45,["108"] = 48,["109"] = 48,["110"] = 48,["111"] = 48,["112"] = 49,["113"] = 50,["116"] = 53,["117"] = 54,["118"] = 54,["119"] = 54,["120"] = 54,["122"] = 54,["124"] = 54,["125"] = 55,["126"] = 56,["127"] = 56,["128"] = 56,["129"] = 56,["130"] = 56,["131"] = 56,["132"] = 56,["133"] = 56,["134"] = 56,["135"] = 57,["136"] = 58,["137"] = 58,["138"] = 58,["139"] = 58,["140"] = 58,["141"] = 58,["142"] = 58,["143"] = 58,["144"] = 58,["145"] = 59,["146"] = 60,["147"] = 61,["148"] = 61,["149"] = 61,["150"] = 61,["151"] = 62,["152"] = 63,["154"] = 65,["156"] = 40,["157"] = 40,["158"] = 69,["159"] = 33,["162"] = 71,["163"] = 21,["164"] = 9,["165"] = 9,["166"] = 9,["167"] = 9,["168"] = 9,["169"] = 9,["170"] = 9});
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
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["投射物ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 1)[1] or 134272602
    self["受击特效ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[2] or 134277239
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(1200, 60, angle, self.owner),
        {"敌人"}
    )
    if #targets <= 0 then
        self:endSkill(self)
        return
    end
    self:play("ability2_1", 2)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local angle = self.owner:getAngle()
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createSectorShape(1200, 60, angle, self.owner),
        {"敌人"}
    )
    if #targets <= 0 then
        self:endSkill(self)
        return
    end
    self:play("ability2_2", 2)
    local ____self_2 = self.owner
    local ____self_2_getEffectQuantity_3 = ____self_2.getEffectQuantity
    local ____self_1 = _____6570_503C["爱神"]["普通攻击"]
    local quantity = ____self_2_getEffectQuantity_3(
        ____self_2,
        ____self_1["分裂叠加buffId"](____self_1)
    )
    local ____temp_6
    if self.owner:getValue(_____5929_8D4B_2) == 1 then
        local ____self_4 = _____6570_503C["爱神"]["被动"]
        ____temp_6 = ____self_4["天赋21箭矢数量"](____self_4, quantity)
    else
        local ____self_5 = _____6570_503C["爱神"]["被动"]
        ____temp_6 = ____self_5["箭矢数量"](____self_5, quantity)
    end
    local count = ____temp_6
    local ____self_7 = _____6570_503C["爱神"]["被动"]
    local v = ____self_7["伤害"](____self_7, self.owner)
    local unitList = {}
    do
        local i = 0
        while i < count do
            local angleX = angle + math.random(-30, 30)
            local p = self:createProjectile(
                self["投射物ID"],
                self.owner,
                angleX,
                0,
                nil,
                "attack2"
            )
            p:prepare({face_angle = true, hit_radius = 100})
            p:setOnHitAlreadyNil()
            p:setCustomData("dmg", v)
            p:setCustomData(
                "天赋2",
                self.owner:getValue(_____5929_8D4B_2)
            )
            p:listener({
                onFinish = function()
                    p:remove()
                end,
                onHit = function(t)
                    if not t or not t:isAlive() then
                        return
                    end
                    if __TS__ArrayFindIndex(
                        unitList,
                        function(____, a) return a.unit == t and a.count >= 4 end
                    ) ~= -1 then
                        p:moveStop()
                        p:remove()
                        return
                    end
                    self:playSound(self.owner, 134240944)
                    local ____temp_9
                    if p:getCustomData("天赋2") == 2 then
                        local ____self_8 = _____6570_503C["爱神"]["被动"]
                        ____temp_9 = ____self_8["天赋22伤害"](____self_8, self.owner, t)
                    else
                        ____temp_9 = p:getCustomData("dmg")
                    end
                    local vx = ____temp_9
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        vx,
                        AbilityType["被动"],
                        nil,
                        nil,
                        self["受击特效ID"]
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    local ____t_12 = t
                    local ____t_addEffect_13 = t.addEffect
                    local ____self_skillEntity_11 = self.skillEntity
                    local ____self_10 = _____6570_503C["爱神"]["普通攻击"]
                    ____t_addEffect_13(
                        ____t_12,
                        ____self_skillEntity_11,
                        ____self_10["对敌人附加buffId"](____self_10)
                    )
                    p:moveStop()
                    p:remove()
                    local repeatUnit = __TS__ArrayFind(
                        unitList,
                        function(____, a) return a.unit == t end
                    )
                    if repeatUnit == nil then
                        unitList[#unitList + 1] = {unit = t, count = 1}
                    else
                        repeatUnit.count = repeatUnit.count + 1
                    end
                end
            })
            p:moverLine(angleX, 1500, 2000)
            i = i + 1
        end
    end
    self.owner:setValue(_____7279_6280_2, 0)
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134227681,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0.25}
)
return ____exports
