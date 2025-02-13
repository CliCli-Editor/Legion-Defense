local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 10,["36"] = 10,["37"] = 11,["38"] = 18,["39"] = 25,["40"] = 32,["41"] = 40,["42"] = 41,["43"] = 42,["44"] = 10,["45"] = 43,["46"] = 44,["47"] = 45,["48"] = 46,["49"] = 47,["50"] = 48,["52"] = 50,["53"] = 50,["54"] = 50,["55"] = 50,["56"] = 50,["57"] = 50,["58"] = 50,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 52,["64"] = 52,["65"] = 52,["66"] = 52,["67"] = 52,["68"] = 52,["70"] = 54,["71"] = 55,["72"] = 56,["74"] = 58,["75"] = 58,["76"] = 58,["77"] = 58,["78"] = 58,["79"] = 58,["80"] = 58,["83"] = 43,["84"] = 62,["86"] = 63,["87"] = 63,["88"] = 65,["89"] = 65,["90"] = 65,["91"] = 65,["93"] = 65,["94"] = 65,["96"] = 65,["97"] = 66,["98"] = 66,["99"] = 66,["100"] = 66,["102"] = 66,["103"] = 66,["105"] = 66,["106"] = 67,["107"] = 68,["108"] = 69,["109"] = 70,["110"] = 72,["111"] = 73,["112"] = 74,["113"] = 74,["114"] = 74,["115"] = 74,["116"] = 74,["117"] = 74,["118"] = 74,["120"] = 76,["121"] = 76,["122"] = 76,["123"] = 76,["124"] = 76,["125"] = 77,["126"] = 78,["127"] = 79,["128"] = 80,["129"] = 80,["130"] = 80,["131"] = 80,["132"] = 80,["133"] = 80,["134"] = 80,["135"] = 80,["136"] = 80,["137"] = 81,["139"] = 83,["140"] = 84,["141"] = 85,["143"] = 87,["144"] = 88,["145"] = 88,["146"] = 88,["147"] = 88,["148"] = 88,["149"] = 88,["150"] = 88,["151"] = 88,["152"] = 88,["153"] = 89,["156"] = 92,["157"] = 92,["158"] = 92,["159"] = 92,["160"] = 92,["161"] = 92,["162"] = 92,["163"] = 92,["164"] = 92,["165"] = 92,["166"] = 92,["167"] = 93,["168"] = 94,["169"] = 94,["170"] = 94,["171"] = 94,["172"] = 94,["173"] = 94,["174"] = 94,["175"] = 94,["178"] = 97,["179"] = 98,["180"] = 98,["181"] = 98,["182"] = 98,["183"] = 98,["184"] = 98,["185"] = 98,["187"] = 100,["188"] = 101,["191"] = 105,["192"] = 106,["193"] = 106,["194"] = 106,["195"] = 106,["196"] = 106,["197"] = 106,["198"] = 106,["199"] = 106,["200"] = 106,["202"] = 108,["203"] = 109,["204"] = 110,["206"] = 112,["207"] = 112,["208"] = 112,["209"] = 112,["210"] = 112,["211"] = 112,["212"] = 112,["213"] = 112,["214"] = 112,["216"] = 114,["217"] = 115,["218"] = 115,["219"] = 115,["220"] = 115,["221"] = 115,["222"] = 115,["223"] = 115,["224"] = 115,["226"] = 117,["227"] = 118,["228"] = 119,["230"] = 121,["233"] = 62,["234"] = 125,["235"] = 126,["236"] = 126,["237"] = 126,["238"] = 126,["239"] = 126,["240"] = 126,["241"] = 127,["242"] = 128,["243"] = 129,["244"] = 130,["245"] = 131,["246"] = 132,["247"] = 130,["248"] = 134,["250"] = 135,["253"] = 138,["254"] = 139,["255"] = 140,["256"] = 141,["257"] = 142,["258"] = 142,["259"] = 142,["260"] = 142,["261"] = 142,["262"] = 142,["263"] = 142,["264"] = 142,["265"] = 142,["266"] = 143,["268"] = 145,["269"] = 146,["270"] = 147,["272"] = 149,["273"] = 150,["274"] = 150,["275"] = 150,["276"] = 150,["277"] = 150,["278"] = 150,["279"] = 150,["280"] = 150,["281"] = 150,["282"] = 151,["285"] = 130,["286"] = 130,["287"] = 155,["288"] = 125,["289"] = 10,["290"] = 10,["291"] = 10,["292"] = 10,["293"] = 10,["294"] = 10,["295"] = 10});
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
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_1 = ____Property["特技_1"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_14 = createAbility
local ____fight_13 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
    self["动画参数3"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数4"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["特殊攻击"] = false
    self.count = 0
    self["脚底粒子ID"] = 134259689
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
    if self["特殊攻击"] then
        self.owner:setValue(_____7279_6280_1, 0)
        if self["动画参数3"] == nil then
            self:play("attack4")
        else
            self:play(
                self["动画参数3"].aniName,
                self["动画参数3"].playSpeed,
                self["动画参数3"].startTime,
                self["动画参数3"].endTime,
                self["动画参数3"].loop
            )
        end
        self:addParticle(
            104700,
            self.owner,
            nil,
            1,
            0.5,
            0,
            "weaponTop"
        )
    else
        if self["动画参数"] == nil then
            self.count = self.count + 1
            self:play(self.count % 2 == 1 and "attack1" or "attack2")
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
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["战王"]["大招"]
        local buffId = ____self_1["附加buff"](____self_1)
        local ____temp_4
        if self.owner:getValue(_____5929_8D4B_2) == 1 then
            local ____self_2 = _____6570_503C["战王"]["被动"]
            ____temp_4 = ____self_2["天赋21转换真实伤害比例"](____self_2, self.owner)
        else
            local ____self_3 = _____6570_503C["战王"]["被动"]
            ____temp_4 = ____self_3["转换真实伤害比例"](____self_3, self.owner)
        end
        local x = ____temp_4
        local ____temp_7
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_5 = _____6570_503C["战王"]["普通攻击"]
            ____temp_7 = ____self_5["天赋12伤害"](____self_5, self.owner)
        else
            local ____self_6 = _____6570_503C["战王"]["普通攻击"]
            ____temp_7 = ____self_6["伤害"](____self_6, self.owner)
        end
        local v = ____temp_7
        local newV = math.floor(v * (1 - x))
        local pV = math.floor(v * x)
        local angle = self.owner:getAngle()
        self:playSound(self.owner, 134240944)
        if self["特殊攻击"] then
            if self["动画参数4"] ~= nil then
                self:play(
                    self["动画参数4"].aniName,
                    self["动画参数4"].playSpeed,
                    self["动画参数4"].startTime,
                    self["动画参数4"].endTime,
                    self["动画参数4"].loop
                )
            end
            local targets = self.owner:findByShape(
                self.owner:getPosition(),
                Shape:createSectorShape(600, 180, angle),
                {"敌人"}
            )
            for ____, t in ipairs(targets) do
                if newV > 0 then
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        newV,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        104742
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                if pV > 0 then
                    if newV > 0 then
                        __TS__Await(self:awaitTime(0.1))
                    end
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["真实伤害"],
                        pV,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        104742
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end
            local ____fightUtils_11 = fightUtils
            local ____fightUtils_addShield_12 = fightUtils.addShield
            local ____self_owner_9 = self.owner
            local ____self_skillEntity_10 = self.skillEntity
            local ____self_8 = _____6570_503C["战王"]["普通攻击"]
            ____fightUtils_addShield_12(
                ____fightUtils_11,
                ____self_owner_9,
                ____self_skillEntity_10,
                ____self_8["特殊攻击护盾"](____self_8, self.owner)
            )
            if self.owner:getEffectQuantity(buffId) > 0 then
                self:createP(
                    134249300,
                    angle,
                    newV,
                    pV,
                    400,
                    1500
                )
            end
        else
            if self["动画参数2"] ~= nil then
                self:play(
                    self["动画参数2"].aniName,
                    self["动画参数2"].playSpeed,
                    self["动画参数2"].startTime,
                    self["动画参数2"].endTime,
                    self["动画参数2"].loop
                )
            end
            local target = cast:getTargetUnit()
            if not target then
                return ____awaiter_resolve(nil)
            end
            if newV > 0 then
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    newV,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    104742
                )
            end
            if pV > 0 then
                if newV > 0 then
                    __TS__Await(self:awaitTime(0.1))
                end
                target:hurt(
                    self.skillEntity,
                    Formula["真实伤害"],
                    pV,
                    AbilityType["普攻"],
                    nil,
                    nil,
                    104742
                )
            end
            if self.owner:getEffectQuantity(buffId) > 0 then
                self:createP(
                    134233827,
                    angle,
                    newV,
                    pV,
                    150,
                    1200
                )
            end
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, self["脚底粒子ID"], scale)
        end
    end)
end
function ____class_0.prototype.createP(self, id, angle, newV, pV, radius, distance)
    local p = self:createProjectile(
        id,
        self.owner:getPosition(),
        angle,
        150
    )
    p:prepare({face_angle = true, hit_radius = radius})
    p:setCustomData("newV", newV)
    p:setCustomData("pV", pV)
    p:listener({
        onFinish = function()
            p:remove()
        end,
        onHit = function(t)
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if not t or not t:isAlive() then
                    return ____awaiter_resolve(nil)
                end
                local x = p:getCustomData("newV")
                local y = p:getCustomData("pV")
                if newV > 0 then
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        x,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        104742
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
                if pV > 0 then
                    if newV > 0 then
                        __TS__Await(self:awaitTime(0.1))
                    end
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["真实伤害"],
                        y,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        104742
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            end)
        end
    })
    p:moverLine(angle, distance, 2500)
end
____exports.key = ____createAbility_14(
    nil,
    ____fight_13,
    134229594,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.7}
)
return ____exports
