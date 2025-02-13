local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayReduce = ____lualib.__TS__ArrayReduce
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 5,["13"] = 5,["14"] = 8,["15"] = 8,["16"] = 9,["17"] = 9,["18"] = 10,["19"] = 10,["20"] = 10,["21"] = 11,["22"] = 11,["23"] = 14,["24"] = 14,["25"] = 14,["26"] = 14,["27"] = 15,["28"] = 15,["29"] = 16,["30"] = 16,["31"] = 17,["32"] = 17,["33"] = 18,["34"] = 18,["35"] = 18,["36"] = 19,["37"] = 19,["38"] = 20,["39"] = 20,["40"] = 21,["41"] = 21,["42"] = 22,["43"] = 22,["44"] = 27,["45"] = 27,["46"] = 27,["48"] = 29,["49"] = 27,["50"] = 36,["51"] = 37,["52"] = 38,["55"] = 40,["56"] = 40,["57"] = 41,["58"] = 42,["59"] = 43,["60"] = 44,["61"] = 45,["63"] = 40,["66"] = 48,["67"] = 49,["68"] = 50,["69"] = 36,["70"] = 56,["71"] = 57,["72"] = 57,["73"] = 57,["74"] = 57,["75"] = 56,["76"] = 63,["77"] = 64,["78"] = 65,["79"] = 66,["80"] = 67,["81"] = 68,["82"] = 63,["83"] = 74,["84"] = 75,["85"] = 76,["86"] = 77,["88"] = 79,["89"] = 80,["90"] = 81,["91"] = 82,["92"] = 83,["93"] = 74,["94"] = 89,["95"] = 90,["96"] = 89,["97"] = 96,["98"] = 97,["99"] = 97,["100"] = 96,["101"] = 103,["102"] = 104,["103"] = 105,["104"] = 106,["105"] = 107,["106"] = 108,["107"] = 103,["108"] = 111,["110"] = 112,["111"] = 112,["112"] = 113,["113"] = 114,["114"] = 115,["116"] = 112,["119"] = 118,["120"] = 111,["121"] = 121,["122"] = 122,["123"] = 123,["124"] = 123,["125"] = 123,["126"] = 124,["127"] = 125,["128"] = 125,["129"] = 125,["130"] = 125,["132"] = 127,["133"] = 127,["134"] = 127,["135"] = 127,["137"] = 121,["138"] = 131,["139"] = 132,["140"] = 133,["141"] = 134,["142"] = 135,["143"] = 136,["144"] = 137,["145"] = 137,["146"] = 137,["147"] = 138,["151"] = 142,["152"] = 131,["153"] = 148,["154"] = 149,["155"] = 150,["156"] = 151,["157"] = 154,["158"] = 156,["160"] = 159,["161"] = 160,["162"] = 162,["163"] = 163,["164"] = 165,["166"] = 168,["167"] = 175,["168"] = 175,["169"] = 175,["170"] = 175,["171"] = 175,["172"] = 175,["173"] = 175,["174"] = 175,["175"] = 182,["176"] = 184,["177"] = 184,["178"] = 185,["179"] = 186,["180"] = 187,["181"] = 187,["182"] = 187,["183"] = 187,["184"] = 187,["185"] = 187,["186"] = 187,["187"] = 187,["189"] = 197,["190"] = 198,["191"] = 199,["192"] = 200,["193"] = 201,["194"] = 203,["195"] = 205,["196"] = 207,["197"] = 208,["199"] = 210,["200"] = 211,["201"] = 212,["203"] = 214,["205"] = 216,["206"] = 217,["207"] = 218,["208"] = 219,["209"] = 220,["211"] = 223,["212"] = 224,["214"] = 226,["217"] = 229,["218"] = 230,["219"] = 231,["220"] = 232,["222"] = 235,["223"] = 236,["225"] = 238,["229"] = 242,["230"] = 242,["231"] = 242,["232"] = 242,["233"] = 242,["234"] = 242,["235"] = 242,["236"] = 244,["237"] = 246,["238"] = 148,["239"] = 252,["240"] = 254,["243"] = 257,["244"] = 258,["245"] = 252,["246"] = 264,["247"] = 265,["248"] = 266,["251"] = 271,["252"] = 272,["253"] = 273,["256"] = 277,["257"] = 277,["258"] = 277,["259"] = 277,["260"] = 277,["261"] = 277,["262"] = 277,["263"] = 277,["264"] = 277,["265"] = 285,["266"] = 286,["267"] = 287,["268"] = 288,["269"] = 289,["270"] = 291,["271"] = 292,["272"] = 294,["273"] = 294,["274"] = 294,["275"] = 294,["276"] = 294,["277"] = 294,["278"] = 294,["279"] = 296,["280"] = 297,["281"] = 264,["282"] = 300,["283"] = 301,["284"] = 303,["285"] = 303,["286"] = 303,["287"] = 303,["288"] = 304,["289"] = 305,["290"] = 305,["291"] = 305,["292"] = 304,["293"] = 307,["294"] = 309,["295"] = 310,["296"] = 311,["297"] = 311,["298"] = 312,["299"] = 313,["300"] = 313,["303"] = 317,["304"] = 318,["305"] = 318,["306"] = 319,["307"] = 320,["308"] = 320,["311"] = 326,["312"] = 327,["313"] = 328,["314"] = 329,["315"] = 330,["317"] = 332,["318"] = 333,["321"] = 336,["322"] = 337,["323"] = 338,["325"] = 340,["326"] = 341,["327"] = 342,["329"] = 344,["333"] = 348,["334"] = 350,["335"] = 351,["336"] = 352,["337"] = 353,["338"] = 353,["339"] = 353,["340"] = 353,["342"] = 355,["343"] = 355,["344"] = 355,["345"] = 355,["348"] = 359,["349"] = 360,["350"] = 363,["351"] = 364,["352"] = 367,["353"] = 369,["354"] = 371,["355"] = 372,["356"] = 373,["357"] = 374,["358"] = 375,["360"] = 378,["361"] = 379,["362"] = 380,["363"] = 381,["364"] = 382,["367"] = 386,["368"] = 387,["369"] = 388,["371"] = 391,["372"] = 391,["373"] = 391,["374"] = 391,["375"] = 391,["376"] = 391,["377"] = 391,["378"] = 300,["379"] = 421,["380"] = 422,["381"] = 422,["382"] = 422,["383"] = 423,["385"] = 423,["386"] = 423,["387"] = 421,["388"] = 427,["389"] = 428,["390"] = 427,["391"] = 434,["392"] = 435,["393"] = 436,["394"] = 434,["395"] = 439,["396"] = 440,["397"] = 441,["399"] = 443,["400"] = 445,["401"] = 445,["402"] = 446,["403"] = 448,["404"] = 448,["405"] = 449,["406"] = 451,["407"] = 451,["408"] = 452,["409"] = 454,["410"] = 454,["411"] = 454,["412"] = 454,["414"] = 456,["415"] = 457,["417"] = 439,["418"] = 461,["419"] = 462,["420"] = 461,["421"] = 465,["422"] = 466,["423"] = 467,["425"] = 469,["426"] = 471,["427"] = 473,["428"] = 475,["429"] = 475,["430"] = 476,["431"] = 478,["432"] = 478,["433"] = 479,["434"] = 481,["435"] = 481,["436"] = 481,["437"] = 481,["439"] = 483,["440"] = 484,["442"] = 465,["443"] = 491,["444"] = 492,["445"] = 493,["447"] = 495,["448"] = 491,["449"] = 501,["450"] = 502,["453"] = 505,["454"] = 506,["455"] = 506,["456"] = 506,["457"] = 506,["458"] = 506,["459"] = 506,["460"] = 506,["461"] = 507,["462"] = 501,["463"] = 513,["464"] = 514,["465"] = 515,["467"] = 517,["468"] = 518,["470"] = 521,["471"] = 522,["473"] = 525,["474"] = 513,["475"] = 528,["476"] = 529,["477"] = 530,["479"] = 532,["480"] = 533,["482"] = 536,["483"] = 537,["485"] = 540,["486"] = 541,["488"] = 544,["489"] = 528,["490"] = 550,["491"] = 551,["492"] = 552,["493"] = 553,["494"] = 554,["495"] = 555,["499"] = 559,["500"] = 561,["501"] = 563,["502"] = 565,["503"] = 566,["505"] = 569,["506"] = 550,["507"] = 572,["508"] = 573,["509"] = 572,["510"] = 577});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local ____RankConfig = include("logic.configs.RankConfig")
local rankConfigList = ____RankConfig.rankConfigList
local ____RankMultipleConfig = include("logic.configs.RankMultipleConfig")
local rankMultipleConfigMap = ____RankMultipleConfig.rankMultipleConfigMap
local ____RankSeasonConfig = include("logic.configs.RankSeasonConfig")
local rankSeasonConfigList = ____RankSeasonConfig.rankSeasonConfigList
local rankSeasonConfigMap = ____RankSeasonConfig.rankSeasonConfigMap
local ____SeasonTaskConfig = include("logic.configs.SeasonTaskConfig")
local seasonTaskConfigMap = ____SeasonTaskConfig.seasonTaskConfigMap
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local isPvpModeRandom = ____BobInfo.isPvpModeRandom
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipType = ____VipEnum.VipType
local ____VipManager = include("logic.archive.manager.VipManager")
local vipManager = ____VipManager.vipManager
____exports.LadderTournamentManager = __TS__Class()
local LadderTournamentManager = ____exports.LadderTournamentManager
LadderTournamentManager.name = "LadderTournamentManager"
function LadderTournamentManager.prototype.____constructor(self)
    self.now = Date:now()
