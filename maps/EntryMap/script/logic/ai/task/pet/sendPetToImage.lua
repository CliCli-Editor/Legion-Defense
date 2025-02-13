local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 6,["14"] = 6,["15"] = 8,["16"] = 8,["17"] = 10,["18"] = 10,["19"] = 11,["20"] = 11,["21"] = 11,["22"] = 12,["23"] = 12,["24"] = 12,["25"] = 15,["27"] = 20,["28"] = 21,["29"] = 21,["30"] = 21,["31"] = 23,["32"] = 24,["33"] = 24,["34"] = 24,["35"] = 24,["36"] = 25,["37"] = 25,["38"] = 25,["39"] = 25,["40"] = 25,["41"] = 25,["42"] = 25,["43"] = 27,["44"] = 28,["45"] = 29,["47"] = 32,["48"] = 34,["49"] = 35,["50"] = 36,["51"] = 37,["52"] = 38,["53"] = 40,["54"] = 41,["55"] = 43,["56"] = 44,["57"] = 46,["58"] = 46,["59"] = 46,["60"] = 46,["61"] = 47,["63"] = 50,["64"] = 21,["65"] = 21,["66"] = 20});
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
local UnitType = ____UnitData.UnitType
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local distance = 8000 * 8000
--- 小鳄鱼移动到敌对国王身边
function ____exports.sendPetToImage(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local king = player2King[self.playerId]
            local plist = __TS__ArrayFilter(
                playerIdList,
                function(____, a) return player2King[a] ~= king end
            )
            local images = __TS__ArrayFilter(
                __TS__ArrayMap(
                    plist,
                    function(____, a) return datas.players[a]:getListByIndex(UnitData, "type", UnitType.HERO_IMAGE)[1] end
                ),
                function(____, a) return a ~= nil and a.entity.isAlive end
            )
            local heroData = random:randomList(images)
            if heroData == nil then
                return false
            end
            local petData = datas.players[self.playerId]:getSingle(PetData)
            local petPos = petData.y3Unit:get_point()
            local heroPos = heroData.entity:getPosition()
            local x = petPos:get_x() - heroPos.x
            local y = petPos:get_y() - heroPos.y
            local length = x * x + y * y
            if length > distance and not heroData.entity:checkState(_____53EA_8DD1_8DEF) then
                self:log(function() return ("瞬移小宠物到队友镜像" .. heroData.entity:getName()) .. "身边" end)
                local x = heroPos.x - 500 + 1000 * math.random()
                local y = heroPos.y - 500 + 1000 * math.random()
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
