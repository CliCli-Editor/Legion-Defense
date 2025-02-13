local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 13,["19"] = 5,["20"] = 13,["21"] = 14,["22"] = 15,["23"] = 6,["24"] = 8,["25"] = 9,["26"] = 10,["27"] = 12,["28"] = 42,["29"] = 44,["30"] = 45,["31"] = 46,["32"] = 47,["34"] = 49,["36"] = 45,["37"] = 53,["38"] = 54,["39"] = 55,["40"] = 55,["41"] = 55,["42"] = 55,["43"] = 55,["44"] = 55,["45"] = 55,["46"] = 55,["47"] = 57,["48"] = 58,["49"] = 59,["51"] = 62,["52"] = 42,["53"] = 65,["55"] = 66,["56"] = 67,["58"] = 70,["60"] = 65,["65"] = 20});
local ____exports = {}
local ____AbilityAPI = include("framework.fight.AbilityAPI")
local AbilityAPI = ____AbilityAPI.AbilityAPI
local ____utils = include("framework.fight.utils")
local runEvent = ____utils.runEvent
____exports.SimpleAbilityBase = __TS__Class()
local SimpleAbilityBase = ____exports.SimpleAbilityBase
SimpleAbilityBase.name = "SimpleAbilityBase"
__TS__ClassExtends(SimpleAbilityBase, AbilityAPI)
function SimpleAbilityBase.prototype.____constructor(self, fight, _owner, skillName)
    AbilityAPI.prototype.____constructor(self)
    self.fight = fight
    self._owner = _owner
    self.skillName = skillName
    self.isSimpleSkill = true
    self.level = 1
    self.cd = 0
    self._alreadyTriggered = false
end
function SimpleAbilityBase.prototype.trigger(self, ability, args)
    local fight = self.owner.fight
    fight.report:using(function(____, r)
        if not self._alreadyTriggered then
            r:log("#gray 触发技能 " .. self.skillName)
        else
            r:log(("#gray 触发技能失败 " .. self.skillName) .. "，技能正在cd中")
        end
    end)
    if not self._alreadyTriggered then
        self._alreadyTriggered = true
        runEvent(
            nil,
            self.owner.eventMap[1100000000 + 10],
            0,
            self.owner,
            self.owner,
            function() return "触发英雄简单技能施法" end
        )
        self:Run(ability, args)
        self:waitCd(self.cd)
        return true
    end
    return false
end
function SimpleAbilityBase.prototype.waitCd(self, cd)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if cd > 0 then
            __TS__Await(self:awaitTime(cd))
        end
        self._alreadyTriggered = false
    end)
end
__TS__SetDescriptor(
    SimpleAbilityBase.prototype,
    "owner",
    {get = function(self)
        return self._owner
    end},
    true
)
return ____exports
