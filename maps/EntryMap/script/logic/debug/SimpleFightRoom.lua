local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__StringEndsWith = ____lualib.__TS__StringEndsWith
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 4,["11"] = 6,["12"] = 7,["13"] = 7,["14"] = 7,["15"] = 7,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 6,["20"] = 10,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 14,["25"] = 10,["26"] = 12,["27"] = 17,["29"] = 18,["30"] = 19,["32"] = 21,["33"] = 22,["37"] = 25,["38"] = 26,["39"] = 14,["40"] = 30,["41"] = 31,["42"] = 30,["43"] = 36,["44"] = 37,["45"] = 36,["46"] = 43,["47"] = 44,["48"] = 43,["49"] = 46,["50"] = 46,["51"] = 49,["52"] = 49,["53"] = 53,["54"] = 53,["55"] = 56,["56"] = 56,["57"] = 59,["58"] = 59});
local ____exports = {}
local ____DebugRoom = include("framework.debug.DebugRoom")
local DebugRoom = ____DebugRoom.DebugRoom
local Runtime = include("logic.debug.Runtime")
local function bind(self, ____self, name, func)
    ____self:registerAction(
        name,
        function(____, data) return func(
            ____self,
            table.unpack(data.args)
        ) end
    )
end
____exports.SimpleFightRoom = __TS__Class()
local SimpleFightRoom = ____exports.SimpleFightRoom
SimpleFightRoom.name = "SimpleFightRoom"
__TS__ClassExtends(SimpleFightRoom, DebugRoom)
function SimpleFightRoom.prototype.____constructor(self, fight)
    DebugRoom.prototype.____constructor(self, fight)
    self._battlegroundData = {camera = {x = 0, y = 0}, units = {}, seed = 0}
    for k in pairs(Runtime) do
        do
            if not __TS__StringEndsWith(k, "InRuntime") then
                goto __continue5
            end
            local cb = Runtime[k]
            bind(nil, self, k, cb)
        end
        ::__continue5::
    end
    self._isRunning = true
    y3.game.resume_soft_pause()
end
function SimpleFightRoom.prototype.genEdittimeData(self)
    return {battleground = {}, view = {}}
end
function SimpleFightRoom.prototype.genRuntimeData(self)
    return {view = {Runtime:genRuntimeView(self.fight)}}
end
function SimpleFightRoom.prototype.save(self)
    return {}
end
function SimpleFightRoom.prototype.load(self, data)
end
function SimpleFightRoom.prototype.reload(self)
end
function SimpleFightRoom.prototype.run(self)
end
function SimpleFightRoom.prototype.stop(self)
end
function SimpleFightRoom.prototype.clear(self)
end
return ____exports
