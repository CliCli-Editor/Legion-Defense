local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 1,["14"] = 1,["15"] = 1,["16"] = 2,["17"] = 2,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 9,["31"] = 9,["32"] = 10,["33"] = 10,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["40"] = 12,["41"] = 13,["42"] = 20,["43"] = 27,["44"] = 34,["45"] = 42,["46"] = 43,["47"] = 12,["48"] = 46,["49"] = 47,["50"] = 48,["52"] = 50,["53"] = 50,["54"] = 50,["55"] = 50,["56"] = 50,["57"] = 50,["58"] = 50,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 52,["64"] = 52,["65"] = 52,["66"] = 52,["67"] = 52,["68"] = 46,["69"] = 55,["70"] = 56,["71"] = 56,["72"] = 56,["73"] = 56,["74"] = 56,["75"] = 56,["76"] = 56,["77"] = 56,["78"] = 56,["79"] = 56,["80"] = 57,["81"] = 57,["82"] = 57,["83"] = 57,["85"] = 57,["86"] = 57,["88"] = 57,["89"] = 58,["90"] = 58,["91"] = 58,["92"] = 58,["93"] = 58,["95"] = 58,["96"] = 58,["98"] = 58,["100"] = 59,["101"] = 59,["102"] = 59,["103"] = 59,["104"] = 59,["105"] = 60,["106"] = 60,["107"] = 60,["108"] = 60,["109"] = 60,["110"] = 60,["111"] = 60,["112"] = 60,["113"] = 60,["114"] = 61,["115"] = 62,["116"] = 63,["117"] = 64,["118"] = 65,["119"] = 65,["120"] = 65,["121"] = 65,["122"] = 66,["123"] = 66,["124"] = 66,["125"] = 66,["126"] = 67,["127"] = 68,["128"] = 68,["129"] = 69,["130"] = 69,["131"] = 69,["132"] = 70,["133"] = 70,["134"] = 70,["135"] = 70,["136"] = 71,["137"] = 72,["138"] = 73,["139"] = 74,["141"] = 75,["142"] = 75,["143"] = 75,["144"] = 75,["145"] = 75,["146"] = 76,["148"] = 69,["149"] = 69,["151"] = 80,["152"] = 81,["153"] = 82,["154"] = 82,["155"] = 82,["156"] = 82,["157"] = 82,["158"] = 82,["159"] = 82,["160"] = 83,["161"] = 84,["162"] = 85,["163"] = 86,["165"] = 88,["166"] = 88,["167"] = 88,["168"] = 88,["169"] = 88,["170"] = 88,["171"] = 88,["173"] = 90,["174"] = 90,["175"] = 90,["176"] = 91,["177"] = 92,["178"] = 93,["180"] = 95,["181"] = 96,["184"] = 99,["185"] = 90,["186"] = 90,["187"] = 101,["188"] = 102,["189"] = 103,["190"] = 104,["191"] = 105,["192"] = 105,["193"] = 106,["195"] = 108,["196"] = 109,["197"] = 110,["200"] = 113,["201"] = 113,["202"] = 113,["203"] = 113,["205"] = 113,["206"] = 113,["208"] = 113,["209"] = 114,["210"] = 115,["211"] = 116,["213"] = 118,["214"] = 118,["215"] = 118,["216"] = 118,["217"] = 118,["218"] = 118,["219"] = 118,["222"] = 55,["223"] = 123,["224"] = 124,["225"] = 125,["226"] = 126,["228"] = 128,["229"] = 128,["230"] = 128,["231"] = 128,["232"] = 128,["233"] = 128,["234"] = 128,["236"] = 130,["237"] = 131,["239"] = 131,["240"] = 131,["241"] = 131,["244"] = 131,["245"] = 131,["246"] = 131,["247"] = 131,["248"] = 131,["249"] = 131,["250"] = 131,["252"] = 132,["253"] = 133,["254"] = 134,["256"] = 136,["257"] = 137,["260"] = 123,["261"] = 142,["263"] = 143,["264"] = 144,["265"] = 144,["266"] = 144,["267"] = 144,["268"] = 144,["269"] = 144,["270"] = 144,["271"] = 144,["272"] = 144,["273"] = 144,["274"] = 145,["276"] = 142,["277"] = 12,["278"] = 12,["279"] = 12,["280"] = 12,["281"] = 12,["282"] = 12,["283"] = 12});
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
local _____5355_4F4D_7C7B_578BID = ____Property["单位类型ID"]
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_19 = createAbility
local ____fight_18 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[5]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[6]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[7]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[8]
    self["替身列表"] = {}
    self["是否闪烁"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("back", 1.4, 5.6, 6.3)
    else
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    end
    self:addParticle(
        134220003,
        self.owner:getPosition(),
        nil,
        1,
        0.5,
        500
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:addParticle(
        134265313,
        self.owner,
        nil,
        1,
        1,
        nil,
        "origin",
        1
    )
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_1 = _____6570_503C["锦鲤"]["大招"]
        ____temp_3 = ____self_1["天赋31原皮替身id"](____self_1)
    else
        local ____self_2 = _____6570_503C["锦鲤"]["大招"]
        ____temp_3 = ____self_2["原皮替身id"](____self_2)
    end
    local id = ____temp_3
    if self.owner.roleId == 134223911 then
        local ____temp_6
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_4 = _____6570_503C["锦鲤"]["大招"]
            ____temp_6 = ____self_4["天赋31皮肤替身id"](____self_4)
        else
            local ____self_5 = _____6570_503C["锦鲤"]["大招"]
            ____temp_6 = ____self_5["皮肤替身id"](____self_5)
        end
        id = ____temp_6
    end
    local pos = self:offsetPoint(
        self.owner,
        self.owner:getAngle(),
        200
    )
    local summonEntity = fightUtils:summon(
        self.owner,
        id,
        8,
        nil,
        nil,
        nil,
        pos
    )
    if summonEntity then
        local buffId = self.owner:getValue(_____5929_8D4B_2) == 0 and 101127 or (self.owner:getValue(_____5929_8D4B_2) == 1 and 101128 or 101129)
        local quantity = self.owner:getEffectQuantity(buffId)
        summonEntity:modifyEffectQuantity(self.skillEntity, buffId, quantity, true)
        summonEntity:setValue(
            _____5929_8D4B_1,
            self.owner:getValue(_____5929_8D4B_1)
        )
        summonEntity:setValue(
            _____5929_8D4B_2,
            self.owner:getValue(_____5929_8D4B_2)
        )
        local beam = self:addBeamLink(134228664, 8, self.owner, summonEntity)
        local ____self__66FF_8EAB_5217_8868_7 = self["替身列表"]
        ____self__66FF_8EAB_5217_8868_7[#____self__66FF_8EAB_5217_8868_7 + 1] = {unit = summonEntity, beam = beam, pos = pos}
        self:addWatcher(
            function() return summonEntity == nil or not summonEntity:isAlive() end,
            function(____, newV, oldV)
                local x = __TS__ArrayFind(
                    self["替身列表"],
                    function(____, a) return a.unit == summonEntity and a.beam == beam end
                )
                if x then
                    local posX = x.pos
                    if x.beam then
                        self:removeBeam(x.beam)
                    end
                    __TS__ArraySplice(
                        self["替身列表"],
                        __TS__ArrayIndexOf(self["替身列表"], x),
                        1
                    )
                    self:blinkBack(posX)
                end
            end
        )
    end
    local d1 = 600 * 600
    local d2 = 2000 * 2000
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a) return a:isAlive() and a:distanceQuick(self.owner) >= d1 and a:distanceQuick(self.owner) <= d2 end,
        nil,
        0,
        2000
    )
    self["是否闪烁"] = #targets > 0
    if self["是否闪烁"] then
        if self["动画参数2"] == nil then
            self:play("ability_2")
        else
            self:play(
                self["动画参数2"].aniName,
                self["动画参数2"].playSpeed,
                self["动画参数2"].startTime,
                self["动画参数2"].endTime,
                self["动画参数2"].loop
            )
        end
        __TS__ArraySort(
            targets,
            function(____, a, b)
                if a:getValue(_____5355_4F4D_7C7B_578BID) ~= b:getValue(_____5355_4F4D_7C7B_578BID) then
                    if a:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                        return -1
                    end
                    if b:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                        return 1
                    end
                end
                return 0
            end
        )
        self["闪烁目标"] = targets[1]
        if self["闪烁目标"] ~= nil then
            local angle = self:getDirection(self.owner, self["闪烁目标"])
            local point = self:offsetPoint(self["闪烁目标"], angle, 300)
            local ____opt_8 = self.owner.y3Unit
            if not (____opt_8 and ____opt_8:can_blink_to(y3.point.create(point.x, point.y))) then
                self["闪烁目标"]:getPosition(point)
            end
            self.owner:blink(point)
            local newAngle = self:getDirection(self.owner, self["闪烁目标"])
            self.owner:setAngle(newAngle)
        end
    else
        local ____temp_12
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_10 = _____6570_503C["锦鲤"]["大招"]
            ____temp_12 = ____self_10["天赋32狂战buff"](____self_10)
        else
            local ____self_11 = _____6570_503C["锦鲤"]["大招"]
            ____temp_12 = ____self_11["狂战buff"](____self_11)
        end
        local buffId = ____temp_12
        self.owner:addEffect(self.skillEntity, buffId)
        if self["动画参数4"] == nil then
            self:play("back", 1.2, 7, -1)
        else
            self:play(
                self["动画参数4"].aniName,
                self["动画参数4"].playSpeed,
                self["动画参数4"].startTime,
                self["动画参数4"].endTime,
                self["动画参数4"].loop
            )
        end
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["是否闪烁"] then
        if self["动画参数3"] == nil then
            self:play("ability_2", 3, 0.25, -1)
        else
            self:play(
                self["动画参数3"].aniName,
                self["动画参数3"].playSpeed,
                self["动画参数3"].startTime,
                self["动画参数3"].endTime,
                self["动画参数3"].loop
            )
        end
        if self["闪烁目标"] ~= nil and self["闪烁目标"]:isAlive() then
            local ____self_16 = self["闪烁目标"]
            local ____self_16_hurt_17 = ____self_16.hurt
            local ____self_skillEntity_14 = self.skillEntity
            local ____Formula__7269_7406_4F24_5BB3_15 = Formula["物理伤害"]
            local ____self_13 = _____6570_503C["锦鲤"]["普通攻击"]
            ____self_16_hurt_17(
                ____self_16,
                ____self_skillEntity_14,
                ____Formula__7269_7406_4F24_5BB3_15,
                ____self_13["伤害"](____self_13, self.owner),
                AbilityType["普攻"],
                nil,
                nil,
                134238024
            )
            local scale = 1
            if self["闪烁目标"]:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(self["闪烁目标"], 134259689, scale)
            self:playSound(self.owner, 201346518)
        end
    end
end
function ____class_0.prototype.blinkBack(self, pos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(0.033))
        self:addParticle(
            134265313,
            self.owner,
            nil,
            1,
            1,
            nil,
            "origin",
            1
        )
        self.owner:blink(pos)
    end)
end
____exports.key = ____createAbility_19(
    nil,
    ____fight_18,
    134235892,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.25}
)
return ____exports
