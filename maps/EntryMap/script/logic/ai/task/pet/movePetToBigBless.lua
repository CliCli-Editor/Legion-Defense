local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 3,["8"] = 3,["9"] = 4,["10"] = 4,["11"] = 5,["12"] = 5,["14"] = 13,["15"] = 14,["16"] = 14,["17"] = 14,["18"] = 15,["19"] = 17,["20"] = 19,["21"] = 19,["22"] = 19,["23"] = 19,["24"] = 24,["25"] = 24,["26"] = 24,["27"] = 24,["28"] = 24,["29"] = 24,["30"] = 24,["31"] = 14,["32"] = 14,["33"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
--- 随机移动小宠物
function ____exports.movePetToBigBless(self, params)
    return _____6267_884C(
        nil,
        function()
            local pos = random:randomList(mapConfig["大祝福选择区域"])
            local center = y3.area.get_circle_by_res_id(pos):get_center_point()
            local offset = {
                x = (random:random() - 0.5) * 50,
                y = (random:random() - 0.5) * 50
            }
            petController:moveToByAI(
                self.playerId,
                y3.point.create(
                    center:get_x() + offset.x,
                    center:get_y() + offset.y
                )
            )
        end
    )
end
return ____exports
