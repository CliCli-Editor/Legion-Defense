local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 12,["36"] = 10,["37"] = 14,["39"] = 15,["40"] = 16,["41"] = 17,["43"] = 19,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 24,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 26,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 27,["63"] = 30,["64"] = 31,["65"] = 32,["66"] = 33,["67"] = 34,["70"] = 39,["71"] = 40,["72"] = 42,["73"] = 43,["74"] = 44,["75"] = 44,["76"] = 44,["77"] = 44,["78"] = 44,["79"] = 42,["80"] = 46,["81"] = 46,["82"] = 46,["83"] = 46,["84"] = 46,["85"] = 49,["86"] = 50,["87"] = 50,["88"] = 50,["89"] = 50,["90"] = 50,["91"] = 50,["92"] = 50,["93"] = 50,["94"] = 50,["95"] = 50,["96"] = 51,["97"] = 51,["98"] = 51,["99"] = 51,["100"] = 51,["101"] = 51,["102"] = 51,["103"] = 55,["104"] = 56,["105"] = 58,["106"] = 60,["108"] = 63,["109"] = 65,["110"] = 67,["111"] = 68,["113"] = 70,["115"] = 14,["116"] = 72,["118"] = 74,["119"] = 75,["120"] = 75,["121"] = 75,["122"] = 75,["123"] = 75,["124"] = 75,["125"] = 75,["126"] = 75,["127"] = 76,["128"] = 77,["129"] = 77,["130"] = 77,["131"] = 77,["132"] = 77,["133"] = 78,["134"] = 78,["135"] = 79,["136"] = 80,["137"] = 80,["138"] = 80,["140"] = 82,["141"] = 83,["142"] = 84,["143"] = 85,["144"] = 85,["145"] = 85,["146"] = 85,["147"] = 85,["148"] = 85,["149"] = 85,["150"] = 85,["151"] = 85,["152"] = 86,["153"] = 87,["154"] = 87,["155"] = 87,["156"] = 87,["159"] = 90,["160"] = 91,["161"] = 92,["162"] = 93,["163"] = 94,["166"] = 97,["167"] = 98,["168"] = 99,["170"] = 101,["171"] = 101,["172"] = 102,["173"] = 103,["174"] = 103,["175"] = 103,["177"] = 105,["178"] = 106,["180"] = 72,["181"] = 109,["183"] = 110,["184"] = 111,["185"] = 111,["186"] = 111,["187"] = 111,["188"] = 111,["189"] = 112,["190"] = 113,["192"] = 114,["193"] = 115,["194"] = 115,["195"] = 115,["196"] = 115,["197"] = 115,["198"] = 115,["199"] = 115,["200"] = 115,["201"] = 115,["202"] = 116,["203"] = 117,["204"] = 117,["205"] = 117,["206"] = 117,["209"] = 120,["210"] = 121,["211"] = 122,["212"] = 123,["213"] = 124,["214"] = 125,["216"] = 127,["222"] = 131,["223"] = 132,["224"] = 133,["227"] = 109,["228"] = 10,["229"] = 10,["230"] = 10,["231"] = 10,["232"] = 10,["233"] = 136,["234"] = 136,["235"] = 136,["236"] = 136,["237"] = 136,["238"] = 136,["239"] = 10,["240"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_3 = ____Property["特技_3"]
local _____8840 = ____Property["血"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_16 = createAbility
local ____fight_15 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["是否为重复释放"] = false
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self.owner:getValue(_____7279_6280_3) > 0 then
            self["是否为重复释放"] = true
            self.owner:setValue(_____7279_6280_3, 0)
        else
            self["是否为重复释放"] = false
        end
        local targets = self.owner:findTargets(
            {"敌军"},
            function(____, unit)
                return not unit:checkTag(UnitTag["国王"])
            end,
            nil,
            0,
            2000
        )
        if targets == nil or #targets == 0 then
            targets = self.owner:findTargets(
                {"敌军"},
                nil,
                nil,
                0,
                2000
            )
        end
        local target = self:getIntensiveAreaTarget(targets, 1200)
        if target == nil then
            target = cast:getTargetUnit()
            if target == nil then
                target = self.owner
            end
        end
        local angle = self:getDirection(self.owner, target)
        local pos = nil
        local function _____5237_65B0_76EE_6807_5750_6807(____, offsetDistance)
            angle = self:getDirection(self.owner, target)
            pos = self:offsetPoint(
                target:getPosition(),
                angle,
                offsetDistance
            )
        end
        pos = self:offsetPoint(
            target:getPosition(),
            angle,
            300
        )
        self:play("ability_4")
        self:addParticle(
            134222352,
            self.owner,
            angle,
            1,
            2,
            nil,
            "hit_point",
            1
        )
        self:addParticle(
            134237070,
            self.owner:getPosition(),
            angle,
            0.8,
            1
        )
        local allTime = 0.5
        __TS__Await(self:awaitTime(allTime))
        if target:isAlive() then
            _____5237_65B0_76EE_6807_5750_6807(nil, 300)
        end
        local tryCount = 10
        while tryCount > 0 and not ability.owner:blink(pos) do
            tryCount = tryCount - 1
            _____5237_65B0_76EE_6807_5750_6807(nil, 300 - (10 - tryCount) * 60)
        end
        ability.owner:setAngle(angle)
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("ability_1")
        self:addParticle(
            134222883,
            self.owner:getPosition(),
            nil,
            1.5,
            3,
            10
        )
        __TS__Await(self:awaitTime(0.2))
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(1200, self.owner),
            {"敌军"}
        )
        local ____self_1 = _____6570_503C["火焰女王"]["大招"]
        local v1 = ____self_1["伤害1"](____self_1, self.owner)
        if self["是否为重复释放"] then
            local ____v1_3 = v1
            local ____self_2 = _____6570_503C["火焰女王"]["大招"]
            v1 = ____v1_3 * ____self_2["重复释放伤害系数"](____self_2)
        end
        local flag = false
        for ____, t in ipairs(targets) do
            if self.owner:getValue(_____5929_8D4B_3) == 1 then
                local ____t_6 = t
                local ____t_addEffect_7 = t.addEffect
                local ____self_skillEntity_5 = self.skillEntity
                local ____self_4 = _____6570_503C["火焰女王"]["普通攻击"]
                local effectEntity = ____t_addEffect_7(
                    ____t_6,
                    ____self_skillEntity_5,
                    ____self_4["天赋12_灼烧buffId"](____self_4)
                )
                if effectEntity then
                    effectEntity:setStore(
                        Formula["展示面板_法术攻击"],
                        self.owner:formula(Formula["展示面板_法术攻击"])
                    )
                end
            end
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(self.skillEntity, Formula["法术伤害"], v1, AbilityType["大招"])
            t.tempData[AbilityTagData["是否为AOE"]] = nil
            if not self["是否为重复释放"] and self.owner:getValue(_____5929_8D4B_3) == 2 and self.owner:getValue(_____7279_6280_3) == 0 and (not t:isAlive() or t:v(_____8840) <= 0) then
                flag = true
            end
        end
        if flag then
            self.owner:addMp(self.skillEntity, 100)
            self.owner:modifyValue(self.skillEntity, _____7279_6280_3, 1)
        end
        local ____self_8 = _____6570_503C["火焰女王"]["大招"]
        local v2 = ____self_8["伤害2"](____self_8, self.owner)
        if self["是否为重复释放"] then
            local ____v2_10 = v2
            local ____self_9 = _____6570_503C["火焰女王"]["大招"]
            v2 = ____v2_10 * ____self_9["重复释放伤害系数"](____self_9)
        end
        local x = self["是否为重复释放"]
        self:circleReturnHurt(v2, flag, x)
    end)
