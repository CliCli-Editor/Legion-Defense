local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 10,["28"] = 9,["29"] = 12,["31"] = 14,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["37"] = 15,["38"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 16,["46"] = 16,["47"] = 16,["49"] = 16,["51"] = 17,["52"] = 17,["53"] = 18,["54"] = 18,["55"] = 18,["56"] = 18,["57"] = 18,["58"] = 18,["59"] = 18,["60"] = 18,["61"] = 19,["62"] = 20,["63"] = 20,["64"] = 20,["65"] = 20,["66"] = 20,["67"] = 20,["68"] = 20,["69"] = 20,["70"] = 21,["71"] = 21,["72"] = 21,["73"] = 21,["74"] = 21,["75"] = 21,["76"] = 21,["77"] = 21,["78"] = 22,["80"] = 17,["84"] = 12,["85"] = 7,["86"] = 7,["87"] = 7,["88"] = 7,["89"] = 7,["90"] = 7,["91"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack3")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:playSound(self.owner, 134258262)
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_1 = _____6570_503C["吉格"]["大招"]
            ____temp_3 = ____self_1["天赋31召唤数量"](____self_1)
        else
            local ____self_2 = _____6570_503C["吉格"]["大招"]
            ____temp_3 = ____self_2["召唤数量"](____self_2)
        end
        local count = ____temp_3
        local ____temp_6
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_4 = _____6570_503C["吉格"]["大招"]
            ____temp_6 = ____self_4["天赋32持续时间"](____self_4)
        else
            local ____self_5 = _____6570_503C["吉格"]["大招"]
            ____temp_6 = ____self_5["持续时间"](____self_5)
        end
        local duration = ____temp_6
        do
            local i = 0
            while i < count do
                local summonEntity = fightUtils:summon(
                    self.owner,
                    17,
                    duration,
                    nil,
                    1,
                    12
                )
                if summonEntity then
                    self:addParticle(
                        103221,
                        summonEntity:getPosition(),
                        nil,
                        1,
                        1,
                        0
                    )
                    self:addParticle(
                        134219740,
                        summonEntity:getPosition(),
                        nil,
                        1,
                        1,
                        0
                    )
                    self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
                end
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134265245,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.45}
)
return ____exports
