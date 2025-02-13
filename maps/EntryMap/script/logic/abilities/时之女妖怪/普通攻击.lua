local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIncludes = ____lualib.__TS__ArrayIncludes
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["30"] = 10,["31"] = 11,["32"] = 18,["33"] = 10,["34"] = 26,["35"] = 27,["36"] = 28,["38"] = 30,["39"] = 30,["40"] = 30,["41"] = 30,["42"] = 30,["43"] = 30,["44"] = 30,["46"] = 26,["47"] = 33,["48"] = 34,["49"] = 35,["50"] = 35,["51"] = 35,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 35,["57"] = 37,["58"] = 37,["59"] = 37,["60"] = 37,["62"] = 37,["63"] = 37,["65"] = 37,["66"] = 38,["67"] = 38,["68"] = 38,["69"] = 38,["70"] = 38,["71"] = 38,["72"] = 38,["73"] = 39,["74"] = 40,["76"] = 42,["77"] = 43,["79"] = 44,["80"] = 44,["81"] = 45,["82"] = 45,["83"] = 45,["84"] = 45,["85"] = 46,["86"] = 47,["87"] = 48,["88"] = 48,["89"] = 48,["90"] = 48,["91"] = 49,["95"] = 53,["96"] = 54,["97"] = 55,["98"] = 56,["100"] = 58,["102"] = 60,["103"] = 61,["104"] = 62,["105"] = 63,["106"] = 63,["107"] = 63,["108"] = 63,["109"] = 63,["110"] = 63,["111"] = 63,["112"] = 63,["113"] = 63,["114"] = 63,["115"] = 64,["116"] = 66,["117"] = 68,["118"] = 69,["119"] = 70,["120"] = 71,["123"] = 74,["126"] = 77,["127"] = 78,["130"] = 81,["131"] = 81,["132"] = 81,["133"] = 81,["134"] = 81,["135"] = 81,["136"] = 81,["137"] = 82,["138"] = 83,["139"] = 83,["140"] = 84,["141"] = 85,["142"] = 86,["143"] = 86,["144"] = 86,["145"] = 86,["146"] = 86,["147"] = 86,["148"] = 86,["149"] = 88,["150"] = 89,["151"] = 90,["153"] = 92,["154"] = 92,["155"] = 92,["156"] = 92,["157"] = 92,["158"] = 92,["160"] = 92,["161"] = 92,["163"] = 92,["164"] = 93,["165"] = 93,["166"] = 93,["167"] = 93,["168"] = 93,["169"] = 93,["170"] = 93,["171"] = 93,["172"] = 93,["173"] = 94,["174"] = 94,["177"] = 96,["178"] = 96,["179"] = 96,["180"] = 96,["181"] = 96,["182"] = 96,["183"] = 96,["184"] = 96,["185"] = 96,["187"] = 98,["188"] = 98,["189"] = 98,["190"] = 98,["191"] = 98,["192"] = 98,["193"] = 98,["194"] = 98,["195"] = 98,["196"] = 99,["197"] = 100,["198"] = 100,["199"] = 100,["200"] = 100,["202"] = 102,["203"] = 103,["204"] = 103,["205"] = 103,["206"] = 103,["207"] = 103,["208"] = 103,["209"] = 103,["210"] = 104,["211"] = 104,["212"] = 104,["213"] = 104,["214"] = 104,["215"] = 104,["216"] = 104,["217"] = 104,["218"] = 104,["220"] = 106,["221"] = 106,["222"] = 106,["223"] = 106,["224"] = 106,["225"] = 106,["226"] = 106,["227"] = 106,["228"] = 106,["230"] = 66,["231"] = 110,["232"] = 111,["233"] = 112,["235"] = 114,["237"] = 44,["240"] = 33,["241"] = 10,["242"] = 10,["243"] = 10,["244"] = 10,["245"] = 10,["246"] = 10,["247"] = 10});
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
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_37 = createAbility
local ____fight_36 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[1]
    self["动画参数2"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self["动画参数"] == nil then
        self:play("attack1")
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
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local ____self_1 = _____6570_503C["时之女妖"]["普通攻击"]
        ____temp_3 = ____self_1["天赋12同时发射数量"](____self_1, self.owner)
    else
        local ____self_2 = _____6570_503C["时之女妖"]["普通攻击"]
        ____temp_3 = ____self_2["同时发射数量"](____self_2, self.owner)
    end
    local count = ____temp_3
    local targets = self.owner:findTargets(
        {"敌人"},
        nil,
        nil,
        1,
        1200 + self.owner:getCollisionRadius()
    )
    if #targets == 0 then
        targets[#targets + 1] = cast:getTargetUnit()
    end
    local alreadyTargets = {}
    local repeatTargets = {}
    do
        local i = 0
        while i < count do
            local target = __TS__ArrayFind(
                targets,
                function(____, a) return not __TS__ArrayIncludes(alreadyTargets, a) end
            )
            if target == nil then
                alreadyTargets = {}
                target = __TS__ArrayFind(
                    targets,
                    function(____, a) return not __TS__ArrayIncludes(alreadyTargets, a) end
                )
                if target == nil then
                    break
                end
            end
            local isRepeat = false
            alreadyTargets[#alreadyTargets + 1] = target
            if not __TS__ArrayIncludes(repeatTargets, target) then
                repeatTargets[#repeatTargets + 1] = target
            else
                isRepeat = true
            end
            local t = target
            local angle = self:getDirection(self.owner, t)
            local distance = self:getDistance(self.owner, t)
            local p = self:createProjectile(
                134257799,
                self.owner,
                angle,
                150,
                nil,
                "right_hand",
                nil,
                true
            )
            p:setCustomData("repeat", 1)
            p:listener({onFinish = function()
                if p:getCustomData("repeat") == 1 then
                    p:setCustomData("repeat", 0)
                    if not t or not t:isAlive() then
                        p:remove()
                        return
                    end
                    p:moverTarget(t, 1500, 10)
                    return
                end
                p:remove()
                if not t or not t:isAlive() then
                    return
                end
                local ____t_5 = t
                local ____t_getEffectQuantity_6 = t.getEffectQuantity
                local ____self_4 = _____6570_503C["时之女妖"]["普通攻击"]
                if ____t_getEffectQuantity_6(
                    ____t_5,
                    ____self_4["附加buffId"](____self_4)
                ) > 0 then
                    t.tempData.isAoeDamage = true
                    local ____self_7 = _____6570_503C["时之女妖"]["普通攻击"]
                    local v = ____self_7["伤害"](____self_7, self.owner)
                    t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                    t.tempData.isAoeDamage = nil
                    local targets = t:findTargets(
                        {"友军"},
                        function(____, a) return a:isAlive() end,
                        4,
                        0,
                        350 + t:getCollisionRadius()
                    )
                    for ____, tx in ipairs(targets) do
                        if tx ~= t then
                            self:addBeamLink(134251483, 0.5, t, tx)
                        end
                        local ____temp_12
                        if self.owner:getValue(_____7279_6280_2) == 0 then
                            local ____self_8 = _____6570_503C["时之女妖"]["普通攻击"]
                            local ____self_8__4F24_5BB3_result_10 = ____self_8["伤害"](____self_8, self.owner)
                            local ____self_9 = _____6570_503C["时之女妖"]["普通攻击"]
                            ____temp_12 = ____self_8__4F24_5BB3_result_10 * ____self_9["溅射伤害系数"](____self_9)
                        else
                            local ____self_11 = _____6570_503C["时之女妖"]["普通攻击"]
                            ____temp_12 = ____self_11["伤害"](____self_11, self.owner)
                        end
                        local v = ____temp_12
                        local ____tx_15 = tx
                        local ____tx_addEffect_16 = tx.addEffect
                        local ____self_owner_14 = self.owner
                        local ____self_13 = _____6570_503C["时之女妖"]["普通攻击"]
                        local e = ____tx_addEffect_16(
                            ____tx_15,
                            ____self_owner_14,
                            ____self_13["溅射伤害buffId"](____self_13)
                        )
                        if e then
                            e:setStore(0, v)
                        end
                    end
                    local ____t_19 = t
                    local ____t_removeEffect_20 = t.removeEffect
                    local ____self_skillEntity_18 = self.skillEntity
                    local ____self_17 = _____6570_503C["时之女妖"]["普通攻击"]
                    ____t_removeEffect_20(
                        ____t_19,
                        ____self_skillEntity_18,
                        {____self_17["附加buffId"](____self_17)}
                    )
                end
                local ____t_23 = t
                local ____t_addEffect_24 = t.addEffect
                local ____self_skillEntity_22 = self.skillEntity
                local ____self_21 = _____6570_503C["时之女妖"]["普通攻击"]
                local effectEntity = ____t_addEffect_24(
                    ____t_23,
                    ____self_skillEntity_22,
                    ____self_21["附加buffId"](____self_21)
                )
                if effectEntity then
                    effectEntity:setStore(
                        Formula["展示面板_法术攻击"],
                        self.owner:formula(Formula["展示面板_法术攻击"])
                    )
                end
                if self.owner:getValue(_____5929_8D4B_1) == 1 then
                    local ____t_26 = t
                    local ____t_getEffectQuantity_27 = t.getEffectQuantity
                    local ____self_25 = _____6570_503C["时之女妖"]["普通攻击"]
                    if ____t_getEffectQuantity_27(
                        ____t_26,
                        ____self_25["天赋11额外附加buffId1"](____self_25)
                    ) == 0 then
                        local ____t_30 = t
                        local ____t_addEffect_31 = t.addEffect
                        local ____self_skillEntity_29 = self.skillEntity
                        local ____self_28 = _____6570_503C["时之女妖"]["普通攻击"]
                        ____t_addEffect_31(
                            ____t_30,
                            ____self_skillEntity_29,
                            ____self_28["天赋11额外附加buffId2"](____self_28)
                        )
                    end
                    local ____t_34 = t
                    local ____t_addEffect_35 = t.addEffect
                    local ____self_skillEntity_33 = self.skillEntity
                    local ____self_32 = _____6570_503C["时之女妖"]["普通攻击"]
                    ____t_addEffect_35(
                        ____t_34,
                        ____self_skillEntity_33,
                        ____self_32["天赋11额外附加buffId1"](____self_32)
                    )
                end
            end})
            if isRepeat then
                local path = self:genBeizerPathPreset()
                p:moverCurve(angle, distance, 1500, path)
            else
                p:moverTarget(t, 1500, 10)
            end
            i = i + 1
        end
    end
end
____exports.key = ____createAbility_37(
    nil,
    ____fight_36,
    134269207,
    ____class_0,
    {["施法开始"] = 1, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 1}
)
return ____exports
