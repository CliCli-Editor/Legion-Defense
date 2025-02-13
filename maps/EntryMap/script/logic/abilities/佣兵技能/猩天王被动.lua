local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 10,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 13,["41"] = 13,["42"] = 13,["45"] = 13,["48"] = 10,["49"] = 15,["51"] = 16,["52"] = 16,["53"] = 17,["55"] = 18,["56"] = 18,["57"] = 19,["58"] = 20,["59"] = 21,["60"] = 22,["61"] = 22,["62"] = 22,["63"] = 22,["64"] = 22,["65"] = 22,["66"] = 22,["67"] = 22,["68"] = 23,["69"] = 23,["70"] = 23,["71"] = 23,["72"] = 23,["73"] = 24,["74"] = 25,["75"] = 26,["76"] = 26,["77"] = 26,["78"] = 26,["79"] = 26,["80"] = 26,["81"] = 26,["82"] = 26,["83"] = 26,["85"] = 28,["86"] = 29,["87"] = 30,["88"] = 31,["89"] = 32,["90"] = 33,["91"] = 33,["92"] = 33,["93"] = 33,["94"] = 33,["95"] = 33,["96"] = 33,["97"] = 33,["98"] = 33,["101"] = 18,["104"] = 37,["105"] = 37,["106"] = 37,["107"] = 37,["108"] = 37,["109"] = 37,["110"] = 37,["112"] = 15,["113"] = 9,["114"] = 9,["115"] = 9,["116"] = 9,["117"] = 9,["118"] = 9,["119"] = 9});
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
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_11 = createAbility
local ____fight_10 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    console:log("猩天王被动 施法出手")
    self:play(
        "ability_10001_01",
        1,
        0,
        1,
        true
    )
    local ____self_3 = self.owner
    local ____self_3_addEffect_4 = ____self_3.addEffect
    local ____self_skillEntity_2 = self.skillEntity
    local ____self_1 = _____6570_503C["佣兵技能"]["猩猩被动"]
    ____self_3_addEffect_4(
        ____self_3,
        ____self_skillEntity_2,
        ____self_1["自己buffId"](____self_1)
    )
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_5 = _____6570_503C["佣兵技能"]["猩猩被动"]
        local v = ____self_5["伤害"](____self_5, self.owner)
        local duration = {0, 1, 1}
        do
            local i = 0
            while i < #duration do
                __TS__Await(self:awaitTime(duration[i + 1]))
                local particleId = i == #duration - 1 and 100094 or 100091
                local radius = i == #duration - 1 and 600 or 400
                self:addParticle(
                    particleId,
                    self.owner:getPosition(),
                    nil,
                    1,
                    1,
                    10
                )
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(radius, self.owner),
                    {"敌军"}
                )
                for ____, t in ipairs(targets) do
                    if i == 0 then
                        local ____t_8 = t
                        local ____t_addEffect_9 = t.addEffect
                        local ____self_skillEntity_7 = self.skillEntity
                        local ____self_6 = _____6570_503C["佣兵技能"]["猩猩被动"]
                        ____t_addEffect_9(
                            ____t_8,
                            ____self_skillEntity_7,
                            ____self_6["别人buffId"](____self_6)
                        )
                    end
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["被动"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    if i == #duration - 1 then
                        local angle = self:getDirection(self.owner, t)
                        t:move(
                            {_____9738_4F53},
                            _____88AB_51FB_9000,
                            angle,
                            200,
                            1500,
                            -20,
                            false
                        )
                    end
                end
                i = i + 1
            end
        end
        self:play(
            "ability_10001_01",
            1,
            1,
            -1,
            false
        )
    end)
end
____exports.key = ____createAbility_11(
    nil,
    ____fight_10,
    134255380,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 2.6}
)
return ____exports
