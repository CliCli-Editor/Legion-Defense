local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["38"] = 11,["39"] = 12,["40"] = 11,["41"] = 14,["42"] = 15,["43"] = 14,["44"] = 17,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 20,["57"] = 21,["58"] = 22,["61"] = 25,["62"] = 26,["65"] = 29,["66"] = 30,["67"] = 30,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 30,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 31,["80"] = 31,["81"] = 31,["82"] = 31,["83"] = 31,["84"] = 31,["85"] = 32,["86"] = 32,["87"] = 33,["88"] = 34,["89"] = 35,["90"] = 35,["91"] = 35,["93"] = 37,["95"] = 17,["96"] = 39,["98"] = 40,["99"] = 41,["102"] = 44,["103"] = 45,["104"] = 46,["105"] = 46,["106"] = 47,["107"] = 48,["108"] = 49,["109"] = 49,["110"] = 49,["112"] = 51,["113"] = 51,["114"] = 51,["115"] = 51,["116"] = 51,["117"] = 51,["118"] = 51,["119"] = 51,["120"] = 51,["121"] = 52,["122"] = 52,["123"] = 52,["124"] = 52,["125"] = 52,["126"] = 52,["127"] = 52,["128"] = 52,["129"] = 52,["131"] = 53,["132"] = 53,["133"] = 54,["134"] = 55,["135"] = 56,["138"] = 59,["139"] = 60,["140"] = 61,["142"] = 61,["143"] = 61,["146"] = 61,["150"] = 53,["154"] = 39,["155"] = 65,["157"] = 66,["158"] = 67,["161"] = 70,["162"] = 71,["163"] = 71,["164"] = 71,["165"] = 71,["166"] = 71,["167"] = 71,["168"] = 71,["169"] = 71,["170"] = 71,["171"] = 72,["172"] = 72,["173"] = 73,["174"] = 74,["175"] = 75,["176"] = 75,["177"] = 75,["179"] = 77,["180"] = 78,["181"] = 79,["184"] = 82,["185"] = 83,["186"] = 84,["187"] = 85,["188"] = 86,["189"] = 87,["190"] = 88,["191"] = 86,["192"] = 90,["193"] = 91,["196"] = 86,["197"] = 86,["198"] = 98,["200"] = 98,["201"] = 98,["205"] = 98,["206"] = 98,["207"] = 98,["213"] = 99,["214"] = 100,["215"] = 100,["216"] = 100,["217"] = 100,["218"] = 100,["219"] = 100,["220"] = 100,["221"] = 100,["222"] = 100,["223"] = 100,["224"] = 100,["225"] = 101,["227"] = 65,["228"] = 103,["229"] = 104,["230"] = 103,["231"] = 11,["232"] = 11,["233"] = 11,["234"] = 11,["235"] = 11,["236"] = 11,["237"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_25 = createAbility
local ____fight_24 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["正在施法"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["正在施法"] = true
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability3")
        self:addParticle(
            102541,
            self.owner,
            0,
            1,
            0.6,
            nil,
            "right_neck"
        )
        __TS__Await(self:awaitTime(0.25))
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self["目标"] = target
        if not self["正在施法"] then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        target:move(
            {_____9738_4F53},
            _____88AB_51FB_9000,
            angle,
            10,
            15,
            0,
            false,
            500
        )
        target:addTimeLimitProperties(
            self.skillEntity,
            buffId,
            1,
            {},
            {_____7729_6655},
            {-1, 101, 20},
            2
        )
        local ____self_1 = _____6570_503C["希露"]["大招"]
        local v = ____self_1["第一段击飞伤害"](____self_1, self.owner)
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local id = self.owner:getValue(_____5929_8D4B_2) == 1 and 101625 or (self.owner:getValue(_____5929_8D4B_2) == 2 and 101626 or 101624)
            local ____v_3 = v
            local ____self_2 = _____6570_503C["希露"]["大招"]
            v = ____v_3 * (1 + ____self_2["天赋32伤害提升系数"](____self_2, self.owner, id))
        end
        target:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if not self["目标"] or not self["目标"]:isAlive() then
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        self:play("ability5")
        local duration = {0.2, 0.2, 0.2}
        local ____self_4 = _____6570_503C["希露"]["大招"]
        local v = ____self_4["第二段三连击单次伤害"](____self_4, self.owner)
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local id = self.owner:getValue(_____5929_8D4B_2) == 1 and 101625 or (self.owner:getValue(_____5929_8D4B_2) == 2 and 101626 or 101624)
            local ____v_6 = v
            local ____self_5 = _____6570_503C["希露"]["大招"]
            v = ____v_6 * (1 + ____self_5["天赋32伤害提升系数"](____self_5, self.owner, id))
        end
        self:addParticle(
            102541,
            self.owner,
            0,
            1,
            0.7,
            nil,
            "right_hand"
        )
        self:addParticle(
            102541,
            self.owner,
            0,
            1,
            0.7,
            nil,
            "left_hand"
        )
        do
            local i = 0
            while i < #duration do
                __TS__Await(self:awaitTime(duration[i + 1]))
                if not self["正在施法"] then
                    self:endSkill(ability)
                    return ____awaiter_resolve(nil)
                end
                local hurt = self["目标"]:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
                if self.owner:getValue(_____5929_8D4B_3) == 1 and (hurt and hurt.critical) then
                    local ____self_11 = self["目标"]
                    local ____self_11_addEffect_12 = ____self_11.addEffect
                    local ____self_skillEntity_10 = self.skillEntity
                    local ____self_9 = _____6570_503C["希露"]["大招"]
                    ____self_11_addEffect_12(
                        ____self_11,
                        ____self_skillEntity_10,
                        ____self_9["天赋31三连击暴击附加buff"](____self_9)
                    )
                end
                i = i + 1
            end
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if not self["目标"] or not self["目标"]:isAlive() then
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        self:play("ability4")
        self:addParticle(
            102541,
            self.owner,
            0,
            1,
            0.8,
            nil,
            "right_foot"
        )
        local ____self_13 = _____6570_503C["希露"]["大招"]
        local v = ____self_13["第三段击退伤害"](____self_13, self.owner)
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local id = self.owner:getValue(_____5929_8D4B_2) == 1 and 101625 or (self.owner:getValue(_____5929_8D4B_2) == 2 and 101626 or 101624)
            local ____v_15 = v
            local ____self_14 = _____6570_503C["希露"]["大招"]
            v = ____v_15 * (1 + ____self_14["天赋32伤害提升系数"](____self_14, self.owner, id))
        end
        __TS__Await(self:awaitTime(0.25))
        if not self["正在施法"] then
            self:endSkill(ability)
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, self["目标"])
        local p = self:createProjectile(134229327, self["目标"], angle, 150)
        p:prepare({hit_radius = 200, hit_same = false, face_angle = true})
        p:setCustomData("dmg", v)
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(t)
                if t == nil or not t:isAlive() or t == self["目标"] then
                    return
                end
            end
        })
        local ____self_18 = self["目标"]
        local ____self_18_move_19 = ____self_18.move
        local ____array_17 = __TS__SparseArrayNew({_____9738_4F53}, _____88AB_51FB_9000, angle)
        local ____self_16 = _____6570_503C["希露"]["大招"]
        __TS__SparseArrayPush(
            ____array_17,
            ____self_16["击退距离"](____self_16),
            1000,
            -10,
            false
        )
        ____self_18_move_19(
            ____self_18,
            __TS__SparseArraySpread(____array_17)
        )
        self["目标"]:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["大招"])
        local ____p_22 = p
        local ____p_moverLine_23 = p.moverLine
        local ____angle_21 = angle
        local ____self_20 = _____6570_503C["希露"]["大招"]
        ____p_moverLine_23(
            ____p_22,
            ____angle_21,
            ____self_20["击退距离"](____self_20),
            1000,
            -10
        )
        self["正在施法"] = false
    end)
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    self["正在施法"] = false
end
____exports.key = ____createAbility_25(
    nil,
    ____fight_24,
    134277737,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0.6, ["施法出手"] = 0.7, ["施法完成"] = 0.8}
)
return ____exports
