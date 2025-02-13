local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 10,["30"] = 11,["31"] = 10,["32"] = 13,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 15,["41"] = 16,["43"] = 18,["44"] = 19,["45"] = 20,["46"] = 21,["47"] = 22,["48"] = 13,["49"] = 25,["51"] = 26,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 28,["61"] = 29,["62"] = 30,["63"] = 31,["64"] = 32,["65"] = 33,["66"] = 34,["67"] = 34,["68"] = 34,["69"] = 34,["70"] = 34,["71"] = 34,["72"] = 34,["73"] = 34,["74"] = 31,["75"] = 36,["76"] = 37,["77"] = 38,["78"] = 38,["79"] = 38,["80"] = 38,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 31,["86"] = 31,["87"] = 41,["88"] = 41,["89"] = 41,["90"] = 41,["91"] = 41,["92"] = 41,["93"] = 41,["94"] = 41,["95"] = 41,["96"] = 41,["97"] = 27,["98"] = 27,["100"] = 25,["101"] = 45,["103"] = 46,["104"] = 46,["105"] = 46,["106"] = 46,["108"] = 46,["109"] = 46,["111"] = 46,["112"] = 47,["113"] = 47,["114"] = 48,["115"] = 48,["116"] = 48,["117"] = 48,["119"] = 48,["120"] = 48,["122"] = 48,["123"] = 49,["124"] = 49,["125"] = 49,["126"] = 49,["127"] = 49,["128"] = 49,["129"] = 49,["130"] = 50,["131"] = 50,["132"] = 50,["133"] = 50,["134"] = 50,["135"] = 51,["136"] = 52,["137"] = 53,["138"] = 54,["139"] = 55,["140"] = 56,["141"] = 56,["142"] = 56,["143"] = 56,["144"] = 56,["145"] = 56,["146"] = 56,["147"] = 56,["148"] = 56,["151"] = 49,["152"] = 49,["154"] = 45,["155"] = 8,["156"] = 8,["157"] = 8,["158"] = 8,["159"] = 8,["160"] = 8,["161"] = 8});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_1", 2)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a) return a:isAlive() end,
        nil,
        nil,
        1500
    )
    if #targets == 0 then
        targets[#targets + 1] = cast:getTargetUnit()
    end
    local target = self:getIntensiveAreaTarget(targets, 500)
    local pos = {x = 0, y = 0}
    target:getPosition(pos)
    self:setSk(pos)
    self:setSk2(pos)
end
function ____class_0.prototype.setSk(self, pos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:playSound(self.owner, 134251903)
        __TS__Await(self:loop(
            0.1,
            50,
            function(____, count)
                local offsetPoint = self:offsetPoint(
                    pos,
                    math.random(0, 360),
                    math.random(0, 500)
                )
                local p = self:createProjectile(134230084, offsetPoint, 0, 1000)
                p:prepare({face_angle = true, terrain_block = true})
                p:listener({
                    onFinish = function()
                        p:remove()
                        self:addParticle(
                            134254731,
                            offsetPoint,
                            nil,
                            1,
                            1,
                            10
                        )
                    end,
                    onBlock = function()
                        p:remove()
                        self:addParticle(
                            134254731,
                            offsetPoint,
                            nil,
                            1,
                            1,
                            10
                        )
                    end
                })
                p:moverLine(
                    0,
                    1,
                    2000,
                    nil,
                    nil,
                    nil,
                    1000,
                    0
                )
            end
        ))
    end)
end
function ____class_0.prototype.setSk2(self, pos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_1 = _____6570_503C["雨师"]["大招"]
            ____temp_3 = ____self_1["天赋32伤害跳数"](____self_1)
        else
            local ____self_2 = _____6570_503C["雨师"]["大招"]
            ____temp_3 = ____self_2["伤害跳数"](____self_2)
        end
        local times = ____temp_3
        local ____self_4 = _____6570_503C["雨师"]["大招"]
        local v = ____self_4["每跳伤害"](____self_4, self.owner)
        local ____temp_7
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_5 = _____6570_503C["雨师"]["大招"]
            ____temp_7 = ____self_5["天赋31附加buff概率"](____self_5, self.owner)
        else
            local ____self_6 = _____6570_503C["雨师"]["大招"]
            ____temp_7 = ____self_6["附加buff概率"](____self_6, self.owner)
        end
        local p = ____temp_7
        local ____self_loop_13 = self.loop
        local ____self_8 = _____6570_503C["雨师"]["大招"]
        __TS__Await(____self_loop_13(
            self,
            ____self_8["持续时间"](____self_8) / times,
            times,
            function(____, count)
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(500),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    if self.owner:random("雨师大招附加buff概率", p) then
                        local ____t_11 = t
                        local ____t_addEffect_12 = t.addEffect
                        local ____self_skillEntity_10 = self.skillEntity
                        local ____self_9 = _____6570_503C["雨师"]["大招"]
                        ____t_addEffect_12(
                            ____t_11,
                            ____self_skillEntity_10,
                            ____self_9["附加buff"](____self_9)
                        )
                    end
                end
            end
        ))
    end)
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134223887,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.5}
)
return ____exports