end
function ____class_0.prototype.circleReturnHurt(self, v, flag, x)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(1))
        local targets = self.owner:findByShape(
            self.owner:getPosition(),
            Shape:createCircularShape(1200, self.owner),
            {"敌军"}
        )
        local flag2 = false
        for ____, t in ipairs(targets) do
            do
                if self.owner:getValue(_____5929_8D4B_3) == 1 then
                    local ____t_13 = t
                    local ____t_addEffect_14 = t.addEffect
                    local ____self_skillEntity_12 = self.skillEntity
                    local ____self_11 = _____6570_503C["火焰女王"]["普通攻击"]
                    local effectEntity = ____t_addEffect_14(
                        ____t_13,
                        ____self_skillEntity_12,
                        ____self_11["天赋12_灼烧buffId"](____self_11)
                    )
                    if effectEntity then
                        effectEntity:setStore(
                            Formula["展示面板_法术攻击"],
                            self.owner:formula(Formula["展示面板_法术攻击"])
                        )
                    end
                end
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                t.tempData[AbilityTagData["是否为AOE"]] = nil
                if not x and self.owner:getValue(_____5929_8D4B_3) == 2 and self.owner:getValue(_____7279_6280_3) == 0 and (not t:isAlive() or t:v(_____8840) <= 0) then
                    if flag then
                        goto __continue22
                    else
                        flag2 = true
                    end
                end
            end
            ::__continue22::
        end
        if not flag and flag2 then
            self.owner:addMp(self.skillEntity, 100)
            self.owner:modifyValue(self.skillEntity, _____7279_6280_3, 1)
        end
    end)
end
____exports.key = ____createAbility_16(
    nil,
    ____fight_15,
    134265179,
    ____class_0,
    {
        ["施法开始"] = 0,
        ["施法引导"] = 0.9,
        ["施法出手"] = 0.6,
        ["施法完成"] = 0,
        ["消耗魔法"] = 100
    }
)
return ____exports
