local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 11,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 14,["39"] = 17,["40"] = 18,["41"] = 19,["43"] = 21,["46"] = 24,["47"] = 25,["48"] = 25,["49"] = 25,["50"] = 25,["51"] = 25,["52"] = 25,["53"] = 26,["54"] = 27,["55"] = 28,["56"] = 29,["57"] = 30,["58"] = 31,["59"] = 32,["60"] = 33,["61"] = 34,["62"] = 35,["63"] = 35,["65"] = 36,["66"] = 37,["67"] = 38,["70"] = 41,["71"] = 42,["72"] = 43,["73"] = 44,["76"] = 47,["77"] = 47,["78"] = 47,["79"] = 47,["80"] = 47,["81"] = 48,["82"] = 49,["83"] = 50,["84"] = 51,["85"] = 51,["86"] = 51,["87"] = 51,["88"] = 51,["89"] = 51,["90"] = 51,["91"] = 51,["92"] = 51,["93"] = 51,["94"] = 52,["97"] = 55,["99"] = 31,["100"] = 58,["101"] = 59,["102"] = 60,["103"] = 60,["104"] = 60,["105"] = 60,["106"] = 61,["109"] = 65,["110"] = 65,["111"] = 65,["112"] = 65,["113"] = 66,["114"] = 67,["115"] = 68,["116"] = 68,["117"] = 68,["118"] = 68,["119"] = 68,["120"] = 68,["121"] = 68,["122"] = 68,["123"] = 68,["124"] = 68,["125"] = 69,["128"] = 31,["129"] = 31,["130"] = 76,["131"] = 77,["132"] = 78,["133"] = 78,["134"] = 78,["135"] = 78,["136"] = 78,["137"] = 78,["138"] = 78,["139"] = 78,["141"] = 11,["142"] = 80});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____653B_51FB_901F_5EA6_767E_5206_6BD4 = ____Property["攻击速度百分比"]
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["攻速"]["死亡飞镖"]["索敌范围"]),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = self:getIntensiveAreaTarget(targets, _____6570_503C["攻速"]["死亡飞镖"]["投射物碰撞体积"])
        if target == nil then
            target = self.owner:getHatredTarget()
        end
        if target == nil then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(
            _____6570_503C["攻速"]["死亡飞镖"]["投射物ID"],
            self.owner:getPosition(),
            angle,
            150
        )
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["攻速"]["死亡飞镖"]["投射物碰撞体积"]})
        local targetList1 = {}
        local targetList2 = {}
        local startInPlayer = true
        local effectEntity = nil
        p:listener({
            onFinish = function()
                if startInPlayer then
                    startInPlayer = false
                    if effectEntity ~= nil then
                        effectEntity:remove(self)
                    end
                    local pos = p:getPosition()
                    if not pos then
                        p:remove()
                        return
                    end
                    local angleX = self:getDirection(pos, self.owner)
                    local distance = self:getDistance(pos, self.owner)
                    p:moverLine(angleX, distance, _____6570_503C["攻速"]["死亡飞镖"]["投射物飞行速度"])
                    if target == nil then
                        return
                    end
                    local targetXxs = self.owner:findByShape(
                        target:getPosition(),
                        Shape:createCircularShape(_____6570_503C["攻速"]["死亡飞镖"]["投射物碰撞体积"]),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targetXxs) do
                        targetList2[#targetList2 + 1] = t
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        local ____t_4 = t
                        local ____t_hurt_5 = t.hurt
                        local ____6570_503C__653B_901F__6B7B_4EA1_98DE_9556__4F24_5BB3_7C7B_578B_3 = _____6570_503C["攻速"]["死亡飞镖"]["伤害类型"]
                        local ____self_2 = _____6570_503C["攻速"]["死亡飞镖"]
                        ____t_hurt_5(
                            ____t_4,
                            self,
                            ____6570_503C__653B_901F__6B7B_4EA1_98DE_9556__4F24_5BB3_7C7B_578B_3,
                            ____self_2["伤害"](____self_2, t)
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                else
                    p:remove()
                end
            end,
            onHit = function(unit)
                if startInPlayer then
                    if __TS__ArrayFindIndex(
                        targetList1,
                        function(____, a) return a == unit end
                    ) == -1 and (unit and unit:isAlive()) then
                        targetList1[#targetList1 + 1] = unit
                    end
                else
                    if __TS__ArrayFindIndex(
                        targetList2,
                        function(____, a) return a == unit end
                    ) == -1 and (unit and unit:isAlive()) then
                        targetList2[#targetList2 + 1] = unit
                        unit.tempData[AbilityTagData["是否为AOE"]] = true
                        local ____unit_12 = unit
                        local ____unit_hurt_13 = unit.hurt
                        local ____6570_503C__653B_901F__6B7B_4EA1_98DE_9556__4F24_5BB3_7C7B_578B_11 = _____6570_503C["攻速"]["死亡飞镖"]["伤害类型"]
                        local ____self_10 = _____6570_503C["攻速"]["死亡飞镖"]
                        ____unit_hurt_13(
                            ____unit_12,
                            self,
                            ____6570_503C__653B_901F__6B7B_4EA1_98DE_9556__4F24_5BB3_7C7B_578B_11,
                            ____self_10["伤害"](____self_10, unit)
                        )
                        unit.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                end
            end
        })
        local distance = self:getDistance(self.owner, target)
        p:moverLine(angle, distance, _____6570_503C["攻速"]["死亡飞镖"]["投射物飞行速度"])
        effectEntity = self.owner:applyTimeLimitProperties(
            self,
            buffId,
            0,
            1,
            {_____653B_51FB_901F_5EA6_767E_5206_6BD4, 0.5},
            {}
        )
    end)
end
local ____ = fight
return ____exports
