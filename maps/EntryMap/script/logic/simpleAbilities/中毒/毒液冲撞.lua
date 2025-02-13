local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 9,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 14,["37"] = 15,["38"] = 16,["39"] = 17,["40"] = 15,["41"] = 19,["42"] = 20,["45"] = 23,["46"] = 23,["47"] = 23,["48"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 24,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 26,["65"] = 27,["66"] = 27,["67"] = 27,["68"] = 27,["69"] = 27,["70"] = 27,["71"] = 27,["72"] = 27,["73"] = 27,["74"] = 15,["75"] = 15,["76"] = 30,["78"] = 9,["79"] = 40});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self.owner:getAngle()
        self:addParticle(
            _____6570_503C["中毒"]["毒液冲撞"]["粒子ID"],
            self.owner:getPosition(),
            angle,
            _____6570_503C["中毒"]["毒液冲撞"]["粒子缩放"],
            _____6570_503C["中毒"]["毒液冲撞"]["粒子持续时间"],
            150
        )
        local p = self:createProjectile(134239804, self.owner, angle, 150)
        p:prepare({hit_radius = 400, hit_same = false})
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(target)
                if not target or not target:isAlive() then
                    return
                end
                self:addParticle(
                    102610,
                    target:getPosition(),
                    nil,
                    1,
                    0.8,
                    50
                )
                target.tempData[AbilityTagData["是否为AOE"]] = true
                local ____target_2 = target
                local ____target_hurt_3 = target.hurt
                local ____6570_503C__4E2D_6BD2__6BD2_6DB2_51B2_649E__4F24_5BB3_7C7B_578B_1 = _____6570_503C["中毒"]["毒液冲撞"]["伤害类型"]
                local ____self_0 = _____6570_503C["中毒"]["毒液冲撞"]
                ____target_hurt_3(
                    ____target_2,
                    self,
                    ____6570_503C__4E2D_6BD2__6BD2_6DB2_51B2_649E__4F24_5BB3_7C7B_578B_1,
                    ____self_0["伤害"](____self_0, target, 0)
                )
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                target:move(
                    {_____9738_4F53},
                    _____88AB_51FB_9000,
                    angle,
                    _____6570_503C["中毒"]["毒液冲撞"]["位移距离"],
                    _____6570_503C["中毒"]["毒液冲撞"]["位移速度"],
                    _____6570_503C["中毒"]["毒液冲撞"]["位移加速度"],
                    _____6570_503C["中毒"]["毒液冲撞"]["位移是否改变朝向"]
                )
            end
        })
        p:moverLine(angle, 1000, 3000)
    end)
end
local ____ = fight
return ____exports
