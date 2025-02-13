local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 10,["26"] = 11,["27"] = 12,["30"] = 15,["31"] = 16,["32"] = 16,["33"] = 16,["34"] = 16,["36"] = 16,["37"] = 16,["39"] = 16,["40"] = 17,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["46"] = 18,["47"] = 18,["48"] = 18,["49"] = 18,["51"] = 18,["52"] = 18,["54"] = 18,["56"] = 18,["57"] = 19,["58"] = 20,["59"] = 21,["60"] = 22,["61"] = 23,["64"] = 26,["65"] = 26,["66"] = 26,["67"] = 26,["68"] = 26,["69"] = 26,["70"] = 26,["71"] = 26,["72"] = 26,["73"] = 9,["74"] = 7,["75"] = 7,["76"] = 7,["77"] = 7,["78"] = 7,["79"] = 7,["80"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local _____79FB_52A8_901F_5EA6 = ____Property["移动速度"]
local ____Status = include("logic.models.Status")
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法引导"] = function(self, ability, cast)
    local target = self.owner:findTarget({"敌人"}, nil, 0, 800)
    if not target then
        self:endSkill(self)
        return
    end
    self:play("idle2", 4)
    local ____temp_3
    if self.owner:getValue(_____5929_8D4B_2) == 2 then
        local ____self_1 = _____6570_503C["玲珑"]["被动"]
        ____temp_3 = ____self_1["天赋22自己附加buffId"](____self_1)
    else
        local ____self_2 = _____6570_503C["玲珑"]["被动"]
        ____temp_3 = ____self_2["自己附加buffId"](____self_2)
    end
    local idx = ____temp_3
    self.owner:addEffect(self.skillEntity, idx)
    local ____temp_8
    if self.owner:getValue(_____5929_8D4B_2) == 1 then
        local ____self_4 = _____6570_503C["玲珑"]["被动"]
        ____temp_8 = ____self_4["天赋21敌人附加buffId"](____self_4)
    else
        local ____temp_7
        if self.owner:getValue(_____5929_8D4B_2) == 2 then
            local ____self_5 = _____6570_503C["玲珑"]["被动"]
            ____temp_7 = ____self_5["天赋22敌人附加buffId"](____self_5)
        else
            local ____self_6 = _____6570_503C["玲珑"]["被动"]
            ____temp_7 = ____self_6["敌人附加buffId"](____self_6)
        end
        ____temp_8 = ____temp_7
    end
    local id = ____temp_8
    target:addEffect(self.skillEntity, id)
    local distance = self:getDistance(target, self.owner)
    local angle = self:getDirection(target, self.owner)
    target:setAngle(angle)
    if distance < 300 then
        return
    end
    target:move(
        {},
        _____88AB_51FB_9000,
        angle,
        distance - 300,
        target:p(_____79FB_52A8_901F_5EA6),
        0,
        true
    )
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134248442,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 1, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
