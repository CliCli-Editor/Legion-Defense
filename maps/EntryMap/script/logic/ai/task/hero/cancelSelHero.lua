local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 4,["8"] = 4,["10"] = 13,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 17,["15"] = 19,["16"] = 15,["17"] = 15,["18"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
--- 选择英雄
function ____exports.cancelSelHero(self, params)
    return _____6267_884C(
        nil,
        function()
            self:log(function() return "取消英雄选择" end)
            playerController:selHeroCancel(self.playerId)
        end
    )
end
return ____exports
