local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 4,["7"] = 4,["8"] = 14,["9"] = 16,["10"] = 17,["11"] = 23,["12"] = 24,["13"] = 26,["14"] = 27,["16"] = 29,["18"] = 16,["19"] = 37,["20"] = 37,["21"] = 37,["22"] = 43,["23"] = 44,["24"] = 45,["26"] = 47,["28"] = 49,["29"] = 43,["30"] = 52,["31"] = 53,["32"] = 53,["33"] = 53,["34"] = 53,["35"] = 54,["36"] = 54,["37"] = 54,["38"] = 54,["39"] = 52,["40"] = 58,["41"] = 59,["42"] = 58,["43"] = 62,["44"] = 63,["45"] = 62,["46"] = 66,["47"] = 67,["48"] = 66,["49"] = 70,["50"] = 71,["51"] = 70,["52"] = 74,["53"] = 75,["54"] = 74,["55"] = 78,["56"] = 79,["57"] = 78,["58"] = 82,["59"] = 83,["60"] = 82,["61"] = 86,["62"] = 87,["63"] = 86,["64"] = 90,["65"] = 91,["66"] = 90,["67"] = 94,["68"] = 95,["69"] = 94,["70"] = 98,["71"] = 99,["72"] = 98,["73"] = 102,["74"] = 103,["75"] = 102,["76"] = 106,["77"] = 107,["78"] = 106,["79"] = 110,["80"] = 111,["81"] = 110,["82"] = 114,["83"] = 115,["84"] = 114,["85"] = 118,["86"] = 119,["87"] = 118,["88"] = 122,["89"] = 123,["90"] = 122,["91"] = 126,["92"] = 127,["93"] = 126,["94"] = 130,["95"] = 131,["96"] = 130,["97"] = 134,["98"] = 135,["99"] = 134,["100"] = 138,["101"] = 139,["102"] = 138,["103"] = 142,["104"] = 143,["105"] = 142,["106"] = 146,["107"] = 147,["108"] = 146,["109"] = 150,["110"] = 151,["111"] = 150,["112"] = 154,["113"] = 155,["114"] = 156,["115"] = 154,["116"] = 162,["117"] = 163,["118"] = 164,["119"] = 165,["120"] = 162,["121"] = 171,["122"] = 172,["123"] = 173,["124"] = 174,["125"] = 176,["126"] = 178,["127"] = 179,["128"] = 171,["129"] = 185,["130"] = 186,["131"] = 185,["132"] = 194,["133"] = 195,["134"] = 194,["135"] = 202,["136"] = 203,["137"] = 202,["138"] = 211,["139"] = 212,["140"] = 211,["141"] = 220,["142"] = 221,["143"] = 220,["144"] = 230,["145"] = 231,["146"] = 232,["147"] = 233,["149"] = 235,["150"] = 236,["152"] = 238,["153"] = 239,["154"] = 241,["155"] = 242,["157"] = 244,["159"] = 247,["160"] = 230,["161"] = 256,["162"] = 257,["163"] = 258,["164"] = 259,["166"] = 261,["167"] = 262,["169"] = 264,["170"] = 265,["171"] = 267,["172"] = 269,["173"] = 270,["175"] = 272,["177"] = 275,["178"] = 256,["179"] = 281,["180"] = 282,["181"] = 281,["182"] = 288,["183"] = 289,["184"] = 288,["185"] = 296,["186"] = 297,["187"] = 296,["188"] = 304,["189"] = 305,["190"] = 304,["191"] = 313,["192"] = 314,["193"] = 315,["194"] = 316,["196"] = 318,["197"] = 319,["199"] = 321,["200"] = 322,["201"] = 324,["202"] = 326,["203"] = 328,["204"] = 313,["205"] = 336,["206"] = 337,["207"] = 338,["208"] = 339,["210"] = 341,["211"] = 342,["213"] = 344,["214"] = 345,["215"] = 346,["216"] = 348,["217"] = 336,["218"] = 351,["219"] = 352,["220"] = 351,["221"] = 355,["222"] = 356,["223"] = 355,["224"] = 359,["225"] = 360,["226"] = 359,["227"] = 363,["228"] = 364,["229"] = 363,["230"] = 368});
local ____exports = {}
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local TIME_OFFSET = 0
local function getServerTime(self)
    local init_time_stamp = GameAPI.get_game_init_time_stamp()
    local runned_sec, runned_ms = math.modf(GameAPI.get_cur_game_time():float())
    local time_stamp = init_time_stamp + runned_sec
    if debugEnv.enabled then
        return time_stamp * 1000 + TIME_OFFSET
    else
        return time_stamp * 1000
    end
