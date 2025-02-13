local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["33"] = 10,["34"] = 11,["35"] = 10,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 15,["44"] = 18,["45"] = 19,["46"] = 20,["49"] = 23,["50"] = 12,["51"] = 25,["52"] = 26,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 28,["62"] = 28,["63"] = 28,["64"] = 28,["65"] = 28,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 29,["70"] = 29,["71"] = 29,["72"] = 29,["73"] = 29,["74"] = 29,["75"] = 30,["76"] = 31,["77"] = 32,["78"] = 32,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 32,["84"] = 32,["85"] = 32,["86"] = 32,["87"] = 32,["88"] = 32,["89"] = 33,["90"] = 34,["91"] = 35,["92"] = 35,["93"] = 35,["94"] = 35,["95"] = 35,["96"] = 35,["97"] = 35,["98"] = 35,["99"] = 35,["100"] = 35,["101"] = 35,["102"] = 36,["103"] = 36,["104"] = 36,["105"] = 36,["106"] = 36,["107"] = 36,["108"] = 36,["109"] = 36,["110"] = 36,["112"] = 25,["113"] = 10,["114"] = 10,["115"] = 10,["116"] = 10,["117"] = 10,["118"] = 10,["119"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_7 = createAbility
local ____fight_6 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    local effectEntity = self.owner:getEffectEntities(103941)[1]
    if effectEntity ~= nil then
        self.owner:setAngle(
            effectEntity:s(2),
            0
        )
    end
    if self.count >= 4 then
        self:endSkill(self)
        self.owner:kill(self.owner, nil, nil, true)
        return
    end
    self:play("ability_3_9-20_")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self.count = self.count + 1
    self:addParticle(
        103563,
        self.owner:getPosition(),
        self.owner:getAngle(),
        1,
        1,
        50
    )
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        self.owner:getAngle(),
        450 / 2
    )
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createRectangleShape(
            150,
            450,
            self.owner:getAngle()
        ),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        local ____t_4 = t
        local ____t_hurt_5 = t.hurt
        local ____self_skillEntity_2 = self.skillEntity
        local ____Formula__56FA_5B9A_4F24_5BB3_3 = Formula["固定伤害"]
        local ____self_1 = _____6570_503C["黄金甲"]["大招"]
        ____t_hurt_5(
            ____t_4,
            ____self_skillEntity_2,
            ____Formula__56FA_5B9A_4F24_5BB3_3,
            ____self_1["召唤物伤害"](____self_1, self.owner),
            AbilityType["大招"]
        )
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        local a = self:getDirection(self.owner, t)
        t:move(
            {_____9738_4F53},
            _____88AB_51FB_9000,
            a,
            150,
            300,
            -10,
            false,
            300,
            true
        )
        t:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 20},
            0.5
        )
    end
end
____exports.key = ____createAbility_7(
    nil,
    ____fight_6,
    134218556,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.7}
)
return ____exports
