local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 10,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 12,["38"] = 15,["39"] = 16,["42"] = 19,["43"] = 20,["46"] = 24,["47"] = 25,["48"] = 26,["49"] = 26,["50"] = 26,["51"] = 26,["52"] = 26,["53"] = 26,["54"] = 26,["55"] = 26,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 29,["73"] = 29,["74"] = 29,["75"] = 29,["76"] = 29,["77"] = 29,["78"] = 29,["79"] = 29,["81"] = 31,["82"] = 32,["83"] = 33,["84"] = 36,["86"] = 36,["88"] = 37,["90"] = 37,["93"] = 39,["94"] = 39,["95"] = 39,["96"] = 39,["97"] = 39,["98"] = 39,["99"] = 39,["100"] = 39,["101"] = 39,["102"] = 39,["105"] = 30,["108"] = 43,["110"] = 30,["112"] = 10,["113"] = 46});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5355_4F4D_7C7B_578BID = ____Property["单位类型ID"]
local _____8840 = ____Property["血"]
local ____UnitData = include("logic.models.UnitData")
local UnitOrder = ____UnitData.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["生命"]["断魂"]["索敌范围"]),
            {"敌军"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs or #targetXs == 0 then
            return ____awaiter_resolve(nil)
        end
        local target = targetXs[1]
        if target:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
            return ____awaiter_resolve(nil)
        end
        local percentT = target:v(_____8840) / target:formula(Formula["展示面板_血量上限"])
        local percentSelf = self.owner:v(_____8840) / self.owner:formula(Formula["展示面板_血量上限"])
        self:addParticle(
            104923,
            self.owner:getPosition(),
            nil,
            1,
            1,
            20
        )
        self:addParticle(
            105079,
            target:getPosition(),
            nil,
            1,
            1,
            20
        )
        self:addParticle(
            102954,
            target:getPosition(),
            nil,
            1,
            1,
            20
        )
        self:addParticle(
            104520,
            target:getPosition(),
            nil,
            1,
            1,
            20
        )
        local ____try = __TS__AsyncAwaiter(function()
            if percentT > _____6570_503C["生命"]["断魂"]["阈值血量百分比"] then
                local avg = (percentT + percentSelf) / 2
                self:addBeamLink(_____6570_503C["生命"]["断魂"]["粒子ID"], _____6570_503C["生命"]["断魂"]["粒子持续时间"], self.owner, target)
                local ____opt_0 = self.owner.y3Unit
                if ____opt_0 ~= nil then
                    ____opt_0:set_hp(math.ceil(self.owner:formula(Formula["展示面板_血量上限"]) * avg))
                end
                local ____opt_2 = target.y3Unit
                if ____opt_2 ~= nil then
                    ____opt_2:set_hp(math.ceil(target:formula(Formula["展示面板_血量上限"]) * avg))
                end
            else
                local ____target_6 = target
                local ____target_hurt_7 = target.hurt
                local ____6570_503C__751F_547D__65AD_9B42__4F24_5BB3_7C7B_578B_5 = _____6570_503C["生命"]["断魂"]["伤害类型"]
                local ____self_4 = _____6570_503C["生命"]["断魂"]
                ____target_hurt_7(
                    ____target_6,
                    self,
                    ____6570_503C__751F_547D__65AD_9B42__4F24_5BB3_7C7B_578B_5,
                    ____self_4["伤害"](____self_4, self.owner)
                )
            end
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:log(____error)
            end
        ))
    end)
end
local ____ = fight
return ____exports
