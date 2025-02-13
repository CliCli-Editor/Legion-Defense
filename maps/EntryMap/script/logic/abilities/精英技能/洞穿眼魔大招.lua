local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 11,["33"] = 10,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 15,["41"] = 16,["44"] = 19,["45"] = 20,["46"] = 21,["47"] = 22,["48"] = 23,["49"] = 24,["50"] = 25,["51"] = 26,["52"] = 27,["56"] = 13,["57"] = 32,["58"] = 32,["59"] = 36,["61"] = 37,["62"] = 38,["63"] = 39,["64"] = 40,["65"] = 41,["66"] = 41,["67"] = 41,["68"] = 41,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 44,["73"] = 45,["75"] = 47,["76"] = 48,["77"] = 48,["78"] = 48,["79"] = 48,["80"] = 48,["81"] = 48,["82"] = 48,["83"] = 48,["84"] = 48,["85"] = 48,["86"] = 48,["87"] = 48,["88"] = 49,["90"] = 51,["91"] = 52,["92"] = 53,["93"] = 53,["94"] = 53,["95"] = 53,["96"] = 53,["97"] = 53,["98"] = 53,["99"] = 53,["100"] = 53,["101"] = 53,["102"] = 53,["103"] = 53,["104"] = 54,["106"] = 56,["107"] = 57,["108"] = 58,["109"] = 58,["110"] = 58,["111"] = 58,["112"] = 58,["113"] = 59,["114"] = 60,["115"] = 61,["116"] = 62,["117"] = 63,["118"] = 64,["124"] = 36,["125"] = 9,["126"] = 9,["127"] = 9,["128"] = 9,["129"] = 9,["130"] = 9,["131"] = 9});
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
local _____901A_7528_62A4_76FE = ____Property["通用护盾"]
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_12 = createAbility
local ____fight_11 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack2")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local targetsx = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(2000),
        {"敌人"}
    )
    local targetxz = self:getTargetByOrder(targetsx, UnitOrder.HERO, 1)
    if not targetxz or #targetxz == 0 then
        return
    end
    local target = targetxz[1]
    self:setBeam(self.owner, target)
    local count = 0
    count = count + 1
    for ____, t in ipairs(targetsx) do
        if count < 5 and t ~= target then
            self:setBeam(self.owner, t)
            count = count + 1
        elseif count == 5 then
            break
        end
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
end
function ____class_0.prototype.setBeam(self, source, target)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:addBeamLink(102999, 0.5, source, target)
        local angle = self:getDirection(source, target)
        local distance = self:getDistance(source, target)
        local offsetPoint = self:offsetPoint(source, angle, distance / 2)
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(100, distance, angle),
            {"敌人"}
        )
        local flag = false
        for ____, t in ipairs(targets) do
            if t == target then
                flag = true
            end
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_4 = t
            local ____t_hurt_5 = t.hurt
            local ____source_2 = source
            local ____Formula__6CD5_672F_4F24_5BB3_3 = Formula["法术伤害"]
            local ____self_1 = _____6570_503C["精英技能"]["洞穿眼魔大招"]
            ____t_hurt_5(
                ____t_4,
                ____source_2,
                ____Formula__6CD5_672F_4F24_5BB3_3,
                ____self_1["伤害"](____self_1, self.owner),
                AbilityType["大招"]
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        if not flag then
            target.tempData[AbilityTagData["是否为AOE"]] = true
            local ____target_9 = target
            local ____target_hurt_10 = target.hurt
            local ____source_7 = source
            local ____Formula__6CD5_672F_4F24_5BB3_8 = Formula["法术伤害"]
            local ____self_6 = _____6570_503C["精英技能"]["洞穿眼魔大招"]
            ____target_hurt_10(
                ____target_9,
                ____source_7,
                ____Formula__6CD5_672F_4F24_5BB3_8,
                ____self_6["伤害"](____self_6, self.owner),
                AbilityType["大招"]
            )
            target.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        if target:p(_____901A_7528_62A4_76FE) > 0 then
            __TS__Await(self:awaitTime(0.2))
            local targetsx = self.owner:findByShape(
                self.owner:getPosition(),
                Shape:createCircularShape(1000),
                {"敌人"}
            )
            local count = 0
            for ____, t in ipairs(targetsx) do
                if count < 5 and t ~= target then
                    self:setBeam(target, t)
                    count = count + 1
                elseif count == 5 then
                    break
                end
            end
        end
    end)
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134246638,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0.5}
)
return ____exports
