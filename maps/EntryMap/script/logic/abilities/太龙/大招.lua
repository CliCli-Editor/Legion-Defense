local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["33"] = 9,["34"] = 9,["35"] = 7,["36"] = 10,["37"] = 10,["38"] = 13,["40"] = 14,["41"] = 14,["43"] = 15,["44"] = 15,["45"] = 16,["46"] = 17,["47"] = 18,["48"] = 19,["49"] = 20,["50"] = 21,["51"] = 22,["53"] = 23,["54"] = 24,["55"] = 25,["56"] = 26,["57"] = 26,["58"] = 26,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 26,["63"] = 26,["64"] = 27,["65"] = 28,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 29,["70"] = 29,["71"] = 30,["72"] = 31,["73"] = 32,["76"] = 35,["77"] = 36,["79"] = 38,["80"] = 39,["81"] = 40,["83"] = 42,["86"] = 21,["87"] = 45,["88"] = 46,["89"] = 47,["91"] = 21,["92"] = 21,["93"] = 52,["94"] = 15,["98"] = 13,["99"] = 7,["100"] = 7,["101"] = 7,["102"] = 7,["103"] = 7,["104"] = 7,["105"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["角度列表"] = {
        -60,
        -30,
        0,
        30,
        60
    }
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["奥术少女"]["大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        do
            local i = 0
            while i < #self["角度列表"] do
                local canHit = true
                local isReturn = false
                local angle = self.owner:getAngle() + self["角度列表"][i + 1]
                local p = self:createProjectile(134268506, self.owner, angle, 150)
                p:prepare({hit_radius = 200, face_angle = true, hit_same = true})
                p:listener({
                    onFinish = function()
                        return __TS__AsyncAwaiter(function(____awaiter_resolve)
                            if not isReturn then
                                canHit = false
                                local pos = p:getProjectile():get_point()
                                self:addParticle(
                                    -1,
                                    pos,
                                    nil,
                                    1,
                                    2,
                                    150
                                )
                                local curTime = 0
                                while curTime < 2 do
                                    local targets = self.owner:findByShape(
                                        pos,
                                        Shape:createCircularShape(200),
                                        {"敌军"}
                                    )
                                    if #targets > 0 then
                                        for ____, target in ipairs(targets) do
                                            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                                        end
                                    end
                                    __TS__Await(self:awaitTime(0.3))
                                    curTime = curTime + 0.3
                                end
                                isReturn = true
                                canHit = true
                                p:moverTarget(self.owner, 1000, 100)
                            else
                                p:remove()
                            end
                        end)
                    end,
                    onHit = function(unit)
                        if unit:isAlive() and canHit then
                            unit:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                        end
                    end
                })
                p:moverLine(angle, 500, 1000)
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134223250,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0}
)
return ____exports
