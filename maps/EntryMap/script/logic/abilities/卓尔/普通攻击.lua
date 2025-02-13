local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 4,["23"] = 5,["24"] = 5,["25"] = 5,["26"] = 5,["27"] = 6,["28"] = 6,["29"] = 7,["30"] = 7,["31"] = 9,["32"] = 9,["33"] = 9,["34"] = 9,["35"] = 9,["37"] = 9,["38"] = 10,["39"] = 11,["40"] = 12,["41"] = 13,["42"] = 9,["43"] = 14,["45"] = 15,["46"] = 16,["47"] = 17,["48"] = 18,["50"] = 19,["52"] = 19,["54"] = 19,["55"] = 19,["57"] = 19,["58"] = 19,["61"] = 19,["62"] = 20,["63"] = 21,["65"] = 23,["66"] = 24,["67"] = 25,["68"] = 25,["69"] = 25,["70"] = 25,["71"] = 26,["72"] = 27,["74"] = 29,["76"] = 31,["77"] = 32,["78"] = 33,["81"] = 36,["82"] = 36,["83"] = 36,["84"] = 36,["85"] = 36,["86"] = 36,["87"] = 36,["88"] = 36,["89"] = 36,["90"] = 36,["94"] = 14,["95"] = 39,["98"] = 41,["99"] = 43,["100"] = 42,["102"] = 43,["103"] = 44,["106"] = 47,["107"] = 48,["108"] = 49,["110"] = 51,["111"] = 51,["112"] = 52,["113"] = 53,["115"] = 55,["116"] = 56,["117"] = 57,["118"] = 57,["119"] = 57,["120"] = 57,["121"] = 57,["122"] = 57,["123"] = 57,["124"] = 57,["125"] = 57,["128"] = 60,["130"] = 61,["131"] = 62,["134"] = 65,["135"] = 66,["136"] = 67,["138"] = 69,["139"] = 69,["140"] = 70,["141"] = 70,["142"] = 71,["144"] = 72,["145"] = 72,["146"] = 73,["147"] = 74,["148"] = 75,["149"] = 76,["150"] = 76,["151"] = 76,["152"] = 76,["153"] = 76,["154"] = 76,["155"] = 76,["156"] = 76,["157"] = 76,["158"] = 72,["161"] = 78,["162"] = 79,["163"] = 80,["164"] = 81,["165"] = 82,["166"] = 82,["167"] = 82,["168"] = 82,["169"] = 82,["170"] = 82,["171"] = 82,["172"] = 82,["173"] = 82,["177"] = 85,["179"] = 86,["180"] = 86,["181"] = 87,["182"] = 88,["183"] = 89,["185"] = 91,["188"] = 94,["189"] = 95,["190"] = 95,["191"] = 95,["192"] = 95,["193"] = 95,["194"] = 96,["195"] = 97,["196"] = 98,["197"] = 99,["198"] = 100,["199"] = 101,["200"] = 102,["201"] = 100,["202"] = 104,["203"] = 105,["206"] = 108,["207"] = 109,["208"] = 109,["209"] = 109,["210"] = 109,["211"] = 109,["212"] = 109,["213"] = 109,["214"] = 109,["215"] = 109,["216"] = 110,["217"] = 111,["218"] = 112,["219"] = 113,["220"] = 113,["221"] = 113,["222"] = 113,["223"] = 113,["224"] = 113,["225"] = 113,["226"] = 113,["227"] = 113,["228"] = 100,["229"] = 100,["230"] = 116,["231"] = 116,["232"] = 116,["233"] = 116,["234"] = 116,["235"] = 116,["236"] = 116,["237"] = 116,["238"] = 116,["239"] = 116,["240"] = 116,["241"] = 117,["242"] = 116,["243"] = 118,["244"] = 119,["245"] = 116,["246"] = 116,["247"] = 121,["251"] = 125,["252"] = 126,["254"] = 126,["255"] = 126,["258"] = 126,["263"] = 39,["264"] = 9,["265"] = 9,["266"] = 9,["267"] = 9,["268"] = 9,["269"] = 9,["270"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____Status = include("logic.models.Status")
local _____7A7A_72B6_6001 = ____Status["空状态"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_14 = createAbility
local ____fight_13 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
    self["特殊攻击"] = 0
    self["脚底粒子ID"] = 134230814
    self["身上粒子ID"] = 134254992
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self.owner:getValue(_____7279_6280_2) > 0 then
            self["特殊攻击"] = 2
            self:play("ability3", 2.5)
            self.owner:modifyValue(self.skillEntity, _____7279_6280_2, -1)
        else
            local ____temp_4 = self.owner:getValue(_____7279_6280_1) ~= 0
            if ____temp_4 then
                local ____self_2 = self.owner
                local ____self_2_random_3 = ____self_2.random
                local ____self_1 = _____6570_503C["卓尔"]["普通攻击"]
                ____temp_4 = ____self_2_random_3(
                    ____self_2,
                    "特殊攻击",
                    ____self_1["特殊攻击概率"](____self_1, self.owner)
                )
            end
            if ____temp_4 then
                self["特殊攻击"] = 1
                self:play("ability1")
            else
                self["特殊攻击"] = 0
                self.owner:setValue(_____7279_6280_1, 1)
                self["暴击"] = self.owner:random(
                    "暴击率",
                    self.owner:p(_____66B4_51FB_7387)
                )
                if self["暴击"] then
                    self:play("attack1_2")
                else
                    self:play("attack1_1", 0.5, 0, 0.15)
                end
                __TS__Await(self:awaitTime(0.2))
                local target = cast:getTargetUnit()
                if not target then
                    return ____awaiter_resolve(nil)
                end
                self:addParticle(
                    134220372,
                    target:getPosition(),
                    self.owner:getAngle(),
                    1,
                    1,
                    150,
                    nil,
                    1
                )
            end
        end
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        repeat
            local ____switch10 = self["特殊攻击"]
            local target, scale, v, duration, angle, offsetPoint, dx, p
            local ____cond10 = ____switch10 == 0
            if ____cond10 then
                target = cast:getTargetUnit()
                if not target then
                    return ____awaiter_resolve(nil)
                end
                scale = 1
                if target:checkTag(UnitTag["玩家英雄"]) then
                    scale = 0.3
                end
                local ____self_5 = _____6570_503C["卓尔"]["普通攻击"]
                v = ____self_5["伤害"](____self_5, self.owner)
                if not self["暴击"] then
                    self:play("attack1_1", 1, 0.15, -1)
                end
                self:playSound(self.owner, 134265073)
                self:setUnderParticle(target, self["脚底粒子ID"], scale)
                target:hurt(
                    self.skillEntity,
                    Formula["物理伤害"],
                    v,
                    AbilityType["普攻"],
                    self["暴击"],
                    nil,
                    self["身上粒子ID"]
                )
                break
            end
            ____cond10 = ____cond10 or ____switch10 == 1
            if ____cond10 then
                target = cast:getTargetUnit()
                if not target then
                    return ____awaiter_resolve(nil)
                end
                scale = 1
                if target:checkTag(UnitTag["玩家英雄"]) then
                    scale = 0.3
                end
                local ____self_6 = _____6570_503C["卓尔"]["普通攻击"]
                v = ____self_6["伤害"](____self_6, self.owner)
                local ____self_7 = _____6570_503C["卓尔"]["普通攻击"]
                v = ____self_7["特殊攻击伤害"](____self_7, self.owner)
                duration = {0.1, 0.1, 0.15}
                do
                    local i = 0
                    while i < 3 do
                        __TS__Await(self:awaitTime(duration[i + 1]))
                        self:playSound(self.owner, 134265073)
                        self:setUnderParticle(target, self["脚底粒子ID"], scale)
                        target:hurt(
                            self.skillEntity,
                            Formula["物理伤害"],
                            v,
                            AbilityType["普攻"],
                            nil,
                            nil,
                            self["身上粒子ID"]
                        )
                        i = i + 1
                    end
                end
                if self.owner:getValue(_____5929_8D4B_1) == 2 then
                    __TS__Await(self:awaitTime(0.1))
                    self:playSound(self.owner, 134265073)
                    self:setUnderParticle(target, self["脚底粒子ID"], scale)
                    target:hurt(
                        self.skillEntity,
                        Formula["物理伤害"],
                        v,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        self["身上粒子ID"]
                    )
                end
                break
            end
            ____cond10 = ____cond10 or ____switch10 == 2
            if ____cond10 then
                local ____self_8 = _____6570_503C["卓尔"]["普通攻击"]
                v = ____self_8["被动刺击伤害"](____self_8, self.owner)
                target = self.owner:findTarget({"敌人"}, nil, 2, 600)
                if not target then
                    target = cast:getTargetUnit()
                end
                if not target then
                    return ____awaiter_resolve(nil)
                end
                angle = self:getDirection(self.owner, target)
                offsetPoint = self:offsetPoint(
                    target:getPosition(),
                    angle,
                    200
                )
                dx = self:getDistance(self.owner, offsetPoint)
                self:play("ability3", 1, 0.75, -1)
                p = self:createProjectile(134258706, self.owner, angle, 150)
                p:prepare({hit_radius = 200, hit_same = false})
                p:listener({
                    onFinish = function()
                        p:remove()
                    end,
                    onHit = function(unit)
                        if not unit or not unit:isAlive() then
                            return
                        end
                        unit.tempData[AbilityTagData["是否为AOE"]] = true
                        unit:hurt(
                            self.skillEntity,
                            Formula["物理伤害"],
                            v,
                            AbilityType["普攻"],
                            nil,
                            nil,
                            134254992
                        )
                        unit.tempData[AbilityTagData["是否为AOE"]] = nil
                        local a = self:getDirection(self.owner, unit)
                        local d = self:getDistance(offsetPoint, unit)
                        unit:move(
                            {_____9738_4F53},
                            _____88AB_51FB_9000,
                            a,
                            d / 600 * d,
                            1000,
                            -0.1,
                            false
                        )
                    end
                })
                self.owner:move(
                    {},
                    _____7A7A_72B6_6001,
                    angle,
                    dx,
                    3000,
                    0,
                    false,
                    nil,
                    nil,
                    function()
                        self:endSkill(self)
                    end,
                    function()
                        self:endSkill(self)
                    end
                )
                p:moverLine(angle, dx, 3000, 0)
                break
            end
        until true
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_11 = self.owner
            local ____self_11_addEffect_12 = ____self_11.addEffect
            local ____self_skillEntity_10 = self.skillEntity
            local ____self_9 = _____6570_503C["卓尔"]["普通攻击"]
            ____self_11_addEffect_12(
                ____self_11,
                ____self_skillEntity_10,
                ____self_9["天赋11buff"](____self_9)
            )
        end
    end)
end
____exports.key = ____createAbility_14(
    nil,
    ____fight_13,
    134275201,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
