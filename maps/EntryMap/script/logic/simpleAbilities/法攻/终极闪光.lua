local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 10,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 14,["39"] = 17,["40"] = 19,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 21,["52"] = 21,["53"] = 21,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 23,["60"] = 24,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 25,["65"] = 25,["66"] = 25,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 25,["71"] = 25,["72"] = 25,["73"] = 25,["74"] = 25,["75"] = 26,["76"] = 27,["77"] = 27,["78"] = 27,["79"] = 27,["80"] = 27,["81"] = 27,["82"] = 27,["83"] = 27,["84"] = 27,["87"] = 10,["88"] = 30});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitData = include("logic.models.UnitData")
local UnitOrder = ____UnitData.UnitOrder
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(_____6570_503C["法攻"]["终极闪光"]["索敌范围"]),
            {"敌人"}
        )
        local targetXs = self:getTargetByOrder(targets, UnitOrder.HERO, 1)
        if not targetXs then
            return ____awaiter_resolve(nil)
        end
        local target = targetXs[1]
        local angle = self:getDirection(self.owner, target)
        local startPos = self:offsetPoint(self.owner, angle, 1000)
        self:addParticle(
            134230645,
            self.owner:getPosition(),
            angle,
            1.43,
            0.2,
            50,
            nil,
            nil,
            nil,
            true
        )
        local targetxss = self.owner:findByShape(
            startPos,
            Shape:createRectangleShape(100, 2000, angle),
            {"敌人"}
        )
        for ____, t in ipairs(targetxss) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__6CD5_653B__7EC8_6781_95EA_5149__4F24_5BB3_7C7B_578B_1 = _____6570_503C["法攻"]["终极闪光"]["伤害类型"]
            local ____self_0 = _____6570_503C["法攻"]["终极闪光"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__6CD5_653B__7EC8_6781_95EA_5149__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner),
                nil,
                nil,
                nil,
                134239380
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            t:move(
                {_____9738_4F53},
                _____88AB_51FB_9000,
                angle,
                _____6570_503C["法攻"]["终极闪光"]["位移距离"],
                _____6570_503C["法攻"]["终极闪光"]["位移速度"],
                _____6570_503C["法攻"]["终极闪光"]["位移加速度"],
                _____6570_503C["法攻"]["终极闪光"]["位移是否改变朝向"]
            )
        end
    end)
end
local ____ = fight
return ____exports
