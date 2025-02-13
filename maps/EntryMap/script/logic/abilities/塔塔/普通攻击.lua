local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 5,["23"] = 5,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["30"] = 7,["31"] = 9,["32"] = 7,["33"] = 11,["35"] = 12,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 18,["41"] = 20,["42"] = 21,["43"] = 22,["44"] = 23,["45"] = 24,["48"] = 28,["49"] = 28,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 28,["54"] = 28,["55"] = 30,["56"] = 30,["57"] = 30,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 32,["67"] = 33,["69"] = 36,["70"] = 37,["71"] = 39,["72"] = 41,["74"] = 42,["75"] = 42,["76"] = 43,["77"] = 44,["78"] = 45,["79"] = 47,["81"] = 48,["82"] = 49,["84"] = 51,["85"] = 53,["86"] = 53,["87"] = 53,["88"] = 53,["89"] = 53,["90"] = 53,["91"] = 53,["92"] = 53,["93"] = 54,["94"] = 56,["95"] = 57,["98"] = 60,["99"] = 60,["100"] = 61,["101"] = 62,["102"] = 62,["104"] = 64,["105"] = 64,["106"] = 64,["107"] = 64,["108"] = 64,["109"] = 64,["110"] = 64,["111"] = 64,["113"] = 66,["114"] = 54,["115"] = 69,["116"] = 69,["117"] = 69,["118"] = 69,["119"] = 69,["120"] = 69,["121"] = 69,["122"] = 69,["123"] = 69,["124"] = 69,["125"] = 69,["129"] = 42,["133"] = 74,["134"] = 76,["135"] = 77,["136"] = 79,["138"] = 80,["139"] = 81,["141"] = 83,["142"] = 85,["143"] = 85,["144"] = 85,["145"] = 85,["146"] = 85,["147"] = 85,["148"] = 85,["149"] = 85,["150"] = 86,["151"] = 88,["152"] = 89,["155"] = 92,["156"] = 92,["157"] = 93,["158"] = 93,["159"] = 93,["160"] = 93,["161"] = 93,["162"] = 93,["163"] = 93,["164"] = 93,["166"] = 95,["167"] = 86,["168"] = 98,["169"] = 98,["170"] = 98,["171"] = 98,["172"] = 98,["173"] = 98,["174"] = 98,["175"] = 98,["176"] = 98,["177"] = 98,["178"] = 98,["184"] = 11,["185"] = 7,["186"] = 7,["187"] = 7,["188"] = 7,["189"] = 7,["190"] = 7,["191"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack_b3_02")
        self["暴击"] = self.owner:random(
            "塔塔普攻暴击率",
            self.owner:p(_____66B4_51FB_7387)
        )
        local enemyCount = 1
        local hasSkillBuff = self.owner:getEffectQuantity(100931) >= 1
        if hasSkillBuff then
            enemyCount = enemyCount + 3
            if self.owner:v(_____5929_8D4B_3) == 2 then
                enemyCount = enemyCount + 1
            end
        end
        local targets = self.owner:findTargets(
            {"敌人"},
            nil,
            enemyCount,
            1,
            1500
        )
        console:log(
            "enemyCount",
            enemyCount,
            table.concat(
                __TS__ArrayMap(
                    targets,
                    function(____, a) return a:getName() end
                ),
                ","
            )
        )
        if self.owner:v(_____5929_8D4B_1) == 1 then
            self.owner:addEffect(self.owner, 100911, 1)
        end
        if self["暴击"] then
            self:play("attack1")
            local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
            local timeList = {0, 0.24 * x, 0.51 * x, 0.73 * x}
            do
                local i = 1
                while i < #timeList do
                    local a = timeList[i]
                    local b = timeList[i + 1]
                    __TS__Await(self:awaitTime(b - a))
                    for ____, target in ipairs(targets) do
                        do
                            if not target or not target:isAlive() then
                                goto __continue9
                            end
                            local angle = self:getDirection(ability.owner, target)
                            local p = self:createProjectile(
                                134270701,
                                self.owner,
                                angle,
                                150,
                                nil,
                                "left_hand"
                            )
                            p:listener({onFinish = function()
                                if not self.owner or not self.owner:isAlive() then
                                    p:remove()
                                    return
                                end
                                local ____self_1 = _____6570_503C["塔塔"]["普通攻击"]
                                local v = ____self_1["暴击伤害"](____self_1, self.owner)
                                if self.owner:v(_____5929_8D4B_1) == 2 then
                                    local ____self_2 = _____6570_503C["塔塔"]["普通攻击"]
                                    v = ____self_2["天赋12_暴击伤害加强"](____self_2, self.owner)
                                end
                                if target ~= nil then
                                    target:hurt(
                                        self.skillEntity,
                                        Formula["物理伤害"],
                                        v,
                                        AbilityType["普攻"],
                                        self["暴击"]
                                    )
                                end
                                p:remove()
                            end})
                            p:moverTarget(
                                target,
                                1500,
                                100,
                                10,
                                nil,
                                nil,
                                nil,
                                50,
                                "hit_point"
                            )
                        end
                        ::__continue9::
                    end
                    i = i + 1
                end
            end
        else
            self:play("attack_b3_02")
            local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
            __TS__Await(self:awaitTime(0.29 * x))
            for ____, target in ipairs(targets) do
                do
                    if not target or not target:isAlive() then
                        goto __continue16
                    end
                    local angle = self:getDirection(ability.owner, target)
                    local p = self:createProjectile(
                        134270701,
                        self.owner,
                        angle,
                        150,
                        nil,
                        "left_hand"
                    )
                    p:listener({onFinish = function()
                        if not self.owner or not self.owner:isAlive() then
                            p:remove()
                            return
                        end
                        local ____self_5 = _____6570_503C["塔塔"]["普通攻击"]
                        local v = ____self_5["普通伤害"](____self_5, self.owner)
                        if target ~= nil then
                            target:hurt(
                                self.skillEntity,
                                Formula["物理伤害"],
                                v,
                                AbilityType["普攻"],
                                self["暴击"]
                            )
                        end
                        p:remove()
                    end})
                    p:moverTarget(
                        target,
                        1500,
                        100,
                        10,
                        nil,
                        nil,
                        nil,
                        250,
                        "hit_point"
                    )
                end
                ::__continue16::
            end
        end
    end)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134219727,
    ____class_0,
    {["施法开始"] = 0.79, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.21}
)
return ____exports
