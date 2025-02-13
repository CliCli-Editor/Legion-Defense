local ____lualib = include("lualib_bundle")
local __TS__ArrayJoin = ____lualib.__TS__ArrayJoin
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 6,["11"] = 6,["12"] = 9,["13"] = 9,["15"] = 15,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 17,["20"] = 18,["21"] = 19,["22"] = 19,["23"] = 19,["24"] = 19,["25"] = 19,["26"] = 16,["27"] = 16,["28"] = 15});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____BlessController = include("logic.controllers.BlessController")
local blessController = ____BlessController.blessController
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 刷新祝福
function ____exports.refreshBless(self, params)
    return _____6267_884C(
        nil,
        function()
            local player = datas.players[self.playerId]:getSingle(PlayerData)
            blessController:refresh(self.playerId, true)
            self:log(function()
                local ____tostring_2 = tostring
                local ____opt_0 = player.canSelBless
                return "刷新祝福 " .. ____tostring_2(____opt_0 and __TS__ArrayJoin(player.canSelBless, ","))
            end)
        end
    )
end
return ____exports
