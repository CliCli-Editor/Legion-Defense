local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["14"] = 10,["15"] = 11,["16"] = 11,["17"] = 11,["18"] = 12,["19"] = 13,["20"] = 14,["23"] = 18,["24"] = 19,["25"] = 20,["27"] = 11,["28"] = 11,["29"] = 10});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
--- 解锁卡池
function ____exports.unlockCardPool(self)
    return _____6267_884C(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerGenreData = player:getSingle(PlayerGenreData)
            if not playerGenreData.isLocked then
                return
            end
            genreController:setLock(self.playerId)
            if not playerGenreData.isLocked then
                self:log(function() return "解锁卡池" end)
            end
        end
    )
end
return ____exports
