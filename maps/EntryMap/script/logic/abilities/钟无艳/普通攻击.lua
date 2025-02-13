local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 8,["29"] = 8,["30"] = 9,["31"] = 9,["32"] = 10,["33"] = 10,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["41"] = 13,["42"] = 14,["43"] = 15,["44"] = 16,["45"] = 17,["46"] = 18,["47"] = 19,["48"] = 20,["49"] = 21,["50"] = 22,["51"] = 23,["52"] = 24,["53"] = 25,["54"] = 13,["55"] = 27,["56"] = 28,["57"] = 29,["58"] = 30,["59"] = 31,["61"] = 33,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 37,["67"] = 39,["70"] = 27,["71"] = 43,["72"] = 44,["73"] = 45,["76"] = 49,["77"] = 50,["78"] = 51,["79"] = 51,["80"] = 51,["81"] = 51,["82"] = 51,["83"] = 51,["84"] = 51,["85"] = 51,["86"] = 52,["87"] = 52,["88"] = 52,["89"] = 52,["90"] = 52,["91"] = 52,["92"] = 52,["93"] = 53,["94"] = 53,["95"] = 53,["96"] = 53,["97"] = 53,["98"] = 53,["99"] = 53,["100"] = 54,["101"] = 55,["102"] = 55,["103"] = 56,["104"] = 56,["105"] = 57,["106"] = 58,["107"] = 58,["109"] = 60,["111"] = 60,["113"] = 60,["114"] = 60,["116"] = 60,["120"] = 60,["121"] = 61,["122"] = 62,["124"] = 64,["125"] = 65,["126"] = 65,["127"] = 65,["128"] = 65,["129"] = 65,["130"] = 65,["131"] = 65,["132"] = 66,["133"] = 66,["134"] = 66,["135"] = 66,["136"] = 66,["137"] = 66,["138"] = 66,["139"] = 67,["140"] = 67,["141"] = 67,["142"] = 67,["143"] = 67,["144"] = 67,["145"] = 67,["146"] = 68,["147"] = 68,["148"] = 68,["149"] = 68,["150"] = 68,["151"] = 69,["152"] = 70,["153"] = 71,["154"] = 71,["155"] = 71,["156"] = 71,["157"] = 71,["158"] = 71,["159"] = 71,["160"] = 71,["161"] = 71,["162"] = 71,["163"] = 71,["164"] = 72,["165"] = 72,["166"] = 72,["167"] = 72,["168"] = 72,["169"] = 72,["170"] = 72,["171"] = 72,["172"] = 72,["173"] = 73,["174"] = 74,["175"] = 74,["176"] = 74,["177"] = 74,["178"] = 74,["179"] = 74,["180"] = 74,["181"] = 74,["182"] = 74,["183"] = 75,["185"] = 82,["186"] = 83,["187"] = 84,["188"] = 84,["189"] = 84,["190"] = 84,["191"] = 84,["192"] = 84,["193"] = 84,["194"] = 84,["197"] = 87,["198"] = 88,["200"] = 90,["201"] = 90,["202"] = 91,["203"] = 91,["204"] = 91,["205"] = 91,["206"] = 91,["207"] = 91,["208"] = 91,["209"] = 91,["210"] = 91,["211"] = 92,["212"] = 93,["213"] = 94,["214"] = 95,["216"] = 97,["218"] = 43,["219"] = 13,["220"] = 13,["221"] = 13,["222"] = 13,["223"] = 13,["224"] = 13,["225"] = 13});
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
local _____7279_6280_1 = ____Property["特技_1"]
local _____7279_6280_2 = ____Property["特技_2"]
local ____Status = include("logic.models.Status")
local _____7729_6655 = ____Status["眩晕"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId2 = genEffectId(nil)
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
    self["特殊攻击"] = false
    self["脚底粒子ID"] = 134259689
    self["普攻受击粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[1] or 134249788
    self["特殊攻击自身脚底粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[2] or 134220748
    self["特殊攻击蓄力1粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[3] or 134239015
    self["特殊攻击蓄力2粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[4] or 134263650
    self["特殊攻击扩散粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[5] or 134245600
    self["特殊攻击法阵1粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[6] or 134233327
    self["特殊攻击法阵2粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[7] or 134255450
    self["特殊攻击受击粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[8] or 134249788
    self["特殊攻击恢复粒子ID"] = fightUtils:getSkillSkinParticleIds(self.owner, 0)[9] or 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    if self.owner:getValue(_____7279_6280_1) > 0 then
        self["特殊攻击"] = true
        self.owner:modifyValue(self.skillEntity, _____7279_6280_1, -1)
        self:play("ability2")
    else
        self["特殊攻击"] = false
        self.owner:setValue(_____7279_6280_2, 0)
        self.count = self.count + 1
        if self.count % 2 == 0 then
            self:play("attack1")
        else
            self:play("attack2", 0.81)
        end
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    if self["特殊攻击"] then
        self:play("ability2", 1.39, 0.33, 1.26)
        self:addParticle(
            self["特殊攻击自身脚底粒子ID"],
            self.owner:getPosition(),
            nil,
            1,
            1,
            150
        )
        self:addParticle(
            self["特殊攻击蓄力1粒子ID"],
            self.owner:getPosition(),
            nil,
            1,
            1
        )
        self:addParticle(
            self["特殊攻击蓄力2粒子ID"],
            self.owner:getPosition(),
            nil,
            1,
            1
        )
        self:playSound(self.owner, 134267230)
        local ____self_1 = _____6570_503C["钟无艳"]["普通攻击"]
        local v = ____self_1["特殊攻击伤害"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["钟无艳"]["普通攻击"]
        local c = ____self_2["特殊攻击治疗"](____self_2, self.owner)
        if self.owner:getValue(_____5929_8D4B_1) == 1 then
            local ____self_3 = _____6570_503C["钟无艳"]["普通攻击"]
            c = ____self_3["天赋11特殊攻击治疗"](____self_3, self.owner)
        end
        local ____temp_7 = self.owner:getValue(_____5929_8D4B_1) == 2 and self.owner:v(_____7279_6280_2) == 0
        if ____temp_7 then
            local ____self_5 = self.owner
            local ____self_5_random_6 = ____self_5.random
            local ____self_4 = _____6570_503C["钟无艳"]["普通攻击"]
            ____temp_7 = ____self_5_random_6(
                ____self_5,
                "钟无艳天赋12额外锤击概率",
                ____self_4["天赋12概率"](____self_4)
            )
        end
        if ____temp_7 then
            self.owner:modifyValue(self.skillEntity, _____7279_6280_1, 1)
            self.owner:modifyValue(self.skillEntity, _____7279_6280_2, 1)
        end
        self:awaitTime(0.3)
        self:addParticle(
            self["特殊攻击扩散粒子ID"],
            target:getPosition(),
            nil,
            1,
            0.2
        )
        self:addParticle(
            self["特殊攻击法阵1粒子ID"],
            target:getPosition(),
            nil,
            1.6,
            1
        )
        self:addParticle(
            self["特殊攻击法阵2粒子ID"],
            target:getPosition(),
            nil,
            1.6,
            1
        )
        local targets = self.owner:findByShape(
            target:getPosition(),
            Shape:createCircularShape(400),
            {"敌军"}
        )
        self:playSound(self.owner, 134229999)
        for ____, t in ipairs(targets) do
            t:move(
                {_____9738_4F53, _____88AB_51FB_9000},
                _____88AB_51FB_9000,
                self.owner:getAngle(),
                10,
                10,
                0,
                false,
                500,
                true
            )
            t:addTimeLimitProperties(
                self.skillEntity,
                buffId2,
                1,
                {},
                {_____7729_6655},
                {-1, 101, 20},
                1
            )
            t.tempData[AbilityTagData["是否为AOE"]] = true
            t:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                nil,
                nil,
                self["特殊攻击受击粒子ID"]
            )
            t.tempData[AbilityTagData["是否为AOE"]] = false
        end
        self.owner:cure(self.skillEntity, Formula["回血值"], c)
        if self["特殊攻击恢复粒子ID"] ~= 0 then
            self:addParticle(
                self["特殊攻击恢复粒子ID"],
                self.owner:getPosition(),
                nil,
                1,
                1,
                10
            )
        end
    else
        if self.count % 2 == 1 then
            self:play("attack2", 1.34, 0.27, 1.17)
        end
        local ____self_8 = _____6570_503C["钟无艳"]["普通攻击"]
        local v = ____self_8["伤害"](____self_8, self.owner)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            self["普攻受击粒子ID"]
        )
        self:playSound(self.owner, 134230507)
        local scale = 1
        if target:checkTag(UnitTag["玩家英雄"]) then
            scale = 0.5
        end
        self:setUnderParticle(target, self["脚底粒子ID"], scale)
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134263506,
    ____class_0,
    {["施法开始"] = 0.33, ["施法引导"] = 0, ["施法出手"] = 0.67, ["施法完成"] = 0}
)
return ____exports
