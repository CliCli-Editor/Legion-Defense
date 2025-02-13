local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["29"] = 18,["30"] = 20,["31"] = 20,["32"] = 20,["33"] = 21,["34"] = 22,["35"] = 23,["36"] = 28,["37"] = 29,["38"] = 30,["39"] = 32,["40"] = 33,["41"] = 35,["43"] = 37,["44"] = 38,["45"] = 39,["48"] = 43,["49"] = 44,["50"] = 45,["51"] = 46,["52"] = 47,["53"] = 48,["55"] = 50,["57"] = 53,["58"] = 54,["59"] = 55,["63"] = 60,["64"] = 61,["65"] = 62,["66"] = 63,["68"] = 66,["69"] = 67,["70"] = 68,["72"] = 70,["73"] = 71,["74"] = 72,["76"] = 74,["77"] = 75,["78"] = 76,["79"] = 77,["81"] = 79,["82"] = 80,["83"] = 81,["85"] = 60,["86"] = 98,["87"] = 20,["88"] = 20,["89"] = 18});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigMap = ____RobotLevelConfig.robotLevelConfigMap
local ____TechnologyConfig = include("logic.configs.TechnologyConfig")
local technologyConfigMap = ____TechnologyConfig.technologyConfigMap
local ____TechnologyController = include("logic.controllers.TechnologyController")
local technologyController = ____TechnologyController.technologyController
local ____FarmerManager = include("logic.managers.FarmerManager")
local farmerManager = ____FarmerManager.farmerManager
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 升级科技，哪边便宜升级哪边
-- 
-- @param params 不传递参数，则那边科技便宜提升哪边
function ____exports.upgradeTech(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local playerDatas = datas.players[self.playerId]
            local playerData = playerDatas:getSingle(PlayerData)
            local gameData = datas.global:getSingle(GameData)
            if playerData.isSimpleAI or playerData.isWarmthAI then
                local p = 0
                if playerData.simpleAIType == "easy" then
                    p = 0.5
                elseif playerData.simpleAIType == "hard" then
                    p = 0
                end
                if math.random() < p then
                    self:log(function() return ("简单电脑" .. tostring(p)) .. "概率达成，放弃升级科技" end)
                    return true
                end
            end
            if isPvpModeRobot(nil) then
                local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
                if config ~= nil then
                    local p = 0
                    if self.playerId <= 4 then
                        p = config.ourMistake
                    else
                        p = config.enemyMistake
                    end
                    if math.random() < p then
                        self:log(function() return ("失误率" .. tostring(p)) .. "达成，放弃升级科技" end)
                        return true
                    end
                end
            end
            local function upgradeFarmer()
                if gameData.level < 3 or gameData.level == 3 and gameData.gameStatus == GameStatus["准备回合"] then
                    self:log(function() return "第三回合之前不允许解锁" end)
                    return false
                end
                if farmerManager:isLocked(self.playerId) then
                    self:log(function() return "解锁等级不够" end)
                    return false
                end
                if farmerManager:isMaxLevel(self.playerId) then
                    self:log(function() return "已满级" end)
                    return false
                end
                local cfg = technologyConfigMap[playerData.farmerLevel + 1]
                if playerData.wood < cfg.consumeWood then
                    self:log(function() return "木头不足，无法升级农民" end)
                    return false
                else
                    technologyController:levelUp(self.playerId)
                    self:log(function() return "提升农民等级到" .. tostring(cfg.id) end)
                    return true
                end
            end
            return upgradeFarmer(nil)
        end
    )
end
return ____exports
