local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 8,["27"] = 8,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["35"] = 11,["36"] = 13,["37"] = 11,["38"] = 15,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 18,["45"] = 19,["46"] = 20,["47"] = 21,["49"] = 24,["52"] = 15,["53"] = 27,["55"] = 28,["56"] = 29,["59"] = 32,["60"] = 32,["61"] = 33,["62"] = 34,["64"] = 34,["65"] = 34,["68"] = 34,["71"] = 35,["72"] = 36,["73"] = 36,["75"] = 38,["76"] = 38,["77"] = 38,["78"] = 38,["79"] = 38,["80"] = 38,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 38,["87"] = 39,["88"] = 39,["89"] = 39,["90"] = 39,["91"] = 39,["92"] = 39,["93"] = 39,["94"] = 39,["95"] = 40,["96"] = 40,["97"] = 40,["98"] = 40,["99"] = 40,["100"] = 40,["101"] = 40,["102"] = 40,["103"] = 41,["104"] = 42,["105"] = 42,["106"] = 42,["107"] = 42,["108"] = 42,["109"] = 43,["112"] = 46,["113"] = 47,["114"] = 48,["115"] = 49,["116"] = 49,["117"] = 49,["118"] = 49,["119"] = 49,["120"] = 49,["121"] = 49,["122"] = 49,["123"] = 49,["124"] = 50,["125"] = 51,["126"] = 52,["127"] = 52,["128"] = 52,["129"] = 52,["130"] = 52,["131"] = 52,["132"] = 52,["133"] = 52,["134"] = 52,["137"] = 55,["139"] = 57,["140"] = 58,["141"] = 58,["142"] = 58,["143"] = 58,["144"] = 58,["145"] = 58,["146"] = 58,["147"] = 58,["148"] = 59,["149"] = 61,["150"] = 62,["151"] = 63,["152"] = 64,["153"] = 64,["154"] = 64,["155"] = 64,["156"] = 64,["157"] = 64,["158"] = 64,["159"] = 64,["160"] = 64,["162"] = 59,["163"] = 68,["166"] = 27,["167"] = 11,["168"] = 11,["169"] = 11,["170"] = 11,["171"] = 11,["172"] = 11,["173"] = 11});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_1 = ____Property["天赋_1"]
local _____653B_51FB_901F_5EA6_767E_5206_6BD4 = ____Property["攻击速度百分比"]
local _____7279_6280_1 = ____Property["特技_1"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["特殊攻击"] = false
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log(
            "施法出手",
            ability.ability:get_key()
        )
        self["特殊攻击"] = self.owner:getValue(_____7279_6280_1) == 1
        if self["特殊攻击"] then
            self.owner:setValue(_____7279_6280_1, 0)
            self:play("skill2", 1.2)
        else
            self:play("attack2_2")
        end
    end)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = cast:getTargetUnit()
        if not target then
            return ____awaiter_resolve(nil)
        end
        local ____self_1 = _____6570_503C["冰霜女王"]["普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        if self["特殊攻击"] then
            local ____self_4 = self.owner
            local ____self_4_addMp_5 = ____self_4.addMp
            local ____self_skillEntity_3 = self.skillEntity
            local ____self_2 = _____6570_503C["冰霜女王"]["普通攻击"]
            ____self_4_addMp_5(
                ____self_4,
                ____self_skillEntity_3,
                ____self_2["特殊攻击回蓝"](____self_2)
            )
            if self.owner:v(_____5929_8D4B_1) == 1 then
                local ____self_6 = _____6570_503C["冰霜女王"]["普通攻击"]
                v = ____self_6["天赋11特殊攻击伤害"](____self_6, self.owner)
            end
            self:addParticle(
                134266856,
                target:getPosition(),
                0,
                0.625,
                0.7,
                10,
                nil,
                nil,
                nil,
                true
            )
            self:addParticle(
                134222334,
                target:getPosition(),
                0,
                2,
                1,
                10
            )
            self:addParticle(
                134266692,
                target:getPosition(),
                0,
                1.625,
                0.5,
                10
            )
            local range = 250
            local targets = self.owner:findByShape(
                target:getPosition(),
                Shape:createCircularShape(range),
                {"敌人"}
            )
            if not targets or #targets == 0 then
                return ____awaiter_resolve(nil)
            end
            self:playSound(self.owner, 134221216)
            for ____, targetX in ipairs(targets) do
                targetX.tempData[AbilityTagData["是否为AOE"]] = true
                targetX:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    v,
                    AbilityType["普攻"],
                    nil,
                    false,
                    134247935
                )
                targetX.tempData[AbilityTagData["是否为AOE"]] = nil
                if self.owner:v(_____5929_8D4B_1) == 2 then
                    targetX:addTimeLimitProperties(
                        self.skillEntity,
                        buffId,
                        1,
                        {_____653B_51FB_901F_5EA6_767E_5206_6BD4, -0.3},
                        {},
                        {-1, 20},
                        5
                    )
                end
            end
            self.owner:setValue(_____7279_6280_1, 0)
        else
            local angle = self:getDirection(ability.owner, target)
            local p = self:createProjectile(
                134281259,
                self.owner,
                angle,
                50,
                1,
                "left_hand"
            )
            p:listener({onFinish = function()
                p:remove()
                if target and target:isAlive() then
                    self:playSound(self.owner, 134252041)
                    target:hurt(
                        self.skillEntity,
                        Formula["法术伤害"],
                        v,
                        AbilityType["普攻"],
                        nil,
                        nil,
                        134227022
                    )
                end
            end})
            p:moverTarget(target, 2000, 0)
        end
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134257111,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.25, ["施法完成"] = 0.75}
)
return ____exports
