local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 11,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["32"] = 11,["33"] = 13,["34"] = 11,["35"] = 14,["36"] = 15,["37"] = 14,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 19,["42"] = 20,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["48"] = 21,["49"] = 21,["51"] = 21,["52"] = 22,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["60"] = 25,["61"] = 26,["62"] = 27,["63"] = 28,["64"] = 30,["65"] = 31,["68"] = 34,["69"] = 35,["70"] = 36,["71"] = 37,["72"] = 38,["73"] = 38,["74"] = 38,["75"] = 38,["76"] = 38,["77"] = 38,["78"] = 38,["79"] = 38,["80"] = 38,["83"] = 28,["84"] = 44,["85"] = 17,["86"] = 47,["88"] = 48,["89"] = 49,["90"] = 50,["92"] = 47,["93"] = 11,["94"] = 11,["95"] = 11,["96"] = 11,["97"] = 11,["98"] = 11,["99"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local ____Status = include("logic.models.Status")
local _____6C89_9ED8 = ____Status["沉默"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local temporaryStateId = genEffectId(nil)
local ____createAbility_9 = createAbility
local ____fight_7 = fight
local ____temp_8 = -1
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.isGhostCd = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    local ____self_1 = _____6570_503C["画痴"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local id = self.isGhostCd and -1 or (self.owner:random("画痴普攻恶魂概率", 0.25) and -2 or -1)
    local ____temp_4
    if self.owner:getValue(_____5929_8D4B_1) == 1 then
        local ____self_2 = _____6570_503C["画痴"]["普通攻击"]
        ____temp_4 = ____self_2["天赋11_冤魂buffId"](____self_2)
    else
        local ____self_3 = _____6570_503C["画痴"]["普通攻击"]
        ____temp_4 = ____self_3["冤魂buffId"](____self_3)
    end
    local buffId = ____temp_4
    if id == -2 then
        local ____self_setSpCd_6 = self.setSpCd
        local ____self_5 = _____6570_503C["画痴"]["普通攻击"]
        ____self_setSpCd_6(
            self,
            ____self_5["冤魂触发CD"](____self_5)
        )
    end
    local angle = self:getDirection(ability.owner, target)
    local p = self:createProjectile(id, self.owner, angle, 150)
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        target:hurt(self.skillEntity, Formula["物理伤害"], v)
        if id == -2 then
            target:addEffect(self.skillEntity, buffId, 1)
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                target:addTimeLimitProperties(
                    self.skillEntity,
                    temporaryStateId,
                    1,
                    {},
                    {_____6C89_9ED8},
                    {-1, 20},
                    3
                )
            end
        end
    end})
    p:moverTarget(target, 1500, 50)
end
function ____class_0.prototype.setSpCd(self, cd)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self.isGhostCd = true
        __TS__Await(self:awaitTime(cd))
        self.isGhostCd = false
    end)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_7,
    ____temp_8,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
