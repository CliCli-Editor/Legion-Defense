local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySetLength = ____lualib.__TS__ArraySetLength
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 3,["12"] = 4,["13"] = 5,["14"] = 7,["15"] = 8,["16"] = 9,["17"] = 10,["18"] = 13,["19"] = 13,["20"] = 13,["22"] = 15,["23"] = 13,["24"] = 19,["25"] = 20,["26"] = 20,["27"] = 20,["28"] = 21,["29"] = 20,["30"] = 20,["31"] = 23,["32"] = 19,["33"] = 29,["34"] = 30,["35"] = 31,["36"] = 31,["37"] = 32,["38"] = 31,["39"] = 35,["40"] = 29,["41"] = 45,["42"] = 46,["43"] = 47,["44"] = 48,["45"] = 49,["46"] = 50,["47"] = 51,["50"] = 57,["51"] = 58,["52"] = 59,["53"] = 50,["54"] = 61,["56"] = 63,["57"] = 63,["58"] = 65,["59"] = 45,["60"] = 67,["61"] = 68,["62"] = 69,["63"] = 70,["64"] = 71,["65"] = 72,["66"] = 73,["67"] = 74,["70"] = 77,["71"] = 78,["72"] = 79,["73"] = 73,["74"] = 81,["76"] = 83,["77"] = 83,["78"] = 85,["79"] = 67,["80"] = 96,["81"] = 97,["82"] = 97,["83"] = 97,["86"] = 119,["87"] = 120,["90"] = 99,["91"] = 100,["92"] = 100,["93"] = 100,["94"] = 100,["95"] = 101,["96"] = 102,["97"] = 103,["98"] = 104,["100"] = 106,["103"] = 106,["104"] = 107,["105"] = 106,["108"] = 110,["110"] = 100,["111"] = 100,["112"] = 100,["113"] = 112,["114"] = 113,["115"] = 114,["116"] = 115,["118"] = 100,["119"] = 100,["125"] = 97,["126"] = 97,["127"] = 96});
local ____exports = {}
local syncWatch = {immediate = false, flush = "sync"}
local preWatch = {immediate = false, flush = "pre"}
local syncImmediateWatch = {immediate = true, flush = "sync"}
local preImmediateWatch = {immediate = true, flush = "pre"}
local syncWatchDeep = {immediate = false, flush = "sync", deep = true}
local preWatchDeep = {immediate = false, flush = "pre", deep = true}
local syncImmediateWatchDeep = {immediate = true, flush = "sync", deep = true}
local preImmediateWatchDeep = {immediate = true, flush = "pre", deep = true}
____exports.Watcher = __TS__Class()
local Watcher = ____exports.Watcher
Watcher.name = "Watcher"
function Watcher.prototype.____constructor(self)
    self._watchList = {}
end
function Watcher.prototype.clearWatcher(self)
    __TS__ArrayForEach(
        self._watchList,
        function(____, watchStop)
            watchStop(nil)
        end
    )
    __TS__ArraySetLength(self._watchList, 0)
end
function Watcher.prototype.compute(self, compute)
    local c = vue.computed(compute)
    local ____self__watchList_0 = self._watchList
    ____self__watchList_0[#____self__watchList_0 + 1] = function()
        vue.stopComputed(c)
    end
    return c
end
function Watcher.prototype.watch(self, compute, cb, sync, immediate, onWatchStop)
    local watchStop = vue.watch(compute, cb, sync and (immediate and syncImmediateWatch or syncWatch) or (immediate and preImmediateWatch or preWatch))
    if onWatchStop then
        local oldWatchStop = watchStop
        local isCall = false
        local function newWatchStop()
            if isCall then
                return
            end
            oldWatchStop(nil)
            onWatchStop(nil)
            isCall = true
        end
        watchStop = newWatchStop
    end
    local ____self__watchList_1 = self._watchList
    ____self__watchList_1[#____self__watchList_1 + 1] = watchStop
    return watchStop
end
function Watcher.prototype.watchDeep(self, compute, cb, sync, immediate, onWatchStop)
    local obj = sync and (immediate and syncImmediateWatchDeep or syncWatchDeep) or (immediate and preImmediateWatchDeep or preWatchDeep)
    local watchStop = vue.watch(compute, cb, obj)
    if onWatchStop then
        local oldWatchStop = watchStop
        local isCall = false
        local function newWatchStop()
            if isCall then
                return
            end
            oldWatchStop(nil)
            onWatchStop(nil)
            isCall = true
        end
        watchStop = newWatchStop
    end
    local ____self__watchList_2 = self._watchList
    ____self__watchList_2[#____self__watchList_2 + 1] = watchStop
    return watchStop
end
function Watcher.prototype.watchOnce(self, compute, checkValue, immediate, sync)
    return __TS__New(
        __TS__Promise,
        function(____, resolve)
            do
                local function ____catch(e)
                    console:error(("watchOnce异常，" .. tostring(e)) .. "，watchOnce将返回undefined")
                    resolve(nil, nil)
                end
                local ____try, ____hasReturned = pcall(function()
                    local activeStopping = false
                    local watchStop = nil
                    watchStop = self:watch(
                        compute,
                        function(____, currentValue, _oldValue)
                            if checkValue(nil, currentValue) then
                                activeStopping = true
                                if watchStop then
                                    watchStop(nil)
                                else
                                    local ____self_3 = __TS__Promise.resolve()
                                    ____self_3["then"](
                                        ____self_3,
                                        function()
                                            local ____ = watchStop and watchStop(nil)
                                        end
                                    )
                                end
                                resolve(nil, currentValue)
                            end
                        end,
                        sync,
                        immediate,
                        function()
                            if not activeStopping then
                                console:log("watchOnce被取消，将返回undefined")
                                resolve(nil, nil)
                            end
                        end
                    )
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end
    )
end
return ____exports
