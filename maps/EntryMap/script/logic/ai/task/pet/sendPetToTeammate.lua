local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 6,["13"] = 6,["14"] = 8,["15"] = 8,["16"] = 10,["17"] = 10,["18"] = 11,["19"] = 11,["20"] = 12,["21"] = 12,["22"] = 12,["23"] = 15,["25"] = 20,["26"] = 21,["27"] = 21,["28"] = 21,["29"] = 23,["30"] = 24,["31"] = 24,["32"] = 24,["33"] = 24,["34"] = 26,["35"] = 27,["36"] = 28,["38"] = 31,["39"] = 32,["40"] = 34,["41"] = 35,["42"] = 36,["43"] = 37,["44"] = 38,["45"] = 40,["46"] = 41,["47"] = 43,["48"] = 44,["49"] = 46,["50"] = 46,["51"] = 46,["52"] = 46,["53"] = 47,["55"] = 50,["56"] = 21,["57"] = 21,["58"] = 20});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____Status = include("logic.models.Status")
local _____53EA_8DD1_8DEF = ____Status["只跑路"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local distance = 8000 * 8000
--- 小鳄鱼移动到队友身边
function ____exports.sendPetToTeammate(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local king = player2King[self.playerId]
            local plist = __TS__ArrayFilter(
                playerIdList,
                function(____, a) return player2King[a] == king and a ~= self.playerId end
            )
            local pid = random:randomList(plist)
            if pid == nil then
                return false
            end
            local petData = datas.players[pid]:getSingle(PetData)
            local heroData = datas.players[pid]:getSingle(UnitData)
            local petPos = petData.y3Unit:get_point()
            local heroPos = heroData.entity:getPosition()
            local x = petPos:get_x() - heroPos.x
            local y = petPos:get_y() - heroPos.y
            local length = x * x + y * y
            if length > distance and heroData.entity:isAlive() and not heroData.entity:checkState(_____53EA_8DD1_8DEF) then
                self:log(function() return ("瞬移小宠物到队友" .. tostring(pid)) .. "身边" end)
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
