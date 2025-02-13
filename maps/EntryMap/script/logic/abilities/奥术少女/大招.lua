local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 12,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 17,["38"] = 19,["39"] = 21,["40"] = 22,["41"] = 22,["42"] = 22,["43"] = 22,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 25,["50"] = 25,["51"] = 25,["52"] = 25,["53"] = 27,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 30,["62"] = 33,["63"] = 34,["64"] = 34,["65"] = 35,["68"] = 38,["69"] = 39,["70"] = 40,["71"] = 41,["72"] = 60,["73"] = 60,["74"] = 60,["75"] = 60,["76"] = 60,["77"] = 61,["78"] = 61,["79"] = 61,["80"] = 61,["81"] = 61,["82"] = 62,["83"] = 62,["84"] = 62,["85"] = 62,["86"] = 62,["87"] = 63,["88"] = 64,["89"] = 65,["90"] = 66,["91"] = 66,["92"] = 66,["93"] = 66,["94"] = 66,["95"] = 67,["96"] = 67,["97"] = 67,["98"] = 67,["99"] = 67,["100"] = 68,["101"] = 69,["102"] = 70,["103"] = 72,["104"] = 73,["105"] = 74,["108"] = 77,["109"] = 72,["110"] = 86,["111"] = 87,["112"] = 87,["113"] = 87,["114"] = 87,["115"] = 87,["116"] = 87,["117"] = 87,["118"] = 87,["119"] = 87,["120"] = 87,["121"] = 86,["122"] = 89,["123"] = 89,["124"] = 89,["125"] = 89,["126"] = 89,["127"] = 89,["128"] = 89,["129"] = 89,["130"] = 89,["131"] = 89,["132"] = 90,["133"] = 91,["134"] = 92,["136"] = 94,["137"] = 96,["138"] = 97,["139"] = 97,["141"] = 99,["143"] = 12,["144"] = 10,["145"] = 10,["146"] = 10,["147"] = 10,["148"] = 10,["149"] = 10,["150"] = 10});
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
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local aniName = "skill3"
        local ____self_1 = _____6570_503C["奥术少女"]["大招"]
        local maxTime = ____self_1["最大持续时间"](____self_1)
        local currentTime = 0
        local effect = self:addEffect(self.owner, 101331, -1)
        __TS__Await(self:awaitTime(0.5))
        if self.owner:getValue(_____7279_6280_1) < 10 then
            self.owner:setValue(
                _____7279_6280_1,
                10 + self.owner:getValue(_____7279_6280_2)
            )
        end
        console:log(
            "特技_1",
            self.owner:getValue(_____7279_6280_1)
        )
        console:log(
            "特技_2",
            self.owner:getValue(_____7279_6280_2)
        )
        while ability.owner:isAlive() and ability.owner:getValue(_____7279_6280_1) > 0 and currentTime < maxTime do
            local targets = self.owner:findByShape(
                self.owner:getPosition(),
                Shape:createCircularShape(1000),
                {"敌军"}
            )
            if #targets == 0 then
                break
            end
            local target = random:randomList(targets)
            local ____self_2 = _____6570_503C["奥术少女"]["大招"]
            local v = ____self_2["伤害"](____self_2, self.owner)
            if not target or not target:isAlive() then
                break
            end
            local c = self.owner:random("奥术少女大招随机方向", 0.5) and 90 or 270
            local angle = self.owner:getAngle()
            local height = random:random() * 100 + 300
            local p = self:createProjectile(134268506, self.owner, -angle, height)
            local startPos = {
                x = self.owner:getPosition().x,
                y = self.owner:getPosition().y,
                z = 150
            }
            local randomStartPos = self:offsetPoint(
                self.owner,
                angle + c,
                random:random() * 100 + 100
            )
            randomStartPos = self:offsetPoint(
                randomStartPos,
                angle,
                random:random() * 100 + 300
            )
            local finalPos = {x = randomStartPos.x, y = randomStartPos.y, z = height}
            local path = {}
            path[#path + 1] = startPos
            local offPosA = self:offsetPoint(
                self.owner,
                angle,
                -(math.random() * 500 + 100)
            )
            offPosA = self:offsetPoint(
                offPosA,
                angle + c,
                math.random() * 500 + 100
            )
            local z1 = height + 300
            path[#path + 1] = {x = offPosA.x, y = offPosA.y, z = z1}
            path[#path + 1] = finalPos
            local function onFinish2()
                p:remove()
                if not target or not target:isAlive() then
                    return
                end
                target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
            end
            local function onFinish()
                p:moverTargetCustom(
                    target,
                    1000,
                    50,
                    p:getVec3(),
                    0.5,
                    300,
                    1500,
                    onFinish2
                )
            end
            p:moverBezier(
                p,
                target,
                path,
                500,
                100,
                1,
                nil,
                onFinish
            )
            ability.owner:modifyValue(self.owner, _____7279_6280_1, -1)
            __TS__Await(self:awaitTime(0.1))
            currentTime = currentTime + 0.1
        end
        ability.owner:modifyValue(self.owner, _____7279_6280_1, 0, true)
        __TS__Await(self:awaitTime(0.44))
        if effect ~= nil then
            effect:remove()
        end
        self:endSkill(ability)
    end)
end
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134223250,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 100000, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
