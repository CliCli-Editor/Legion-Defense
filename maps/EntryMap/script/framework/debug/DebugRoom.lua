local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayJoin = ____lualib.__TS__ArrayJoin
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 3,["9"] = 3,["10"] = 3,["11"] = 5,["12"] = 5,["13"] = 12,["14"] = 16,["15"] = 21,["16"] = 28,["17"] = 6,["18"] = 5,["19"] = 37,["20"] = 38,["21"] = 37,["22"] = 44,["23"] = 45,["24"] = 46,["27"] = 50,["28"] = 51,["29"] = 52,["32"] = 48,["38"] = 47,["42"] = 55,["44"] = 44,["45"] = 62,["46"] = 63,["47"] = 63,["48"] = 63,["49"] = 63,["50"] = 63,["51"] = 63,["52"] = 63,["53"] = 62,["54"] = 78,["55"] = 79,["58"] = 83,["59"] = 85,["60"] = 78,["61"] = 91,["62"] = 92,["65"] = 95,["66"] = 96,["67"] = 102,["68"] = 91,["69"] = 108,["70"] = 109,["73"] = 112,["74"] = 113,["75"] = 108,["76"] = 119,["77"] = 120,["80"] = 123,["81"] = 124,["82"] = 119,["87"] = 31,["95"] = 131,["99"] = 166,["100"] = 167,["101"] = 176,["102"] = 176,["103"] = 177,["104"] = 178,["105"] = 179,["106"] = 176,["107"] = 181,["108"] = 182,["109"] = 183,["110"] = 176,["111"] = 185,["112"] = 190,["113"] = 190,["114"] = 193,["115"] = 176,["116"] = 195,["117"] = 196,["118"] = 176,["119"] = 176,["120"] = 199,["121"] = 166,["122"] = 202,["123"] = 203,["124"] = 211,["125"] = 202});
local ____exports = {}
____exports.DebugRoom = __TS__Class()
local DebugRoom = ____exports.DebugRoom
DebugRoom.name = "DebugRoom"
function DebugRoom.prototype.____constructor(self, fight)
    self.fight = fight
    self._isRunning = false
    self._isPaused = false
    self._seed = 0
    self.actionMap = {}
    y3.game.enable_soft_pause()
end
function DebugRoom.prototype.registerAction(self, name, callback)
    self.actionMap[name] = callback
end
function DebugRoom.prototype.runAction(self, data)
    local callback = self.actionMap[data.action]
    if callback ~= nil then
        do
            local function ____catch(e)
                local result = (("练功房执行action异常" .. data.action) .. __TS__ArrayJoin(data.args, ",")) .. tostring(e)
                console:error(result)
                return true, result
            end
            local ____try, ____hasReturned, ____returnValue = pcall(function()
                return true, callback(nil, data)
            end)
            if not ____try then
                ____hasReturned, ____returnValue = ____catch(____hasReturned)
            end
            if ____hasReturned then
                return ____returnValue
            end
        end
    else
        return "Action不存在 " .. data.action
    end
end
function DebugRoom.prototype.genFightRoom(self)
    return {
        isRunning = self._isRunning,
        isPaused = self._isPaused,
        edittime = self:genEdittimeData(),
        runtime = self:genRuntimeData(),
        size = {width = 30000, height = 20000}
    }
end
function DebugRoom.prototype.run(self)
    if self.isRunning then
        return
    end
    self._isRunning = true
    y3.game.resume_soft_pause()
end
function DebugRoom.prototype.stop(self)
    if not self.isRunning then
        return
    end
    y3.game.enable_soft_pause()
    self._isRunning = false
    self:reload()
end
function DebugRoom.prototype.pause(self)
    if not self.isRunning then
        return
    end
    self._isPaused = true
    y3.game.enable_soft_pause()
end
function DebugRoom.prototype.resume(self)
    if not self.isRunning then
        return
    end
    self._isPaused = false
    y3.game.resume_soft_pause()
end
__TS__SetDescriptor(
    DebugRoom.prototype,
    "isRunning",
    {get = function(self)
        return self._isRunning
    end},
    true
)
__TS__SetDescriptor(
    DebugRoom.prototype,
    "battlegroundData",
    {get = function(self)
        return self._battlegroundData
    end},
    true
)
function ____exports.genButton(self, name, action)
    local simpleButton = {name = name, action = action, form = {title = name, tips = "", fields = {}}}
    local obj
    obj = {
        title = function(self, v)
            simpleButton.form.title = v
            return obj
        end,
        tips = function(self, v)
            simpleButton.form.tips = v
            return obj
        end,
        filed = function(self, name, ____type, defaultValue, list)
            local ____simpleButton_form_fields_0 = simpleButton.form.fields
            ____simpleButton_form_fields_0[#____simpleButton_form_fields_0 + 1] = {name = name, type = ____type, defaultValue = defaultValue, list = list}
            return obj
        end,
        get = function(self)
            return simpleButton
        end
    }
    return obj
end
function ____exports.getSimpleButton(self, name, action, data)
    local simpleButton = {name = name, action = action, form = {title = name, tips = "", fields = {{name = "data", type = "readonly", defaultValue = data}}}}
    return simpleButton
end
return ____exports
