local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["33"] = 9,["34"] = 10,["35"] = 9,["36"] = 11,["37"] = 12,["38"] = 13,["39"] = 11,["40"] = 15,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 16,["47"] = 16,["48"] = 16,["49"] = 16,["50"] = 17,["51"] = 18,["52"] = 18,["53"] = 19,["55"] = 20,["56"] = 20,["57"] = 21,["58"] = 22,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 25,["65"] = 25,["66"] = 25,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 26,["71"] = 27,["72"] = 27,["73"] = 27,["74"] = 27,["75"] = 27,["76"] = 27,["77"] = 27,["78"] = 27,["79"] = 27,["80"] = 27,["81"] = 28,["82"] = 29,["83"] = 31,["84"] = 29,["85"] = 34,["86"] = 34,["87"] = 34,["88"] = 34,["89"] = 34,["90"] = 35,["91"] = 36,["92"] = 36,["93"] = 36,["94"] = 36,["95"] = 36,["96"] = 37,["97"] = 38,["98"] = 39,["99"] = 40,["100"] = 41,["101"] = 42,["102"] = 43,["103"] = 43,["104"] = 43,["105"] = 43,["106"] = 43,["107"] = 43,["108"] = 43,["109"] = 43,["110"] = 43,["112"] = 45,["113"] = 46,["114"] = 46,["115"] = 46,["116"] = 46,["117"] = 46,["118"] = 46,["119"] = 46,["120"] = 46,["121"] = 46,["125"] = 20,["129"] = 15,["130"] = 52,["131"] = 53,["132"] = 54,["133"] = 52,["134"] = 56,["135"] = 57,["136"] = 56,["137"] = 9,["138"] = 9,["139"] = 9,["140"] = 9,["141"] = 9,["142"] = 9,["143"] = 9});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
    self:play("ability2_1")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play(
            "ability2_2",
            0.64,
            0,
            -1,
            false,
            true
        )
        local angle = self.owner:getAngle()
        local ____self_1 = _____6570_503C["黑天鹅"]["大招"]
        local v = ____self_1["每跳伤害"](____self_1, self.owner)
        local countx = self.owner:getValue(_____5929_8D4B_3) == 1 and 240 or 160
        do
            local i = 0
            while i < countx do
                __TS__Await(self:awaitTime(2 / countx))
                if not self["正在施法"] then
                    return ____awaiter_resolve(nil)
                end
                self:addParticle(
                    134229205,
                    self.owner,
                    angle,
                    0.6,
                    0.2,
                    nil,
                    "右手"
                )
                self:playSound(self.owner, 134231834)
                local p = self:createProjectile(
                    134242510,
                    self.owner:getPosition(),
                    angle,
                    250,
                    nil,
                    nil,
                    nil,
                    true
                )
                p:prepare({face_angle = true})
                p:listener({onFinish = function()
                    p:remove()
                end})
                p:moverLine(
                    angle + math.random(-30, 30),
                    1200,
                    3000
                )
                if i % 16 == 0 then
                    local targets = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createSectorShape(1200, 60, angle, self.owner),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                        if i % (16 * 4) == 0 then
                            local angleX = self:getDirection(self.owner, t)
                            t:move(
                                {_____9738_4F53},
                                _____88AB_51FB_9000,
                                angleX,
                                30,
                                220,
                                -50,
                                false
                            )
                        end
                        if self.owner:getValue(_____5929_8D4B_3) == 2 then
                            local ____t_4 = t
                            local ____t_addEffect_5 = t.addEffect
                            local ____self_skillEntity_3 = self.skillEntity
                            local ____self_2 = _____6570_503C["黑天鹅"]["大招"]
                            ____t_addEffect_5(
                                ____t_4,
                                ____self_skillEntity_3,
                                ____self_2["天赋32buff"](____self_2)
                            )
                        end
                    end
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self:play("ability2_5", 2)
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134222007,
    ____class_0,
    {["施法开始"] = 0.2, ["施法引导"] = 2, ["施法出手"] = 0, ["施法完成"] = 0.4}
)
return ____exports
