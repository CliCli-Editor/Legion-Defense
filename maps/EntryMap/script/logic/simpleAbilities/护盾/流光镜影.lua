local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["25"] = 10,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["34"] = 14,["37"] = 17,["38"] = 18,["39"] = 19,["40"] = 20,["41"] = 21,["42"] = 22,["43"] = 23,["44"] = 24,["45"] = 25,["46"] = 26,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 28,["61"] = 28,["62"] = 28,["63"] = 29,["64"] = 29,["65"] = 29,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 29,["70"] = 29,["71"] = 30,["72"] = 30,["73"] = 30,["74"] = 30,["75"] = 30,["76"] = 30,["77"] = 30,["78"] = 30,["79"] = 31,["80"] = 31,["81"] = 31,["82"] = 31,["83"] = 31,["84"] = 31,["85"] = 31,["86"] = 31,["87"] = 32,["88"] = 32,["89"] = 32,["90"] = 32,["91"] = 32,["92"] = 32,["93"] = 32,["94"] = 32,["95"] = 33,["96"] = 34,["97"] = 35,["98"] = 35,["99"] = 35,["100"] = 35,["101"] = 35,["102"] = 36,["103"] = 37,["104"] = 38,["105"] = 38,["106"] = 38,["107"] = 38,["108"] = 38,["109"] = 38,["110"] = 38,["111"] = 38,["112"] = 38,["113"] = 38,["114"] = 39,["116"] = 41,["117"] = 42,["118"] = 43,["119"] = 44,["120"] = 44,["121"] = 44,["122"] = 44,["123"] = 44,["124"] = 44,["125"] = 44,["126"] = 44,["127"] = 44,["128"] = 44,["129"] = 44,["130"] = 44,["131"] = 45,["132"] = 45,["133"] = 45,["134"] = 45,["135"] = 45,["136"] = 45,["137"] = 45,["138"] = 45,["139"] = 45,["140"] = 45,["141"] = 45,["142"] = 45,["143"] = 46,["144"] = 46,["145"] = 46,["146"] = 46,["147"] = 46,["148"] = 47,["149"] = 48,["150"] = 49,["151"] = 49,["152"] = 49,["153"] = 49,["154"] = 49,["155"] = 49,["156"] = 49,["157"] = 49,["158"] = 49,["159"] = 49,["160"] = 50,["163"] = 8,["164"] = 53});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:getHatredTarget()
        if not target or not target:isAlive() then
            target = self.owner:findTarget(
                {"敌人"},
                function(____, a) return a:isAlive() end,
                2,
                2000
            )
        end
        if not target then
            return ____awaiter_resolve(nil)
        end
        local angle = self.owner:getAngle()
        local angleX = self:getDirection(target, self.owner)
        local offsetPos1 = self:offsetPoint(self.owner, angle + 90, 60)
        local offsetPos2 = self:offsetPoint(self.owner, angle - 90, 60)
        local offsetPos3 = self:offsetPoint(target, angleX + 90, 60)
        local offsetPos4 = self:offsetPoint(target, angleX - 90, 60)
        local angle1 = self:getDirection(offsetPos1, target)
        local angle2 = self:getDirection(offsetPos2, target)
        local angle3 = target:getAngle() - 90
        local angle4 = target:getAngle() + 90
        self:addParticle(
            101237,
            offsetPos1,
            angle1,
            1,
            0.8,
            50
        )
        self:addParticle(
            101237,
            offsetPos2,
            angle2,
            1,
            0.8,
            50
        )
        self:addBeamLink(
            103984,
            1,
            offsetPos1,
            offsetPos3,
            130,
            130
        )
        self:addBeamLink(
            103984,
            1,
            offsetPos2,
            offsetPos4,
            130,
            130
        )
        self:addParticle(
            102511,
            offsetPos3,
            angle3,
            1,
            0.8,
            50
        )
        self:addParticle(
            102511,
            offsetPos4,
            angle4,
            1,
            0.8,
            50
        )
        local direction = self:getDistance(self.owner, target)
        local startPos1 = self:offsetPoint(self.owner, angleX, direction / 2)
        local targets1 = self.owner:findByShape(
            startPos1,
            Shape:createRectangleShape(200, direction, angleX),
            {"敌人"}
        )
        for ____, t in ipairs(targets1) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_2 = t
            local ____t_hurt_3 = t.hurt
            local ____6570_503C__62A4_76FE__6D41_5149_955C_5F71__4F24_5BB3_7C7B_578B_1 = _____6570_503C["护盾"]["流光镜影"]["伤害类型"]
            local ____self_0 = _____6570_503C["护盾"]["流光镜影"]
            ____t_hurt_3(
                ____t_2,
                self,
                ____6570_503C__62A4_76FE__6D41_5149_955C_5F71__4F24_5BB3_7C7B_578B_1,
                ____self_0["伤害"](____self_0, self.owner)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
        __TS__Await(self:awaitTime(1))
        local offsetPos5 = self:offsetPoint(target, angleX + 90, 80)
        local offsetPos6 = self:offsetPoint(target, angleX - 90, 80)
        self:addParticle(
            134230645,
            offsetPos5,
            angle3,
            1,
            0.8,
            -50,
            nil,
            nil,
            nil,
            true
        )
        self:addParticle(
            134230645,
            offsetPos6,
            angle4,
            1,
            0.8,
            -50,
            nil,
            nil,
            nil,
            true
        )
        local targets2 = self.owner:findByShape(
            offsetPos5,
            Shape:createRectangleShape(2800, 100, angle3 + 90),
            {"敌人"}
        )
        for ____, t in ipairs(targets2) do
            t.tempData[AbilityTagData["是否为AOE"]] = true
            local ____t_6 = t
            local ____t_hurt_7 = t.hurt
            local ____6570_503C__62A4_76FE__6D41_5149_955C_5F71__4F24_5BB3_7C7B_578B_5 = _____6570_503C["护盾"]["流光镜影"]["伤害类型"]
            local ____self_4 = _____6570_503C["护盾"]["流光镜影"]
            ____t_hurt_7(
                ____t_6,
                self,
                ____6570_503C__62A4_76FE__6D41_5149_955C_5F71__4F24_5BB3_7C7B_578B_5,
                ____self_4["伤害"](____self_4, self.owner)
            )
            t.tempData[AbilityTagData["是否为AOE"]] = nil
        end
    end)
end
local ____ = fight
return ____exports
