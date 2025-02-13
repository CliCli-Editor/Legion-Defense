local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 6,["15"] = 6,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 17,["31"] = 17,["32"] = 17,["34"] = 17,["35"] = 19,["36"] = 20,["37"] = 21,["38"] = 22,["39"] = 23,["40"] = 24,["41"] = 19,["42"] = 27,["43"] = 28,["44"] = 27,["45"] = 31,["46"] = 32,["47"] = 31,["48"] = 35,["49"] = 36,["50"] = 37,["51"] = 38,["52"] = 39,["53"] = 40,["54"] = 35,["55"] = 43,["56"] = 44,["57"] = 43,["58"] = 47,["59"] = 48,["60"] = 49,["61"] = 50,["62"] = 51,["63"] = 52,["64"] = 47,["65"] = 55,["66"] = 56,["67"] = 57,["68"] = 58,["70"] = 60,["71"] = 61,["72"] = 62,["73"] = 63,["74"] = 64,["76"] = 66,["77"] = 67,["80"] = 70,["81"] = 71,["82"] = 72,["83"] = 73,["85"] = 75,["86"] = 76,["89"] = 55,["90"] = 81,["91"] = 82,["92"] = 83,["93"] = 84,["95"] = 87,["96"] = 88,["97"] = 90,["98"] = 91,["99"] = 92,["100"] = 93,["101"] = 94,["102"] = 95,["103"] = 96,["104"] = 97,["105"] = 98,["106"] = 99,["107"] = 100,["108"] = 101,["109"] = 102,["110"] = 103,["111"] = 104,["113"] = 106,["114"] = 107,["116"] = 109,["117"] = 110,["119"] = 81,["120"] = 115,["121"] = 116,["122"] = 117,["123"] = 118,["124"] = 115,["125"] = 121,["126"] = 136,["127"] = 137,["128"] = 138,["129"] = 139,["130"] = 141,["131"] = 142,["133"] = 150,["134"] = 151,["135"] = 153,["136"] = 154,["137"] = 155,["138"] = 156,["141"] = 159,["142"] = 160,["143"] = 161,["147"] = 166,["148"] = 167,["149"] = 168,["151"] = 170,["154"] = 173,["155"] = 174,["157"] = 176,["161"] = 181,["162"] = 182,["163"] = 184,["164"] = 184,["165"] = 184,["166"] = 184,["167"] = 185,["168"] = 186,["169"] = 188,["170"] = 188,["171"] = 188,["172"] = 188,["173"] = 188,["174"] = 188,["175"] = 188,["176"] = 189,["177"] = 190,["178"] = 191,["179"] = 192,["180"] = 193,["182"] = 195,["183"] = 196,["185"] = 198,["186"] = 198,["187"] = 198,["188"] = 198,["189"] = 198,["190"] = 198,["191"] = 198,["192"] = 198,["193"] = 198,["194"] = 198,["195"] = 198,["196"] = 198,["197"] = 198,["198"] = 211,["199"] = 121,["200"] = 214,["201"] = 216,["204"] = 220,["205"] = 221,["206"] = 222,["208"] = 214,["209"] = 231,["210"] = 233,["211"] = 234,["212"] = 235,["213"] = 235,["214"] = 235,["215"] = 235,["216"] = 235,["217"] = 235,["218"] = 235,["219"] = 236,["220"] = 236,["221"] = 236,["222"] = 236,["223"] = 238,["224"] = 238,["225"] = 238,["226"] = 238,["228"] = 238,["229"] = 238,["230"] = 238,["231"] = 238,["233"] = 238,["234"] = 239,["235"] = 239,["236"] = 239,["237"] = 239,["238"] = 239,["239"] = 239,["240"] = 239,["241"] = 239,["242"] = 239,["243"] = 239,["244"] = 239,["245"] = 239,["246"] = 240,["247"] = 240,["248"] = 240,["249"] = 240,["250"] = 231,["251"] = 243,["252"] = 245,["253"] = 245,["254"] = 245,["255"] = 245,["256"] = 246,["257"] = 247,["259"] = 249,["261"] = 243,["262"] = 254});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
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
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.MatchManager = __TS__Class()
local MatchManager = ____exports.MatchManager
MatchManager.name = "MatchManager"
function MatchManager.prototype.____constructor(self)
end
function MatchManager.prototype.getCurrentWeekRankInfo(self)
    local index = dateUtils:getCurrentWeekIndex() % 3
    local rankInfo = archive.matchRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("本周排行榜" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”")
    return rankInfo
end
function MatchManager.prototype.getCurrentWeekRank(self)
    return self:getCurrentWeekRankInfo():getRankData(200)
end
function MatchManager.prototype.getLastWeekRank(self)
    return self:getLastWeekRankInfo():getRankData(200)
end
function MatchManager.prototype.getLastWeekRankInfo(self)
    local index = (3 + dateUtils:getCurrentWeekIndex() - 1) % 3
    local rankInfo = archive.matchRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("上周排行榜" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”")
    return rankInfo
end
function MatchManager.prototype.getTotalWeekRank(self)
    return archive.matchRankTotalInfo:getRankData(200)
end
function MatchManager.prototype.getNeedClearRankSlot(self)
    local index = (3 + dateUtils:getCurrentWeekIndex() - 2) % 3
    local rankInfo = archive.matchRankInfo[index + 1]
    local slot = rankInfo:getSlot()
    console:log(((("需要清除的排行榜数据名称为“比赛周排行" .. tostring(index + 1)) .. "”，槽位为“") .. tostring(slot)) .. "”，请小心操作！！")
    return slot
end
function MatchManager.prototype.getDailyReward(self)
    if archive.statInfo:isGotMatchRewardFlag() then
        console:log("领取奖励失败，不可重复领取奖励")
        return false
    end
    if __TS__ArrayIndexOf(defaultConfig["比赛不限制积分日期"], dateUtils.startWeekDay) ~= -1 then
        if archive.statInfo:getDailyCompleteMatchGameCount() >= defaultConfig["比赛奖励周末_次数"] then
            rewardManager:drop(defaultConfig["比赛奖励周末_掉落ID"])
            archive.statInfo:setGotMatchRewardFlag()
            return true
        else
            console:log("条件未达成，无法领取周末奖励")
            return false
        end
    else
        if archive.statInfo:getDailyCompleteMatchGameCount() >= defaultConfig["比赛奖励工作日_次数"] then
            rewardManager:drop(defaultConfig["比赛奖励工作日_掉落ID"])
            archive.statInfo:setGotMatchRewardFlag()
            return true
        else
            console:log("条件未达成，无法领取工作日奖励")
            return false
        end
    end
end
function MatchManager.prototype.getLastWeekReward(self)
    if archive.statInfo:isGotMatchWeekRewardFlag() then
        console:log("领取奖励失败，不可重复领取周奖励")
        return false
    end
    local info = self:getLastWeekRankInfo()
    local rank = info:getSelfRank()
    if rank > 0 and rank <= 200 then
        if rank == 1 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第1名"])
        elseif rank == 2 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第2名"])
        elseif rank == 3 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第3名"])
        elseif rank <= 10 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第4_10名"])
        elseif rank <= 50 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第11_50名"])
        elseif rank <= 100 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第51_100名"])
        elseif rank <= 200 then
            rewardManager:drop(defaultConfig["比赛奖励周奖励第101_200名"])
        end
        archive.statInfo:setGotMatchWeekRewardFlag()
        return true
    else
        console:log("只有200名能可获得奖励")
        return false
    end
end
function MatchManager.prototype.canGetWeekReward(self)
    local info = self:getLastWeekRankInfo()
    local rank = info:getSelfRank()
    return rank > 0 and rank <= 200 and not archive.statInfo:isGotMatchWeekRewardFlag()
end
function MatchManager.prototype.getScore(self)
    local id = y3.player.get_local().id
    local playerData = datas.players[id]:getSingle(PlayerData)
    local statData = datas.players[id]:getSingle(PlayerStatisticsData)
    local archiveData = datas.players[id]:getSingle(InGameArchiveData)
    if not isPvpMode(nil) or isPvpModeRobot(nil) or isPvpModeRandom(nil) or archiveData.statInfo ~= nil and archiveData.statInfo.last_game_idle > 0 then
        return {score = 0, limit = false, is_idle = false}
    end
    local score = 0
    if __TS__ArrayIndexOf(defaultConfig["比赛不限制积分日期"], dateUtils.startWeekDay) == -1 then
        if playerData.isWin then
            score = score + 30
            if statData.isMvp then
                score = score + 10
            end
        else
            score = score + 10
            if statData.isSMvp then
                score = score + 10
            end
        end
    else
        if playerData.isWin then
            if statData.isMvp then
                score = score + 100
            else
                score = score + 80
            end
        else
            if statData.isSMvp then
                score = score + 20
            else
                score = score + 0
            end
        end
    end
    local daily_get = 0
    local daily_limit = 0
    console:log(
        "getScore",
        (((((tostring(dateUtils.startWeekDay) .. " inputScore=") .. tostring(score)) .. " archive.statInfo.getDailyMatchScore()=") .. tostring(archive.statInfo:getDailyMatchScore())) .. " defaultConfig.比赛工作日积分限制 - archive.statInfo.getDailyMatchScore()= ") .. tostring(defaultConfig["比赛工作日积分限制"] - archive.statInfo:getDailyMatchScore())
    )
    local limit = false
    if __TS__ArrayIndexOf(defaultConfig["比赛不限制积分日期"], dateUtils.startWeekDay) == -1 then
        local s = math.max(
            math.min(
                defaultConfig["比赛工作日积分限制"] - archive.statInfo:getDailyMatchScore(),
                score
            ),
            0
        )
        console:log((("getScore2 " .. tostring(s)) .. " ") .. tostring(score))
        if s < score then
            limit = true
            score = s
            console:log((("getScore2 " .. tostring(limit)) .. " ") .. tostring(score))
        end
        daily_limit = defaultConfig["比赛工作日积分限制"]
        daily_get = archive.statInfo:getDailyMatchScore() + score
    end
    local ____localData_rewards_0 = localData.rewards
    ____localData_rewards_0[#____localData_rewards_0 + 1] = {
        id = 4,
        total = score,
        base = score,
        add = 0,
        ext_add = 0,
        first_add = 0,
        daily_limit = daily_limit,
        daily_get = daily_get,
        weekly_get = 0,
        weekly_limit = 0
    }
    return {score = score, limit = limit, is_idle = false}
end
function MatchManager.prototype.endMatch(self, score)
    if not isPvpMode(nil) or isPvpModeRobot(nil) or isPvpModeRandom(nil) then
        return
    end
    if score > 0 then
        archive.statInfo:addMatchScore(score)
        self:commitRank()
    end
end
function MatchManager.prototype.commitRank(self)
    console:log("提交比赛排行榜")
    local totalWinP = archive.statInfo.data.match_complete_count == 0 and 0 or math.floor(archive.statInfo.data.match_win_count / archive.statInfo.data.match_complete_count * 1000)
    console:log(
        "结算总胜率",
        archive.statInfo.data.match_win_count,
        archive.statInfo.data.match_complete_count,
        totalWinP,
        archive.statInfo:getTotalMatchScore()
    )
    archive.matchRankTotalInfo:setRank(
        archive.statInfo:getTotalMatchScore(),
        totalWinP
    )
    local ____temp_8
    local ____opt_1 = archive.statInfo.data.weekSateInfo
    if (____opt_1 and ____opt_1.match_complete_count or 0) == 0 then
        ____temp_8 = 0
    else
        local ____opt_3 = archive.statInfo.data.weekSateInfo
        local ____temp_7 = ____opt_3 and ____opt_3.match_win_count or 0
        local ____opt_5 = archive.statInfo.data.weekSateInfo
        ____temp_8 = math.floor(____temp_7 / (____opt_5 and ____opt_5.match_complete_count or 1) * 1000)
    end
    local weekWinP = ____temp_8
    local ____console_log_14 = console.log
    local ____opt_9 = archive.statInfo.data.weekSateInfo
    local ____temp_13 = ____opt_9 and ____opt_9.match_win_count or 0
    local ____opt_11 = archive.statInfo.data.weekSateInfo
    ____console_log_14(
        console,
        "结算周胜率",
        ____temp_13,
        ____opt_11 and ____opt_11.match_complete_count or 0,
        weekWinP,
        archive.statInfo:getWeekMatchScore()
    )
    self:getCurrentWeekRankInfo():setRank(
        archive.statInfo:getWeekMatchScore(),
        weekWinP
    )
end
function MatchManager.prototype.isMatchEnd(self)
    console:log(
        "Date.now()",
        Date:now()
    )
    if Date:now() > 1729440000000 then
        return true
    else
        return false
    end
end
____exports.matchManager = __TS__New(____exports.MatchManager)
return ____exports
