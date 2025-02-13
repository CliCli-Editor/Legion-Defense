local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["28"] = 12,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 18,["45"] = 19,["46"] = 21,["47"] = 22,["48"] = 23,["51"] = 26,["52"] = 26,["53"] = 26,["54"] = 26,["55"] = 26,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 29,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 30,["76"] = 31,["78"] = 33,["79"] = 19,["81"] = 36,["82"] = 36,["83"] = 37,["84"] = 38,["85"] = 39,["86"] = 36,["89"] = 41,["90"] = 41,["91"] = 41,["92"] = 41,["93"] = 41,["94"] = 42,["95"] = 43,["98"] = 46,["99"] = 47,["100"] = 48,["103"] = 51,["104"] = 52,["105"] = 53,["108"] = 56,["110"] = 10,["111"] = 58});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local Formula = ____FightController.Formula
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
        local f = self.owner:formula(Formula["展示面板_回蓝速度"])
        local targetsX = self.owner:findTargets(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            nil,
            nil,
            2000
        )
        local target = self:getIntensiveAreaTarget(targetsX, _____6570_503C["资源"]["元气弹"]["每1点回蓝叠加半径"] * f)
        local scale = 1
        local p = self:createProjectile(
            _____6570_503C["资源"]["元气弹"]["投射物ID"],
            self.owner:getPosition(),
            0,
            500
        )
        p:prepare({hit_radius = _____6570_503C["资源"]["元气弹"]["投射物碰撞体积"]})
        p:listener({onFinish = function()
            local pos = p:getPosition()
            if pos == nil then
                p:remove()
                return
            end
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(_____6570_503C["资源"]["元气弹"]["每1点回蓝叠加半径"] * f),
                {"敌军"}
            )
            self:addParticle(
                104734,
                pos,
                nil,
                _____6570_503C["资源"]["元气弹"]["每1点回蓝叠加半径"] * f / 200,
                1,
                10
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                local ____t_2 = t
                local ____t_hurt_3 = t.hurt
                local ____6570_503C__8D44_6E90__5143_6C14_5F39__4F24_5BB3_7C7B_578B_1 = _____6570_503C["资源"]["元气弹"]["伤害类型"]
                local ____self_0 = _____6570_503C["资源"]["元气弹"]
                ____t_hurt_3(
                    ____t_2,
                    self,
                    ____6570_503C__8D44_6E90__5143_6C14_5F39__4F24_5BB3_7C7B_578B_1,
                    ____self_0["伤害"](____self_0, self.owner)
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
            p:remove()
        end})
        do
            local i = 0
            while i < _____6570_503C["资源"]["元气弹"]["持续时间"] / 0.1 do
                __TS__Await(self:awaitTime(0.1))
                scale = scale + f * _____6570_503C["资源"]["元气弹"]["每1点回蓝叠加scale"]
                p:setScale(scale)
                i = i + 1
            end
        end
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["资源"]["元气弹"]["索敌范围"]),
            {"敌军"}
        )
        if not targets or #targets == 0 then
            p:remove()
            return ____awaiter_resolve(nil)
        end
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs then
            p:remove()
            return ____awaiter_resolve(nil)
        end
        target = targetXs[1]
        if not target or not target:isAlive() then
            p:remove()
            return ____awaiter_resolve(nil)
        end
        p:moverTarget(target, _____6570_503C["资源"]["元气弹"]["投射物飞行速度"], 0)
    end)
end
local ____ = fight
return ____exports
