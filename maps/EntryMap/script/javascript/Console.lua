local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__Delete = ____lualib.__TS__Delete
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 6,["17"] = 7,["18"] = 9,["19"] = 11,["20"] = 20,["21"] = 21,["24"] = 22,["25"] = 20,["26"] = 28,["27"] = 28,["28"] = 33,["29"] = 33,["30"] = 33,["32"] = 34,["35"] = 35,["36"] = 36,["37"] = 37,["38"] = 38,["39"] = 33,["40"] = 43,["41"] = 43,["42"] = 43,["44"] = 44,["47"] = 45,["48"] = 43,["49"] = 50,["50"] = 51,["53"] = 52,["54"] = 50,["55"] = 58,["56"] = 59,["59"] = 60,["60"] = 58,["61"] = 65,["62"] = 66,["65"] = 67,["66"] = 65,["67"] = 72,["68"] = 73,["69"] = 72,["70"] = 76,["71"] = 78,["72"] = 80,["73"] = 76,["74"] = 87,["75"] = 87,["76"] = 93,["77"] = 93,["78"] = 99,["79"] = 99,["80"] = 105,["81"] = 106,["84"] = 107,["85"] = 105,["86"] = 112,["87"] = 113,["90"] = 114,["91"] = 112,["92"] = 120,["93"] = 121,["96"] = 122,["97"] = 120,["98"] = 127,["99"] = 127,["100"] = 127,["102"] = 128,["105"] = 129,["106"] = 130,["107"] = 127,["108"] = 135,["109"] = 135,["110"] = 135,["112"] = 136,["115"] = 137,["116"] = 138,["117"] = 139,["120"] = 142,["121"] = 143,["122"] = 145,["123"] = 135,["124"] = 150,["125"] = 150,["126"] = 150,["128"] = 151,["131"] = 152,["132"] = 153,["133"] = 154,["136"] = 157,["137"] = 158,["138"] = 150,["139"] = 163,["140"] = 164,["143"] = 165,["144"] = 165,["145"] = 165,["146"] = 165,["147"] = 163,["148"] = 170,["149"] = 171,["150"] = 170,["151"] = 181,["152"] = 182,["153"] = 181,["154"] = 188,["155"] = 188,["156"] = 195,["157"] = 195,["158"] = 202,["159"] = 202,["160"] = 211,["161"] = 211,["162"] = 220,["163"] = 220,["164"] = 224,["165"] = 225,["166"] = 224,["167"] = 229,["168"] = 230});
local ____exports = {}
local ____global = include("framework.global")
local global = ____global.global
local ____LogAdapter = include("javascript.LogAdapter")
local LogAdapter = ____LogAdapter.LogAdapter
____exports.Console = __TS__Class()
local Console = ____exports.Console
Console.name = "Console"
function Console.prototype.____constructor(self)
    self._countMap = {}
    self._timeMap = {}
    self._enabled = true
end
function Console.prototype.assert(self, value, message, ...)
    if not self._enabled then
        return
    end
    assert(value, message, ...)
end
function Console.prototype.clear(self)
end
function Console.prototype.count(self, label)
    if label == nil then
        label = "default"
    end
    if not self._enabled then
        return
    end
    local count = self._countMap[label] or 0
    count = count + 1
    self._countMap[label] = count
    LogAdapter:log(label .. ":", count)
end
function Console.prototype.countReset(self, label)
    if label == nil then
        label = "default"
    end
    if not self._enabled then
        return
    end
    self._countMap[label] = 0
end
function Console.prototype.debug(self, message, ...)
    if not self._enabled then
        return
    end
    LogAdapter:log(message, ...)
end
function Console.prototype.dir(self, obj, options)
    if not self._enabled then
        return
    end
    LogAdapter:log(obj, options)
end
function Console.prototype.dirxml(self, ...)
    if not self._enabled then
        return
    end
    LogAdapter:log(...)
end
function Console.prototype.error(self, message, ...)
    LogAdapter:error(message, ...)
end
function Console.prototype.warn_no_trace(self, message, ...)
    local warn = log.warn
    warn(global.frameCount, message, ...)
end
function Console.prototype.group(self, ...)
end
function Console.prototype.groupCollapsed(self, ...)
end
function Console.prototype.groupEnd(self)
end
function Console.prototype.info(self, message, ...)
    if not self._enabled then
        return
    end
    LogAdapter:log(message, ...)
end
function Console.prototype.log(self, message, ...)
    if not self._enabled then
        return
    end
    LogAdapter:log(message, ...)
end
function Console.prototype.table(self, tabularData, properties)
    if not self._enabled then
        return
    end
    LogAdapter:log(tabularData, properties)
end
function Console.prototype.time(self, label)
    if label == nil then
        label = "default"
    end
    if not self._enabled then
        return
    end
    local time = python:debug_ns_timestamp()
    self._timeMap[label] = time
end
function Console.prototype.timeEnd(self, label)
    if label == nil then
        label = "default"
    end
    if not self._enabled then
        return
    end
    local t = self._timeMap[label]
    if t == nil then
        LogAdapter:log(("Timer '" .. label) .. "' does not exist")
        return
    end
    local time = python:debug_ns_timestamp()
    __TS__Delete(self._timeMap, label)
    LogAdapter:log(label .. ":", (time - t) / 1000000)
end
function Console.prototype.timeLog(self, label, ...)
    if label == nil then
        label = "default"
    end
    if not self._enabled then
        return
    end
    local t = self._timeMap[label]
    if t == nil then
        LogAdapter:log(("Timer '" .. label) .. "' does not exist")
        return
    end
    local time = python:debug_ns_timestamp()
    LogAdapter:log(label .. ":", (time - t) / 1000000, ...)
end
function Console.prototype.trace(self, message, ...)
    if not self._enabled then
        return
    end
    LogAdapter:trace(
        "[TRACE] " .. tostring(message),
        ...
    )
end
function Console.prototype.warn(self, message, ...)
    LogAdapter:warn(message, ...)
end
function Console.prototype.markTimeline(self, label)
    self:timeStamp(label)
end
function Console.prototype.profile(self, label)
end
function Console.prototype.profileEnd(self, label)
end
function Console.prototype.timeStamp(self, label)
end
function Console.prototype.timeline(self, label)
end
function Console.prototype.timelineEnd(self, label)
end
function Console.prototype.setEnabled(self, enabled)
    self._enabled = enabled
end
_G.Console = ____exports.Console
_G.console = __TS__New(____exports.Console)
return ____exports
