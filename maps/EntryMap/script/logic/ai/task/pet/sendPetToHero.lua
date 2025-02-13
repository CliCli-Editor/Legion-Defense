local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 6,["10"] = 6,["11"] = 8,["12"] = 8,["13"] = 10,["14"] = 10,["15"] = 11,["16"] = 11,["17"] = 14,["19"] = 19,["20"] = 20,["21"] = 20,["22"] = 20,["23"] = 21,["24"] = 22,["25"] = 24,["26"] = 25,["27"] = 26,["28"] = 27,["29"] = 28,["30"] = 30,["31"] = 31,["32"] = 33,["33"] = 34,["34"] = 36,["35"] = 36,["36"] = 36,["37"] = 36,["38"] = 37,["40"] = 40,["41"] = 20,["42"] = 20,["43"] = 19});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____Status = include("logic.models.Status")
local _____53EA_8DD1_8DEF = ____Status["只跑路"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local distance = 8000 * 8000
--- 小鳄鱼移动到英雄身边
function ____exports.sendPetToHero(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local petData = datas.players[self.playerId]:getSingle(PetData)
            local heroData = datas.players[self.playerId]:getSingle(UnitData)
            local petPos = petData.y3Unit:get_point()
            local heroPos = heroData.entity:getPosition()
            local x = petPos:get_x() - heroPos.x
            local y = petPos:get_y() - heroPos.y
            local length = x * x + y * y
            if length > distance and heroData.entity:isAlive() and not heroData.entity:checkState(_____53EA_8DD1_8DEF) then
                self:log(function() return "瞬移小宠物到英雄身边" end)
                local x = heroPos.x - 800 + 1600 * math.random()
                local y = heroPos.y - 800 + 1600 * math.random()
                petController:blink(
                    self.playerId,
                    y3.point.create(x, y)
                )
                return true
            end
            return false
        end
    )
end
return ____exports
