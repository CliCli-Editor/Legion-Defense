local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayPushArray = ____lualib.__TS__ArrayPushArray
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 10,["34"] = 12,["35"] = 13,["36"] = 12,["37"] = 15,["39"] = 16,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 17,["47"] = 18,["48"] = 18,["49"] = 18,["50"] = 18,["51"] = 19,["52"] = 19,["53"] = 19,["54"] = 19,["55"] = 19,["56"] = 19,["57"] = 19,["58"] = 19,["59"] = 19,["60"] = 19,["61"] = 19,["62"] = 20,["63"] = 20,["64"] = 20,["65"] = 20,["66"] = 20,["67"] = 21,["68"] = 22,["69"] = 23,["70"] = 24,["71"] = 25,["72"] = 25,["73"] = 25,["74"] = 25,["75"] = 25,["76"] = 25,["77"] = 25,["78"] = 25,["79"] = 25,["82"] = 18,["83"] = 18,["85"] = 15,["86"] = 30,["87"] = 31,["88"] = 31,["89"] = 32,["90"] = 32,["91"] = 32,["92"] = 32,["93"] = 32,["94"] = 32,["95"] = 32,["96"] = 32,["97"] = 33,["98"] = 33,["99"] = 33,["100"] = 33,["101"] = 33,["102"] = 34,["103"] = 35,["104"] = 36,["105"] = 36,["106"] = 37,["107"] = 38,["108"] = 39,["110"] = 41,["111"] = 42,["112"] = 43,["113"] = 44,["114"] = 45,["115"] = 46,["116"] = 47,["117"] = 48,["118"] = 49,["120"] = 51,["121"] = 51,["122"] = 51,["123"] = 51,["124"] = 51,["125"] = 51,["126"] = 51,["127"] = 51,["128"] = 51,["133"] = 56,["134"] = 57,["135"] = 58,["137"] = 30,["138"] = 63,["140"] = 64,["141"] = 65,["142"] = 66,["144"] = 63,["145"] = 10,["146"] = 10,["147"] = 10,["148"] = 10,["149"] = 10,["150"] = 70,["151"] = 70,["152"] = 70,["153"] = 70,["154"] = 70,["155"] = 70,["156"] = 10,["157"] = 10});
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
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack5", 1, 0.5, 0.75)
end
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:setAnimation()
        self:addParticle(
            101268,
            self.owner:getPosition(),
            nil,
            5,
            2
        )
        __TS__Await(self:loop(
            0.1,
            20,
            function()
                local ____fightUtils_4 = fightUtils
                local ____fightUtils_addShield_5 = fightUtils.addShield
                local ____self_owner_2 = self.owner
                local ____self_skillEntity_3 = self.skillEntity
                local ____self_1 = _____6570_503C["精英技能"]["大石头大招"]
                ____fightUtils_addShield_5(
                    ____fightUtils_4,
                    ____self_owner_2,
                    ____self_skillEntity_3,
                    ____self_1["蓄力每跳获得护盾值"](____self_1, self.owner)
                )
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(1000),
                    {"敌军"}
                )
                for ____, t in ipairs(targets) do
                    local angle = self:getDirection(t, self.owner)
                    local distance = self:getDistance(t, self.owner)
                    if distance >= 250 then
                        t:move(
                            {_____9738_4F53},
                            _____88AB_51FB_9000,
                            angle,
                            50,
                            200,
                            -20,
                            false
                        )
                    end
                end
            end
        ))
    end)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_6 = _____6570_503C["精英技能"]["大石头大招"]
    local v = ____self_6["伤害"](____self_6, self.owner)
    self:addParticle(
        134250245,
        self.owner:getPosition(),
        nil,
        2.5,
        0.5,
        50
    )
    local targets = self.owner:findByShape(
        self.owner:getPosition(),
        Shape:createCircularShape(1000),
        {"敌人"}
    )
    for ____, t in ipairs(targets) do
        local distance = self:getDistance(t, self.owner)
        local ____self_7 = _____6570_503C["精英技能"]["大石头大招"]
        v = ____self_7["伤害"](____self_7, self.owner) * (1 + (1000 - distance) / 1000 * 0.5)
        t.tempData[AbilityTagData["是否为AOE"]] = true
        t:hurt(ability.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
        t.tempData[AbilityTagData["是否为AOE"]] = nil
    end
    local shieldGroups = {11, 12, 13}
    local shieldList = {}
    for ____, group in ipairs(shieldGroups) do
        local effects = self.owner.effectsGroup[group]
        if effects ~= nil then
            for id in pairs(effects) do
                local e = effects[id]
                if e.id ~= nil then
                    shieldList[#shieldList + 1] = {effect = e, groupId = group}
                else
                    __TS__ArrayPushArray(
                        shieldList,
                        __TS__ArrayMap(
                            e,
                            function(____, a)
                                return {effect = a, groupId = group}
                            end
                        )
                    )
                end
            end
        end
    end
    while #shieldList > 0 do
        local e = table.remove(shieldList, 1)
        e.effect:remove(self.skillEntity)
    end
end
function ____class_0.prototype.setAnimation(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack5", 1, 3.65, 4.5)
        __TS__Await(self:awaitTime(0.85))
        self:play("attack3", 1, 0, 2.15)
    end)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134238635,
    ____class_0,
    {
        ["释放范围"] = 1000,
        ["施法开始"] = 0.25,
        ["施法引导"] = 2,
        ["施法出手"] = 1,
        ["施法完成"] = 0
    }
)
return ____exports
