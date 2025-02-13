local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 13,["33"] = 13,["34"] = 16,["36"] = 17,["37"] = 17,["39"] = 18,["40"] = 18,["41"] = 52,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 20,["50"] = 23,["51"] = 24,["54"] = 27,["55"] = 28,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 29,["61"] = 29,["62"] = 29,["63"] = 30,["64"] = 31,["65"] = 33,["66"] = 33,["67"] = 33,["68"] = 33,["69"] = 33,["70"] = 34,["71"] = 35,["74"] = 38,["75"] = 39,["76"] = 40,["79"] = 44,["80"] = 45,["81"] = 45,["82"] = 45,["83"] = 45,["84"] = 45,["85"] = 45,["86"] = 45,["87"] = 45,["88"] = 45,["89"] = 45,["90"] = 31,["91"] = 49,["92"] = 49,["93"] = 49,["94"] = 49,["95"] = 49,["96"] = 50,["97"] = 50,["98"] = 50,["99"] = 50,["100"] = 50,["101"] = 52,["102"] = 53,["103"] = 53,["105"] = 54,["106"] = 55,["109"] = 58,["110"] = 59,["111"] = 60,["112"] = 52,["113"] = 62,["114"] = 63,["115"] = 64,["116"] = 65,["117"] = 65,["118"] = 65,["119"] = 65,["120"] = 65,["121"] = 65,["122"] = 65,["123"] = 65,["124"] = 65,["125"] = 65,["126"] = 66,["127"] = 18,["131"] = 16,["132"] = 11,["133"] = 11,["134"] = 11,["135"] = 11,["136"] = 11,["137"] = 11,["138"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____Vector3 = include("framework.math.Vector3")
local normalize = ____Vector3.normalize
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_5 = createAbility
local ____fight_4 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["奥术少女"]["大招"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        do
            local i = 0
            while i < 20 do
                local onFinish
                local targets = self.owner:findByShape(
                    self.owner:getPosition(),
                    Shape:createCircularShape(1000),
                    {"敌军"}
                )
                if #targets == 0 then
                    break
                end
                local target = random:randomList(targets)
                if not target or not target:isAlive() then
                    break
                end
                local c = self.owner:random("死灵法师大招随机方向", 0.5) and 90 or 270
                local angle = self.owner:getAngle()
                local p = self:createProjectile(
                    134268506,
                    self.owner,
                    angle,
                    150,
                    20
                )
                p:prepare({hit_radius = 50, face_angle = true})
                p:listener({onFinish = function()
                    local targetXs = self.owner:findByShape(
                        self.owner:getPosition(),
                        Shape:createCircularShape(1000),
                        {"敌军"}
                    )
                    if #targetXs == 0 then
                        p:remove()
                        return
                    end
                    local targetX = random:randomList(targetXs)
                    if not targetX or not targetX:isAlive() then
                        p:remove()
                        return
                    end
                    target = targetX
                    p:moverTargetCustom(
                        target,
                        500,
                        50,
                        p:getVec3(),
                        0.2,
                        nil,
                        500,
                        onFinish
                    )
                end})
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
                onFinish = function()
                    if target ~= nil then
                        target:hurt(self.skillEntity, Formula["法术伤害"], v, AbilityType["大招"])
                    end
                    if target:v(_____8840) <= 0 then
                        p:remove()
                        return
                    end
                    local angle = p:getProjectile():get_facing()
                    local cr = angle + (math.random() < 0.5 and 1 or -1) * math.random() * 10
                    p:moverLine(cr, 300, 500)
                end
                local vStart = {randomStartPos.x, randomStartPos.y, 150}
                local vStartN = normalize(nil, vStart)
                p:setVec3(vStartN)
                p:moverTargetCustom(
                    target,
                    500,
                    50,
                    p:getVec3(),
                    0.2,
                    nil,
                    500,
                    onFinish
                )
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_5(
    nil,
    ____fight_4,
    134223250,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0}
)
return ____exports