end
____exports.Date = __TS__Class()
local Date = ____exports.Date
Date.name = "Date"
function Date.prototype.____constructor(self, time)
    if time ~= nil then
        self._time = time
    else
        self._time = getServerTime(nil)
    end
    self:refreshDate()
end
function Date.prototype.refreshDate(self)
    self._date = os.date(
        "*t",
        math.floor(self._time / 1000)
    )
    self._utcDate = os.date(
        "!*t",
        math.floor(self._time / 1000)
    )
end
function Date.prototype.__tostring(self)
    return (((((((((tostring(self._date.year) .. "/") .. tostring(self._date.month)) .. "/") .. tostring(self._date.day)) .. " ") .. tostring(self._date.hour)) .. ":") .. tostring(self._date.min)) .. ":") .. tostring(self._date.sec)
end
function Date.prototype.toDateString(self)
    return (((tostring(self._date.year) .. "/") .. tostring(self._date.month)) .. "/") .. tostring(self._date.day)
end
function Date.prototype.toTimeString(self)
    return (((tostring(self._date.hour) .. ":") .. tostring(self._date.min)) .. ":") .. tostring(self._date.sec)
end
function Date.prototype.toLocaleString(self)
    return (((((((((tostring(self._date.year) .. "/") .. tostring(self._date.month)) .. "/") .. tostring(self._date.day)) .. " ") .. tostring(self._date.hour)) .. ":") .. tostring(self._date.min)) .. ":") .. tostring(self._date.sec)
end
function Date.prototype.toLocaleDateString(self)
    return (((tostring(self._date.year) .. "/") .. tostring(self._date.month)) .. "/") .. tostring(self._date.day)
end
function Date.prototype.toLocaleTimeString(self)
    return (((tostring(self._date.hour) .. ":") .. tostring(self._date.min)) .. ":") .. tostring(self._date.sec)
end
function Date.prototype.valueOf(self)
    return self._time
end
function Date.prototype.getTime(self)
    return math.floor(self._time)
end
function Date.prototype.getFullYear(self)
    return self._date.year
end
function Date.prototype.getUTCFullYear(self)
    return self._utcDate.year
end
function Date.prototype.getMonth(self)
    return self._date.month - 1
end
function Date.prototype.getUTCMonth(self)
    return self._utcDate.month - 1
end
function Date.prototype.getDate(self)
    return self._date.day
end
function Date.prototype.getUTCDate(self)
    return self._utcDate.day
end
function Date.prototype.getDay(self)
    return self._date.wday - 1
end
function Date.prototype.getUTCDay(self)
    return self._utcDate.wday - 1
end
function Date.prototype.getHours(self)
    return self._date.hour
end
function Date.prototype.getUTCHours(self)
    return self._utcDate.hour
end
function Date.prototype.getMinutes(self)
    return self._date.min
end
function Date.prototype.getUTCMinutes(self)
    return self._utcDate.min
end
function Date.prototype.getSeconds(self)
    return self._date.sec
end
function Date.prototype.getUTCSeconds(self)
    return self._utcDate.sec
end
function Date.prototype.getMilliseconds(self)
    return self._time % 1000
end
function Date.prototype.getUTCMilliseconds(self)
    return self._time % 1000
end
function Date.prototype.getTimezoneOffset(self)
    local timeZone = os.time(self._utcDate) - os.time(self._date)
    return timeZone / 60
end
function Date.prototype.setTime(self, time)
    self._time = time
    self:refreshDate()
    return time
