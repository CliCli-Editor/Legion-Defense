local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 9,["28"] = 10,["29"] = 11,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 15,["35"] = 16,["38"] = 19,["39"] = 20,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 21,["49"] = 22,["50"] = 23,["52"] = 25,["54"] = 9,["55"] = 27,["57"] = 28,["58"] = 29,["59"] = 30,["60"] = 31,["61"] = 31,["62"] = 32,["63"] = 33,["64"] = 34,["67"] = 37,["68"] = 38,["69"] = 38,["70"] = 38,["71"] = 38,["72"] = 38,["73"] = 38,["74"] = 38,["75"] = 38,["76"] = 38,["77"] = 39,["78"] = 40,["79"] = 41,["81"] = 43,["83"] = 27,["84"] = 45,["86"] = 46,["87"] = 47,["88"] = 48,["89"] = 49,["90"] = 49,["91"] = 50,["92"] = 51,["93"] = 52,["96"] = 55,["97"] = 56,["98"] = 56,["99"] = 56,["100"] = 56,["101"] = 56,["102"] = 56,["103"] = 56,["104"] = 56,["105"] = 56,["106"] = 57,["107"] = 58,["108"] = 59,["110"] = 61,["111"] = 62,["112"] = 63,["114"] = 45,["115"] = 7,["116"] = 7,["117"] = 7,["118"] = 7,["119"] = 7,["120"] = 7,["121"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack1")
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        __TS__Await(self:awaitTime(0.6 * x))
        local ____self_1 = _____6570_503C["精英技能"]["牛头人普通攻击"]
        local v1 = ____self_1["一段伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            self:endSkill(self)
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 201329173)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v1,
            AbilityType["普攻"],
            nil,
            nil,
            134231255
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack2", 1, 0, 0.6)
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        __TS__Await(self:awaitTime(0.45 * x))
        local ____self_2 = _____6570_503C["精英技能"]["牛头人普通攻击"]
        local v2 = ____self_2["二段伤害"](____self_2, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            self:endSkill(self)
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 201329173)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v2,
            AbilityType["普攻"],
            nil,
            nil,
            134231255
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack3")
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        __TS__Await(self:awaitTime(0.85 * x))
        local ____self_3 = _____6570_503C["精英技能"]["牛头人普通攻击"]
        local v3 = ____self_3["三段伤害"](____self_3, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            self:endSkill(self)
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 201329173)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v3,
            AbilityType["普攻"],
            nil,
            nil,
            134231255
        )
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, 134259689, scale)
        __TS__Await(self:awaitTime(0.1))
        target:hurt(self.skillEntity, Formula["物理伤害"], v3, AbilityType["普攻"])
    end)
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134222008,
    ____class_0,
    {["施法开始"] = 0.85, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 1.78}
)
return ____exports
