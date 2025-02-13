local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 13,["31"] = 12,["32"] = 15,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 17,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 23,["53"] = 24,["54"] = 26,["55"] = 27,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 32,["78"] = 32,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 33,["84"] = 34,["86"] = 24,["87"] = 38,["88"] = 15,["89"] = 10,["90"] = 10,["91"] = 10,["92"] = 10,["93"] = 10,["94"] = 10,["95"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("ability_20001_01", 1.5)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = self.owner:findTarget(
        {"敌人"},
        nil,
        0,
        1000,
        false
    )
    if not target then
        return
    end
    local ____self_1 = _____6570_503C["精英技能"]["力法师大招"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(
        134275208,
        self.owner:getPosition(),
        angle,
        150
    )
    p:prepare({hit_radius = 50})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        target:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 101, 20},
            1
        )
        self:addParticle(
            134274201,
            target:getPosition(),
            angle,
            1,
            1
        )
        target:hurt(
            self.skillEntity,
            Formula["法术伤害"],
            v,
            AbilityType["大招"],
            nil,
            nil,
            134254799
        )
        if target:v(_____8840) <= 0 or not target:isAlive() then
            self.owner:addMp(self.skillEntity, 100)
        end
    end})
    p:moverTarget(target, 1500, 50)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134228040,
    ____class_0,
    {["施法开始"] = 0.625, ["施法引导"] = 0, ["施法出手"] = 0.625, ["施法完成"] = 0}
)
return ____exports
