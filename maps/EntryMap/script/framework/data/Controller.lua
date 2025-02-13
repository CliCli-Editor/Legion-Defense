local ____lualib = include("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__Promise = ____lualib.__TS__Promise
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["31"] = 47,["32"] = 48,["33"] = 50,["35"] = 51,["36"] = 52,["38"] = 55,["39"] = 58,["40"] = 60,["41"] = 62,["42"] = 63,["44"] = 65,["45"] = 60,["46"] = 68,["47"] = 69,["48"] = 69,["49"] = 70,["50"] = 71,["52"] = 75,["53"] = 76,["54"] = 76,["55"] = 76,["56"] = 77,["57"] = 76,["58"] = 76,["59"] = 80,["60"] = 81,["61"] = 68,["62"] = 84,["63"] = 84,["64"] = 85,["65"] = 86,["67"] = 90,["68"] = 91,["69"] = 91,["70"] = 91,["71"] = 92,["72"] = 91,["73"] = 91,["74"] = 95,["75"] = 96,["76"] = 68,["77"] = 99,["78"] = 99,["79"] = 100,["82"] = 107,["84"] = 107,["85"] = 107,["87"] = 107,["88"] = 107,["89"] = 107,["90"] = 107,["91"] = 107,["92"] = 108,["95"] = 105,["96"] = 105,["97"] = 105,["98"] = 105,["104"] = 104,["108"] = 111,["109"] = 112,["110"] = 112,["111"] = 112,["112"] = 113,["113"] = 112,["114"] = 112,["115"] = 119,["116"] = 122,["118"] = 68,["119"] = 68,["120"] = 127,["121"] = 129,["122"] = 130,["123"] = 130,["124"] = 130,["127"] = 138,["130"] = 133,["131"] = 134,["132"] = 135,["133"] = 135,["134"] = 135,["135"] = 135,["136"] = 136,["142"] = 140,["143"] = 141,["146"] = 131,["149"] = 130,["150"] = 130,["154"] = 146,["155"] = 47,["156"] = 149,["157"] = 150,["158"] = 151,["159"] = 155,["160"] = 156,["161"] = 157,["162"] = 158,["163"] = 159,["164"] = 160,["165"] = 161,["166"] = 162,["170"] = 166,["171"] = 170,["172"] = 171,["175"] = 180,["178"] = 173,["179"] = 174,["180"] = 175,["181"] = 176,["182"] = 175,["189"] = 182,["190"] = 170,["191"] = 185,["192"] = 155,["193"] = 149,["194"] = 189,["195"] = 190,["196"] = 191,["197"] = 192,["198"] = 193,["199"] = 194,["200"] = 195,["201"] = 196,["202"] = 197,["203"] = 199,["204"] = 200,["205"] = 201,["206"] = 202,["207"] = 203,["208"] = 204,["209"] = 206,["210"] = 207,["211"] = 208,["212"] = 209,["213"] = 210,["214"] = 211,["216"] = 213,["219"] = 216,["220"] = 208});
local ____exports = {}
local ____CommandSync = include("framework.data.CommandSync")
local uiEventManager = ____CommandSync.uiEventManager
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
--- 函数可以被异步等待，将会有两种情况
-- 1. 只有发起者需要等待结果，其他客户端被动执行无需等待
-- 2. 所有客户端都将同时执行该函数，需要同时完成并继续
-- 
-- ```typescript
-- 
-- //在controller内部，直接调用
-- let result = xxController.test();
-- 
-- //客户端之间同步执行，多个客户端都需要在同一时间调用，可以等待调用完成，但无法拿到执行结果
-- await xxController.test.executeTogether();
-- 
-- //单独执行，其他客户端将静默执行，发起者可以监听执行结果
-- let result = await xxController.test.execute();
-- 
-- ```
function ____exports.make(self, clazz)
    local controller = __TS__New(clazz)
    for key, value in pairs(clazz.prototype) do
        do
            if key == "constructor" or type(value) ~= "function" or __TS__StringStartsWith(key, "_") then
                goto __continue3
            end
            local eventName = (clazz.name .. ".") .. key
            local oldFunc = value
            local meta = {__call = function(self, ...)
                if syncData.inSync <= 0 then
                    error("不在同步逻辑中，无法直接调用该方法", 0)
                end
                return oldFunc(...)
            end}
            local funProperty = {
                executeFromObserver = function(self, ...)
                    local args = {...}
                    if syncData.inController > 0 then
                        error("Controller中，无需调用execute，可直接调用方法", 0)
                    end
                    local _resolve
                    local promise = __TS__New(
                        __TS__Promise,
                        function(____, resolve)
                            _resolve = resolve
                        end
                    )
                    uiEventManager:execute(eventName, args, _resolve, false)
                    return promise
                end,
                execute = function(self, ...)
                    local args = {...}
                    if syncData.inController > 0 then
                        error("Controller中，无需调用execute，可直接调用方法", 0)
                    end
                    local _resolve
                    local promise = __TS__New(
                        __TS__Promise,
                        function(____, resolve)
                            _resolve = resolve
                        end
                    )
                    uiEventManager:execute(eventName, args, _resolve, true)
                    return promise
                end,
                executeTogether = function(self, ...)
                    local args = {...}
                    if syncData.inSync > 0 or syncData.inController > 0 then
                        do
                            local function ____catch(e)
                                local ____console_error_1 = console.error
                                local ____array_0 = __TS__SparseArrayNew(
                                    eventName,
                                    table.unpack(args)
                                )
                                __TS__SparseArrayPush(____array_0, e)
                                ____console_error_1(
                                    console,
                                    __TS__SparseArraySpread(____array_0)
                                )
                                error(e, 0)
                            end
                            local ____try, ____hasReturned, ____returnValue = pcall(function()
                                return true, __TS__Promise.resolve(oldFunc(
                                    controller,
                                    table.unpack(args)
                                ))
                            end)
                            if not ____try then
                                ____hasReturned, ____returnValue = ____catch(____hasReturned)
                            end
                            if ____hasReturned then
                                return ____returnValue
                            end
                        end
                    else
                        local _resolve
                        local promise = __TS__New(
                            __TS__Promise,
                            function(____, resolve)
                                _resolve = resolve
                            end
                        )
                        uiEventManager:executeTogether(eventName, args, _resolve)
                        return promise
                    end
                end
            }
            setmetatable(funProperty, meta)
            controller[key] = funProperty
            uiEventManager:register(
                eventName,
                function(____, args)
                    do
                        local function ____catch(e)
                            console:error("[trigger]", eventName, e)
                        end
                        local ____try, ____hasReturned, ____returnValue = pcall(function()
                            syncData.inSync = syncData.inSync + 1
                            syncData.inController = syncData.inController + 1
                            local r = oldFunc(
                                controller,
                                table.unpack(args)
                            )
                            return true, r
                        end)
                        if not ____try then
                            ____hasReturned, ____returnValue = ____catch(____hasReturned)
                        end
                        do
                            syncData.inController = syncData.inController - 1
                            syncData.inSync = syncData.inSync - 1
                        end
                        if ____hasReturned then
                            return ____returnValue
                        end
                    end
                end
            )
        end
        ::__continue3::
    end
    return controller
