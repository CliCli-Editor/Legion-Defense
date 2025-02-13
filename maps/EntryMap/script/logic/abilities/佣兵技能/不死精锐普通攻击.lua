local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["26"] = 7,["27"] = 8,["28"] = 7,["29"] = 9,["30"] = 10,["31"] = 11,["32"] = 9,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 15,["38"] = 16,["39"] = 17,["42"] = 20,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 21,["52"] = 21,["53"] = 22,["54"] = 23,["55"] = 24,["56"] = 25,["57"] = 26,["58"] = 27,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 31,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 32,["75"] = 33,["76"] = 34,["77"] = 35,["79"] = 23,["80"] = 38,["81"] = 39,["84"] = 43,["85"] = 44,["86"] = 45,["87"] = 23,["88"] = 23,["89"] = 48,["90"] = 49,["91"] = 50,["92"] = 50,["93"] = 50,["94"] = 50,["96"] = 13,["97"] = 7,["98"] = 7,["99"] = 7,["100"] = 7,["101"] = 7,["102"] = 7,["103"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.count = self.count + 1
    self:play("attack1")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["不死精锐普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local ____self_2 = _____6570_503C["佣兵技能"]["不死精锐普通攻击"]
    local v2 = ____self_2["爆炸伤害"](____self_2, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local angle = self:getDirection(self.owner, target)
    local p = self:createProjectile(
        134277233,
        self.owner,
        angle,
        150,
        nil,
        "attack2",
        nil,
        true
    )
    p:prepare({hit_radius = 150, face_angle = true})
    p:listener({
        onFinish = function()
            local pos = p:getPosition()
            p:remove()
            if pos == nil then
                return
            end
            local targets = self.owner:findByShape(
                pos,
                Shape:createCircularShape(200),
                {"敌人"}
            )
            self:addParticle(
                101062,
                pos,
                nil,
                0.67,
                1,
                10
            )
            for ____, t in ipairs(targets) do
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
            end
        end,
        onHit = function(t)
            if not t or not t:isAlive() then
                return
            end
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(ability.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    })
    p:moverLine(angle, 1475, 2500)
    if self.count % 3 == 0 then
        self.owner:addEffect(
            self.skillEntity,
            _____6570_503C["佣兵技能"]["不死精锐普通攻击"]:buffId()
        )
    end
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134272925,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0.45}
)
return ____exports
