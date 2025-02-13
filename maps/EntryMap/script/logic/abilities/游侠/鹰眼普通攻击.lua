local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 9,["25"] = 8,["26"] = 11,["27"] = 12,["28"] = 13,["31"] = 16,["32"] = 17,["33"] = 18,["34"] = 18,["35"] = 18,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 19,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 21,["50"] = 21,["54"] = 21,["55"] = 22,["56"] = 23,["57"] = 24,["58"] = 22,["59"] = 26,["60"] = 27,["63"] = 30,["64"] = 31,["65"] = 32,["66"] = 33,["67"] = 22,["68"] = 22,["69"] = 36,["71"] = 38,["72"] = 40,["73"] = 41,["74"] = 42,["77"] = 45,["78"] = 46,["79"] = 38,["80"] = 49,["82"] = 11,["83"] = 6,["84"] = 6,["85"] = 6,["86"] = 6,["87"] = 6,["88"] = 6,["89"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:play("attack1", 2, 0.3, -1)
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(
        134264134,
        self.owner:getPosition(),
        angle,
        150
    )
    p:prepare({face_angle = true, hit_radius = 100})
    local ____p_2 = p
    local ____p_setCustomData_3 = p.setCustomData
    local ____self_1 = _____6570_503C["游侠"]["大招"]
    ____p_setCustomData_3(
        ____p_2,
        "dmg",
        ____self_1["召唤物伤害"](____self_1, self.owner)
    )
    local ____self_5 = self.owner
    local ____self_5_getEffectQuantity_6 = ____self_5.getEffectQuantity
    local ____self_4 = _____6570_503C["游侠"]["大招"]
    if ____self_5_getEffectQuantity_6(
        ____self_5,
        ____self_4["天赋32附加buff"](____self_4)
    ) > 0 then
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(t)
                if not t or not t:isAlive() then
                    return
                end
                local x = p:getCustomData("dmg")
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(self.skillEntity, Formula["物理伤害"], x, AbilityType["大招"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        })
        p:moverLine(angle, 1800, 2500)
    else
        p:listener({onFinish = function()
            local x = p:getCustomData("dmg")
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            self:playSound(self.owner, 134240944)
            target:hurt(self.skillEntity, Formula["物理伤害"], x, AbilityType["大招"])
        end})
        p:moverTarget(target, 2500, 0)
    end
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134236252,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.7}
)
return ____exports
