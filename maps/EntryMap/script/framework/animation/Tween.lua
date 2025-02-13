local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 1,["15"] = 2,["16"] = 4,["17"] = 1,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["30"] = 8,["31"] = 8,["32"] = 8,["33"] = 8,["34"] = 11,["35"] = 6,["36"] = 14,["37"] = 15,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 18,["43"] = 19,["44"] = 16,["45"] = 16,["46"] = 14,["47"] = 23,["48"] = 24,["49"] = 24,["50"] = 24,["51"] = 24,["52"] = 25,["55"] = 28,["56"] = 23,["57"] = 35,["59"] = 36,["60"] = 37,["62"] = 38,["64"] = 39,["66"] = 40,["67"] = 41,["69"] = 43,["73"] = 46,["76"] = 35,["77"] = 50,["78"] = 51,["79"] = 52,["80"] = 53,["82"] = 55,["83"] = 56,["84"] = 57,["85"] = 58,["87"] = 60,["90"] = 63,["92"] = 65,["94"] = 50,["95"] = 69,["96"] = 70,["97"] = 71,["98"] = 72,["99"] = 73,["100"] = 74,["103"] = 78,["106"] = 76,["112"] = 80,["113"] = 81,["114"] = 82,["117"] = 69,["122"] = 32,["126"] = 88,["127"] = 90});
local ____exports = {}
____exports.Tween = __TS__Class()
local Tween = ____exports.Tween
Tween.name = "Tween"
function Tween.prototype.____constructor(self)
    self.id = 0
    self.jobList = {}
end
Tween.prototype["do"] = function(self, from, to, duration, easing, draw, onCompleted)
    local ____self_0, ____id_1 = self, "id"
    local ____self_id_2 = ____self_0[____id_1] + 1
    ____self_0[____id_1] = ____self_id_2
    local id = ____self_id_2
    local ____self_jobList_3 = self.jobList
    ____self_jobList_3[#____self_jobList_3 + 1] = {
        id = id,
        from = from,
        to = to,
        easing = easing,
        time = 0,
        stopDuration = duration,
        draw = draw,
        onCompleted = onCompleted
    }
    return id
end
function Tween.prototype.start(self)
    local oldTime = os:clock_banned()
    y3.ctimer.loop_frame(
        1,
        function()
            local newTime = os:clock_banned()
            self:update(newTime - oldTime)
            oldTime = newTime
        end
    )
end
function Tween.prototype.stop(self, id)
    local index = __TS__ArrayFindIndex(
        self.jobList,
        function(____, v) return v.id == id end
    )
    if index == -1 then
        return
    end
    __TS__ArraySplice(self.jobList, index, 1)
end
function Tween.prototype.makeDrawValue(self, from, to, percent)
    repeat
        local ____switch10 = __TS__TypeOf(from)
        local ____cond10 = ____switch10 == "number"
        if ____cond10 then
            return from + (to - from) * percent
        end
        ____cond10 = ____cond10 or ____switch10 == "boolean"
        if ____cond10 then
            if percent > 0.5 then
                return to
            else
                return from
            end
        end
        do
            return nil
        end
    until true
end
function Tween.prototype.makeDrawObject(self, from, to, percent, parent)
    if type(from) == "table" then
        if parent == nil then
            parent = {}
        end
        for k in pairs(from) do
            local v = from[k]
            if type(v) == "table" then
                parent[k] = self:makeDrawObject(v, to[k], percent)
            else
                parent[k] = self:makeDrawValue(v, to[k], percent)
            end
        end
        return parent
    else
        return self:makeDrawValue(from, to, percent)
    end
end
function Tween.prototype.update(self, time)
    local list = {table.unpack(self.jobList)}
    for ____, job in ipairs(list) do
        job.time = job.time + time
        local percent = job:easing(math.min(1, job.time / job.stopDuration))
        local obj = self:makeDrawObject(job.from, job.to, percent)
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned = pcall(function()
                job:draw(obj)
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
        if job.time >= job.stopDuration then
            self:stop(job.id)
            local ____ = job.onCompleted and job:onCompleted()
        end
    end
end
__TS__SetDescriptor(
    Tween.prototype,
    "count",
    {get = function(self)
        return #self.jobList
    end},
    true
)
____exports.tween = __TS__New(____exports.Tween)
____exports.tween:start()
return ____exports
