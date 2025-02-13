local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["38"] = 11,["39"] = 12,["40"] = 11,["41"] = 13,["42"] = 14,["43"] = 15,["44"] = 15,["45"] = 16,["46"] = 17,["48"] = 18,["49"] = 13,["50"] = 20,["52"] = 21,["53"] = 22,["54"] = 22,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["60"] = 23,["61"] = 23,["63"] = 23,["64"] = 24,["65"] = 24,["67"] = 25,["68"] = 25,["69"] = 26,["70"] = 27,["73"] = 30,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 31,["80"] = 31,["81"] = 31,["82"] = 31,["83"] = 32,["84"] = 33,["85"] = 33,["86"] = 33,["87"] = 33,["88"] = 33,["89"] = 33,["90"] = 33,["91"] = 34,["92"] = 36,["93"] = 37,["94"] = 38,["95"] = 39,["96"] = 40,["97"] = 40,["98"] = 40,["99"] = 40,["100"] = 40,["101"] = 40,["102"] = 40,["103"] = 40,["104"] = 40,["106"] = 42,["107"] = 42,["108"] = 42,["109"] = 42,["110"] = 42,["111"] = 42,["112"] = 42,["113"] = 42,["114"] = 42,["117"] = 45,["118"] = 45,["119"] = 45,["120"] = 45,["121"] = 45,["122"] = 46,["123"] = 47,["124"] = 48,["125"] = 49,["127"] = 51,["128"] = 25,["132"] = 20,["133"] = 54,["134"] = 55,["135"] = 54,["136"] = 57,["137"] = 58,["138"] = 59,["139"] = 59,["140"] = 60,["141"] = 60,["142"] = 61,["143"] = 61,["144"] = 61,["145"] = 61,["146"] = 61,["147"] = 62,["148"] = 62,["149"] = 62,["150"] = 62,["151"] = 62,["152"] = 63,["153"] = 64,["154"] = 64,["155"] = 64,["156"] = 64,["157"] = 64,["158"] = 64,["159"] = 64,["160"] = 64,["161"] = 65,["162"] = 66,["163"] = 67,["164"] = 68,["165"] = 69,["166"] = 70,["167"] = 70,["168"] = 70,["169"] = 70,["170"] = 70,["171"] = 70,["172"] = 70,["173"] = 70,["174"] = 70,["175"] = 70,["176"] = 71,["177"] = 71,["178"] = 71,["179"] = 71,["180"] = 71,["181"] = 71,["182"] = 71,["183"] = 71,["184"] = 71,["185"] = 72,["188"] = 76,["189"] = 57,["190"] = 78,["191"] = 79,["192"] = 78,["193"] = 82,["195"] = 83,["196"] = 84,["197"] = 85,["198"] = 85,["199"] = 85,["200"] = 85,["201"] = 85,["202"] = 85,["203"] = 85,["204"] = 85,["205"] = 85,["206"] = 85,["207"] = 85,["208"] = 85,["211"] = 82,["212"] = 11,["213"] = 11,["214"] = 11,["215"] = 11,["216"] = 11,["217"] = 11,["218"] = 11});
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
local ____Property = include("logic.models.Property")
local _____4F53_578B = ____Property["体型"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_15 = createAbility
local ____fight_14 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
    local ____self_1 = _____6570_503C["大头"]["大招"]
    local range = ____self_1["伤害范围"](____self_1, self.owner)
    if self.ability ~= nil then
        self.ability:set_range(range)
    end
    self:play("ability2")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scale = math.floor(self.owner:p(_____4F53_578B) * 10) / 10
        local ____self_2 = _____6570_503C["大头"]["大招"]
        local range = ____self_2["伤害范围"](____self_2, self.owner)
        local ____temp_5
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_3 = _____6570_503C["大头"]["大招"]
            ____temp_5 = ____self_3["天赋32每跳伤害"](____self_3, self.owner)
        else
            local ____self_4 = _____6570_503C["大头"]["大招"]
            ____temp_5 = ____self_4["每跳伤害"](____self_4, self.owner)
        end
        local v = ____temp_5
        local ____self_6 = _____6570_503C["大头"]["大招"]
        local count = ____self_6["伤害跳数"](____self_6)
        do
            local i = 0
            while i < count do
                if not self["正在施法"] then
                    self:endSkill(self)
                    return ____awaiter_resolve(nil)
                end
                self:playSound(self.owner, 134240944)
                self:addParticle(
                    102491,
                    self.owner,
                    0,
                    scale * 1.125,
                    0.9,
                    nil,
                    "skill1"
                )
                if self.owner:getValue(_____5929_8D4B_3) ~= 2 then
                    local targets = self.owner:findTargets(
                        {"敌人"},
                        nil,
                        nil,
                        nil,
                        range
                    )
                    local target = self:getIntensiveAreaTarget(targets, range)
                    if target ~= nil and target:isAlive() then
                        local angle = self:getDirection(self.owner, target)
                        local distance = self:getDistance(self.owner, target)
                        local d = distance - 200
                        self.owner:move(
                            {},
                            _____9738_4F53,
                            angle,
                            d,
                            200,
                            0,
                            true
                        )
                    else
                        self.owner:move(
                            {},
                            _____9738_4F53,
                            0,
                            0,
                            200,
                            0,
                            true
                        )
                    end
                end
                local targetXs = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(range, self.owner),
                    {"敌人"}
                )
                for ____, t in ipairs(targetXs) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                __TS__Await(self:awaitTime(0.15))
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.owner:stopMove()
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local scale = math.floor(self.owner:p(_____4F53_578B) * 10) / 10
    local ____self_7 = _____6570_503C["大头"]["大招"]
    local range = ____self_7["伤害范围"](____self_7, self.owner)
    local ____self_8 = _____6570_503C["大头"]["大招"]
    local v = ____self_8["最后一击伤害"](____self_8, self.owner)
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        self.owner:getAngle(),
        200 * scale
    )
    local targets = self.owner:findByShape(
        offsetPoint,
        Shape:createCircularShape(range, self.owner),
        {"敌人"}
    )
    self:playSound(self.owner, 134240944)
    self:addParticle(
        104404,
        offsetPoint,
        0,
        scale * 2.25,
        1,
        10
    )
    for ____, t in ipairs(targets) do
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(self.skillEntity, Formula["固定伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            t:move(
                {_____9738_4F53},
                _____88AB_51FB_9000,
                self.owner:getAngle(),
                10,
                10,
                0,
                false,
                500
            )
            t:addTimeLimitProperties(
                self.skillEntity,
                buffId,
                1,
                {},
                {_____7729_6655},
                {-1, 101, 20},
                1
            )
            self:setHurt(t)
        end
    end
    self["正在施法"] = false
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
function ____class_0.prototype.setHurt(self, target)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(1))
        if target and target:isAlive() then
            local ____target_12 = target
            local ____target_hurt_13 = target.hurt
            local ____self_skillEntity_10 = self.skillEntity
            local ____Formula__771F_5B9E_4F24_5BB3_11 = Formula["真实伤害"]
            local ____self_9 = _____6570_503C["大头"]["大招"]
            ____target_hurt_13(
                ____target_12,
                ____self_skillEntity_10,
                ____Formula__771F_5B9E_4F24_5BB3_11,
                ____self_9["天赋31最后一击追加伤害"](____self_9, self.owner),
                AbilityType["大招"]
            )
        end
    end)
end
____exports.key = ____createAbility_15(
    nil,
    ____fight_14,
    134277768,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0.9, ["施法出手"] = 0.5, ["施法完成"] = 0.5}
)
return ____exports
