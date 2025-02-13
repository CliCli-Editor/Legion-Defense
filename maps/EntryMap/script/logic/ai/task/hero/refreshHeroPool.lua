local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 3,["8"] = 3,["10"] = 11,["11"] = 12,["12"] = 12,["13"] = 12,["14"] = 13,["15"] = 12,["16"] = 12,["17"] = 11});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
--- 刷新英雄卡池
function ____exports.refreshHeroPool(self)
    return _____6267_884C(
        nil,
        function()
            playerController:refreshPlayerHero(self.playerId)
        end
    )
end
return ____exports
