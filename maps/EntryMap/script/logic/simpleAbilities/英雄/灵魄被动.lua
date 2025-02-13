local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["20"] = 6,["21"] = 7,["22"] = 6,["23"] = 8,["25"] = 9,["26"] = 10,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 16,["36"] = 17,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 18,["48"] = 19,["49"] = 20,["50"] = 20,["51"] = 21,["53"] = 8,["54"] = 23});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Property = include("logic.models.Property")
local _____7279_6280_2 = ____Property["特技_2"]
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self["投射物ID"] = 134247090
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local count = self.owner:getValue(_____7279_6280_2)
        if count > 10 then
            return ____awaiter_resolve(nil)
        end
        local offsetPoint = self:offsetPoint(
            self.owner:getPosition(),
            math.random(0, 360),
            80
        )
        local p = self:createProjectile(self["投射物ID"], offsetPoint, 0, 150)
        p:prepare({face_angle = true})
        p:setCustomData("isToTarget", 0)
        p:moverRound(
            self.owner,
            300,
            137,
            nil,
            count % 2 == 0,
            nil,
            nil,
            1,
            300
        )
        local unitDataType = self.owner.customData
        local ____unitDataType_projectileList_0 = unitDataType.projectileList
        ____unitDataType_projectileList_0[#____unitDataType_projectileList_0 + 1] = p
        self.owner:modifyValue(self, _____7279_6280_2, 1)
    end)
end
local ____ = fight
return ____exports
