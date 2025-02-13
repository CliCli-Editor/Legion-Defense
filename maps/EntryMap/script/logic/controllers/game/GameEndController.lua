local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 19,["44"] = 19,["45"] = 19,["47"] = 19,["48"] = 22,["49"] = 23,["50"] = 22,["51"] = 26,["52"] = 27,["53"] = 26,["54"] = 30,["55"] = 34,["56"] = 36,["59"] = 41,["60"] = 42,["61"] = 43,["62"] = 44,["63"] = 45,["66"] = 49,["67"] = 50,["68"] = 51,["70"] = 55,["71"] = 57,["72"] = 59,["73"] = 60,["74"] = 62,["75"] = 65,["76"] = 66,["77"] = 67,["78"] = 68,["80"] = 70,["83"] = 74,["84"] = 76,["85"] = 77,["86"] = 79,["87"] = 82,["88"] = 83,["89"] = 84,["90"] = 85,["92"] = 89,["93"] = 90,["94"] = 91,["95"] = 92,["96"] = 93,["97"] = 96,["98"] = 98,["99"] = 100,["100"] = 101,["101"] = 102,["102"] = 103,["103"] = 104,["105"] = 106,["108"] = 110,["109"] = 111,["110"] = 112,["112"] = 115,["113"] = 116,["114"] = 118,["115"] = 119,["116"] = 120,["117"] = 121,["120"] = 125,["121"] = 127,["122"] = 128,["123"] = 129,["124"] = 30,["125"] = 132,["126"] = 134,["127"] = 136,["128"] = 138,["129"] = 139,["130"] = 140,["131"] = 141,["132"] = 142,["133"] = 144,["134"] = 145,["136"] = 147,["137"] = 147,["139"] = 149,["140"] = 150,["141"] = 151,["142"] = 152,["143"] = 154,["144"] = 155,["145"] = 156,["146"] = 157,["148"] = 159,["149"] = 161,["150"] = 162,["151"] = 163,["152"] = 164,["153"] = 165,["157"] = 168,["158"] = 168,["159"] = 168,["160"] = 168,["161"] = 170,["162"] = 170,["163"] = 170,["164"] = 170,["165"] = 171,["166"] = 171,["167"] = 171,["168"] = 171,["169"] = 172,["170"] = 172,["171"] = 172,["172"] = 172,["173"] = 173,["174"] = 173,["175"] = 173,["176"] = 173,["177"] = 174,["178"] = 174,["179"] = 174,["180"] = 174,["181"] = 176,["182"] = 182,["183"] = 183,["184"] = 184,["186"] = 185,["187"] = 185,["188"] = 186,["189"] = 187,["190"] = 189,["191"] = 189,["193"] = 191,["194"] = 192,["195"] = 192,["197"] = 194,["198"] = 195,["199"] = 195,["201"] = 198,["202"] = 185,["205"] = 182,["206"] = 203,["207"] = 203,["208"] = 203,["209"] = 203,["210"] = 203,["211"] = 203,["212"] = 206,["213"] = 206,["214"] = 206,["215"] = 206,["216"] = 206,["217"] = 206,["218"] = 208,["219"] = 208,["220"] = 208,["221"] = 208,["222"] = 208,["223"] = 208,["224"] = 210,["225"] = 210,["226"] = 210,["227"] = 210,["228"] = 210,["229"] = 210,["230"] = 212,["231"] = 212,["232"] = 212,["233"] = 212,["234"] = 212,["235"] = 212,["236"] = 214,["237"] = 214,["238"] = 214,["239"] = 214,["240"] = 214,["241"] = 214,["242"] = 217,["243"] = 218,["244"] = 219,["245"] = 220,["246"] = 221,["248"] = 222,["249"] = 222,["251"] = 224,["252"] = 225,["253"] = 226,["254"] = 227,["255"] = 228,["258"] = 231,["259"] = 232,["260"] = 233,["266"] = 237,["267"] = 238,["268"] = 239,["269"] = 240,["271"] = 242,["272"] = 243,["273"] = 244,["274"] = 245,["276"] = 134,["277"] = 250,["278"] = 251,["279"] = 132,["280"] = 258});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____global = include("framework.global")
local global = ____global.global
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____MatchManager = include("logic.archive.manager.MatchManager")
local matchManager = ____MatchManager.matchManager
local ____NewbieTaskManager = include("logic.archive.manager.NewbieTaskManager")
local NewbieTaskTrigger = ____NewbieTaskManager.NewbieTaskTrigger
local newbieTaskManager = ____NewbieTaskManager.newbieTaskManager
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____GameStatisticsData = include("logic.models.GameStatisticsData")
local GameStatisticsData = ____GameStatisticsData.GameStatisticsData
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
____exports.GameStatusController = __TS__Class()
local GameStatusController = ____exports.GameStatusController
GameStatusController.name = "GameStatusController"
function GameStatusController.prototype.____constructor(self)
end
function GameStatusController.prototype.pauseGame(self)
    y3.game.enable_soft_pause()