end
function Date.prototype.setMilliseconds(self, ms)
    local currentSecond = math.floor(self._time / 1000)
    local second = math.floor(ms / 1000)
    local m = ms % 1000
    self._time = (second + currentSecond) * 1000 + m
    self:refreshDate()
    return self._time
end
function Date.prototype.setUTCMilliseconds(self, ms)
    return self:setMilliseconds(ms)
end
function Date.prototype.setSeconds(self, sec, ms)
    return self:setHours(self._date.hour, self._date.min, sec, ms)
end
function Date.prototype.setUTCSeconds(self, sec, ms)
    return self:setUTCHours(self._utcDate.hour, self._utcDate.min, sec, ms)
end
function Date.prototype.setMinutes(self, min, sec, ms)
    return self:setHours(self._utcDate.hour, min, sec, ms)
end
function Date.prototype.setUTCMinutes(self, min, sec, ms)
    return self:setUTCHours(self._utcDate.hour, min, sec, ms)
end
function Date.prototype.setHours(self, hours, min, sec, ms)
    self._date.hour = hours
    if min ~= nil then
        self._date.min = min
    end
    if sec ~= nil then
        self._date.sec = sec
    end
    local time = os.time(self._date)
    self._time = time * 1000 + self._time % 1000
    if ms ~= nil then
        self:setTime(ms)
    else
        self:refreshDate()
    end
    return self._time
end
function Date.prototype.setUTCHours(self, hours, min, sec, ms)
    self._utcDate.hour = hours
    if min ~= nil then
        self._utcDate.min = min
    end
    if sec ~= nil then
        self._utcDate.sec = sec
    end
    local time = os.time(self._utcDate)
    self._time = time * 1000 + self._time % 1000
    self._time = self._time - self:getTimezoneOffset() * 60 * 1000
    if ms ~= nil then
        self:setTime(ms)
    else
        self:refreshDate()
    end
    return self._time
end
function Date.prototype.setDate(self, date)
    return self:setFullYear(self._date.year, self._date.month - 1, date)
end
function Date.prototype.setUTCDate(self, date)
    return self:setUTCFullYear(self._utcDate.year, self._utcDate.month - 1, date)
end
function Date.prototype.setMonth(self, month, date)
    return self:setFullYear(self._date.year, month, date)
end
function Date.prototype.setUTCMonth(self, month, date)
    return self:setUTCFullYear(self._utcDate.year, month, date)
end
function Date.prototype.setFullYear(self, year, month, date)
    self._date.year = year
    if month ~= nil then
        self._date.month = month + 1
    end
    if date ~= nil then
        self._date.day = date
    end
    local time = os.time(self._date)
    self._time = time * 1000 + self._time % 1000
    self._time = self._time - self:getTimezoneOffset() * 60 * 1000
    self:refreshDate()
    return self._time
end
function Date.prototype.setUTCFullYear(self, year, month, date)
    self._utcDate.year = year
    if month ~= nil then
        self._utcDate.month = month + 1
    end
    if date ~= nil then
        self._utcDate.day = date
    end
    local time = os.time(self._utcDate)
    self._time = time * 1000 + self._time % 1000
    self:refreshDate()
    return self._time
end
function Date.prototype.toUTCString(self)
    return (((((((((tostring(self._utcDate.year) .. "-") .. tostring(self._utcDate.month)) .. "-") .. tostring(self._utcDate.day)) .. " ") .. tostring(self._utcDate.hour)) .. ":") .. tostring(self._utcDate.min)) .. ":") .. tostring(self._utcDate.sec)
end
function Date.prototype.toISOString(self)
    return ((((((((((tostring(self._utcDate.year) .. "-") .. tostring(self._utcDate.month)) .. "-") .. tostring(self._utcDate.day)) .. "T") .. tostring(self._utcDate.hour)) .. ":") .. tostring(self._utcDate.min)) .. ":") .. tostring(self._time % 60000 / 1000)) .. "Z"
end
function Date.prototype.toJSON(self, key)
    return self:toISOString()
end
function Date.now(self)
    return getServerTime(nil)
end
_G.Date = ____exports.Date
return ____exports
