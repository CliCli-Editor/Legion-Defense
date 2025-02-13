local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 11,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 18,["50"] = 18,["51"] = 18,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 19,["57"] = 20,["58"] = 21,["59"] = 22,["60"] = 23,["61"] = 24,["64"] = 27,["65"] = 27,["66"] = 28,["67"] = 29,["68"] = 30,["69"] = 31,["70"] = 32,["72"] = 33,["73"] = 34,["74"] = 34,["75"] = 34,["76"] = 34,["77"] = 34,["78"] = 34,["79"] = 34,["80"] = 35,["81"] = 36,["82"] = 37,["83"] = 38,["85"] = 40,["86"] = 41,["88"] = 31,["89"] = 43,["91"] = 44,["92"] = 45,["93"] = 46,["94"] = 46,["95"] = 46,["96"] = 46,["97"] = 46,["98"] = 46,["99"] = 46,["100"] = 46,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 47,["105"] = 47,["106"] = 47,["107"] = 47,["108"] = 47,["109"] = 47,["110"] = 47,["111"] = 47,["112"] = 47,["113"] = 48,["114"] = 49,["115"] = 50,["116"] = 50,["117"] = 50,["118"] = 50,["119"] = 50,["120"] = 50,["121"] = 50,["122"] = 50,["123"] = 50,["124"] = 51,["127"] = 31,["128"] = 31,["129"] = 55,["130"] = 55,["131"] = 55,["132"] = 55,["133"] = 55,["134"] = 55,["135"] = 55,["136"] = 55,["137"] = 55,["138"] = 56,["139"] = 57,["140"] = 55,["141"] = 58,["142"] = 59,["143"] = 60,["144"] = 55,["145"] = 55,["146"] = 62,["148"] = 11,["149"] = 10,["150"] = 10,["151"] = 10,["152"] = 10,["153"] = 10,["154"] = 10,["155"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Status = include("logic.models.Status")
local _____9738_4F53 = ____Status["霸体"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____7729_6655 = ____Status["眩晕"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("苍坤/被动 start")
        self:play(
            "ability2",
            1,
            0,
            0.3,
            false
        )
        __TS__Await(self:awaitTime(0.3))
        self:play(
            "ability2",
            1,
            0.3,
            0.31,
            true
        )
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(1000),
            {"敌人"}
        )
        local target = self:getIntensiveAreaTarget(targets, 300)
        if not target then
            console:log("苍坤/被动 break")
            self:play("idle1")
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        local ____self_1 = _____6570_503C["苍坤"]["被动"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local angle = self:getDirection(self.owner, target)
        local p = self:createProjectile(134271838, self.owner, angle, 150)
        p:prepare({hit_radius = 200, hit_same = false})
        p:listener({
            onFinish = function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    p:remove()
                    self:play(
                        "ability2",
                        1,
                        0.3,
                        1,
                        false
                    )
                    __TS__Await(self:awaitTime(0.1))
                    self:play("idle1")
                    if target and target:isAlive() then
                        self.owner:attackTarget(target, 500)
                    end
                    console:log("苍坤/被动 end")
                    self:endSkill(ability)
                end)
            end,
            onHit = function(t)
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    if t and t:isAlive() then
                        local a = self:getDirection(self.owner, t)
                        t:move(
                            {_____9738_4F53},
                            _____88AB_51FB_9000,
                            a,
                            10,
                            10,
                            0,
                            false,
                            500,
                            true
                        )
                        t:addTimeLimitProperties(
                            self.skillEntity,
                            buffId,
                            1,
                            {},
                            {_____7729_6655},
                            {-1, 101, 20},
                            1
                        )
                        self:playSound(self.owner, 134257764)
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(
                            self.skillEntity,
                            Formula["物理伤害"],
                            v,
                            AbilityType["被动"],
                            nil,
                            nil,
                            134254992
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                end)
            end
        })
        self.owner:moveTarget(
            {},
            _____9738_4F53,
            target.y3Unit,
            0,
            1000,
            true,
            nil,
            function()
                p:remove()
                self:endSkill(ability)
            end,
            function()
                p:remove()
                self:endSkill(ability)
            end
        )
        p:moverTarget(target, 1000, 0)
    end)
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134231992,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 100000, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
