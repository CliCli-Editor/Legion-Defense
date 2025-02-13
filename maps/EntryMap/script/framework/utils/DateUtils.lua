local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["11"] = 6,["13"] = 10,["14"] = 12,["15"] = 12,["17"] = 16,["18"] = 12,["19"] = 31,["20"] = 32,["21"] = 33,["22"] = 34,["23"] = 31,["24"] = 40,["25"] = 41,["26"] = 42,["27"] = 40,["28"] = 45,["29"] = 46,["30"] = 47,["31"] = 45,["32"] = 50,["33"] = 51,["34"] = 51,["35"] = 51,["36"] = 51,["37"] = 52,["38"] = 52,["39"] = 52,["40"] = 52,["41"] = 53,["42"] = 50,["43"] = 56,["44"] = 57,["45"] = 57,["46"] = 57,["47"] = 57,["48"] = 58,["49"] = 58,["50"] = 58,["51"] = 58,["52"] = 59,["53"] = 56,["54"] = 73,["55"] = 73,["56"] = 73,["58"] = 74,["59"] = 76,["60"] = 78,["61"] = 79,["62"] = 80,["64"] = 82,["65"] = 83,["67"] = 84,["70"] = 86,["72"] = 87,["75"] = 89,["77"] = 90,["81"] = 93,["85"] = 96,["86"] = 73,["87"] = 99,["88"] = 99,["89"] = 99,["91"] = 100,["92"] = 102,["93"] = 103,["94"] = 103,["95"] = 103,["96"] = 103,["97"] = 104,["98"] = 105,["99"] = 105,["100"] = 105,["101"] = 105,["102"] = 106,["103"] = 107,["104"] = 107,["105"] = 107,["106"] = 107,["108"] = 108,["109"] = 109,["111"] = 110,["114"] = 112,["116"] = 113,["120"] = 116,["124"] = 119,["125"] = 99,["126"] = 122,["127"] = 122,["128"] = 122,["130"] = 123,["131"] = 124,["132"] = 125,["133"] = 126,["134"] = 127,["135"] = 129,["136"] = 131,["137"] = 132,["138"] = 134,["139"] = 135,["140"] = 137,["141"] = 138,["142"] = 140,["143"] = 141,["144"] = 143,["145"] = 144,["146"] = 146,["148"] = 147,["149"] = 149,["150"] = 148,["152"] = 149,["153"] = 150,["154"] = 150,["156"] = 151,["157"] = 151,["162"] = 154,["163"] = 154,["165"] = 155,["166"] = 155,["168"] = 156,["169"] = 156,["171"] = 157,["172"] = 157,["174"] = 158,["175"] = 158,["177"] = 159,["178"] = 159,["183"] = 163,["184"] = 122,["189"] = 19,["190"] = 20,["191"] = 21,["193"] = 23,["201"] = 27,["205"] = 167});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
--- 随便找个日期标定点，代表一周的开始时间
local startWeekMillisecond = 1726416000000
--- 一周的毫秒数
local weekMillisecond = 7 * 24 * 60 * 60 * 1000
local DateUtils = __TS__Class()
DateUtils.name = "DateUtils"
function DateUtils.prototype.____constructor(self)
    self.today = __TS__New(Date)
end
function DateUtils.prototype.getDateKey(self)
    local date = __TS__New(Date)
    local key = date:getFullYear() * 10000 + (date:getMonth() + 1) * 100 + date:getDate()
    return key
end
function DateUtils.prototype.getCurrentWeekIndex(self)
    local weekIndex = math.floor((self.today:getTime() - startWeekMillisecond) / weekMillisecond)
    return weekIndex
end
function DateUtils.prototype.getTodayStr(self)
    local date = __TS__New(Date, self.startWeekDate)
    return (((tostring(date:getFullYear()) .. "/") .. tostring(date:getMonth() + 1)) .. "/") .. tostring(date:getDate())
end
function DateUtils.prototype.getCurrentWeekStr(self)
    local start = __TS__New(
        Date,
        startWeekMillisecond + self:getCurrentWeekIndex() * weekMillisecond
    )
    local ____end = __TS__New(
        Date,
        startWeekMillisecond + self:getCurrentWeekIndex() * weekMillisecond + weekMillisecond - 1
    )
    return (((((((((tostring(start:getFullYear()) .. "/") .. tostring(start:getMonth() + 1)) .. "/") .. tostring(start:getDate())) .. "~") .. tostring(____end:getFullYear())) .. "/") .. tostring(____end:getMonth() + 1)) .. "/") .. tostring(____end:getDate())
end
function DateUtils.prototype.getLastWeekStr(self)
    local start = __TS__New(
        Date,
        startWeekMillisecond + self:getCurrentWeekIndex() * weekMillisecond - weekMillisecond
    )
    local ____end = __TS__New(
        Date,
        startWeekMillisecond + self:getCurrentWeekIndex() * weekMillisecond - 1
    )
    return (((((tostring(start:getMonth() + 1) .. "/") .. tostring(start:getDate())) .. "~") .. tostring(____end:getMonth() + 1)) .. "/") .. tostring(____end:getDate())