end
function LadderTournamentManager.prototype.getCurrentSeason(self)
    if self.currentSeasonConfig ~= nil then
        return self.currentSeasonConfig
    end
    do
        local i = #rankSeasonConfigList - 1
        while i >= 0 do
            local r = rankSeasonConfigList[i + 1]
            if self.now >= r.startTime then
                console:log("this.currentSeasonConfig", self.now, r.startTime)
                self.currentSeasonConfig = r
                return r
            end
            i = i - 1
        end
    end
    console:log("this.currentSeasonConfig2")
    self.currentSeasonConfig = rankSeasonConfigList[#rankSeasonConfigList]
    return self.currentSeasonConfig
end
function LadderTournamentManager.prototype.getLastSeason(self)
    return rankSeasonConfigList[__TS__ArrayIndexOf(
        rankSeasonConfigList,
        self:getCurrentSeason()
    )]
end
function LadderTournamentManager.prototype.getCurrentSeasonRankInfo(self)
    local index = self:getCurrentSeason().seasonIndex % 3
    local rankInfo = archive.ladderTournamentRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("当前赛季排位 段位赛季排行" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”")
    return rankInfo
end
function LadderTournamentManager.prototype.getLastSeasonRankInfo(self)
    local last = self:getLastSeason()
    if last == nil then
        return nil
    end
    local index = last.seasonIndex % 3
    local rankInfo = archive.ladderTournamentRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("上一赛季排位 段位赛季排行" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”")
    return rankInfo
end
function LadderTournamentManager.prototype.getCurrentSeasonRank(self)
    return self:getCurrentSeasonRankInfo():getRankData(200)
end
function LadderTournamentManager.prototype.getLastSeasonRank(self)
    local ____opt_0 = self:getLastSeasonRankInfo()
    return ____opt_0 and ____opt_0:getRankData(200)
end
function LadderTournamentManager.prototype.getNeedClearRankSlot(self)
    local index = (3 + self:getCurrentSeason().seasonIndex - 2) % 3
    local rankInfo = archive.ladderTournamentRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("需要清除的赛季榜数据名称为“段位赛季排行" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”，请小心操作！！")
    return slot
end
function LadderTournamentManager.prototype.getRank(self, score)
    do
        local i = #rankConfigList - 1
        while i >= 0 do
            local rank = rankConfigList[i + 1]
            if score >= rank.totalScore then
                return rank
            end
            i = i - 1
        end
    end
    return rankConfigList[1]
end
function LadderTournamentManager.prototype.getRankByPlayerId(self, playerId)
    local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
    local ____opt_4 = archiveData and archiveData.statInfo
    local ____opt_2 = ____opt_4 and ____opt_4.seasonSateInfo
    if (____opt_2 and ____opt_2.score) ~= nil then
        local score = archiveData.statInfo.seasonSateInfo.score
        return {
            config = self:getRank(score),
            score = score
        }
    else
        return {
            config = self:getRank(0),
            score = 0
        }
    end
end
function LadderTournamentManager.prototype.getEnemyScoreList(self)
    local id = y3.player.get_local().id
    local scores = {}
    for ____, playerId in ipairs(playerIdList) do
        if player2King[id] ~= player2King[playerId] then
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local ____opt_10 = archiveData and archiveData.statInfo
            local ____opt_8 = ____opt_10 and ____opt_10.seasonSateInfo
            if (____opt_8 and ____opt_8.score) ~= nil then
                scores[#scores + 1] = archiveData.statInfo.seasonSateInfo.score
            end
        end
    end
    return scores
end
function LadderTournamentManager.prototype.endScore(self, enemyScoreList)
    local id = y3.player.get_local().id
    local playerData = datas.players[id]:getSingle(PlayerData)
    local statData = datas.players[id]:getSingle(PlayerStatisticsData)
    if not isPvpMode(nil) or isPvpModeRobot(nil) or isPvpModeRandom(nil) then
        return nil
    end
    local isWin = playerData.isWin
    local seasonSateInfo = archive.statData.seasonSateInfo
    local isEscape = archive.statData ~= nil and archive.statData.last_game_idle > 0
    if isEscape then
        isWin = false
    end
    local scoreData = self:calculateScore(
        seasonSateInfo.score,
        seasonSateInfo.debtScore,
        seasonSateInfo.season_continuous_win_count,
        isWin,
        isWin and statData.isMvp or not isWin and statData.isSMvp,
        enemyScoreList,
        archive.statData.singleMatch
    )
    if not isEscape and scoreData.score < 0 and vipManager:has(VipType["每日排位第一次失败不扣分"], id) and (archive.statInfo.data.dailySateInfo ~= nil and archive.statInfo.data.dailySateInfo.ladder_lose_vip_protect_count < 1) then
        local ____archive_statInfo_data_dailySateInfo_14, ____ladder_lose_vip_protect_count_15 = archive.statInfo.data.dailySateInfo, "ladder_lose_vip_protect_count"
        ____archive_statInfo_data_dailySateInfo_14[____ladder_lose_vip_protect_count_15] = ____archive_statInfo_data_dailySateInfo_14[____ladder_lose_vip_protect_count_15] + 1
        vipManager:use(VipType["每日排位第一次失败不扣分"])
        console:log("使用特权", archive.statInfo.data.dailySateInfo.ladder_lose_vip_protect_count)
        scoreData = {
            score = 0,
            repayDebt = 0,
            oldScore = seasonSateInfo.score,
            resultScore = seasonSateInfo.score,
            resultDebt = seasonSateInfo.debtScore,
            useVip = true
        }
    end
    seasonSateInfo.debtScore = scoreData.resultDebt
    seasonSateInfo.score = scoreData.resultScore
    seasonSateInfo.max_score = math.max(seasonSateInfo.max_score, seasonSateInfo.score)
    archive.statData.highestSeasonScore = math.max(seasonSateInfo.max_score, archive.statData.highestSeasonScore)
    archive.statData.highestSeasonScoreInSeason["" .. tostring(seasonSateInfo.seasonIndex)] = seasonSateInfo.max_score
    seasonSateInfo.isPlaying = false
    if isEscape then
        console:log("挂机不计算比赛次数")
        seasonSateInfo.season_continuous_win_count = 0
    else
        seasonSateInfo.season_complete_count = seasonSateInfo.season_complete_count + 1
        if archive.statData.singleMatch then
            seasonSateInfo.single_complete_count = seasonSateInfo.single_complete_count + 1
        else
            seasonSateInfo.multi_complete_count = seasonSateInfo.multi_complete_count + 1
        end
        if isWin then
            seasonSateInfo.season_continuous_win_count = seasonSateInfo.season_continuous_win_count + 1
            seasonSateInfo.season_win_count = seasonSateInfo.season_win_count + 1
            if statData.isMvp then
                seasonSateInfo.season_mvp = seasonSateInfo.season_mvp + 1
            end
            if archive.statData.singleMatch then
                seasonSateInfo.single_win_count = seasonSateInfo.single_win_count + 1
            else
                seasonSateInfo.multi_win_count = seasonSateInfo.multi_win_count + 1
            end
        else
            seasonSateInfo.season_continuous_win_count = 0
            seasonSateInfo.season_lose_count = seasonSateInfo.season_lose_count + 1
            if statData.isSMvp then
                seasonSateInfo.season_smvp = seasonSateInfo.season_smvp + 1
            end
            if archive.statData.singleMatch then
                seasonSateInfo.single_lose_count = seasonSateInfo.single_lose_count + 1
            else
                seasonSateInfo.multi_lose_count = seasonSateInfo.multi_lose_count + 1
            end
        end
    end
    console:log(
        "赛季成绩结算",
        scoreData.score,
        scoreData.repayDebt,
        scoreData.resultScore,
        scoreData.resultDebt
    )
    self:commitRank()
    return scoreData
end
function LadderTournamentManager.prototype.enter(self)
    if self:isRestTime() then
        return
    end
    local seasonSateInfo = archive.statData.seasonSateInfo
    seasonSateInfo.isPlaying = true
end
function LadderTournamentManager.prototype.exit(self)
    local seasonSateInfo = archive.statData.seasonSateInfo
    if not seasonSateInfo.isPlaying then
        return
    end
    if self:isRestTime() then
        seasonSateInfo.isPlaying = false
        seasonSateInfo.season_continuous_win_count = 0
        return
    end
    local scoreData = self:calculateScore(
        seasonSateInfo.score,
        seasonSateInfo.debtScore,
        0,
        false,
        false,
        {},
        false
    )
    seasonSateInfo.debtScore = scoreData.resultDebt
    seasonSateInfo.score = scoreData.resultScore
    seasonSateInfo.max_score = math.max(seasonSateInfo.max_score, seasonSateInfo.score)
    archive.statData.highestSeasonScore = math.max(seasonSateInfo.max_score, archive.statData.highestSeasonScore)
    archive.statData.highestSeasonScoreInSeason["" .. tostring(seasonSateInfo.seasonIndex)] = seasonSateInfo.max_score
    seasonSateInfo.isPlaying = false
    seasonSateInfo.season_continuous_win_count = 0
    console:log(
        "赛季成绩结算，测到强行退出游戏，自动算输",
        scoreData.score,
        scoreData.repayDebt,
        scoreData.resultScore,
        scoreData.resultDebt
    )
    self:commitRank()
    return scoreData
end
function LadderTournamentManager.prototype.calculateScore(self, selfScore, debtScore, season_continuous_win_count, isWin, isMvp, enemyScoreList, isSingleMatch, fixedRandom)
    local selfRank = self:getRank(selfScore)
    local enemyRanks = __TS__ArrayMap(
        enemyScoreList,
        function(____, a) return self:getRank(a) end
    )
    local enemyDiff = (#enemyRanks > 0 and math.floor(__TS__ArrayReduce(
        enemyRanks,
        function(____, a, b) return a + b.id end,
        0
    ) / #enemyRanks) or selfRank.id) - selfRank.id
    local diffValue = 1
    if isWin then
        if enemyDiff > 0 then
            local ____opt_16 = rankMultipleConfigMap[enemyDiff]
            diffValue = ____opt_16 and ____opt_16.winLowRankMultiple or 1
        elseif enemyDiff < 0 then
            local ____opt_18 = rankMultipleConfigMap[-enemyDiff]
            diffValue = ____opt_18 and ____opt_18.winHighRankMultiple or 1
        end
    else
        if enemyDiff > 0 then
            local ____opt_20 = rankMultipleConfigMap[enemyDiff]
            diffValue = ____opt_20 and ____opt_20.loseLowRankMultiple or 1
        elseif enemyDiff < 0 then
            local ____opt_22 = rankMultipleConfigMap[-enemyDiff]
            diffValue = ____opt_22 and ____opt_22.loseHighRankMultiple or 1
        end
    end
    local scoreChange = 0
    if isWin then
        scoreChange = scoreChange + selfRank.winScore
        if isMvp then
            scoreChange = scoreChange + selfRank.mvpScore
        end
        if isSingleMatch then
            scoreChange = math.floor(scoreChange * 1.2)
        end
    else
        scoreChange = scoreChange - selfRank.loseScore
        if isMvp then
            scoreChange = scoreChange + selfRank.smvpScore
        end
        if isSingleMatch then
            if selfScore < 1000 then
                scoreChange = 0
            else
                scoreChange = math.floor(scoreChange * 0.8)
            end
        end
    end
    scoreChange = scoreChange * diffValue
    local repayDebt = 0
    if debtScore > 0 then
        if season_continuous_win_count >= 3 then
            repayDebt = math.min(
                fixedRandom ~= nil and fixedRandom or localRandom:randomRange(2, 4),
                debtScore
            )
        else
            repayDebt = math.min(
                fixedRandom ~= nil and fixedRandom or localRandom:randomRange(1, 2),
                debtScore
            )
        end
    end
    scoreChange = scoreChange - repayDebt
    scoreChange = math.floor(scoreChange)
    local resultScore = selfScore + scoreChange
    local resultDebt = debtScore - repayDebt
    if selfScore + scoreChange < selfRank.totalScore then
        if selfRank.notFallInRank or selfScore > selfRank.totalScore then
            local residueScore = selfScore - selfRank.totalScore
            resultScore = selfRank.totalScore
            resultDebt = resultDebt - scoreChange
            resultDebt = resultDebt - residueScore
            scoreChange = -residueScore
        else
            local change = math.max(scoreChange, -25)
            local offset = scoreChange - change
            resultScore = selfScore + change
            resultDebt = resultDebt - offset
            scoreChange = change
        end
    end
    if not selfRank.debtScore then
        repayDebt = 0
        resultDebt = 0
    end
    return {
        score = scoreChange,
        repayDebt = repayDebt,
        oldScore = selfScore,
        resultScore = resultScore,
        resultDebt = resultDebt
    }
end
function LadderTournamentManager.prototype.commitRank(self)
    local ____console_log_26 = console.log
    local ____opt_24 = archive.statData.seasonSateInfo
    ____console_log_26(console, "提交赛季排行榜", ____opt_24 and ____opt_24.score)
    local ____self_29 = self:getCurrentSeasonRankInfo()
    local ____self_29_setRank_30 = ____self_29.setRank
    local ____opt_27 = archive.statData.seasonSateInfo
    ____self_29_setRank_30(____self_29, ____opt_27 and ____opt_27.score or 0)
end
function LadderTournamentManager.prototype.setIsSingleMatch(self, singleMatch)
    archive.statData.singleMatch = singleMatch
end
function LadderTournamentManager.prototype.checkTask(self, taskId)
    local config = seasonTaskConfigMap[taskId]
    return self:checkTaskCondition(config.taskCondition1, config.taskValue1) or self:checkTaskCondition(config.taskCondition2, config.taskValue2)
end
function LadderTournamentManager.prototype.checkTaskCondition(self, id, value)
    if id == 0 then
        return false
    end
    if id == 1 then
        local ____opt_31 = archive.statData.seasonSateInfo
        return (____opt_31 and ____opt_31.max_score or 0) >= value
    elseif id == 2 then
        local ____opt_33 = archive.statData.seasonSateInfo
        return (____opt_33 and ____opt_33.season_complete_count or 0) >= value
    elseif id == 3 then
        local ____opt_35 = archive.statData.seasonSateInfo
        return (____opt_35 and ____opt_35.single_complete_count or 0) >= value
    elseif id == 4 then
        local ____opt_37 = archive.statData.seasonSateInfo
        local ____temp_41 = (____opt_37 and ____opt_37.single_complete_count or 0) * 1.5
        local ____opt_39 = archive.statData.seasonSateInfo
        return ____temp_41 + (____opt_39 and ____opt_39.multi_complete_count or 0) >= value
    else
        console:error("checkTaskCondition 未知的条件" .. tostring(value))
        return false
    end
end
function LadderTournamentManager.prototype.getConditionText(self, config)
    return self:getConditionTextValue(config.taskCondition1, config.taskValue1) .. self:getConditionTextValue(config.taskCondition2, config.taskValue2)
end
function LadderTournamentManager.prototype.getConditionTextValue(self, id, value)
    if id == 0 then
        return ""
    end
    if id == 1 then
        return ""
    elseif id == 2 then
        local ____opt_42 = archive.statData.seasonSateInfo
        return ((("(" .. tostring(____opt_42 and ____opt_42.season_complete_count or 0)) .. "/") .. tostring(value)) .. ")"
    elseif id == 3 then
        local ____opt_44 = archive.statData.seasonSateInfo
        return ((("(" .. tostring(____opt_44 and ____opt_44.single_complete_count or 0)) .. "/") .. tostring(value)) .. ")"
    elseif id == 4 then
        local ____opt_46 = archive.statData.seasonSateInfo
        local ____temp_50 = (____opt_46 and ____opt_46.single_complete_count or 0) * 1.5
        local ____opt_48 = archive.statData.seasonSateInfo
        return ((("(" .. tostring(____temp_50 + (____opt_48 and ____opt_48.multi_complete_count or 0))) .. "/") .. tostring(value)) .. ")"
    else
        console:error("checkTaskCondition 未知的条件" .. tostring(value))
        return ""
    end
end
function LadderTournamentManager.prototype.isCanGetReward(self, taskId)
    if archive.statData.seasonSateInfo == nil then
        return false
    end
    return archive.statData.seasonSateInfo.taskReward["" .. tostring(taskId)] ~= true and self:checkTask(taskId)
end
function LadderTournamentManager.prototype.getReward(self, taskId)
    if not self:isCanGetReward(taskId) then
        return
    end
    local config = seasonTaskConfigMap[taskId]
    rewardManager:rewardItems(
        __TS__ArrayMap(
            config.propId,
            function(____, a) return a.id end
        ),
        config.num
    )
    archive.statData.seasonSateInfo.taskReward["" .. tostring(taskId)] = true
end
function LadderTournamentManager.prototype.isCanGetSeasonReward(self)
    if archive.statData.seasonSateInfo == nil then
        return false
    end
    if archive.statData.seasonSateInfo.isGotReward == true then
        return false
    end
    if self.now <= self:getCurrentSeason().endTime then
        return false
    end
    return true
end
function LadderTournamentManager.prototype.isCanGetLastSeasonReward(self)
    if archive.statData.seasonSateInfoReward == nil then
        return false
    end
    if archive.statData.seasonSateInfoReward.isGotReward == true then
        return false
    end
    if self:getLastSeason() == nil then
        return false
    end
    if self.now <= self:getLastSeason().endTime then
        return false
    end
    return true
end
function LadderTournamentManager.prototype.getSeasonReward(self)
    local data
    if self:isCanGetLastSeasonReward() then
        data = archive.statData.seasonSateInfoReward
    elseif self:isCanGetSeasonReward() then
        data = archive.statData.seasonSateInfo
    else
        return
    end
    local config = rankSeasonConfigMap[data.seasonIndex]
    local rank = self:getRank(data.score)
    local reward = config["reward" .. tostring(rank.rewardId)]
    if reward ~= nil and type(reward[1]) == "number" and type(reward[2]) == "number" then
        rewardManager:rewardItem(reward[1], reward[2])
    end
    data.isGotReward = true
end
function LadderTournamentManager.prototype.isRestTime(self)
    return not (self.now > self:getCurrentSeason().startTime and self.now < self:getCurrentSeason().endTime)
end
____exports.ladderTournamentManager = __TS__New(____exports.LadderTournamentManager)
return ____exports
