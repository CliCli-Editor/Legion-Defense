local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 18,["37"] = 10,["38"] = 26,["39"] = 27,["40"] = 28,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 30,["46"] = 30,["47"] = 30,["48"] = 30,["50"] = 26,["51"] = 33,["53"] = 34,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 35,["58"] = 35,["59"] = 35,["60"] = 35,["62"] = 37,["63"] = 38,["66"] = 41,["67"] = 42,["68"] = 43,["69"] = 44,["70"] = 44,["71"] = 45,["72"] = 45,["74"] = 46,["75"] = 46,["76"] = 47,["77"] = 48,["78"] = 49,["79"] = 50,["80"] = 51,["81"] = 52,["82"] = 53,["83"] = 55,["84"] = 56,["85"] = 57,["86"] = 58,["87"] = 59,["88"] = 60,["91"] = 64,["92"] = 64,["93"] = 64,["94"] = 64,["95"] = 64,["96"] = 64,["97"] = 64,["98"] = 64,["99"] = 64,["100"] = 66,["101"] = 67,["102"] = 67,["103"] = 67,["104"] = 67,["105"] = 67,["106"] = 67,["107"] = 67,["108"] = 67,["109"] = 68,["110"] = 68,["111"] = 68,["112"] = 68,["113"] = 68,["114"] = 68,["115"] = 69,["116"] = 70,["117"] = 70,["118"] = 70,["120"] = 70,["121"] = 70,["122"] = 70,["124"] = 70,["125"] = 71,["126"] = 72,["127"] = 72,["128"] = 73,["130"] = 75,["131"] = 76,["132"] = 76,["133"] = 76,["136"] = 79,["137"] = 79,["138"] = 79,["139"] = 79,["140"] = 79,["141"] = 79,["142"] = 80,["143"] = 81,["144"] = 82,["145"] = 84,["146"] = 85,["147"] = 86,["150"] = 89,["151"] = 89,["152"] = 89,["153"] = 89,["154"] = 89,["155"] = 89,["156"] = 89,["157"] = 89,["158"] = 90,["159"] = 91,["160"] = 92,["161"] = 93,["162"] = 94,["163"] = 94,["164"] = 95,["166"] = 82,["167"] = 99,["168"] = 100,["172"] = 53,["173"] = 106,["174"] = 46,["177"] = 108,["178"] = 109,["179"] = 111,["180"] = 112,["181"] = 112,["183"] = 113,["184"] = 113,["185"] = 114,["186"] = 115,["187"] = 113,["192"] = 33,["193"] = 120,["194"] = 121,["195"] = 122,["198"] = 126,["199"] = 126,["200"] = 126,["201"] = 126,["202"] = 126,["203"] = 127,["204"] = 128,["205"] = 129,["206"] = 130,["207"] = 130,["208"] = 130,["209"] = 130,["210"] = 130,["211"] = 130,["212"] = 130,["213"] = 130,["214"] = 130,["215"] = 130,["216"] = 130,["217"] = 131,["218"] = 132,["219"] = 132,["220"] = 133,["221"] = 120,["222"] = 10,["223"] = 10,["224"] = 10,["225"] = 10,["226"] = 10,["227"] = 10,["228"] = 10});
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
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____8840 = ____Property["血"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("ability_3")
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
        end
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local unitDataType = self.owner.customData
        local pList = unitDataType.projectileList
        local count = #pList
        local ____self_1 = _____6570_503C["灵魄"]["大招"]
        local v = ____self_1["每颗珠子伤害"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["灵魄"]["大招"]
        local vx = ____self_2["最后一颗伤害"](____self_2, self.owner, count)
        do
            local i = 0
            while i < count do
                local p = pList[i + 1]
                p:moveStop()
                p:setCustomData("isToTarget", 1)
                p:setCustomData("count", count)
                p:setCustomData("dmg", i == count - 1 and vx or v)
                p:setCustomData("isFinal", i == count - 1 and 1 or 0)
                p:listener({onFinish = function()
                    if p:getCustomData("isToTarget") == 1 then
                        local countX = p:getCustomData("count")
                        local dmg = p:getCustomData("dmg")
                        local isFinal = p:getCustomData("isFinal") == 1
                        p:remove()
                        if not target or not target:isAlive() then
                            return
                        end
                        target:hurt(
                            self.skillEntity,
                            Formula["法术伤害"],
                            dmg,
                            AbilityType["大招"],
                            nil,
                            nil,
                            104889
                        )
                        if not target:isAlive() or target:v(_____8840) <= 0 or isFinal then
                            self:addParticle(
                                134271893,
                                target:getPosition(),
                                nil,
                                1,
                                1,
                                10
                            )
                            local targets = self.owner:findByShape(
                                target:getPosition(),
                                Shape:createCircularShape(400),
                                {"敌人"},
                                function(____, a) return a ~= target end
                            )
                            local total = 0
                            local ____isFinal_5
                            if isFinal then
                                ____isFinal_5 = dmg
                            else
                                local ____dmg_4 = dmg
                                local ____self_3 = _____6570_503C["灵魄"]["大招"]
                                ____isFinal_5 = ____dmg_4 * ____self_3["提前爆炸伤害系数"](____self_3)
                            end
                            local dmgX = ____isFinal_5
                            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                                local ____self_6 = _____6570_503C["灵魄"]["大招"]
                                local quantity = ____self_6["天赋32附加中毒层数"](____self_6, countX) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                                target:addEffect(self.skillEntity, 1, quantity)
                            end
                            for ____, t in ipairs(targets) do
                                local ____total_8 = total
                                local ____self_7 = _____6570_503C["灵魄"]["大招"]
                                if ____total_8 >= ____self_7["爆炸溅射数量"](____self_7) then
                                    break
                                end
                                local px = self:createProjectile(
                                    134254234,
                                    target:getPosition(),
                                    0,
                                    150
                                )
                                px:prepare({face_angle = true})
                                px:setCustomData("dmg", dmgX)
                                px:listener({onFinish = function()
                                    local x = px:getCustomData("dmg")
                                    px:remove()
                                    if not t or not t:isAlive() then
                                        return
                                    end
                                    self:addParticle(
                                        134271893,
                                        t:getPosition(),
                                        nil,
                                        1,
                                        1,
                                        10
                                    )
                                    t.tempData[AbilityTagData["是否为AOE"]] = true
                                    t:hurt(self.skillEntity, Formula["法术伤害"], x, AbilityType["大招"])
                                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                                    if self.owner:getValue(_____5929_8D4B_3) == 2 then
                                        local ____self_9 = _____6570_503C["灵魄"]["大招"]
                                        local quantityX = ____self_9["天赋32附加中毒层数"](____self_9, countX) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
                                        t:addEffect(self.skillEntity, 1, quantityX)
                                    end
                                end})
                                px:moverTarget(t, 4000, 0)
                                total = total + 1
                            end
                        end
                    end
                end})
                p:moverTarget(target, 3000, 0)
                i = i + 1
            end
        end
        unitDataType.projectileList = {}
        self.owner:setValue(_____7279_6280_2, 0)
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            local ____self_10 = _____6570_503C["灵魄"]["大招"]
            local c = ____self_10["天赋31保留珠子数量"](____self_10, self.owner, count)
            do
                local i = 0
                while i < c do
                    self:createP()
                    __TS__Await(self:awaitTime(0.1))
                    i = i + 1
                end
            end
        end
    end)
end
function ____class_0.prototype.createP(self)
    local count = self.owner:getValue(_____7279_6280_2)
    if count > 10 then
        return
    end
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        math.random(0, 360),
        80
    )
    local p = self:createProjectile(134247090, offsetPoint, 0, 150)
    p:prepare({face_angle = true})
    p:setCustomData("isToTarget", 0)
    p:moverRound(
        self.owner,
        300,
        137,
        nil,
        count % 2 == 0,
        nil,
        nil,
        1,
        300
    )
    local unitDataType = self.owner.customData
    local ____unitDataType_projectileList_11 = unitDataType.projectileList
    ____unitDataType_projectileList_11[#____unitDataType_projectileList_11 + 1] = p
    self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134219117,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 1.4}
)
return ____exports
