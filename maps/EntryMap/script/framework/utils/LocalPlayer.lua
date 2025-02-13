local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["17"] = 22,["18"] = 23,["19"] = 24,["20"] = 25,["21"] = 26,["23"] = 22,["24"] = 30,["25"] = 31,["26"] = 30,["27"] = 35,["29"] = 40,["30"] = 40,["32"] = 40,["37"] = 42,["38"] = 43,["40"] = 45,["48"] = 49,["49"] = 50,["51"] = 52,["59"] = 56,["67"] = 60,["71"] = 64});
local ____exports = {}
local ____RoleStatus = include("logic.models.RoleStatus")
local RoleStatus = ____RoleStatus.RoleStatus
local RoleType = ____RoleStatus.RoleType
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SyncCounter = include("framework.data.SyncCounter")
local isInController = ____SyncCounter.isInController
local localPlayer = vue.reactive({localPlayerId = y3.player.LOCAL_PLAYER.id, localPlayer = y3.player.LOCAL_PLAYER})
--- 强行设置本地玩家id，可以使
function ____exports.switchLocalPlayer(self, id)
    local player = y3.player.get_by_id(id)
    if player ~= nil then
        localPlayer.localPlayerId = id
        localPlayer.localPlayer = player
    end
end
function ____exports.isGamePlayer(self, player)
    return player:get_team_id() < 30 and player:get_state() == RoleStatus.PLAYING and player:get_controller() == RoleType.USER
end
local isObserver = not ____exports.isGamePlayer(nil, y3.player.LOCAL_PLAYER)
--- 本地玩家
local LOCAL_PLAYER = __TS__Class()
LOCAL_PLAYER.name = "LOCAL_PLAYER"
function LOCAL_PLAYER.prototype.____constructor(self)
end
__TS__SetDescriptor(
    LOCAL_PLAYER.prototype,
    "PLAYER_ID",
    {get = function(self)
        if isInController(nil) then
            error("请勿在Controller中访问本地player", 0)
        end
        return localPlayer.localPlayerId
    end},
    true
)
__TS__SetDescriptor(
    LOCAL_PLAYER.prototype,
    "PLAYER",
    {get = function(self)
        if isInController(nil) then
            error("请勿在Controller中访问本地player", 0)
        end
        return localPlayer.localPlayer
    end},
    true
)
__TS__SetDescriptor(
    LOCAL_PLAYER.prototype,
    "PLAYER_DATA",
    {get = function(self)
        return datas.players[localPlayer.localPlayerId]
    end},
    true
)
__TS__SetDescriptor(
    LOCAL_PLAYER.prototype,
    "IS_OBSERVER",
    {get = function(self)
        return isObserver
    end},
    true
)
____exports.LOCAL = __TS__New(LOCAL_PLAYER)
return ____exports
