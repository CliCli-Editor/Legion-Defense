local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 9,["32"] = 11,["33"] = 18,["34"] = 8,["35"] = 25,["36"] = 26,["37"] = 25,["38"] = 28,["39"] = 29,["40"] = 30,["42"] = 32,["43"] = 32,["44"] = 32,["45"] = 32,["46"] = 32,["47"] = 32,["48"] = 32,["50"] = 28,["51"] = 35,["53"] = 36,["54"] = 37,["55"] = 37,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["62"] = 39,["64"] = 41,["65"] = 41,["66"] = 42,["67"] = 42,["68"] = 43,["69"] = 44,["72"] = 47,["73"] = 48,["74"] = 48,["75"] = 48,["76"] = 48,["77"] = 49,["78"] = 49,["79"] = 49,["80"] = 49,["81"] = 49,["82"] = 49,["83"] = 49,["84"] = 49,["85"] = 50,["86"] = 50,["87"] = 50,["88"] = 50,["89"] = 51,["90"] = 52,["93"] = 55,["94"] = 55,["95"] = 55,["96"] = 55,["97"] = 55,["98"] = 56,["99"] = 57,["100"] = 58,["103"] = 61,["104"] = 62,["105"] = 63,["106"] = 64,["108"] = 50,["109"] = 50,["110"] = 67,["112"] = 35,["113"] = 69,["114"] = 70,["115"] = 69,["116"] = 8,["117"] = 8,["118"] = 8,["119"] = 8,["120"] = 8,["121"] = 8,["122"] = 8});
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
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_10001_01", 2.4)
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数2"] ~= nil then
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        else
            self:play("ability_10001_01", 1.4, 1.2, -1)
        end
        local ____self_1 = _____6570_503C["佣兵技能"]["埃及猫大招"]
        local v = ____self_1["每跳伤害"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["佣兵技能"]["埃及猫大招"]
        local count = ____self_2["跳数"](____self_2)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134222525)
        local pos = {
            x = target:getPosition().x,
            y = target:getPosition().y
        }
        self:addParticle(
            134262745,
            pos,
            nil,
            2.34,
            2,
            10
        )
        __TS__Await(self:loop(
            2 / count,
            count,
            function(____, i)
                if not self["正在施法"] then
                    self:endSkill(self)
                    return
                end
                local targets = self.owner:findByShape(
                    pos,
                    Shape:createCircularShape(700),
                    {"敌人"}
                )
                if #targets == 0 then
                    self["正在施法"] = false
                    self:endSkill(self)
                    return
                end
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
        ))
        self["正在施法"] = false
    end)
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134228730,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 2}
)
return ____exports
