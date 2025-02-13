local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["12"] = 10,["13"] = 11,["14"] = 11,["15"] = 11,["16"] = 12,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 11,["22"] = 11,["23"] = 10});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____KofController = include("logic.controllers.KofController")
local kofController = ____KofController.kofController
--- 刷新英雄卡池
function ____exports.selectKOFSeat(self)
    return _____6267_884C(
        nil,
        function()
            self:log(function() return "KOF 选位置" end)
            kofController:selectSeat(
                self.playerId,
                random:randomList({1, 2, 3})
            )
        end
    )
end
return ____exports
