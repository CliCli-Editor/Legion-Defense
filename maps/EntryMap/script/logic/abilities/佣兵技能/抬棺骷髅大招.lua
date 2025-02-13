local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["32"] = 10,["33"] = 11,["34"] = 12,["35"] = 13,["36"] = 10,["37"] = 20,["38"] = 21,["39"] = 22,["40"] = 23,["41"] = 23,["43"] = 24,["44"] = 24,["45"] = 25,["46"] = 26,["49"] = 24,["52"] = 30,["53"] = 31,["55"] = 33,["56"] = 33,["57"] = 33,["58"] = 33,["59"] = 33,["60"] = 33,["61"] = 33,["63"] = 20,["64"] = 36,["66"] = 65,["67"] = 65,["68"] = 65,["69"] = 65,["70"] = 65,["71"] = 65,["72"] = 65,["73"] = 65,["74"] = 66,["75"] = 67,["76"] = 68,["77"] = 68,["78"] = 68,["79"] = 68,["82"] = 36,["83"] = 72,["85"] = 73,["86"] = 73,["87"] = 73,["88"] = 73,["89"] = 73,["91"] = 74,["92"] = 74,["93"] = 75,["94"] = 76,["97"] = 79,["98"] = 80,["99"] = 81,["100"] = 82,["101"] = 83,["102"] = 85,["103"] = 86,["106"] = 89,["107"] = 90,["108"] = 91,["109"] = 91,["110"] = 91,["111"] = 91,["112"] = 91,["113"] = 91,["114"] = 91,["115"] = 91,["116"] = 91,["117"] = 91,["118"] = 91,["119"] = 91,["120"] = 92,["121"] = 83,["122"] = 95,["123"] = 96,["124"] = 97,["125"] = 98,["126"] = 98,["127"] = 98,["128"] = 98,["129"] = 98,["130"] = 99,["131"] = 99,["132"] = 99,["133"] = 99,["134"] = 99,["135"] = 100,["136"] = 100,["137"] = 100,["138"] = 100,["139"] = 100,["140"] = 101,["141"] = 102,["142"] = 103,["143"] = 104,["144"] = 104,["145"] = 104,["146"] = 104,["147"] = 104,["148"] = 105,["149"] = 105,["150"] = 105,["151"] = 105,["152"] = 105,["153"] = 106,["154"] = 107,["155"] = 108,["156"] = 110,["157"] = 111,["158"] = 110,["159"] = 113,["160"] = 113,["161"] = 113,["162"] = 113,["163"] = 113,["164"] = 113,["165"] = 113,["166"] = 113,["167"] = 113,["168"] = 113,["169"] = 114,["170"] = 74,["174"] = 72,["175"] = 10,["176"] = 10,["177"] = 10,["178"] = 10,["179"] = 10,["180"] = 10,["181"] = 10});
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
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
    self["召唤档位"] = 0
    self["动画参数"] = fightUtils:getMercenarySkinAnimeArgs(self.owner)[2]
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.count = self.count + 1
    local x = math.random()
    local ____self_1 = _____6570_503C["佣兵技能"]["抬棺骷髅大招"]
    local pList = ____self_1["召唤123档佣兵和谐星骷髅概率梯度"](____self_1)
    do
        local i = 0
        while i < #pList do
            if x < pList[i + 1] then
                self["召唤档位"] = i
                break
            end
            i = i + 1
        end
    end
    if self["动画参数"] == nil then
        self:play("dance")
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
        self:addParticle(
            103049,
            self.owner:getPosition(),
            nil,
            2,
            5,
            10
        )
        __TS__Await(self:awaitTime(2))
        for ____, t in ipairs(self.owner.children) do
            t:addEffect(
                self.skillEntity,
                _____6570_503C["佣兵技能"]["抬棺骷髅大招"]:buffId()
            )
        end
    end)
end
function ____class_0.prototype.createP(self, source)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findByShape(
            source:getPosition(),
            Shape:createCircularShape(1000),
            {"敌军"}
        )
        do
            local i = 0
            while i < 5 do
                local target = fightUtils:randomList(targets)
                if not target or not target:isAlive() then
                    break
                end
                local angle = self:getDirection(source, target)
                local distance = self:getDistance(source, target)
                local p = self:createProjectile(134230432, source, 0, 150)
                p:prepare({face_angle = true})
                p:listener({onFinish = function()
                    p:remove()
                    if not target or not target:isAlive() then
                        return
                    end
                    self:playSound(target, 134240944)
                    target.tempData[AbilityTagData["是否为AOE"]] = true
                    local ____target_5 = target
                    local ____target_hurt_6 = target.hurt
                    local ____self_skillEntity_3 = self.skillEntity
                    local ____Formula__6CD5_672F_4F24_5BB3_4 = Formula["法术伤害"]
                    local ____self_2 = _____6570_503C["佣兵技能"]["抬棺骷髅大招"]
                    ____target_hurt_6(
                        ____target_5,
                        ____self_skillEntity_3,
                        ____Formula__6CD5_672F_4F24_5BB3_4,
                        ____self_2["每发飞弹伤害"](____self_2, self.owner),
                        AbilityType["大招"]
                    )
                    target.tempData[AbilityTagData["是否为AOE"]] = nil
                end})
                local c = self.owner:random("抬棺骷髅大招随机方向", 0.5) and 90 or 270
                local angleX = source:getAngle()
                local height = random:random() * 100 + 100
                local startPos = {
                    x = source:getPosition().x,
                    y = source:getPosition().y,
                    z = 50
                }
                local randomStartPos = self:offsetPoint(
                    source,
                    angleX + c,
                    random:random() * 100 + 100
                )
                randomStartPos = self:offsetPoint(
                    randomStartPos,
                    angleX,
                    random:random() * 100 + 200
                )
                local finalPos = {x = randomStartPos.x, y = randomStartPos.y, z = height}
                local path = {}
                path[#path + 1] = startPos
                local offPosA = self:offsetPoint(
                    source,
                    angleX,
                    -(math.random() * 300 + 100)
                )
                offPosA = self:offsetPoint(
                    offPosA,
                    angleX + c,
                    math.random() * 300 + 100
                )
                local z1 = height + 100
                path[#path + 1] = {x = offPosA.x, y = offPosA.y, z = z1}
                path[#path + 1] = finalPos
                local function onFinish()
                    p:moverTarget(target, 5000, 10)
                end
                p:moverBezier(
                    p,
                    target,
                    path,
                    2000,
                    100,
                    0.5,
                    nil,
                    onFinish
                )
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134243177,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.8}
)
return ____exports
