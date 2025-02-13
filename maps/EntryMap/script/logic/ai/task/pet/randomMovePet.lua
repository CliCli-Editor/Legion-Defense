local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 6,["10"] = 6,["11"] = 8,["12"] = 8,["14"] = 15,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 17,["19"] = 19,["20"] = 20,["21"] = 21,["22"] = 23,["23"] = 24,["24"] = 25,["25"] = 26,["26"] = 27,["27"] = 29,["28"] = 30,["29"] = 32,["30"] = 32,["31"] = 32,["32"] = 32,["33"] = 16,["34"] = 16,["35"] = 15});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
--- 随机移动小宠物
function ____exports.randomMovePet(self, params)
    return _____6267_884C(
        nil,
        function()
            local petData = datas.players[self.playerId]:getSingle(PetData)
            local pos = petData.y3Unit:get_point()
            local randomDistance = 1000
            local randomAngle = (math.random() - 0.5) * params.angleRange
            local fromAngle = petData.y3Unit:get_facing()
            local toAngle = fromAngle + randomAngle
            local vx = math.sin(toAngle / 180 * math.pi)
            local vy = math.cos(toAngle / 180 * math.pi)
            local distance = randomDistance / 2 + math.random() * randomDistance / 2
            local x = pos:get_x() + vx * distance
            local y = pos:get_y() + vy * distance
            petController:moveToByAI(
                self.playerId,
                y3.point.create(x, y)
            )
        end
    )
end
return ____exports
