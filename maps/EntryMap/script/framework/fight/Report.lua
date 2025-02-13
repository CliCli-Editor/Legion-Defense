local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__NumberToString = ____lualib.__TS__NumberToString
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 7,["32"] = 23,["33"] = 23,["34"] = 23,["35"] = 30,["36"] = 30,["37"] = 24,["38"] = 24,["39"] = 24,["40"] = 24,["41"] = 26,["42"] = 28,["43"] = 30,["44"] = 34,["45"] = 36,["46"] = 37,["47"] = 37,["48"] = 37,["49"] = 37,["50"] = 34,["51"] = 40,["52"] = 42,["53"] = 43,["54"] = 43,["55"] = 43,["56"] = 43,["57"] = 40,["58"] = 46,["59"] = 48,["60"] = 48,["61"] = 48,["62"] = 48,["63"] = 48,["64"] = 49,["65"] = 49,["66"] = 49,["67"] = 49,["68"] = 46,["69"] = 52,["70"] = 53,["71"] = 54,["73"] = 52,["74"] = 71,["75"] = 72,["76"] = 74,["77"] = 75,["78"] = 76,["79"] = 77,["80"] = 79,["81"] = 80,["83"] = 83,["84"] = 84,["85"] = 85,["86"] = 86,["87"] = 87,["88"] = 88,["89"] = 89,["90"] = 90,["91"] = 91,["92"] = 92,["93"] = 93,["94"] = 94,["95"] = 95,["96"] = 96,["99"] = 100,["100"] = 101,["101"] = 102,["103"] = 105,["104"] = 107,["105"] = 108,["108"] = 112,["109"] = 114,["110"] = 115,["113"] = 119,["114"] = 121,["115"] = 122,["118"] = 126,["119"] = 128,["120"] = 129,["123"] = 133,["124"] = 71,["125"] = 136,["128"] = 154,["129"] = 155,["132"] = 138,["133"] = 141,["134"] = 142,["135"] = 143,["136"] = 144,["138"] = 146,["139"] = 147,["140"] = 148,["141"] = 149,["143"] = 151,["144"] = 151,["145"] = 151,["146"] = 151,["147"] = 151,["148"] = 151,["149"] = 151,["156"] = 157,["159"] = 137,["162"] = 136,["163"] = 161,["164"] = 161,["165"] = 162,["166"] = 163,["167"] = 164,["169"] = 165,["170"] = 166,["171"] = 167,["173"] = 169,["174"] = 170,["178"] = 172,["179"] = 161,["180"] = 175,["181"] = 176,["182"] = 177,["183"] = 178,["185"] = 180,["187"] = 182,["188"] = 183,["190"] = 185,["192"] = 175,["193"] = 189,["194"] = 190,["195"] = 189,["196"] = 58,["197"] = 58,["198"] = 59,["199"] = 59,["200"] = 60,["201"] = 60,["202"] = 62,["203"] = 63,["204"] = 64,["205"] = 65,["206"] = 67,["207"] = 68,["208"] = 68,["209"] = 68,["210"] = 68,["211"] = 67});
local ____exports = {}
local ____DebugRoomClient = include("framework.debug.DebugRoomClient")
local Socket_ID = ____DebugRoomClient.Socket_ID
local debugRoomClient = ____DebugRoomClient.debugRoomClient
local ____global = include("framework.global")
local global = ____global.global
local ____Diff = include("framework.utils.Diff")
local diffLines = ____Diff.diffLines
local ____utils = include("framework.fight.utils")
local getUnit = ____utils.getUnit
local isEffect = ____utils.isEffect
local isSkill = ____utils.isSkill
local isSimpleSkill = ____utils.isSimpleSkill
local isDebug = y3.game.is_debug_mode()
--- ### 颜色规则
-- * 使用#匹配一个颜色单词，之后的句子产生颜色变化，直到空格结束
-- 
--  角色 #red xxxx 发起攻击，对 #red xxxx 造成 #red 100  点伤害
-- 
--  以上 `xxxx` 和 `100` 都将变成红色
-- 
-- * 使用$匹配一个颜色单词，之后整行都产生颜色变化
-- 
--  例如 $red 攻击力+10
--  则整行颜色为红色
____exports.Report = __TS__Class()
local Report = ____exports.Report
Report.name = "Report"
function Report.prototype.____constructor(self, fight)
    self.fight = fight
    self.id = __TS__NumberToString(
        Date:now(),
        36
    )
    self.enabled = true
    self.dumping = false
end
function Report.prototype.group(self, groupName, message)
    local data = {id = self.id, group = groupName, message = message}
    debugRoomClient:post(
        Socket_ID.Group,
        JSON:stringify(data)
    )
end
function Report.prototype.groupEnd(self, groupName)
    local data = {id = self.id, group = groupName}
    debugRoomClient:post(
        Socket_ID.GroupEnd,
        JSON:stringify(data)
    )
end
function Report.prototype.log(self, message, data)
    local ddddd = {
        id = self.id,
        message = (("#gray " .. tostring(global.frameCount)) .. ": ") .. message,
        data = data
    }
    debugRoomClient:post(
        Socket_ID.GroupLog,
        JSON:stringify(ddddd)
    )
