local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local Set = ____lualib.Set
local __TS__New = ____lualib.__TS__New
local __TS__Delete = ____lualib.__TS__Delete
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 7,["13"] = 7,["14"] = 7,["16"] = 9,["17"] = 11,["18"] = 12,["19"] = 7,["20"] = 17,["21"] = 18,["22"] = 19,["23"] = 20,["24"] = 20,["25"] = 20,["27"] = 22,["28"] = 17,["29"] = 28,["30"] = 29,["31"] = 30,["34"] = 33,["35"] = 34,["36"] = 35,["37"] = 36,["40"] = 39,["41"] = 39,["42"] = 39,["43"] = 39,["45"] = 41,["46"] = 41,["47"] = 41,["48"] = 41,["49"] = 43,["50"] = 44,["52"] = 46,["54"] = 28,["55"] = 53,["56"] = 54,["57"] = 55,["58"] = 56,["59"] = 56,["60"] = 56,["62"] = 58,["63"] = 53,["64"] = 66,["65"] = 67,["66"] = 68,["69"] = 71,["70"] = 72,["71"] = 73,["72"] = 74,["75"] = 78,["78"] = 76,["84"] = 80,["85"] = 81,["89"] = 85,["90"] = 86,["91"] = 66});
local ____exports = {}
____exports.EventTarget = __TS__Class()
local EventTarget = ____exports.EventTarget
EventTarget.name = "EventTarget"
function EventTarget.prototype.____constructor(self)
    self.eventMap = {}
    self.inEmitting = false
    self.inEmittingRemoveSet = __TS__New(Set)
end
function EventTarget.prototype.on(self, ____type, callback)
    local list = self.eventMap[tostring(____type) .. ""]
    if not list then
        local ____temp_0 = {}
        self.eventMap[tostring(____type) .. ""] = ____temp_0
        list = ____temp_0
    end
    list[#list + 1] = {type = ____type, callback = callback}
end
function EventTarget.prototype.off(self, ____type, callback)
    local list = self.eventMap[tostring(____type) .. ""]
    if not list then
        return
    end
    if not callback then
        if self.inEmitting then
            for ____, d in ipairs(list) do
                self.inEmittingRemoveSet:add(d)
            end
        end
        __TS__Delete(
            self.eventMap,
            tostring(____type) .. ""
        )
    else
        local index = __TS__ArrayFindIndex(
            list,
            function(____, a) return a.callback == callback end
        )
        if self.inEmitting then
            self.inEmittingRemoveSet:add(list[index + 1])
        end
        __TS__ArraySplice(list, index, 1)
    end
end
function EventTarget.prototype.once(self, ____type, callback)
    local list = self.eventMap[tostring(____type) .. ""]
    if not list then
        local ____temp_1 = {}
        self.eventMap[tostring(____type) .. ""] = ____temp_1
        list = ____temp_1
    end
    list[#list + 1] = {type = ____type, callback = callback, once = true}
end
function EventTarget.prototype.emit(self, ____type, data)
    local list = self.eventMap[tostring(____type) .. ""]
    if not list then
        return
    end
    self.inEmitting = true
    local l = __TS__ArraySlice(list)
    for ____, d in ipairs(l) do
        if not self.inEmittingRemoveSet:has(d) then
            do
                local function ____catch(e)
                    console:error(e)
                end
                local ____try, ____hasReturned = pcall(function()
                    d:callback(data)
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
            if d.once then
                self:off(____type, d.callback)
            end
        end
    end
    self.inEmitting = false
    self.inEmittingRemoveSet:clear()
end
return ____exports
