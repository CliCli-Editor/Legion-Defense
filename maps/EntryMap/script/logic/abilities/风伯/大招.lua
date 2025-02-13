local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["34"] = 9,["35"] = 10,["36"] = 17,["37"] = 25,["38"] = 25,["39"] = 25,["40"] = 25,["41"] = 25,["42"] = 25,["43"] = 25,["44"] = 25,["45"] = 25,["46"] = 25,["47"] = 9,["48"] = 35,["49"] = 36,["50"] = 37,["51"] = 37,["52"] = 37,["53"] = 37,["54"] = 37,["55"] = 37,["56"] = 37,["58"] = 39,["60"] = 35,["61"] = 42,["62"] = 43,["63"] = 44,["64"] = 44,["65"] = 44,["66"] = 44,["67"] = 44,["68"] = 44,["69"] = 44,["71"] = 46,["73"] = 48,["74"] = 49,["75"] = 49,["76"] = 49,["77"] = 49,["78"] = 49,["79"] = 50,["80"] = 50,["81"] = 50,["82"] = 50,["83"] = 50,["84"] = 50,["85"] = 50,["86"] = 50,["87"] = 50,["88"] = 50,["89"] = 50,["90"] = 50,["91"] = 50,["92"] = 50,["93"] = 51,["94"] = 51,["95"] = 51,["96"] = 51,["98"] = 51,["99"] = 51,["101"] = 51,["103"] = 52,["104"] = 52,["105"] = 53,["106"] = 53,["107"] = 53,["108"] = 53,["109"] = 54,["110"] = 55,["111"] = 56,["112"] = 57,["113"] = 58,["114"] = 59,["115"] = 60,["116"] = 61,["117"] = 59,["118"] = 63,["119"] = 64,["122"] = 67,["123"] = 68,["124"] = 69,["125"] = 70,["126"] = 59,["127"] = 59,["128"] = 73,["129"] = 74,["130"] = 52,["133"] = 76,["134"] = 77,["135"] = 42,["136"] = 80,["138"] = 81,["139"] = 82,["140"] = 82,["141"] = 82,["142"] = 82,["143"] = 82,["144"] = 82,["145"] = 82,["146"] = 82,["147"] = 83,["148"] = 84,["149"] = 84,["150"] = 84,["151"] = 84,["152"] = 84,["153"] = 85,["154"] = 85,["155"] = 85,["156"] = 85,["158"] = 85,["159"] = 85,["162"] = 85,["163"] = 85,["165"] = 85,["166"] = 86,["167"] = 87,["168"] = 88,["169"] = 89,["171"] = 91,["173"] = 80,["174"] = 9,["175"] = 9,["176"] = 9,["177"] = 9,["178"] = 9,["179"] = 9,["180"] = 9});
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
local _____7279_6280_3 = ____Property["特技_3"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_21 = createAbility
local ____fight_20 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[4]
    self["偏移list"] = {
        {angle = -45, distance = 700},
        {angle = 45, distance = 700},
        {angle = -135, distance = 700},
        {angle = 135, distance = 700},
        {angle = 0, distance = 500},
        {angle = -90, distance = 500},
        {angle = 90, distance = 500},
        {angle = 180, distance = 500}
    }
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] ~= nil then
        self:play(
            self["动画参数"].aniName,
            self["动画参数"].playSpeed,
            self["动画参数"].startTime,
            self["动画参数"].endTime,
            self["动画参数"].loop
        )
    else
        self:play("ability_1")
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    if self["动画参数2"] ~= nil then
        self:play(
            self["动画参数2"].aniName,
            self["动画参数2"].playSpeed,
            self["动画参数2"].startTime,
            self["动画参数2"].endTime,
            self["动画参数2"].loop
        )
    else
        self:play("ability_1", 2, 0.3, -1)
    end
    local angle = self.owner:getAngle()
    local offsetPoint = self:offsetPoint(
        self.owner:getPosition(),
        angle,
        1000
    )
    local ____math_min_10 = math.min
    local ____self_1 = _____6570_503C["风伯"]["大招"]
    local ____self_1__9F99_5377_98CE_6570_91CF_4E0A_9650_result_9 = ____self_1["龙卷风数量上限"](____self_1)
    local ____self_2 = _____6570_503C["风伯"]["大招"]
    local ____self_2__521D_59CB_9F99_5377_98CE_6570_91CF_result_8 = ____self_2["初始龙卷风数量"](____self_2)
    local ____math_floor_5 = math.floor
    local ____temp_4 = self.owner:getValue(_____7279_6280_3)
    local ____self_3 = _____6570_503C["风伯"]["大招"]
    local ____math_floor_5_result_7 = ____math_floor_5(____temp_4 / ____self_3["龙卷风叠加数量所需次数"](____self_3))
    local ____self_6 = _____6570_503C["风伯"]["大招"]
    local count = ____math_min_10(
        ____self_1__9F99_5377_98CE_6570_91CF_4E0A_9650_result_9,
        ____self_2__521D_59CB_9F99_5377_98CE_6570_91CF_result_8 + ____math_floor_5_result_7 * ____self_6["龙卷风叠加数量"](____self_6)
    )
    local ____temp_13
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        local ____self_11 = _____6570_503C["风伯"]["大招"]
        ____temp_13 = ____self_11["天赋31龙卷风伤害"](____self_11, self.owner)
    else
        local ____self_12 = _____6570_503C["风伯"]["大招"]
        ____temp_13 = ____self_12["龙卷风伤害"](____self_12, self.owner)
    end
    local v = ____temp_13
    do
        local i = 0
        while i < count do
            local ____self__504F_79FBlist_16 = self["偏移list"]
            local ____i_15 = i
            local ____self_14 = _____6570_503C["风伯"]["大招"]
            local offset = ____self__504F_79FBlist_16[____i_15 % ____self_14["龙卷风数量上限"](____self_14) + 1]
            local op = self:offsetPoint(offsetPoint, angle + offset.angle, offset.distance)
            local angleX = self:getDirection(op, offsetPoint)
            local p = self:createProjectile(134233971, op, angleX, 10)
            p:prepare({face_angle = true, hit_radius = 150, hit_interval = 1, hit_same = true})
            p:setCustomData("dmg", v)
            p:listener({
                onFinish = function()
                    p:remove()
                end,
                onHit = function(t)
                    if not t or not t:isAlive() then
                        return
                    end
                    local x = p:getCustomData("dmg")
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(self.skillEntity, Formula["法术伤害"], x, AbilityType["大招"])
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                end
            })
            p:moverLine(angleX, offset.distance, offset.distance / 3)
            self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
            i = i + 1
        end
    end
    self:afterMove(3, offsetPoint, count)
    self.owner:modifyValue(self.skillEntity, _____7279_6280_3, 1)
end
function ____class_0.prototype.afterMove(self, awaitTime, pos, minusCount)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(awaitTime))
        self:addParticle(
            100157,
            pos,
            nil,
            2.33,
            1,
            10
        )
        self:playSound(self.owner, 134240753)
        local targets = self.owner:findByShape(
            pos,
            Shape:createCircularShape(700),
            {"敌人"}
        )
        local ____temp_19
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____self_17 = _____6570_503C["风伯"]["大招"]
            ____temp_19 = ____self_17["天赋32爆炸伤害"](
                ____self_17,
                self.owner,
                self.owner:getValue(_____7279_6280_2)
            )
        else
            local ____self_18 = _____6570_503C["风伯"]["大招"]
            ____temp_19 = ____self_18["爆炸伤害"](____self_18, self.owner)
        end
        local v = ____temp_19
        for ____, t in ipairs(targets) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        self.owner:modifyValue(self.skillEntity, _____7279_6280_2, -minusCount)
    end)
end
____exports.key = ____createAbility_21(
    nil,
    ____fight_20,
    134237592,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0.6}
)
return ____exports