end
function Report.prototype.using(self, logic)
    if isDebug and self.enabled and not self.dumping then
        logic(nil, self)
    end
end
function Report.prototype._dumpUnit(self, unit)
    local strBuilder = {}
    strBuilder[#strBuilder + 1] = ((unit:getName() .. "(") .. tostring(unit.id)) .. ")"
    ____exports.Report:dumpValues(unit, strBuilder)
    ____exports.Report:dumpProperties(unit, strBuilder)
    ____exports.Report:dumpStatus(unit, strBuilder)
    if #unit.activeData.tags > 0 then
        strBuilder[#strBuilder + 1] = "标签：" .. table.concat(unit.activeData.tags, "，")
    end
    local hidden = {}
    local normal = {}
    local command = {}
    local hero = {}
    for k in pairs(unit.skills) do
        local skill = unit.skills[k]
        if skill.type == "隐藏" then
            hidden[#hidden + 1] = skill
        elseif skill.type == "普通" then
            normal[#normal + 1] = skill
        elseif skill.type == "命令" then
            command[#command + 1] = skill
        elseif skill.type == "英雄" then
            hero[#hero + 1] = skill
        end
    end
    for formulaId in pairs(self.fight.formula) do
        local func = self.fight.formula[formulaId]
        strBuilder[#strBuilder + 1] = ((((____exports.Report:getFormulaName(formulaId) .. "(") .. formulaId) .. ")") .. "：") .. tostring(func(nil, unit))
    end
    if #hidden > 0 then
        for ____, sk in ipairs(hidden) do
            ____exports.Report:dumpSkill(sk, strBuilder)
        end
    end
    if #normal > 0 then
        for ____, sk in ipairs(normal) do
            ____exports.Report:dumpSkill(sk, strBuilder)
        end
    end
    if #command > 0 then
        for ____, sk in ipairs(command) do
            ____exports.Report:dumpSkill(sk, strBuilder)
        end
    end
    if #hero > 0 then
        for ____, sk in ipairs(hero) do
            ____exports.Report:dumpSkill(sk, strBuilder)
        end
    end
    return table.concat(strBuilder, "\n")
end
function Report.prototype.dumpUnit(self, unit)
    do
        local function ____catch(e)
            console:error(e)
            return true, ""
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            self.dumping = true
            local newDumpData = self:_dumpUnit(unit)
            if unit._oldDumpData == nil then
                unit._oldDumpData = newDumpData
                return true, newDumpData
            else
                local diff = diffLines(nil, unit._oldDumpData, newDumpData)
                unit._oldDumpData = newDumpData
                if not diff then
                    return true, newDumpData
                end
                return true, table.concat(
                    __TS__ArrayMap(
                        diff,
                        function(____, a) return a.added and "$green " .. a.value or (a.removed and "$red " .. a.value or a.value) end
                    ),
                    ""
                )
            end
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        do
            self.dumping = false
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function Report.prototype.dumpSourceUnits(self, ...)
    local sources = {...}
    local map = {}
    local result = {}
    for ____, source in ipairs(sources) do
        do
            local unit = getUnit(nil, source)
            if map[unit.id] == true then
                goto __continue39
            end
            map[unit.id] = true
            result[#result + 1] = self:dumpUnit(unit)
        end
        ::__continue39::
    end
    return table.concat(result, "\n\n")
end
function Report.prototype.getSourceName(self, source)
    if isEffect(nil, source) then
        if source.source == source.owner then
            return ((((((source.source:getName() .. "(") .. tostring(source.source.id)) .. ").") .. source.config.name) .. "(") .. tostring(source.id)) .. ")"
        else
            return ((((((((((source.source:getName() .. "(") .. tostring(source.source.id)) .. ")/") .. source.owner:getName()) .. "(") .. tostring(source.owner.id)) .. ").") .. source.config.name) .. "(") .. tostring(source.id)) .. ")"
        end
    elseif isSkill(nil, source) or isSimpleSkill(nil, source) then
        return (((source.owner:getName() .. "(") .. tostring(source.owner.id)) .. ").") .. source.skillName
    else
        return ((source:getName() .. "(") .. tostring(source.id)) .. ")"
    end
end
function Report.prototype.dumpSourceUnit(self, source)
    return self:dumpUnit(getUnit(nil, source))
end
Report.dumpProperties = function(____, unit, strBuilder)
end
Report.dumpValues = function(____, unit, strBuilder)
end
Report.dumpStatus = function(____, unit, strBuilder)
end
Report.getPropertyName = function(____, id) return tostring(id) end
Report.getValueName = function(____, id) return tostring(id) end
Report.getStateName = function(____, id) return tostring(id) end
Report.getFormulaName = function(____, id) return tostring(id) end
Report.dumpSkill = function(____, skill, strBuilder)
    local ____strBuilder_3 = strBuilder
    local ____temp_2 = skill.skillName .. "："
    local ____opt_0 = skill.ability
    ____strBuilder_3[#____strBuilder_3 + 1] = ____temp_2 .. tostring((____opt_0 and ____opt_0.handle) ~= nil and skill.ability:get_cd() or -1)
end
return ____exports
