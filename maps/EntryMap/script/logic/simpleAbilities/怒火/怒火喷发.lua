local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 14,["42"] = 17,["43"] = 18,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 20,["56"] = 24,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 25,["62"] = 26,["65"] = 30,["66"] = 31,["67"] = 32,["68"] = 32,["69"] = 32,["70"] = 32,["71"] = 32,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 33,["80"] = 8,["81"] = 37});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self.owner:getAngle()
        self:addParticle(
            _____6570_503C["怒火"]["怒火喷发"]["粒子ID"],
            self.owner:getPosition(),
            angle,
            _____6570_503C["怒火"]["怒火喷发"]["粒子缩放"],
            _____6570_503C["怒火"]["怒火喷发"]["粒子持续时间"],
            0
        )
        local targetXs = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["怒火"]["怒火喷发"]["范围"]),
            {"敌人"}
        )
        if not targetXs or #targetXs == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targetXs) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6012_706B__6012_706B_55B7_53D1__4F24_5BB3_7C7B_578B1_1 = _____6570_503C["怒火"]["怒火喷发"]["伤害类型1"]
            local ____self_0 = _____6570_503C["怒火"]["怒火喷发"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6012_706B__6012_706B_55B7_53D1__4F24_5BB3_7C7B_578B1_1,
                ____self_0["伤害1"](____self_0, self.owner, 0)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        local offsetPoint = self:offsetPoint(self.owner, angle, _____6570_503C["怒火"]["怒火喷发"]["矩形长"] / 2)
        local targets = self.owner:findByShape(
            offsetPoint,
            Shape:createRectangleShape(_____6570_503C["怒火"]["怒火喷发"]["矩形宽"], _____6570_503C["怒火"]["怒火喷发"]["矩形长"], angle),
            {"敌人"}
        )
        if not targets or #targets == 0 then
            return ____awaiter_resolve(nil)
        end
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_6 = t
            local ____t_hurt_7 = t.hurt
            local ____6570_503C__6012_706B__6012_706B_55B7_53D1__4F24_5BB3_7C7B_578B2_5 = _____6570_503C["怒火"]["怒火喷发"]["伤害类型2"]
            local ____self_4 = _____6570_503C["怒火"]["怒火喷发"]
            ____t_hurt_7(
                ____t_6,
                self,
                ____6570_503C__6012_706B__6012_706B_55B7_53D1__4F24_5BB3_7C7B_578B2_5,
                ____self_4["伤害2"](____self_4, self.owner, 0)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
