local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 7,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["33"] = 9,["34"] = 11,["35"] = 13,["36"] = 15,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 17,["44"] = 18,["45"] = 15,["47"] = 22,["48"] = 22,["49"] = 23,["50"] = 24,["51"] = 25,["52"] = 26,["53"] = 27,["54"] = 28,["55"] = 29,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 30,["65"] = 22,["69"] = 7,["70"] = 37});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____Property = include("logic.models.Property")
local _____6218_573AID = ____Property["战场ID"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local getEnemyTagsMap = ____UnitTags.getEnemyTagsMap
local isLeftSide = ____UnitTags.isLeftSide
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:createProjectile(
            134243648,
            self.owner,
            0,
            0,
            1,
            nil
        )
        local tags = getEnemyTagsMap(nil, self.owner)
        local leftKing = self.owner:checkTag(UnitTag["国王A"])
        local function check(____, unit)
            local isLeft = isLeftSide(
                nil,
                unit:v(_____6218_573AID)
            )
            if leftKing then
                return isLeft
            end
            return not isLeft
        end
        do
            local i = 0
            while i < 3 do
                for tag in pairs(tags) do
                    local units = self.fight.unitGroup[tag]
                    if units ~= nil then
                        local list = __TS__ObjectValues(units)
                        for ____, unit in ipairs(list) do
                            if unit and unit:isAlive() and not (unit and unit:checkTag(UnitTag["国王"])) and check(nil, unit) then
                                console:log(
                                    "自爆杀死单位",
                                    unit.id,
                                    unit:getName()
                                )
                                unit:kill(self)
                            end
                        end
                    end
                end
                i = i + 1
            end
        end
    end)
end
local ____ = fight
return ____exports
