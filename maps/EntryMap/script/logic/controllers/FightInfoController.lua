local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 2,["12"] = 2,["13"] = 5,["14"] = 5,["15"] = 12});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
____exports.FightInfoController = __TS__Class()
local FightInfoController = ____exports.FightInfoController
FightInfoController.name = "FightInfoController"
function FightInfoController.prototype.____constructor(self)
end
function FightInfoController.prototype.addFightInfo(self, playerId, fightInfo)
end
____exports.fightInfoController = make(nil, ____exports.FightInfoController)
return ____exports
