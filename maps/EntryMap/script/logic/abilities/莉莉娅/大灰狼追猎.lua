local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["34"] = 12,["35"] = 14,["36"] = 12,["37"] = 15,["38"] = 16,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 18,["50"] = 19,["51"] = 20,["52"] = 21,["53"] = 22,["56"] = 25,["57"] = 26,["58"] = 27,["59"] = 28,["60"] = 15,["61"] = 30,["62"] = 31,["63"] = 32,["64"] = 33,["67"] = 36,["68"] = 36,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 37,["75"] = 38,["76"] = 39,["77"] = 40,["78"] = 41,["79"] = 42,["82"] = 45,["83"] = 46,["84"] = 46,["85"] = 46,["86"] = 46,["87"] = 46,["88"] = 46,["89"] = 46,["90"] = 46,["91"] = 46,["92"] = 30,["93"] = 48,["94"] = 49,["97"] = 52,["98"] = 53,["99"] = 54,["102"] = 57,["103"] = 48,["104"] = 59,["105"] = 60,["108"] = 63,["109"] = 64,["110"] = 65,["113"] = 68,["114"] = 69,["115"] = 69,["116"] = 70,["117"] = 71,["118"] = 71,["119"] = 71,["120"] = 71,["121"] = 71,["122"] = 71,["123"] = 71,["124"] = 71,["125"] = 71,["126"] = 72,["127"] = 73,["128"] = 74,["129"] = 74,["130"] = 74,["131"] = 74,["132"] = 74,["133"] = 74,["134"] = 74,["135"] = 74,["136"] = 74,["137"] = 74,["139"] = 74,["140"] = 74,["142"] = 74,["143"] = 75,["145"] = 77,["146"] = 78,["147"] = 79,["149"] = 81,["150"] = 82,["151"] = 59,["152"] = 85,["154"] = 86,["155"] = 87,["156"] = 88,["157"] = 89,["158"] = 90,["161"] = 93,["162"] = 94,["163"] = 94,["164"] = 95,["165"] = 96,["166"] = 96,["167"] = 96,["168"] = 96,["169"] = 96,["170"] = 96,["171"] = 96,["172"] = 96,["173"] = 96,["174"] = 97,["175"] = 98,["176"] = 99,["177"] = 99,["178"] = 99,["179"] = 99,["180"] = 99,["181"] = 99,["182"] = 99,["183"] = 99,["184"] = 99,["185"] = 99,["187"] = 99,["188"] = 99,["190"] = 99,["191"] = 100,["193"] = 102,["194"] = 103,["195"] = 104,["197"] = 106,["198"] = 107,["199"] = 108,["201"] = 85,["202"] = 12,["203"] = 12,["204"] = 12,["205"] = 12,["206"] = 12,["207"] = 12,["208"] = 12});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____Status = include("logic.models.Status")
local _____7A7A_72B6_6001 = ____Status["空状态"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_16 = createAbility
local ____fight_15 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["is提前出手"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["is提前出手"] = false
    local targets = self.owner:findTargets(
        {"敌人"},
        nil,
        nil,
        0,
        1000
    )
    __TS__ArraySort(
        targets,
        function(____, a, b) return a:v(_____8840) / a:formula(Formula["展示面板_血量上限"]) - b:v(_____8840) / b:formula(Formula["展示面板_血量上限"]) end
    )
    self["目标"] = targets[1]
    if not self["目标"] or not self["目标"]:isAlive() then
        self:endSkill(self)
        self:setCD(5)
        return
    end
    self["目标"]:addEffect(self.skillEntity, 102051)
    local angle = self:getDirection(self.owner, self["目标"])
    self.owner:setAngle(angle)
    self:play("ability_03_01")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    if not self["目标"] or not self["目标"]:isAlive() then
        self:endSkill(self)
        self:setCD(5)
        return
    end
    self:play(
        "ability_03_02",
        1,
        0,
        -1,
        true
    )
    local angleX = self:getDirection(self["目标"], self.owner)
    local offsetPoint = self:offsetPoint(self["目标"], angleX, 300)
    local distance = self:getDistance(self.owner, offsetPoint)
    if distance <= 300 then
        self["提前出手"](self)
        self["is提前出手"] = true
        return
    end
    local angle = self.owner:getAngle()
    self.owner:move(
        {},
        _____7A7A_72B6_6001,
        angle,
        distance,
        distance,
        0,
        true
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["is提前出手"] then
        return
    end
    if not self["目标"] or not self["目标"]:isAlive() then
        self:endSkill(self)
        self:setCD(5)
        return
    end
    self:play("ability_03_03")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["is提前出手"] then
        return
    end
    if not self["目标"] or not self["目标"]:isAlive() then
        self:endSkill(self)
        self:setCD(5)
        return
    end
    local target = self["目标"]
    local ____self_1 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:playSound(self.owner, 134240944)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        true,
        nil,
        100804
    )
    local parent = fightUtils:getAncestor(self.owner)
    if parent and parent:isAlive() then
        local ____temp_7
        local ____target_3 = target
        local ____target_getEffectQuantity_4 = target.getEffectQuantity
        local ____self_2 = _____6570_503C["莉莉"]["普通攻击"]
        if ____target_getEffectQuantity_4(
            ____target_3,
            ____self_2["特殊攻击附加buffId"](____self_2)
        ) > 0 then
            local ____self_5 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
            ____temp_7 = ____self_5["治疗"](____self_5, parent) * 2
        else
            local ____self_6 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
            ____temp_7 = ____self_6["治疗"](____self_6, parent)
        end
        local c = ____temp_7
        parent:cure(self.skillEntity, Formula["回血值"], c)
    end
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
    self.owner:attackTarget(target, 1000)
end
____class_0.prototype["提前出手"] = function(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability_03_03")
        __TS__Await(self:awaitTime(0.6))
        if not self["目标"] or not self["目标"]:isAlive() then
            self:endSkill(self)
            self:setCD(5)
            return ____awaiter_resolve(nil)
        end
        local target = self["目标"]
        local ____self_8 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
        local v = ____self_8["伤害"](____self_8, self.owner)
        self:playSound(self.owner, 134240944)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            true,
            nil,
            100804
        )
        local parent = fightUtils:getAncestor(self.owner)
        if parent and parent:isAlive() then
            local ____temp_14
            local ____target_10 = target
            local ____target_getEffectQuantity_11 = target.getEffectQuantity
            local ____self_9 = _____6570_503C["莉莉"]["普通攻击"]
            if ____target_getEffectQuantity_11(
                ____target_10,
                ____self_9["特殊攻击附加buffId"](____self_9)
            ) > 0 then
                local ____self_12 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
                ____temp_14 = ____self_12["治疗"](____self_12, parent) * 2
            else
                local ____self_13 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
                ____temp_14 = ____self_13["治疗"](____self_13, parent)
            end
            local c = ____temp_14
            parent:cure(self.skillEntity, Formula["回血值"], c)
        end
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
        self:endSkill(self, false)
        self.owner:attackTarget(target, 1000)
    end)
end
____exports.key = ____createAbility_16(
    nil,
    ____fight_15,
    134229742,
    ____class_0,
    {["施法开始"] = 0.85, ["施法引导"] = 1, ["施法出手"] = 0.6, ["施法完成"] = 0.6}
)
return ____exports
