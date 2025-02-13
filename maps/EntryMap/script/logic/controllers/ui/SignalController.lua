local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 4,["10"] = 4,["12"] = 4,["13"] = 6,["14"] = 7,["15"] = 7,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 6,["21"] = 16,["22"] = 17,["23"] = 16,["24"] = 25,["25"] = 26,["26"] = 25,["27"] = 34,["28"] = 35,["29"] = 34,["30"] = 43,["31"] = 44,["32"] = 43,["33"] = 53,["34"] = 54,["35"] = 53,["36"] = 62,["37"] = 63,["38"] = 62,["39"] = 71,["40"] = 72,["41"] = 71,["42"] = 80,["43"] = 81,["44"] = 80,["45"] = 90,["46"] = 91,["47"] = 90,["48"] = 99,["49"] = 100,["50"] = 99,["51"] = 108,["52"] = 109,["53"] = 108,["54"] = 117,["55"] = 118,["56"] = 117,["57"] = 123});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
____exports.SignalController = __TS__Class()
local SignalController = ____exports.SignalController
SignalController.name = "SignalController"
function SignalController.prototype.____constructor(self)
end
function SignalController.prototype.send_signal(self, playerId, ____type, point, visible_enum)
    y3.game.send_signal(
        y3.player.get_by_id(playerId),
        ____type,
        point,
        visible_enum
    )
end
function SignalController.prototype.send_normal_signal_showMy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["普通"], point, y3.const.VisibleType["自己"])
end
function SignalController.prototype.send_normal_signal_showOur(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["普通"], point, y3.const.VisibleType["友方"])
end
function SignalController.prototype.send_normal_signal_showAll(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["普通"], point, y3.const.VisibleType["全体"])
end
function SignalController.prototype.send_normal_signal_showEnemy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["普通"], point, y3.const.VisibleType["敌方"])
end
function SignalController.prototype.send_yellow_signal_showMy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["黄色"], point, y3.const.VisibleType["自己"])
end
function SignalController.prototype.send_yellow_signal_showOur(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["黄色"], point, y3.const.VisibleType["友方"])
end
function SignalController.prototype.send_yellow_signal_showAll(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["黄色"], point, y3.const.VisibleType["全体"])
end
function SignalController.prototype.send_yellow_signal_showEnemy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["黄色"], point, y3.const.VisibleType["敌方"])
end
function SignalController.prototype.send_blue_signal_showMy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["蓝色"], point, y3.const.VisibleType["自己"])
end
function SignalController.prototype.send_blue_signal_showOur(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["蓝色"], point, y3.const.VisibleType["友方"])
end
function SignalController.prototype.send_blue_signal_showAll(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["蓝色"], point, y3.const.VisibleType["全体"])
end
function SignalController.prototype.send_blue_signal_showEnemy(self, playerId, point)
    self:send_signal(playerId, y3.const.SignalType["蓝色"], point, y3.const.VisibleType["敌方"])
end
____exports.signalController = make(nil, ____exports.SignalController)
return ____exports
