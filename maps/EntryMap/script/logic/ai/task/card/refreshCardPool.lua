local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["14"] = 12,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 14,["19"] = 15,["20"] = 16,["22"] = 19,["23"] = 20,["24"] = 20,["25"] = 20,["26"] = 20,["27"] = 21,["28"] = 13,["29"] = 13,["30"] = 12});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 刷新卡池
function ____exports.refreshCardPool(self)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            if not genreController:checkRefreshCost(self.playerId) then
                self:log(function() return "刷新卡池失败，金币不足" end)
                return false
            end
            genreController:refreshGenreList(self.playerId)
            self:log(function()
                local ____opt_0 = datas.players[self.playerId]:getSingle(PlayerData)
                return "刷新卡池 剩余金币 " .. tostring(____opt_0 and ____opt_0.gold)
            end)
            return true
        end
    )
end
return ____exports
