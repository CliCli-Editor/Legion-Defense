local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 6,["8"] = 6,["10"] = 19,["11"] = 20,["12"] = 20,["13"] = 20,["14"] = 21,["15"] = 23,["16"] = 24,["18"] = 27,["19"] = 20,["20"] = 20,["21"] = 19});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
--- 小鳄鱼攻击
function ____exports.petAttack(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local r = petController:cast(self.playerId, 1)
            if r then
                self:log(function() return "小宠物攻击" end)
            end
            return true
        end
    )
end
return ____exports
