local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 10,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["36"] = 13,["37"] = 14,["38"] = 13,["39"] = 15,["40"] = 16,["41"] = 17,["42"] = 18,["43"] = 19,["45"] = 21,["46"] = 22,["48"] = 15,["49"] = 25,["50"] = 26,["51"] = 26,["52"] = 27,["53"] = 28,["56"] = 31,["57"] = 32,["58"] = 33,["59"] = 33,["60"] = 33,["61"] = 33,["63"] = 33,["64"] = 33,["66"] = 33,["67"] = 34,["68"] = 35,["69"] = 36,["70"] = 36,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 36,["75"] = 36,["76"] = 36,["77"] = 36,["78"] = 37,["79"] = 38,["80"] = 39,["81"] = 40,["82"] = 42,["83"] = 43,["84"] = 43,["85"] = 44,["86"] = 44,["87"] = 44,["88"] = 44,["90"] = 44,["91"] = 44,["93"] = 44,["95"] = 45,["96"] = 45,["97"] = 46,["98"] = 46,["99"] = 46,["100"] = 46,["101"] = 46,["102"] = 46,["103"] = 46,["104"] = 46,["105"] = 47,["106"] = 48,["107"] = 48,["108"] = 48,["109"] = 48,["110"] = 48,["111"] = 48,["112"] = 48,["113"] = 48,["114"] = 49,["115"] = 49,["116"] = 49,["117"] = 49,["118"] = 49,["119"] = 49,["120"] = 49,["121"] = 49,["122"] = 50,["124"] = 45,["129"] = 55,["130"] = 55,["131"] = 56,["132"] = 57,["133"] = 58,["134"] = 58,["135"] = 58,["136"] = 58,["137"] = 58,["138"] = 58,["139"] = 58,["140"] = 58,["141"] = 58,["142"] = 59,["145"] = 62,["146"] = 63,["147"] = 64,["148"] = 64,["149"] = 64,["150"] = 64,["151"] = 64,["152"] = 64,["153"] = 64,["154"] = 64,["155"] = 64,["156"] = 65,["157"] = 66,["158"] = 67,["159"] = 55,["163"] = 71,["164"] = 72,["165"] = 73,["166"] = 74,["167"] = 75,["168"] = 77,["169"] = 78,["172"] = 81,["173"] = 75,["174"] = 84,["176"] = 25,["177"] = 13,["178"] = 13,["179"] = 13,["180"] = 13,["181"] = 13,["182"] = 13,["183"] = 13});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local AbilityType = ____FightController.AbilityType
local AbilityTagData = ____FightController.AbilityTagData
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) == 1 then
        self.owner:setValue(_____7279_6280_1, 0)
        self["特殊攻击"] = true
        self:play("attack2")
    else
        self["特殊攻击"] = false
        self:play("attack1")
    end
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["吉格"]["普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    if self["特殊攻击"] then
        self:playSound(self.owner, 134270299)
        local ____temp_4
        if self.owner:getValue(_____5929_8D4B_1) == 2 then
            local ____self_2 = _____6570_503C["吉格"]["普通攻击"]
            ____temp_4 = ____self_2["天赋12特殊攻击伤害"](____self_2, self.owner)
        else
            local ____self_3 = _____6570_503C["吉格"]["普通攻击"]
            ____temp_4 = ____self_3["特殊攻击伤害"](____self_3, self.owner)
        end
        v = ____temp_4
        local targetList = {}
        self:addBeamLink(134225526, 0.5, self.owner, target)
        self:addParticle(
            134263026,
            target,
            nil,
            1,
            0.5,
            0,
            "hit_point"
        )
        target.tempData[AbilityTagData["是否为AOE"]] = true
        target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        target.tempData[AbilityTagData["是否为AOE"]] = nil
        local maxCount = 3
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_5 = _____6570_503C["吉格"]["普通攻击"]
            local count = ____self_5["天赋11召唤数量"](____self_5)
            local ____temp_8
            if self.owner:getValue(_____5929_8D4B_3) == 2 then
                local ____self_6 = _____6570_503C["吉格"]["大招"]
                ____temp_8 = ____self_6["天赋32持续时间"](____self_6)
            else
                local ____self_7 = _____6570_503C["吉格"]["大招"]
                ____temp_8 = ____self_7["持续时间"](____self_7)
            end
            local duration = ____temp_8
            do
                local i = 0
                while i < count do
                    local summonEntity = fightUtils:summon(
                        self.owner,
                        17,
                        duration,
                        nil,
                        1,
                        12
                    )
                    if summonEntity then
                        self:addParticle(
                            103221,
                            summonEntity:getPosition(),
                            nil,
                            1,
                            1,
                            0
                        )
                        self:addParticle(
                            134219740,
                            summonEntity:getPosition(),
                            nil,
                            1,
                            1,
                            0
                        )
                        self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
                    end
                    i = i + 1
                end
            end
        end
        do
            local i = 0
            while i < maxCount do
                local oldTarget = target
                targetList[#targetList + 1] = target
                local targets = self.owner:findByShape(
                    target:getPosition(),
                    Shape:createCircularShape(1000),
                    {"敌军"},
                    function(____, a) return a:isAlive() and __TS__ArrayFindIndex(
                        targetList,
                        function(____, b) return b == a end
                    ) == -1 end
                )
                if #targets == 0 then
                    break
                end
                target = random:randomList(targets)
                self:addBeamLink(134225526, 0.5, oldTarget, target)
                self:addParticle(
                    134263026,
                    target,
                    nil,
                    1,
                    0.5,
                    0,
                    "hit_point"
                )
                target.tempData[AbilityTagData["是否为AOE"]] = true
                target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
                target.tempData[AbilityTagData["是否为AOE"]] = nil
                i = i + 1
            end
        end
    else
        self:playSound(self.owner, 134266317)
        local angle = self:getDirection(target, self.owner)
        local p = self:createProjectile(134270755, self.owner, angle, 150)
        p:prepare({hit_radius = 50})
        p:listener({onFinish = function()
            p:remove()
            if not target or not target:isAlive() then
                return
            end
            target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["普攻"])
        end})
        p:moverTarget(target, 2000, 10)
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134267124,
    ____class_0,
    {["施法开始"] = 0.1, ["施法引导"] = 0, ["施法出手"] = 0.55, ["施法完成"] = 0}
)
return ____exports