end
function GameStatusController.prototype.resumeGame(self)
    y3.game.resume_soft_pause()
end
function GameStatusController.prototype.endGame(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if gameData.isEnd then
        return
    end
    for ____, playerId in ipairs(playerIdList) do
        local player = writeableDatas.players[playerId]
        local unitDatas = player:getAll(UnitData)
        for ____, unit in ipairs(unitDatas) do
            writeableDatas.players[playerId]:remove(UnitData, unit)
        end
    end
    for k in pairs(y3.ltimer.all_timers) do
        local timer = y3.ltimer.all_timers[k]
        timer:remove()
    end
    local kingData = writeableDatas.players[PlayerId.LEFT_KING]:getOrCreateSingle(KingData)
    local isLeftLose = #kingData.aliveList == 0
    local rightKing = writeableDatas.players[PlayerId.RIGHT_KING]:getOrCreateSingle(KingData)
    local isRightLose = #rightKing.aliveList == 0
    gameData.winner = isLeftLose and "B" or "A"
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        if playerId <= 4 then
            playerData.isWin = isRightLose
        else
            playerData.isWin = isLeftLose
        end
    end
    local gameStatisticsData = writeableDatas.global:getOrCreateSingle(GameStatisticsData)
    gameStatisticsData.endLevel = gameData.level
    gameStatisticsData.gameTime = (global.frameCount - gameData.gameStartFrame) / 30
    self:getMvp()
    newbieTaskManager:trigger(NewbieTaskTrigger.FIGHT)
    local playerData = writeableDatas.players[y3.player.get_local().id]:getOrCreateSingle(PlayerData)
    if playerData.isWin then
        newbieTaskManager:trigger(NewbieTaskTrigger.FIGHT_WIN)
    end
    local statData = writeableDatas.players[y3.player.get_local().id]:getOrCreateSingle(PlayerStatisticsData)
    if not matchManager:isMatchEnd() then
        local score = matchManager:getScore()
        gameStatisticsData.match_limit = score.limit
        gameStatisticsData.match_score = score.score
        archive:endGame()
        matchManager:endMatch(score.score)
        if score ~= nil then
            statData.needAddMatchScore = true
            statData.matchScoreLimit = score.limit
            statData.is_idle = score.is_idle
            statData.matchScore = score.score
        else
            statData.needAddMatchScore = false
        end
    else
        statData.matchScoreLimit = true
        statData.needAddMatchScore = false
        archive:endGame()
    end
    if not ladderTournamentManager:isRestTime() then
        local ladderScoreData = ladderTournamentManager:endScore(ladderTournamentManager:getEnemyScoreList())
        if ladderScoreData ~= nil then
            statData.needShowLadderScore = true
            statData.oldScore = ladderScoreData.oldScore
            statData.newScore = ladderScoreData.resultScore
        end
    end
    traceLogUtils:onGameEnd()
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["游戏结束"]
    data.isEnd = true
end
function GameStatusController.prototype.getMvp(self)
    local function func2(____, king_id)
        local goldList = {}
        local defList = {}
        local atkList = {}
        local monsterList = {}
        local eliteList = {}
        local heroList = {}
        local scoreMap = {}
        for ____, playerId in ipairs(playerIdList) do
            do
                if player2King[playerId] ~= king_id then
                    goto __continue26
                end
                local statData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
                local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
                statData.playerId = playerId
                local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
                scoreMap[playerId] = 0
                if not playerData.isAI and archiveData.statInfo ~= nil and archiveData.statInfo.last_game_idle > 0 then
                    console:log("挂机怪跳过评选...")
                    goto __continue26
                end
                goldList[#goldList + 1] = statData
                defList[#defList + 1] = statData
                atkList[#atkList + 1] = statData
                monsterList[#monsterList + 1] = statData
                eliteList[#eliteList + 1] = statData
                heroList[#heroList + 1] = statData
            end
            ::__continue26::
        end
        __TS__ArraySort(
            goldList,
            function(____, a, b) return b.gold - a.gold + (b.wood - a.wood) * 2 end
        )
        __TS__ArraySort(
            defList,
            function(____, a, b) return b.defenseSuc - a.defenseSuc end
        )
        __TS__ArraySort(
            atkList,
            function(____, a, b) return b.attackSuc - a.attackSuc end
        )
        __TS__ArraySort(
            monsterList,
            function(____, a, b) return b.killMonster - a.killMonster end
        )
        __TS__ArraySort(
            eliteList,
            function(____, a, b) return b.killElite - a.killElite end
        )
        __TS__ArraySort(
            heroList,
            function(____, a, b) return b.killHero - a.killHero end
        )
        local rankMap = {[1] = 100, [2] = 10, [3] = 0}
        local function func(____, list, filter, rate)
            local rank = 1
            local preValue = -1
            do
                local index = 0
                while index < #list do
                    local element = list[index + 1]
                    local value = filter(nil, element)
                    if preValue == -1 then
                        preValue = value
                    end
                    if value == preValue then
                        local ____scoreMap_0, ____element_playerId_1 = scoreMap, element.playerId
                        ____scoreMap_0[____element_playerId_1] = ____scoreMap_0[____element_playerId_1] + math.floor((rankMap[rank] or 0) * rate)
                    else
                        rank = rank + 1
                        local ____scoreMap_2, ____element_playerId_3 = scoreMap, element.playerId
                        ____scoreMap_2[____element_playerId_3] = ____scoreMap_2[____element_playerId_3] + math.floor((rankMap[rank] or 0) * rate)
                    end
                    preValue = value
                    index = index + 1
                end
            end
        end
        func(
            nil,
            goldList,
            function(____, data) return data.gold + data.wood end,
            1.01
        )
        func(
            nil,
            defList,
            function(____, data) return data.defenseSuc end,
            1.02
        )
        func(
            nil,
            atkList,
            function(____, data) return data.attackSuc end,
            1.03
        )
        func(
            nil,
            monsterList,
            function(____, data) return data.killMonster end,
            1
        )
        func(
            nil,
            eliteList,
            function(____, data) return data.killElite end,
            1
        )
        func(
            nil,
            heroList,
            function(____, data) return data.killHero end,
            1
        )
        local mvp = 0
        local mvp_score = 0
        local smvp = 0
        local smvp_score = 0
        for ____, playerId in ipairs(playerIdList) do
            do
                if player2King[playerId] ~= king_id then
                    goto __continue47
                end
                local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
                if playerData.isWin then
                    if mvp_score < scoreMap[playerId] then
                        mvp_score = scoreMap[playerId]
                        mvp = playerId
                    end
                else
                    if smvp_score < scoreMap[playerId] then
                        smvp_score = scoreMap[playerId]
                        smvp = playerId
                    end
                end
            end
            ::__continue47::
        end
        if mvp ~= 0 then
            local statData = writeableDatas.players[mvp]:getOrCreateSingle(PlayerStatisticsData)
            statData.isMvp = true
            console:log("MVP：", mvp)
        end
        if smvp ~= 0 then
            local statData = writeableDatas.players[smvp]:getOrCreateSingle(PlayerStatisticsData)
            statData.isSMvp = true
            console:log("SMVP：", smvp)
        end
    end
    func2(nil, PlayerId.LEFT_KING)
    func2(nil, PlayerId.RIGHT_KING)
end
____exports.gameStatusController = make(nil, ____exports.GameStatusController)
return ____exports
