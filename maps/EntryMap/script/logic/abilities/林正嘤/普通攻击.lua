local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["30"] = 8,["31"] = 9,["32"] = 10,["33"] = 11,["34"] = 12,["35"] = 13,["36"] = 14,["37"] = 8,["38"] = 15,["39"] = 16,["40"] = 17,["41"] = 18,["42"] = 19,["43"] = 19,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["49"] = 22,["50"] = 23,["52"] = 24,["53"] = 25,["55"] = 27,["59"] = 30,["60"] = 15,["61"] = 32,["62"] = 33,["63"] = 34,["66"] = 37,["67"] = 38,["68"] = 39,["70"] = 39,["72"] = 39,["73"] = 39,["75"] = 39,["79"] = 39,["80"] = 40,["81"] = 41,["82"] = 42,["85"] = 44,["86"] = 45,["90"] = 47,["92"] = 48,["95"] = 50,["97"] = 51,["100"] = 53,["102"] = 54,["106"] = 57,["110"] = 60,["111"] = 62,["112"] = 63,["113"] = 64,["114"] = 64,["115"] = 64,["116"] = 64,["117"] = 65,["118"] = 66,["119"] = 67,["121"] = 69,["123"] = 71,["124"] = 72,["125"] = 74,["126"] = 75,["129"] = 78,["130"] = 79,["131"] = 80,["132"] = 81,["133"] = 82,["135"] = 84,["136"] = 85,["138"] = 87,["140"] = 88,["141"] = 90,["142"] = 89,["144"] = 90,["145"] = 90,["146"] = 91,["149"] = 93,["151"] = 94,["152"] = 94,["153"] = 95,["154"] = 96,["156"] = 96,["157"] = 96,["160"] = 96,["165"] = 98,["167"] = 99,["168"] = 99,["169"] = 100,["170"] = 100,["171"] = 100,["172"] = 100,["173"] = 100,["174"] = 100,["175"] = 100,["176"] = 100,["177"] = 101,["178"] = 101,["179"] = 101,["180"] = 101,["181"] = 101,["182"] = 102,["183"] = 103,["184"] = 104,["185"] = 105,["189"] = 108,["191"] = 109,["192"] = 109,["193"] = 109,["194"] = 109,["195"] = 110,["199"] = 113,["204"] = 72,["205"] = 119,["206"] = 32,["207"] = 8,["208"] = 8,["209"] = 8,["210"] = 8,["211"] = 8,["212"] = 8,["213"] = 8});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_17 = createAbility
local ____fight_16 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["攻击类型"] = 0
    self["普攻投射物ID"] = 134258555
    self["类型1投射物ID"] = 134247312
    self["类型2投射物ID"] = 134272317
    self["类型3投射物ID"] = 134227696
    self["混合投射物ID"] = 134228986
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____type = self.owner:randomList("林正嘤普攻类型", {1, 2, 3}) or 0
    if self.owner:getValue(_____5929_8D4B_1) == 2 then
        local probability = math.random()
        local ____self_1 = _____6570_503C["林正嘤"]["普通攻击"]
        local list = ____self_1["天赋12卡牌分布概率"](____self_1)
        ____type = __TS__ArrayFindIndex(
            list,
            function(____, t) return probability <= t end
        ) + 1
    end
    self["攻击类型"] = ____type or -1
    local aniName = "attack1"
    repeat
        local ____switch5 = self["攻击类型"]
        local ____cond5 = ____switch5 == 2 or ____switch5 == 3
        if ____cond5 then
            aniName = "attack2"
            break
        end
    until true
    self:play(aniName)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    self:playSound(self.owner, 134278343)
    local angle = self:getDirection(self.owner, target)
    local ____temp_5 = self.owner:getValue(_____5929_8D4B_1) == 1
    if ____temp_5 then
        local ____self_3 = self.owner
        local ____self_3_random_4 = ____self_3.random
        local ____self_2 = _____6570_503C["林正嘤"]["普通攻击"]
        ____temp_5 = ____self_3_random_4(
            ____self_3,
            "林正嘤天赋11概率",
            ____self_2["天赋11概率"](____self_2)
        )
    end
    local isMix = ____temp_5
    local pId = self["普攻投射物ID"]
    if isMix then
        pId = self["混合投射物ID"]
    else
        repeat
            local ____switch10 = self["攻击类型"]
            local ____cond10 = ____switch10 == 0
            if ____cond10 then
                break
            end
            ____cond10 = ____cond10 or ____switch10 == 1
            if ____cond10 then
                pId = self["类型1投射物ID"]
                break
            end
            ____cond10 = ____cond10 or ____switch10 == 2
            if ____cond10 then
                pId = self["类型2投射物ID"]
                break
            end
            ____cond10 = ____cond10 or ____switch10 == 3
            if ____cond10 then
                pId = self["类型3投射物ID"]
                break
            end
            do
                console:error("未知攻击类型", self["攻击类型"])
            end
        until true
    end
    local p = self:createProjectile(pId, self.owner, angle, 150)
    if isMix then
        local list = {1, 2, 3}
        list = __TS__ArrayFilter(
            list,
            function(____, t) return t ~= self["攻击类型"] end
        )
        local x = self.owner:randomList("林正嘤普攻类型", list) or 0
        p:setCustomData("attackTypes", self["攻击类型"])
        p:setCustomData("attackTypes2", x)
    else
        p:setCustomData("attackTypes", self["攻击类型"])
    end
    p:prepare({hit_radius = 50, face_angle = true})
    p:listener({onFinish = function()
        p:remove()
        if not target or not target:isAlive() then
            return
        end
        local type1 = p:getCustomData("attackTypes")
        local type2 = p:getCustomData("attackTypes2")
        local listType = {}
        if type1 ~= 0 then
            listType[#listType + 1] = type1
        end
        if type2 ~= 0 then
            listType[#listType + 1] = type2
        end
        for ____, ____type in ipairs(listType) do
            repeat
                local ____switch19 = ____type
                local v, v1, v2, targets, v3
                local ____cond19 = ____switch19 == 0
                if ____cond19 then
                    local ____self_6 = _____6570_503C["林正嘤"]["普通攻击"]
                    v = ____self_6["伤害"](____self_6, self.owner)
                    target:hurt(self.skillEntity, Formula["物理伤害"], v, AbilityType["普攻"])
                    break
                end
                ____cond19 = ____cond19 or ____switch19 == 1
                if ____cond19 then
                    local ____self_7 = _____6570_503C["林正嘤"]["普通攻击"]
                    v1 = ____self_7["伤害"](____self_7, self.owner)
                    target:hurt(self.skillEntity, Formula["物理伤害"], v1, AbilityType["普攻"])
                    local ____self_10 = self.owner
                    local ____self_10_addMp_11 = ____self_10.addMp
                    local ____self_skillEntity_9 = self.skillEntity
                    local ____self_8 = _____6570_503C["林正嘤"]["普通攻击"]
                    ____self_10_addMp_11(
                        ____self_10,
                        ____self_skillEntity_9,
                        ____self_8["卡牌1恢复蓝量"](____self_8)
                    )
                    break
                end
                ____cond19 = ____cond19 or ____switch19 == 2
                if ____cond19 then
                    local ____self_12 = _____6570_503C["林正嘤"]["普通攻击"]
                    v2 = ____self_12["伤害"](____self_12, self.owner)
                    self:addParticle(
                        104548,
                        target:getPosition(),
                        nil,
                        0.75,
                        1,
                        150
                    )
                    targets = self.owner:findByShape(
                        target:getPosition(),
                        Shape:createCircularShape(300),
                        {"敌人"}
                    )
                    for ____, t in ipairs(targets) do
                        t.tempData[AbilityTagData["是否为AOE"]] = true
                        t:hurt(self.skillEntity, Formula["物理伤害"], v2, AbilityType["普攻"])
                        t.tempData[AbilityTagData["是否为AOE"]] = nil
                    end
                    break
                end
                ____cond19 = ____cond19 or ____switch19 == 3
                if ____cond19 then
                    local ____self_13 = _____6570_503C["林正嘤"]["普通攻击"]
                    local ____self_13__4F24_5BB3_result_15 = ____self_13["伤害"](____self_13, self.owner)
                    local ____self_14 = _____6570_503C["林正嘤"]["普通攻击"]
                    v3 = ____self_13__4F24_5BB3_result_15 + ____self_14["卡牌3额外伤害"](____self_14, self.owner)
                    target:hurt(self.skillEntity, Formula["物理伤害"], v3, AbilityType["普攻"])
                    break
                end
                do
                    console:error("未知攻击类型", self["攻击类型"])
                    break
                end
            until true
        end
    end})
    p:moverTarget(target, 2000, 10)
end
____exports.key = ____createAbility_17(
    nil,
    ____fight_16,
    134257483,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.45}
)
return ____exports
