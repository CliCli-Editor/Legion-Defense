local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 9,["32"] = 9,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["40"] = 12,["41"] = 13,["42"] = 20,["43"] = 27,["44"] = 34,["45"] = 42,["46"] = 42,["47"] = 42,["48"] = 42,["49"] = 42,["50"] = 42,["51"] = 42,["52"] = 42,["53"] = 50,["54"] = 12,["55"] = 52,["56"] = 53,["57"] = 54,["59"] = 56,["60"] = 56,["61"] = 56,["62"] = 56,["63"] = 56,["64"] = 56,["65"] = 56,["67"] = 58,["68"] = 59,["69"] = 52,["70"] = 61,["72"] = 62,["73"] = 63,["74"] = 63,["75"] = 63,["76"] = 63,["77"] = 63,["78"] = 63,["79"] = 63,["81"] = 66,["82"] = 66,["83"] = 66,["84"] = 66,["86"] = 66,["87"] = 66,["89"] = 66,["90"] = 67,["91"] = 68,["92"] = 68,["93"] = 68,["94"] = 68,["96"] = 68,["97"] = 68,["99"] = 68,["100"] = 69,["101"] = 70,["102"] = 71,["103"] = 71,["104"] = 72,["106"] = 73,["107"] = 73,["108"] = 74,["109"] = 76,["110"] = 76,["111"] = 76,["112"] = 76,["113"] = 76,["114"] = 76,["115"] = 76,["116"] = 76,["117"] = 76,["118"] = 77,["119"] = 78,["120"] = 79,["121"] = 80,["122"] = 81,["123"] = 82,["124"] = 83,["127"] = 73,["131"] = 61,["132"] = 88,["134"] = 89,["135"] = 90,["136"] = 91,["137"] = 91,["138"] = 91,["139"] = 91,["140"] = 91,["141"] = 91,["142"] = 91,["143"] = 91,["144"] = 91,["146"] = 92,["147"] = 92,["148"] = 93,["151"] = 96,["152"] = 97,["153"] = 97,["154"] = 97,["155"] = 97,["156"] = 97,["157"] = 97,["158"] = 97,["159"] = 97,["160"] = 98,["161"] = 98,["162"] = 98,["163"] = 98,["164"] = 98,["165"] = 99,["166"] = 99,["167"] = 99,["168"] = 99,["169"] = 99,["170"] = 100,["171"] = 101,["172"] = 102,["173"] = 102,["174"] = 102,["175"] = 102,["176"] = 102,["177"] = 102,["178"] = 102,["179"] = 102,["180"] = 102,["181"] = 102,["182"] = 102,["183"] = 102,["184"] = 103,["185"] = 104,["186"] = 105,["187"] = 105,["188"] = 105,["189"] = 105,["190"] = 105,["191"] = 105,["192"] = 105,["193"] = 105,["194"] = 105,["195"] = 105,["196"] = 105,["197"] = 106,["198"] = 106,["199"] = 106,["200"] = 106,["201"] = 106,["202"] = 106,["203"] = 106,["204"] = 106,["205"] = 106,["207"] = 108,["208"] = 92,["211"] = 110,["212"] = 111,["213"] = 112,["215"] = 88,["216"] = 114,["217"] = 115,["218"] = 116,["219"] = 114,["220"] = 119,["222"] = 120,["224"] = 121,["225"] = 121,["226"] = 122,["227"] = 122,["228"] = 122,["229"] = 122,["230"] = 122,["231"] = 122,["232"] = 122,["233"] = 123,["234"] = 124,["235"] = 124,["236"] = 124,["237"] = 124,["238"] = 124,["239"] = 124,["240"] = 124,["241"] = 125,["242"] = 121,["246"] = 128,["247"] = 128,["248"] = 128,["249"] = 128,["250"] = 128,["251"] = 128,["252"] = 128,["253"] = 128,["256"] = 119,["257"] = 12,["258"] = 12,["259"] = 12,["260"] = 12,["261"] = 12,["262"] = 12,["263"] = 12});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____7A7A_72B6_6001 = ____Status["空状态"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_14 = createAbility
local ____fight_13 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[7]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[8]
    self["偏移list"] = {
        {angle = 240, distance = 150},
        {angle = 120, distance = 150},
        {angle = 240, distance = 300},
        {angle = 120, distance = 300},
        {angle = 240, distance = 450},
        {angle = 120, distance = 450}
    }
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_2")
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
    self["正在施法"] = true
    self.owner:addEffect(self.skillEntity, 13)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数2"] ~= nil then
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
        local ____temp_3
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_1 = _____6570_503C["黄金甲"]["大招"]
            ____temp_3 = ____self_1["天赋32附加buff"](____self_1)
        else
            local ____self_2 = _____6570_503C["黄金甲"]["大招"]
            ____temp_3 = ____self_2["附加buff"](____self_2)
        end
        local buffId = ____temp_3
        self.owner:addEffect(self.skillEntity, buffId)
        local ____temp_6
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_4 = _____6570_503C["黄金甲"]["大招"]
            ____temp_6 = ____self_4["天赋31召唤物数量"](____self_4)
        else
            local ____self_5 = _____6570_503C["黄金甲"]["大招"]
            ____temp_6 = ____self_5["召唤物数量"](____self_5)
        end
        local count = ____temp_6
        local p = self.owner:getPosition()
        local angle = self.owner:getAngle()
        local ____self_7 = _____6570_503C["黄金甲"]["大招"]
        local id = ____self_7["召唤物id"](____self_7)
        __TS__Await(self:awaitTime(0.7))
        do
            local i = 0
            while i < count do
                local offsetPoint = self:offsetPoint(p, angle + self["偏移list"][i + 1].angle, self["偏移list"][i + 1].distance)
                local summonEntity = fightUtils:summon(
                    self.owner,
                    id,
                    nil,
                    nil,
                    1,
                    count,
                    offsetPoint
                )
                if summonEntity ~= nil then
                    summonEntity:setAngle(angle, 0.01)
                    local effectEntity = summonEntity:getEffectEntities(103941)[1]
                    if effectEntity ~= nil then
                        effectEntity:setStore(0, self["偏移list"][i + 1].angle)
                        effectEntity:setStore(1, self["偏移list"][i + 1].distance)
                        effectEntity:setStore(2, angle)
                    end
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:playAni()
        local angle = self.owner:getAngle()
        self.owner:move(
            {},
            _____7A7A_72B6_6001,
            angle,
            600,
            150,
            0,
            false
        )
        do
            local i = 0
            while i < 4 do
                if not self["正在施法"] then
                    break
                end
                __TS__Await(self:awaitTime(0.3))
                self:addParticle(
                    103563,
                    self.owner:getPosition(),
                    angle,
                    1,
                    1,
                    50
                )
                local offsetPoint = self:offsetPoint(
                    self.owner:getPosition(),
                    angle,
                    450 / 2
                )
                local targets = self.owner:findByShape(
                    offsetPoint,
                    Shape:createRectangleShape(150, 450, angle),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____t_11 = t
                    local ____t_hurt_12 = t.hurt
                    local ____self_skillEntity_9 = self.skillEntity
                    local ____Formula__56FA_5B9A_4F24_5BB3_10 = Formula["固定伤害"]
                    local ____self_8 = _____6570_503C["黄金甲"]["大招"]
                    ____t_hurt_12(
                        ____t_11,
                        ____self_skillEntity_9,
                        ____Formula__56FA_5B9A_4F24_5BB3_10,
                        ____self_8["召唤物伤害"](____self_8, self.owner),
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
                __TS__Await(self:awaitTime(0.7))
                i = i + 1
            end
        end
        self:play("idle1")
        self["正在施法"] = false
        self.owner:removeEffect(self.skillEntity, {13})
    end)
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
    self.owner:removeEffect(self.skillEntity, {13})
end
function ____class_0.prototype.playAni(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数3"] ~= nil and self["动画参数4"] ~= nil then
            do
                local i = 0
                while i < 4 do
                    self:play(
                        self["动画参数3"].aniName,
                        self["动画参数3"].playSpeed,
                        self["动画参数3"].startTime,
                        self["动画参数3"].endTime,
                        self["动画参数3"].loop
                    )
                    __TS__Await(self:awaitTime(0.3))
                    self:play(
                        self["动画参数4"].aniName,
                        self["动画参数4"].playSpeed,
                        self["动画参数4"].startTime,
                        self["动画参数4"].endTime,
                        self["动画参数4"].loop
                    )
                    __TS__Await(self:awaitTime(0.7))
                    i = i + 1
                end
            end
        else
            self:play(
                "ability_3_9-20_",
                1,
                0,
                -1,
                true,
                true
            )
        end
    end)
end
____exports.key = ____createAbility_14(
    nil,
    ____fight_13,
    134234343,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 4}
)
return ____exports
