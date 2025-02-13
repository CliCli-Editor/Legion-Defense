local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 3,["12"] = 9,["13"] = 9,["14"] = 10,["15"] = 11,["16"] = 11,["17"] = 11,["18"] = 11,["19"] = 11,["20"] = 12,["21"] = 14,["22"] = 9,["23"] = 24,["24"] = 25,["25"] = 24,["26"] = 32,["27"] = 33,["28"] = 34,["29"] = 34,["30"] = 34,["31"] = 34,["33"] = 32,["34"] = 8,["39"] = 18,["40"] = 19,["42"] = 21});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6839_8282_70B9 = ____BehaveTree["根节点"]
____exports.PlayerBehaveTreeBase = __TS__Class()
local PlayerBehaveTreeBase = ____exports.PlayerBehaveTreeBase
PlayerBehaveTreeBase.name = "PlayerBehaveTreeBase"
function PlayerBehaveTreeBase.prototype.____constructor(self, playerId)
    self.playerId = playerId
    self.blackboard = New("NPBehave.Blackboard")(NPBehave.Context.Clock, self.globalBlackboard)
    self.root = _____6839_8282_70B9(
        nil,
        self:initTree(),
        self.blackboard
    )
    self:initBlackboard(self.blackboard)
    self.root:Start()
end
function PlayerBehaveTreeBase.prototype.stop(self)
    self.root:CancelWithoutReturnResult()
end
function PlayerBehaveTreeBase.prototype.log(self, cb)
    if ____exports.PlayerBehaveTreeBase.logEnabled then
        console:log(
            ("[AI][" .. tostring(self.playerId)) .. "]",
            cb(nil)
        )
    end
end
PlayerBehaveTreeBase.logEnabled = y3.game.is_debug_mode()
__TS__SetDescriptor(
    PlayerBehaveTreeBase.prototype,
    "globalBlackboard",
    {get = function(self)
        if self._globalBlackboard == nil then
            self._globalBlackboard = NPBehave.Context.GetSharedBlackboard("global")
        end
        return self._globalBlackboard
    end},
    true
)
return ____exports
