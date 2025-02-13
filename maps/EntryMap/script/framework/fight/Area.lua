local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 19,["19"] = 15,["20"] = 16,["21"] = 26,["22"] = 27,["25"] = 29,["26"] = 30,["28"] = 31,["31"] = 33,["33"] = 34,["37"] = 37,["40"] = 39,["42"] = 39,["43"] = 39,["44"] = 39,["46"] = 39,["47"] = 39,["48"] = 39,["50"] = 39,["51"] = 39,["52"] = 39,["54"] = 39,["55"] = 40,["56"] = 41,["58"] = 18,["59"] = 46,["61"] = 47,["62"] = 48,["63"] = 49,["65"] = 51,["67"] = 46,["68"] = 57,["72"] = 58,["73"] = 58,["74"] = 58,["75"] = 59,["76"] = 59,["77"] = 59,["78"] = 59,["79"] = 60,["80"] = 61,["81"] = 62,["82"] = 59,["83"] = 59,["84"] = 64,["85"] = 58,["86"] = 58,["89"] = 57});
local ____exports = {}
local AreaType = AreaType or ({})
AreaType.CIRCLE = 1
AreaType[AreaType.CIRCLE] = "CIRCLE"
AreaType.RECTANGLE = 2
AreaType[AreaType.RECTANGLE] = "RECTANGLE"
____exports.Area = __TS__Class()
local Area = ____exports.Area
Area.name = "Area"
function Area.prototype.____constructor(self, owner, ____type, point, args, openCollision, time)
    self._listener = {}
    self._timerMap = {}
    if not (point.get_x ~= nil) then
        point = y3.point.create(point.x, point.y)
    end
    repeat
        local ____switch4 = ____type
        local ____cond4 = ____switch4 == AreaType.CIRCLE
        if ____cond4 then
            self._area = y3.area.create_circle_area(point, args[1] or 0)
            break
        end
        ____cond4 = ____cond4 or ____switch4 == AreaType.RECTANGLE
        if ____cond4 then
            self._area = y3.area.create_rectangle_area(point, args[1] or 0, args[2] or 0)
            break
        end
        do
            self._area = y3.area.create_circle_area(point, args[1] or 0)
        end
    until true
    local ____self_3 = self._area
    local ____self_3_set_collision_4 = ____self_3.set_collision
    local ____openCollision_0 = openCollision
    if ____openCollision_0 == nil then
        ____openCollision_0 = false
    end
    local ____openCollision_1 = openCollision
    if ____openCollision_1 == nil then
        ____openCollision_1 = false
    end
    local ____openCollision_2 = openCollision
    if ____openCollision_2 == nil then
        ____openCollision_2 = false
    end
    ____self_3_set_collision_4(____self_3, ____openCollision_0, ____openCollision_1, ____openCollision_2)
    if time ~= nil then
        self:finish(time)
    end
end
function Area.prototype.finish(self, time)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(time))
        if self._listener.onFinish ~= nil then
            self._listener.onFinish()
        end
        self._area:remove()
    end)
end
function Area.prototype.awaitTime(self, timeout)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        return ____awaiter_resolve(
            nil,
            __TS__New(
                __TS__Promise,
                function(____, resolve)
                    local t
                    t = y3.ltimer.wait(
                        timeout,
                        function(timer)
                            self._timerMap[t.id] = nil
                            timer:remove()
                            resolve(nil)
                        end
                    )
                    self._timerMap[t.id] = t
                end
            )
        )
    end)
end
return ____exports
