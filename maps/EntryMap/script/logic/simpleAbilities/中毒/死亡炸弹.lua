local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["35"] = 15,["36"] = 17,["37"] = 19,["38"] = 20,["39"] = 22,["40"] = 24,["41"] = 25,["44"] = 28,["45"] = 29,["46"] = 30,["47"] = 31,["48"] = 32,["49"] = 33,["50"] = 33,["51"] = 33,["52"] = 33,["53"] = 33,["54"] = 33,["55"] = 34,["56"] = 35,["57"] = 36,["58"] = 36,["59"] = 36,["60"] = 36,["61"] = 36,["62"] = 36,["63"] = 36,["64"] = 36,["65"] = 36,["66"] = 36,["67"] = 37,["68"] = 39,["71"] = 42,["72"] = 43,["73"] = 44,["74"] = 45,["75"] = 46,["76"] = 47,["77"] = 47,["78"] = 47,["79"] = 47,["80"] = 47,["81"] = 47,["82"] = 47,["83"] = 47,["84"] = 47,["85"] = 47,["87"] = 50,["88"] = 50,["89"] = 50,["90"] = 50,["91"] = 50,["92"] = 51,["93"] = 51,["94"] = 51,["95"] = 51,["96"] = 51,["97"] = 51,["98"] = 51,["99"] = 51,["100"] = 52,["101"] = 53,["102"] = 54,["103"] = 55,["104"] = 55,["105"] = 55,["106"] = 55,["107"] = 55,["108"] = 55,["109"] = 55,["110"] = 55,["111"] = 56,["112"] = 57,["113"] = 57,["114"] = 57,["115"] = 57,["116"] = 57,["117"] = 57,["118"] = 57,["119"] = 57,["120"] = 57,["121"] = 57,["122"] = 58,["124"] = 61,["127"] = 22,["128"] = 66,["129"] = 67,["130"] = 68,["131"] = 68,["132"] = 68,["133"] = 68,["134"] = 68,["135"] = 68,["136"] = 68,["137"] = 68,["138"] = 68,["139"] = 68,["141"] = 8,["142"] = 71});
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
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:findTarget(
            {"敌人"},
            function(____, a) return a:isAlive() end,
            1,
            _____6570_503C["中毒"]["死亡炸弹"]["索敌范围"]
        )
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        local maxCount = _____6570_503C["中毒"]["死亡炸弹"]["最大弹射次数"]
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(_____6570_503C["中毒"]["死亡炸弹"]["投射物ID"], self.owner, angle, _____6570_503C["中毒"]["死亡炸弹"]["初始高度"])
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["中毒"]["死亡炸弹"]["投射物碰撞体积"]})
        p:listener({onFinish = function()
            if not target or not target:isAlive() then
                p:remove()
                return
            end
            if maxCount > 0 then
                local quantity = _____6570_503C["中毒"]["死亡炸弹"]["等级相关数值"][self.level + 1] * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                target:addEffect(self, _____6570_503C["中毒"]["死亡炸弹"].effectID, quantity)
                maxCount = maxCount - 1
                local oldTarget = target
                local targets = self.owner:findByShape(
                    target:getPosition(),
                    Shape:createCircularShape(_____6570_503C["中毒"]["死亡炸弹"]["索敌范围"]),
                    {"敌军"},
                    function(____, a) return a:isAlive() and a ~= target end
                )
                if #targets == 0 then
                    target.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____target_2 = target
                    local ____target_hurt_3 = target.hurt
                    local ____6570_503C__4E2D_6BD2__6B7B_4EA1_70B8_5F39__4F24_5BB3_7C7B_578B_1 = _____6570_503C["中毒"]["死亡炸弹"]["伤害类型"]
                    local ____self_0 = _____6570_503C["中毒"]["死亡炸弹"]
                    ____target_hurt_3(
                        ____target_2,
                        self,
                        ____6570_503C__4E2D_6BD2__6B7B_4EA1_70B8_5F39__4F24_5BB3_7C7B_578B_1,
                        ____self_0["伤害"](____self_0, target, 0)
                    )
                    target.tempData[AbilityTagData["是否为AOE"]] = nil
                    p:remove()
                    return
                end
                target = targets[1]
                angle = self:getDirection(oldTarget, target)
                p.angle = angle
                local d = self:getDistance(oldTarget, target)
                local h = self:getParabolaHeight(45, d)
                p:moverTarget(
                    target,
                    _____6570_503C["中毒"]["死亡炸弹"]["投射物飞行速度"],
                    _____6570_503C["中毒"]["死亡炸弹"]["投射物碰撞体积"],
                    nil,
                    nil,
                    nil,
                    nil,
                    h
                )
            else
                local targetxxs = self.owner:findByShape(
                    target:getPosition(),
                    Shape:createCircularShape(_____6570_503C["中毒"]["死亡炸弹"]["爆炸半径"]),
                    {"敌人"}
                )
                self:addParticle(
                    _____6570_503C["中毒"]["死亡炸弹"]["粒子ID"],
                    target:getPosition(),
                    nil,
                    _____6570_503C["中毒"]["死亡炸弹"]["粒子缩放"],
                    _____6570_503C["中毒"]["死亡炸弹"]["粒子持续时间"],
                    50
                )
                local quantity = _____6570_503C["中毒"]["死亡炸弹"]["等级相关数值"][self.level + 1] * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                for ____, t in ipairs(targetxxs) do
                    t:addEffect(self, _____6570_503C["中毒"]["死亡炸弹"].effectID, quantity)
                    self:addParticle(
                        100242,
                        t:getPosition(),
                        nil,
                        1,
                        0.8,
                        50
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_6 = t
                    local ____t_hurt_7 = t.hurt
                    local ____6570_503C__4E2D_6BD2__6B7B_4EA1_70B8_5F39__4F24_5BB3_7C7B_578B_5 = _____6570_503C["中毒"]["死亡炸弹"]["伤害类型"]
                    local ____self_4 = _____6570_503C["中毒"]["死亡炸弹"]
                    ____t_hurt_7(
                        ____t_6,
                        self,
                        ____6570_503C__4E2D_6BD2__6B7B_4EA1_70B8_5F39__4F24_5BB3_7C7B_578B_5,
                        ____self_4["伤害"](____self_4, target, 0)
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                p:remove()
                return
            end
        end})
        local dx = self:getDistance(self.owner, target)
        local hx = self:getParabolaHeight(45, dx)
        p:moverTarget(
            target,
            _____6570_503C["中毒"]["死亡炸弹"]["投射物飞行速度"],
            _____6570_503C["中毒"]["死亡炸弹"]["投射物碰撞体积"],
            nil,
            nil,
            nil,
            nil,
            hx
        )
    end)
end
local ____ = fight
return ____exports
