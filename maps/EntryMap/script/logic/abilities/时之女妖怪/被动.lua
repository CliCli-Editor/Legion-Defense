local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIncludes = ____lualib.__TS__ArrayIncludes
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 4,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["33"] = 9,["34"] = 10,["35"] = 18,["36"] = 9,["37"] = 19,["38"] = 20,["39"] = 21,["40"] = 19,["41"] = 23,["43"] = 24,["44"] = 25,["46"] = 27,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 27,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 29,["59"] = 29,["60"] = 29,["61"] = 29,["62"] = 29,["64"] = 29,["65"] = 29,["67"] = 29,["69"] = 29,["70"] = 30,["71"] = 31,["72"] = 32,["73"] = 33,["74"] = 34,["75"] = 35,["76"] = 36,["77"] = 37,["80"] = 40,["81"] = 41,["82"] = 42,["83"] = 42,["84"] = 42,["85"] = 42,["87"] = 42,["88"] = 42,["90"] = 42,["91"] = 43,["92"] = 43,["93"] = 43,["94"] = 43,["95"] = 43,["96"] = 43,["97"] = 43,["98"] = 44,["99"] = 45,["100"] = 46,["101"] = 47,["104"] = 50,["105"] = 51,["107"] = 52,["108"] = 52,["109"] = 53,["110"] = 53,["111"] = 53,["112"] = 53,["113"] = 54,["114"] = 55,["115"] = 56,["116"] = 56,["117"] = 56,["118"] = 56,["119"] = 57,["123"] = 61,["124"] = 62,["125"] = 63,["126"] = 64,["128"] = 66,["130"] = 68,["131"] = 69,["132"] = 70,["133"] = 71,["134"] = 71,["135"] = 71,["136"] = 71,["137"] = 71,["138"] = 71,["139"] = 71,["140"] = 71,["141"] = 71,["142"] = 71,["143"] = 72,["144"] = 74,["145"] = 75,["146"] = 76,["147"] = 77,["150"] = 80,["153"] = 83,["154"] = 84,["157"] = 87,["158"] = 87,["159"] = 87,["160"] = 87,["161"] = 87,["162"] = 87,["163"] = 87,["164"] = 88,["165"] = 89,["166"] = 89,["167"] = 90,["168"] = 91,["169"] = 92,["170"] = 92,["171"] = 92,["172"] = 92,["173"] = 92,["174"] = 92,["175"] = 92,["176"] = 93,["177"] = 95,["178"] = 96,["179"] = 97,["181"] = 99,["182"] = 99,["183"] = 99,["184"] = 99,["185"] = 99,["186"] = 99,["188"] = 99,["189"] = 99,["191"] = 99,["192"] = 100,["193"] = 100,["194"] = 100,["195"] = 100,["196"] = 100,["197"] = 100,["198"] = 100,["199"] = 100,["200"] = 100,["201"] = 101,["202"] = 101,["205"] = 103,["206"] = 103,["207"] = 103,["208"] = 103,["209"] = 103,["210"] = 103,["211"] = 103,["212"] = 103,["213"] = 103,["215"] = 105,["216"] = 105,["217"] = 105,["218"] = 105,["219"] = 105,["220"] = 105,["221"] = 105,["222"] = 105,["223"] = 105,["224"] = 106,["225"] = 107,["226"] = 107,["227"] = 107,["228"] = 107,["230"] = 109,["231"] = 110,["232"] = 110,["233"] = 110,["234"] = 110,["235"] = 110,["236"] = 110,["237"] = 110,["238"] = 111,["239"] = 111,["240"] = 111,["241"] = 111,["242"] = 111,["243"] = 111,["244"] = 111,["245"] = 111,["246"] = 111,["248"] = 113,["249"] = 113,["250"] = 113,["251"] = 113,["252"] = 113,["253"] = 113,["254"] = 113,["255"] = 113,["256"] = 113,["258"] = 72,["259"] = 117,["260"] = 118,["261"] = 119,["263"] = 121,["265"] = 52,["269"] = 125,["271"] = 23,["272"] = 127,["273"] = 128,["274"] = 129,["275"] = 127,["276"] = 131,["277"] = 132,["278"] = 133,["279"] = 131,["280"] = 9,["281"] = 9,["282"] = 9,["283"] = 9,["284"] = 9,["285"] = 9,["286"] = 9});
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
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_42 = createAbility
local ____fight_41 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["动画参数"] = fightUtils:getHeroSkinAnimeArgs(self.owner)[3]
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
    console:log("时之女妖/被动")
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["动画参数"] == nil then
            self:play("ability1")
        else
            self:play(
                self["动画参数"].aniName,
                self["动画参数"].playSpeed,
                self["动画参数"].startTime,
                self["动画参数"].endTime,
                self["动画参数"].loop
            )
        end
        local ____temp_5
        if self.owner:getValue(_____5929_8D4B_2) == 1 then
            local ____self_1 = _____6570_503C["时之女妖"]["被动"]
            ____temp_5 = ____self_1["天赋21附加buffId"](____self_1)
        else
            local ____temp_4
            if self.owner:getValue(_____5929_8D4B_2) == 2 then
                local ____self_2 = _____6570_503C["时之女妖"]["被动"]
                ____temp_4 = ____self_2["天赋22附加buffId"](____self_2)
            else
                local ____self_3 = _____6570_503C["时之女妖"]["被动"]
                ____temp_4 = ____self_3["附加buffId"](____self_3)
            end
            ____temp_5 = ____temp_4
        end
        local id = ____temp_5
        self.owner:addEffect(self.skillEntity, id)
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        local totalTime = 0
        while totalTime < 4 do
            if not self["正在施法"] then
                self.owner:setValue(_____7279_6280_2, 0)
                self.owner:removeEffect(self.skillEntity, {id})
                self:endSkill(self)
                return ____awaiter_resolve(nil)
            end
            __TS__Await(self:awaitTime(2 * x))
            totalTime = totalTime + 2 * x
            local ____temp_8
            if self.owner:getValue(_____5929_8D4B_1) == 2 then
                local ____self_6 = _____6570_503C["时之女妖"]["普通攻击"]
                ____temp_8 = ____self_6["天赋12同时发射数量"](____self_6, self.owner)
            else
                local ____self_7 = _____6570_503C["时之女妖"]["普通攻击"]
                ____temp_8 = ____self_7["同时发射数量"](____self_7, self.owner)
            end
            local count = ____temp_8
            local targets = self.owner:findTargets(
                {"敌人"},
                nil,
                nil,
                1,
                1200 + self.owner:getCollisionRadius()
            )
            if #targets == 0 then
                self.owner:setValue(_____7279_6280_2, 0)
                self.owner:removeEffect(self.skillEntity, {id})
                self:endSkill(self)
                return ____awaiter_resolve(nil)
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
                        self.owner:getPosition(),
                        angle,
                        150,
                        nil,
                        nil,
                        nil,
                        true
                    )
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
                        local ____t_10 = t
                        local ____t_getEffectQuantity_11 = t.getEffectQuantity
                        local ____self_9 = _____6570_503C["时之女妖"]["普通攻击"]
                        if ____t_getEffectQuantity_11(
                            ____t_10,
                            ____self_9["附加buffId"](____self_9)
                        ) > 0 then
                            t.tempData.isAoeDamage = true
                            local ____self_12 = _____6570_503C["时之女妖"]["普通攻击"]
                            local v = ____self_12["伤害"](____self_12, self.owner)
                            t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                            t.tempData.isAoeDamage = nil
                            local targets = t:findTargets(
                                {"友军"},
                                function(____, a) return a:isAlive() and a ~= t end,
                                4,
                                0,
                                350 + t:getCollisionRadius()
                            )
                            targets[#targets + 1] = t
                            for ____, tx in ipairs(targets) do
                                if tx ~= t then
                                    self:addBeamLink(134251483, 0.5, t, tx)
                                end
                                local ____temp_17
                                if self.owner:getValue(_____7279_6280_2) == 0 then
                                    local ____self_13 = _____6570_503C["时之女妖"]["普通攻击"]
                                    local ____self_13__4F24_5BB3_result_15 = ____self_13["伤害"](____self_13, self.owner)
                                    local ____self_14 = _____6570_503C["时之女妖"]["普通攻击"]
                                    ____temp_17 = ____self_13__4F24_5BB3_result_15 * ____self_14["溅射伤害系数"](____self_14)
                                else
                                    local ____self_16 = _____6570_503C["时之女妖"]["普通攻击"]
                                    ____temp_17 = ____self_16["伤害"](____self_16, self.owner)
                                end
                                local v = ____temp_17
                                local ____tx_20 = tx
                                local ____tx_addEffect_21 = tx.addEffect
                                local ____self_owner_19 = self.owner
                                local ____self_18 = _____6570_503C["时之女妖"]["普通攻击"]
                                local e = ____tx_addEffect_21(
                                    ____tx_20,
                                    ____self_owner_19,
                                    ____self_18["溅射伤害buffId"](____self_18)
                                )
                                if e then
                                    e:setStore(0, v)
                                end
                            end
                            local ____t_24 = t
                            local ____t_removeEffect_25 = t.removeEffect
                            local ____self_skillEntity_23 = self.skillEntity
                            local ____self_22 = _____6570_503C["时之女妖"]["普通攻击"]
                            ____t_removeEffect_25(
                                ____t_24,
                                ____self_skillEntity_23,
                                {____self_22["附加buffId"](____self_22)}
                            )
                        end
                        local ____t_28 = t
                        local ____t_addEffect_29 = t.addEffect
                        local ____self_skillEntity_27 = self.skillEntity
                        local ____self_26 = _____6570_503C["时之女妖"]["普通攻击"]
                        local effectEntity = ____t_addEffect_29(
                            ____t_28,
                            ____self_skillEntity_27,
                            ____self_26["附加buffId"](____self_26)
                        )
                        if effectEntity then
                            effectEntity:setStore(
                                Formula["展示面板_法术攻击"],
                                self.owner:formula(Formula["展示面板_法术攻击"])
                            )
                        end
                        if self.owner:getValue(_____5929_8D4B_1) == 1 then
                            local ____t_31 = t
                            local ____t_getEffectQuantity_32 = t.getEffectQuantity
                            local ____self_30 = _____6570_503C["时之女妖"]["普通攻击"]
                            if ____t_getEffectQuantity_32(
                                ____t_31,
                                ____self_30["天赋11额外附加buffId1"](____self_30)
                            ) == 0 then
                                local ____t_35 = t
                                local ____t_addEffect_36 = t.addEffect
                                local ____self_skillEntity_34 = self.skillEntity
                                local ____self_33 = _____6570_503C["时之女妖"]["普通攻击"]
                                ____t_addEffect_36(
                                    ____t_35,
                                    ____self_skillEntity_34,
                                    ____self_33["天赋11额外附加buffId2"](____self_33)
                                )
                            end
                            local ____t_39 = t
                            local ____t_addEffect_40 = t.addEffect
                            local ____self_skillEntity_38 = self.skillEntity
                            local ____self_37 = _____6570_503C["时之女妖"]["普通攻击"]
                            ____t_addEffect_40(
                                ____t_39,
                                ____self_skillEntity_38,
                                ____self_37["天赋11额外附加buffId1"](____self_37)
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
        self.owner:setValue(_____7279_6280_2, 0)
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    self["正在施法"] = false
    self.owner:setValue(_____7279_6280_2, 0)
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
    self.owner:setValue(_____7279_6280_2, 0)
end
____exports.key = ____createAbility_42(
    nil,
    ____fight_41,
    134227641,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 4, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