end
function DateUtils.prototype.timeStampFormatToYYMMDD(self, timeStamp, ____type)
    if ____type == nil then
        ____type = 1
    end
    local str = ""
    local date = __TS__New(Date, timeStamp)
    local year = date:getFullYear()
    local month = date:getMonth() + 1
    local day = date:getDate()
    repeat
        local ____switch9 = ____type
        local ____cond9 = ____switch9 == 1
        if ____cond9 then
            str = (((tostring(year) .. "/") .. tostring(month)) .. "/") .. tostring(day)
            break
        end
        ____cond9 = ____cond9 or ____switch9 == 2
        if ____cond9 then
            str = (((tostring(year) .. "-") .. tostring(month)) .. "-") .. tostring(day)
            break
        end
        ____cond9 = ____cond9 or ____switch9 == 3
        if ____cond9 then
            str = (((tostring(year) .. ".") .. tostring(month)) .. ".") .. tostring(day)
            break
        end
        do
            str = (((tostring(year) .. "/") .. tostring(month)) .. "/") .. tostring(day)
            break
        end
    until true
    return str
end
function DateUtils.prototype.timeStampFormatToHHMMSS(self, seconds, ____type)
    if ____type == nil then
        ____type = 1
    end
    local str = ""
    local hour = math.floor(seconds / 3600)
    local h = string.format(
        ("%0" .. 2) .. "d",
        tonumber(hour)
    )
    local minute = math.floor((seconds - hour * 3600) / 60)
    local m = string.format(
        ("%0" .. 2) .. "d",
        tonumber(minute)
    )
    local second = math.floor(seconds - hour * 3600 - minute * 60)
    local s = string.format(
        ("%0" .. 2) .. "d",
        tonumber(second)
    )
    repeat
        local ____switch11 = ____type
        local ____cond11 = ____switch11 == 1
        if ____cond11 then
            str = (((h .. ":") .. m) .. ":") .. s
            break
        end
        ____cond11 = ____cond11 or ____switch11 == 2
        if ____cond11 then
            str = (h .. ":") .. m
            break
        end
        do
            str = (((tostring(hour) .. ":") .. tostring(minute)) .. ":") .. tostring(second)
            break
        end
    until true
    return str
end
function DateUtils.prototype.timeStampFormatToYYMMDD_2(self, seconds, ____type)
    if ____type == nil then
        ____type = 0
    end
    local SECONDS_IN_A_YEAR = 31536000
    local SECONDS_IN_A_MONTH = 2592000
    local SECONDS_IN_A_DAY = 86400
    local SECONDS_IN_AN_HOUR = 3600
    local SECONDS_IN_A_MINUTE = 60
    local remainingSeconds = seconds
    local years = math.floor(remainingSeconds / SECONDS_IN_A_YEAR)
    remainingSeconds = remainingSeconds % SECONDS_IN_A_YEAR
    local months = math.floor(remainingSeconds / SECONDS_IN_A_MONTH)
    remainingSeconds = remainingSeconds % SECONDS_IN_A_MONTH
    local days = math.floor(remainingSeconds / SECONDS_IN_A_DAY)
    remainingSeconds = remainingSeconds % SECONDS_IN_A_DAY
    local hours = math.floor(remainingSeconds / SECONDS_IN_AN_HOUR)
    remainingSeconds = remainingSeconds % SECONDS_IN_AN_HOUR
    local minutes = math.floor(remainingSeconds / SECONDS_IN_A_MINUTE)
    local secs = math.floor(remainingSeconds % SECONDS_IN_A_MINUTE)
    local result = ""
    repeat
        local ____switch13 = ____type
        local daysX
        local ____cond13 = ____switch13 == 1
        if ____cond13 then
            daysX = days + months * 30 + years * 365
            if daysX > 0 then
                result = result .. i18n:format("${days}天", {days = daysX})
            end
            if hours > 0 then
                result = result .. i18n:format("${hours}时", {hours = hours})
            end
            break
        end
        do
            if years > 0 then
                result = result .. i18n:format("${years}年", {years = years})
            end
            if months > 0 then
                result = result .. i18n:format("${months}月", {months = months})
            end
            if days > 0 then
                result = result .. i18n:format("${days}天", {days = days})
            end
            if hours > 0 then
                result = result .. i18n:format("${hours}时", {hours = hours})
            end
            if minutes > 0 then
                result = result .. i18n:format("${minutes}分", {minutes = minutes})
            end
            if secs > 0 then
                result = result .. i18n:format("${secs}秒", {secs = secs})
            end
            break
        end
    until true
    return result or i18n:format("${secs}秒", {secs = 0})
end
__TS__SetDescriptor(
    DateUtils.prototype,
    "startWeekDay",
    {get = function(self)
        local d = self.today:getDay()
        if d == 0 then
            return 7
        end
        return d
    end},
    true
)
__TS__SetDescriptor(
    DateUtils.prototype,
    "startWeekDate",
    {get = function(self)
        return self.today:getDate()
    end},
    true
)
____exports.dateUtils = __TS__New(DateUtils)
return ____exports
