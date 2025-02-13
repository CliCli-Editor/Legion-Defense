local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 12,["36"] = 10,["37"] = 13,["39"] = 14,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 20,["48"] = 22,["49"] = 22,["50"] = 23,["51"] = 25,["52"] = 26,["53"] = 28,["54"] = 28,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 29,["61"] = 30,["62"] = 31,["63"] = 32,["64"] = 32,["66"] = 34,["67"] = 36,["68"] = 36,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 37,["74"] = 37,["75"] = 37,["76"] = 37,["77"] = 37,["78"] = 38,["79"] = 38,["80"] = 39,["82"] = 40,["83"] = 41,["85"] = 43,["86"] = 44,["87"] = 45,["88"] = 45,["89"] = 45,["90"] = 45,["91"] = 45,["92"] = 45,["93"] = 45,["94"] = 45,["95"] = 45,["96"] = 46,["97"] = 47,["98"] = 48,["100"] = 48,["101"] = 48,["102"] = 48,["105"] = 48,["106"] = 48,["107"] = 48,["114"] = 55,["115"] = 56,["116"] = 57,["117"] = 58,["118"] = 59,["119"] = 59,["120"] = 59,["121"] = 59,["122"] = 59,["123"] = 59,["124"] = 59,["125"] = 59,["126"] = 59,["128"] = 61,["129"] = 61,["130"] = 61,["131"] = 61,["132"] = 61,["133"] = 61,["134"] = 61,["135"] = 61,["136"] = 61,["138"] = 64,["139"] = 65,["140"] = 66,["142"] = 68,["143"] = 68,["145"] = 69,["146"] = 70,["147"] = 72,["148"] = 72,["149"] = 72,["150"] = 72,["151"] = 72,["152"] = 73,["153"] = 74,["154"] = 74,["155"] = 74,["156"] = 74,["157"] = 74,["158"] = 74,["159"] = 74,["160"] = 74,["162"] = 76,["163"] = 76,["164"] = 76,["165"] = 76,["166"] = 76,["167"] = 76,["168"] = 76,["169"] = 76,["171"] = 79,["172"] = 81,["174"] = 13,["175"] = 10,["176"] = 10,["177"] = 10,["178"] = 10,["179"] = 10,["180"] = 10,["181"] = 10});
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
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____Status = include("logic.models.Status")
local _____7A7A_72B6_6001 = ____Status["空状态"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_12 = createAbility
local ____fight_11 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.cd = 5
    self.damageDistance = 350
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("华丽舞姿")
        self:play(
            "attack_c_c",
            1,
            0,
            0.5,
            false
        )
        self.owner:addEffect(self.owner, 101023)
        local ____self_1 = _____6570_503C["恶魔小丑"]["华丽舞姿"]
        local maxTime = ____self_1["最大持续时间"](____self_1)
        local currentTime = 0
        __TS__Await(self:awaitTime(0.5))
        currentTime = currentTime + 0.5
        self:play(
            "attack_c_c",
            1,
            0.5,
            1.6,
            true
        )
        local effect = self:addEffect(self.owner, 134231028, -1)
        local trueMaxtime = 0
        if self.owner:v(_____5929_8D4B_2) == 1 then
            local ____self_2 = _____6570_503C["恶魔小丑"]["华丽舞姿"]
            trueMaxtime = ____self_2["天赋树额外持续时间"](____self_2)
        end
        while ability.owner:isAlive() and ability.owner:getValue(_____7279_6280_1) > 0 and currentTime < maxTime + trueMaxtime do
            local target = self.owner:findTarget(
                {"敌军"},
                function(____, a) return a:isAlive() end,
                1,
                1000
            )
            local targets = self.owner:findByShape(
                self.owner:getPosition(),
                Shape:createCircularShape(1000),
                {"敌军"}
            )
            local ____self_3 = _____6570_503C["恶魔小丑"]["华丽舞姿"]
            local v = ____self_3["伤害"](____self_3, self.owner)
            for ____, t in ipairs(targets) do
                do
                    if not t or not t:isAlive() then
                        goto __continue6
                    end
                    if self:getDistance(self.owner, t) <= self.damageDistance then
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        local r = t:hurt(
                            self.skillEntity,
                            Formula["物理伤害"],
                            v,
                            AbilityType["大招"],
                            nil,
                            nil,
                            134254992
                        )
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                        if self.owner:v(_____5929_8D4B_2) == 2 and r.value % 10 == 4 then
                            local ____self_7 = self.owner
                            local ____self_7_cure_8 = ____self_7.cure
                            local ____self_skillEntity_5 = self.skillEntity
                            local ____Formula__56DE_8840_503C__65E0_6062_590D_6548_679C_5F71_54CD_6 = Formula["回血值_无恢复效果影响"]
                            local ____self_4 = _____6570_503C["恶魔小丑"]["华丽舞姿"]
                            ____self_7_cure_8(
                                ____self_7,
                                ____self_skillEntity_5,
                                ____Formula__56DE_8840_503C__65E0_6062_590D_6548_679C_5F71_54CD_6,
                                ____self_4["天赋22_恢复生命值"](____self_4, self.owner)
                            )
                        end
                    end
                end
                ::__continue6::
            end
            if target ~= nil and target:isAlive() then
                local angle = self:getDirection(self.owner, target)
                local distance = self:getDistance(self.owner, target)
                local d = distance - 200
                self.owner:move(
                    {},
                    _____7A7A_72B6_6001,
                    angle,
                    d,
                    200,
                    0,
                    false
                )
            else
                self.owner:move(
                    {},
                    _____7A7A_72B6_6001,
                    0,
                    0,
                    200,
                    0,
                    false
                )
            end
            ability.owner:modifyValue(self.owner, _____7279_6280_1, -1)
            __TS__Await(self:awaitTime(0.5))
            currentTime = currentTime + 0.5
        end
        if effect ~= nil then
            effect:remove()
        end
        self:play("attack_c_c", 1, 1.6, 2.15)
        ability.owner:modifyValue(self.owner, _____7279_6280_1, 0, true)
        local enemys = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(self.owner.y3Unit:get_alert_range()),
            {"敌军"}
        )
        if enemys ~= nil and #enemys > 0 then
            self:play(
                "walk",
                1,
                0,
                -1,
                true,
                true
            )
        else
            self:play(
                "idle1",
                1,
                0,
                -1,
                true,
                true
            )
        end
        self:endSkill(ability)
        self:setCD(self.cd)
    end)
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134227993,
    ____class_0,
    {["施法引导"] = 100000}
)
return ____exports