end
local function replaceEventFunc(self, obj, name)
    local oldEvent = obj[name]
    obj[name] = function(...)
        local args = {...}
        local pos = -1
        local cb = args[#args + pos + 1]
        if type(cb) ~= "function" then
            pos = -2
            cb = args[#args + pos + 1]
            if type(cb) ~= "function" then
                console:error("事件回调函数异常，最后一个和倒数第二个参数都不是函数")
                return
            end
        end
        args[#args + pos + 1] = function(...)
            local args = {...}
            syncData.inSync = syncData.inSync + 1
            do
                local function ____catch(e)
                    console:error(e)
                end
                local ____try, ____hasReturned = pcall(function()
                    local r = cb(table.unpack(args))
                    if r ~= nil and type(r) == "table" and r.catch ~= nil then
                        r:catch(function(____, e)
                            console:error(e)
                        end)
                    end
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
            syncData.inSync = syncData.inSync - 1
        end
        return oldEvent(table.unpack(args))
    end
end
replaceEventFunc(nil, y3.game, "event")
replaceEventFunc(nil, y3.unit, "event")
replaceEventFunc(nil, y3.area, "event")
replaceEventFunc(nil, y3.timer, "count_loop")
replaceEventFunc(nil, y3.timer, "count_loop_frame")
replaceEventFunc(nil, y3.timer, "wait")
replaceEventFunc(nil, y3.timer, "wait_frame")
replaceEventFunc(nil, y3.timer, "loop")
replaceEventFunc(nil, y3.timer, "loop_frame")
replaceEventFunc(nil, y3.ltimer, "loop_count")
replaceEventFunc(nil, y3.ltimer, "loop_count_frame")
replaceEventFunc(nil, y3.ltimer, "wait")
replaceEventFunc(nil, y3.ltimer, "wait_frame")
replaceEventFunc(nil, y3.ltimer, "loop")
replaceEventFunc(nil, y3.ltimer, "loop_frame")
local oldRandom = math.random
local isDebug = y3.game.is_debug_mode()
math.random = function(...)
    if syncData.inSync <= 0 then
        if isDebug then
            error("在非同步逻辑中调用随机数", 0)
        else
            console:error("在非同步逻辑中调用随机数")
        end
    end
    return oldRandom(...)
end
return ____exports
