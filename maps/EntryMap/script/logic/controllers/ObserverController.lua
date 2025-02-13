local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["19"] = 5,["20"] = 6,["21"] = 8,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 12,["28"] = 13,["29"] = 14,["30"] = 15,["31"] = 16,["32"] = 17,["34"] = 19,["35"] = 20,["36"] = 21,["39"] = 6,["40"] = 27});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
____exports.ObserverController = __TS__Class()
local ObserverController = ____exports.ObserverController
ObserverController.name = "ObserverController"
function ObserverController.prototype.____constructor(self)
end
function ObserverController.prototype.switch(self, playerId)
    console:log("刷新敌对关系")
    local judge = y3.player.get_by_id(PlayerId.JUDGE)
    local ____array_0 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_0, PlayerId.LEFT_KING, PlayerId.RIGHT_KING)
    local list = {__TS__SparseArraySpread(____array_0)}
    local king = player2King[playerId]
    for ____, id in ipairs(list) do
        local player = y3.player.get_by_id(id)
        if king == player2King[id] then
            player:set_hostility(judge, false)
            judge:set_hostility(player, false)
            console:log(id, false)
        else
            player:set_hostility(judge, true)
            judge:set_hostility(player, true)
            console:log(id, true)
        end
    end
end
____exports.observerController = make(nil, ____exports.ObserverController)
return ____exports
