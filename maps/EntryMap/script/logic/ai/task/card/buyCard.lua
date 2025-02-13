local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["29"] = 17,["30"] = 38,["31"] = 38,["32"] = 38,["33"] = 40,["34"] = 41,["35"] = 42,["36"] = 44,["37"] = 44,["38"] = 44,["39"] = 44,["40"] = 46,["41"] = 47,["42"] = 47,["43"] = 47,["44"] = 47,["46"] = 50,["47"] = 51,["48"] = 52,["49"] = 54,["50"] = 55,["51"] = 57,["53"] = 59,["54"] = 60,["55"] = 60,["56"] = 60,["57"] = 60,["58"] = 61,["59"] = 62,["62"] = 66,["63"] = 67,["64"] = 68,["65"] = 69,["66"] = 70,["67"] = 71,["69"] = 73,["71"] = 76,["72"] = 77,["73"] = 77,["74"] = 77,["75"] = 77,["76"] = 78,["77"] = 79,["81"] = 85,["82"] = 87,["83"] = 88,["84"] = 89,["86"] = 92,["87"] = 92,["88"] = 92,["89"] = 93,["90"] = 94,["91"] = 95,["92"] = 96,["95"] = 99,["96"] = 92,["97"] = 92,["98"] = 102,["99"] = 102,["100"] = 102,["101"] = 103,["102"] = 103,["103"] = 104,["104"] = 105,["105"] = 106,["108"] = 109,["109"] = 110,["110"] = 111,["113"] = 115,["114"] = 102,["115"] = 102,["116"] = 118,["117"] = 119,["118"] = 120,["120"] = 123,["121"] = 124,["122"] = 125,["124"] = 127,["125"] = 128,["126"] = 129,["127"] = 130,["129"] = 132,["130"] = 132,["131"] = 132,["132"] = 132,["133"] = 133,["134"] = 135,["135"] = 136,["136"] = 136,["137"] = 136,["138"] = 136,["139"] = 137,["140"] = 138,["141"] = 139,["143"] = 141,["144"] = 142,["145"] = 143,["146"] = 144,["148"] = 146,["149"] = 146,["150"] = 146,["151"] = 146,["152"] = 147,["153"] = 149,["154"] = 150,["155"] = 151,["156"] = 152,["157"] = 153,["159"] = 155,["160"] = 156,["161"] = 157,["162"] = 158,["164"] = 161,["165"] = 161,["166"] = 161,["167"] = 161,["168"] = 162,["170"] = 165,["171"] = 38,["172"] = 38,["173"] = 17});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigMap = ____RobotLevelConfig.robotLevelConfigMap
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
--- 购买流派卡，如果不传参数则按玩家所属流派优先购买,且至少要匹配一个流派；
-- 当金币不够时则购买失败
function ____exports.buyCard(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerData = player:getSingle(PlayerData)
            local playerGenreData = player:getSingle(PlayerGenreData)
            local cards = __TS__ArrayFilter(
                playerGenreData.canSelGenre,
                function(____, a) return not a.sellout end
            )
            if (params and params.rarity) ~= nil then
                cards = __TS__ArrayFilter(
                    cards,
                    function(____, a) return a.genre.rarity == params.rarity end
                )
            end
            if playerData.isSimpleAI or playerData.isWarmthAI then
                local p = 0
                if playerData.simpleAIType == "easy" then
                    p = 0.9
                elseif playerData.simpleAIType == "hard" then
                    p = 0
                end
                if math.random() < p then
                    genreController:chooseGenre(
                        self.playerId,
                        random:randomRange(0, #playerGenreData.canSelGenre - 1)
                    )
                    self:log(function() return ("简单电脑" .. tostring(p)) .. "概率达成，随机买卡" end)
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
                        genreController:chooseGenre(
                            self.playerId,
                            random:randomRange(0, #playerGenreData.canSelGenre - 1)
                        )
                        self:log(function() return ("失误率" .. tostring(p)) .. "达成，随机买卡" end)
                        return true
                    end
                end
            end
            if params == nil then
                local matchingMap = {}
                for ____, d in ipairs(playerData.genre) do
                    matchingMap[d] = true
                end
                cards = __TS__ArrayFilter(
                    cards,
                    function(____, a)
                        local i = 0
                        for ____, gid in ipairs(a.genre.genre) do
                            if matchingMap[gid] then
                                i = i + 1
                            end
                        end
                        return i > 0
                    end
                )
                __TS__ArraySort(
                    cards,
                    function(____, a, b)
                        local ai = 0
                        local bi = 0
                        for ____, gid in ipairs(a.genre.genre) do
                            if matchingMap[gid] then
                                ai = ai + 1
                            end
                        end
                        for ____, gid in ipairs(b.genre.genre) do
                            if matchingMap[gid] then
                                bi = bi + 1
                            end
                        end
                        return bi - ai
                    end
                )
                local card = cards[1]
                for ____, c in ipairs(cards) do
                    self:log(function() return ((("按流派匹配度找到流派卡 " .. tostring(c.genre.name)) .. "(") .. tostring(c.genre.id)) .. ")" end)
                end
                if card == nil then
                    self:log(function() return "按流派匹配度购买流派卡失败，无法找到合适的流派卡" end)
                    return false
                end
                local price = genreController:getGenreMoney(self.playerId, card.genre.id)
                if playerData.gold < price then
                    self:log(function() return (("按流派匹配度购买流派卡失败，金币不足；拥有：" .. tostring(playerData.gold)) .. "；需要：") .. tostring(price) end)
                    return false
                end
                genreController:chooseGenre(
                    self.playerId,
                    __TS__ArrayIndexOf(playerGenreData.canSelGenre, card)
                )
                self:log(function() return ((("按流派匹配度购买流派卡 " .. tostring(card.genre.name)) .. "(") .. tostring(card.genre.id)) .. ")" end)
            elseif params.genreId ~= nil then
                local card = __TS__ArrayFind(
                    cards,
                    function(____, a) return a.genre.id == params.genreId end
                )
                if card == nil then
                    self:log(function() return ("按流派ID购买流派卡失败，无法找ID为'" .. tostring(params.genreId)) .. "'的流派卡" end)
                    return false
                end
                local price = genreController:getGenreMoney(self.playerId, card.genre.id)
                if playerData.gold < price then
                    self:log(function() return (("按流派ID购买流派卡失败，金币不足；拥有：" .. tostring(playerData.gold)) .. "；需要：") .. tostring(price) end)
                    return false
                end
                genreController:chooseGenre(
                    self.playerId,
                    __TS__ArrayIndexOf(playerGenreData.canSelGenre, card)
                )
                self:log(function() return ((("按流派ID购买流派卡 " .. tostring(card.genre.name)) .. "(") .. tostring(card.genre.id)) .. ")" end)
            elseif params.random ~= nil then
                local card = random:randomList(cards)
                if card == nil then
                    self:log(function() return "随机购买流派卡失败，无法找到匹配的卡" end)
                    return false
                end
                local price = genreController:getGenreMoney(self.playerId, card.genre.id)
                if playerData.gold < price then
                    self:log(function() return (("随机购买流派卡失败，金币不足；拥有：" .. tostring(playerData.gold)) .. "；需要：") .. tostring(price) end)
                    return false
                end
                genreController:chooseGenre(
                    self.playerId,
                    __TS__ArrayIndexOf(playerGenreData.canSelGenre, card)
                )
                self:log(function() return ((("随机购买流派卡 " .. tostring(card.genre.name)) .. "(") .. tostring(card.genre.id)) .. ")" end)
            end
            return true
        end
    )
end
return ____exports
