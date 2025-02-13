local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 3,["12"] = 3,["14"] = 3,["15"] = 4,["16"] = 3});
local ____exports = {}
local ____DBattlepassBase = include("logic.dialogs.activity.DBattlepassBase")
local DBattlepassBase = ____DBattlepassBase.DBattlepassBase
____exports.DS1Battlepass = __TS__Class()
local DS1Battlepass = ____exports.DS1Battlepass
DS1Battlepass.name = "DS1Battlepass"
__TS__ClassExtends(DS1Battlepass, DBattlepassBase)
function DS1Battlepass.prototype.____constructor(self, ...)
    DBattlepassBase.prototype.____constructor(self, ...)
    self.battlePassId = 2
end
return ____exports
