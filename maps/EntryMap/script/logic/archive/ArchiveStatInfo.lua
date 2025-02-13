local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 5,["15"] = 5,["16"] = 7,["17"] = 7,["18"] = 8,["19"] = 8,["20"] = 9,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 13,["31"] = 13,["32"] = 20,["33"] = 20,["34"] = 20,["35"] = 20,["37"] = 20,["38"] = 21,["39"] = 22,["40"] = 20,["41"] = 23,["42"] = 24,["43"] = 24,["44"] = 24,["45"] = 24,["46"] = 24,["47"] = 29,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 29,["53"] = 29,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 29,["61"] = 29,["62"] = 29,["63"] = 29,["64"] = 29,["65"] = 29,["66"] = 29,["67"] = 29,["68"] = 29,["69"] = 29,["70"] = 29,["71"] = 24,["72"] = 24,["73"] = 59,["74"] = 59,["75"] = 59,["76"] = 59,["77"] = 59,["78"] = 59,["79"] = 59,["80"] = 59,["81"] = 59,["82"] = 59,["83"] = 59,["84"] = 59,["85"] = 59,["86"] = 59,["87"] = 59,["88"] = 59,["89"] = 59,["90"] = 59,["91"] = 59,["92"] = 59,["93"] = 24,["94"] = 24,["95"] = 24,["96"] = 24,["97"] = 24,["98"] = 24,["99"] = 24,["100"] = 24,["101"] = 24,["102"] = 24,["103"] = 24,["104"] = 24,["105"] = 24,["106"] = 24,["107"] = 24,["108"] = 24,["109"] = 24,["110"] = 24,["111"] = 24,["112"] = 24,["113"] = 24,["114"] = 24,["115"] = 24,["116"] = 24,["117"] = 24,["118"] = 24,["119"] = 24,["120"] = 23,["121"] = 119,["122"] = 122,["123"] = 123,["125"] = 126,["126"] = 128,["127"] = 129,["128"] = 129,["129"] = 129,["130"] = 129,["131"] = 129,["132"] = 129,["133"] = 129,["134"] = 129,["135"] = 129,["136"] = 129,["137"] = 129,["138"] = 129,["139"] = 129,["140"] = 129,["141"] = 129,["142"] = 129,["143"] = 129,["144"] = 129,["145"] = 129,["146"] = 129,["147"] = 129,["148"] = 129,["149"] = 129,["150"] = 129,["151"] = 129,["152"] = 156,["153"] = 157,["155"] = 162,["156"] = 162,["158"] = 165,["160"] = 168,["161"] = 169,["162"] = 170,["163"] = 170,["164"] = 170,["165"] = 170,["166"] = 170,["167"] = 170,["168"] = 170,["169"] = 170,["170"] = 170,["171"] = 170,["172"] = 170,["173"] = 170,["174"] = 170,["175"] = 170,["176"] = 170,["177"] = 170,["178"] = 170,["179"] = 170,["180"] = 170,["181"] = 170,["182"] = 170,["184"] = 196,["185"] = 197,["187"] = 199,["188"] = 200,["190"] = 202,["191"] = 203,["193"] = 206,["194"] = 206,["195"] = 208,["196"] = 209,["197"] = 209,["198"] = 210,["200"] = 218,["204"] = 218,["205"] = 219,["206"] = 220,["207"] = 221,["208"] = 222,["209"] = 223,["211"] = 226,["212"] = 226,["213"] = 226,["214"] = 226,["215"] = 226,["216"] = 226,["217"] = 226,["218"] = 226,["219"] = 226,["220"] = 226,["221"] = 226,["222"] = 226,["223"] = 226,["224"] = 226,["225"] = 226,["226"] = 226,["227"] = 226,["228"] = 226,["229"] = 226,["230"] = 226,["231"] = 226,["232"] = 254,["233"] = 254,["234"] = 254,["235"] = 254,["236"] = 254,["237"] = 254,["238"] = 254,["239"] = 254,["240"] = 254,["241"] = 254,["243"] = 258,["244"] = 119,["245"] = 261,["246"] = 262,["247"] = 262,["248"] = 261,["249"] = 264,["250"] = 264,["251"] = 268,["252"] = 269,["253"] = 271,["254"] = 272,["255"] = 273,["256"] = 275,["257"] = 276,["258"] = 279,["259"] = 281,["260"] = 282,["261"] = 283,["262"] = 283,["264"] = 285,["265"] = 287,["266"] = 288,["267"] = 289,["268"] = 289,["269"] = 289,["270"] = 289,["271"] = 293,["273"] = 295,["275"] = 298,["277"] = 303,["278"] = 303,["279"] = 304,["280"] = 304,["281"] = 305,["282"] = 305,["283"] = 306,["284"] = 307,["285"] = 307,["286"] = 308,["287"] = 308,["288"] = 309,["289"] = 309,["291"] = 311,["292"] = 311,["293"] = 312,["294"] = 312,["295"] = 313,["296"] = 313,["298"] = 315,["299"] = 316,["300"] = 316,["301"] = 317,["302"] = 317,["303"] = 318,["304"] = 318,["305"] = 319,["306"] = 320,["307"] = 320,["308"] = 321,["309"] = 321,["310"] = 322,["311"] = 322,["315"] = 328,["316"] = 328,["317"] = 329,["318"] = 329,["319"] = 330,["320"] = 330,["321"] = 331,["322"] = 332,["323"] = 332,["324"] = 333,["325"] = 333,["326"] = 334,["327"] = 334,["329"] = 336,["330"] = 336,["331"] = 337,["332"] = 337,["333"] = 338,["334"] = 338,["336"] = 340,["337"] = 341,["338"] = 341,["339"] = 342,["340"] = 342,["341"] = 343,["342"] = 343,["343"] = 344,["344"] = 345,["345"] = 345,["346"] = 346,["347"] = 346,["348"] = 347,["349"] = 347,["352"] = 351,["353"] = 352,["354"] = 353,["355"] = 353,["356"] = 354,["359"] = 358,["360"] = 358,["361"] = 359,["362"] = 359,["363"] = 360,["364"] = 360,["365"] = 362,["366"] = 363,["367"] = 363,["368"] = 364,["369"] = 364,["370"] = 365,["371"] = 365,["373"] = 367,["374"] = 367,["375"] = 368,["376"] = 368,["377"] = 369,["378"] = 369,["380"] = 371,["381"] = 372,["382"] = 372,["383"] = 373,["384"] = 373,["385"] = 374,["386"] = 374,["387"] = 375,["388"] = 376,["389"] = 376,["390"] = 377,["391"] = 377,["392"] = 378,["393"] = 378,["396"] = 384,["397"] = 385,["398"] = 385,["399"] = 386,["401"] = 389,["402"] = 268,["403"] = 391,["404"] = 392,["405"] = 392,["406"] = 391,["407"] = 394,["408"] = 394,["409"] = 397,["412"] = 399,["413"] = 399,["414"] = 399,["415"] = 399,["417"] = 398,["420"] = 401,["422"] = 398,["424"] = 397,["425"] = 405,["426"] = 406,["427"] = 407,["429"] = 409,["430"] = 409,["431"] = 405,["432"] = 415,["433"] = 416,["434"] = 415,["435"] = 422,["436"] = 423,["437"] = 423,["438"] = 422,["439"] = 429,["440"] = 430,["441"] = 429,["442"] = 435,["443"] = 436,["444"] = 436,["445"] = 435,["446"] = 442,["447"] = 443,["448"] = 442,["449"] = 449,["450"] = 450,["451"] = 450,["452"] = 449,["453"] = 456,["454"] = 457,["455"] = 457,["456"] = 456,["457"] = 460,["458"] = 461,["459"] = 461,["460"] = 462,["461"] = 461,["462"] = 460,["463"] = 474,["464"] = 475,["465"] = 475,["467"] = 476,["468"] = 474,["469"] = 479,["470"] = 480,["473"] = 481,["474"] = 479,["475"] = 483,["476"] = 484,["477"] = 483,["478"] = 487,["479"] = 488,["480"] = 488,["481"] = 487,["482"] = 490,["483"] = 491,["484"] = 491,["485"] = 490,["486"] = 493,["487"] = 494,["488"] = 493,["489"] = 497,["490"] = 498,["491"] = 498,["492"] = 497,["493"] = 501,["494"] = 502,["495"] = 502,["496"] = 501,["497"] = 505,["498"] = 506,["499"] = 505,["500"] = 509,["501"] = 510,["502"] = 510,["503"] = 511,["504"] = 511,["505"] = 512,["506"] = 512,["507"] = 509,["508"] = 515,["509"] = 516,["510"] = 515,["511"] = 519,["512"] = 520,["513"] = 519,["514"] = 523,["515"] = 524,["516"] = 524,["517"] = 525,["518"] = 525,["519"] = 523,["520"] = 528,["521"] = 529,["522"] = 530,["523"] = 530,["525"] = 528,["526"] = 533,["527"] = 534,["528"] = 533,["533"] = 116});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local isPvpModeRandom = ____BobInfo.isPvpModeRandom
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS = ____SafeTableUtils.LoopS
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.ArchiveStatInfo = __TS__Class()
local ArchiveStatInfo = ____exports.ArchiveStatInfo
ArchiveStatInfo.name = "ArchiveStatInfo"
__TS__ClassExtends(ArchiveStatInfo, ArchiveBaseProto)
function ArchiveStatInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveStatInfo"
    self.slot = 3
end
function ArchiveStatInfo.prototype.default(self)
    return {
        version = 1,
        escape_count = 0,
        play_count = 0,
        guide_count = 0,
        dailySateInfo = {
            dateKey = 0,
            wealMonsterCount = 0,
            match_complete_count = 0,
            gotMatchReward = false,
            win_count = 0,
            match_score = 0,
            login_reward_diamond = 0,
            playVideo = false,
            pve_complete_count = 0,
            pve_win_count = 0,
            pve_lose_count = 0,
            pve_mvp = 0,
            pve_smvp = 0,
            pvp_complete_count = 0,
            pvp_win_count = 0,
            pvp_lose_count = 0,
            pvp_mvp = 0,
            pvp_smvp = 0,
            match_win_count = 0,
            match_lose_count = 0,
            match_mvp = 0,
            match_smvp = 0,
            ladder_lose_vip_protect_count = 0
        },
        sevenDayInfo = {signin_count = 0, reward_count = 0},
        weekSateInfo = {
            weekIndex = 0,
            gotMatchReward = false,
            currentDiamond = 0,
            match_score = 0,
            match_complete_count = 0,
            pve_complete_count = 0,
            pve_win_count = 0,
            pve_lose_count = 0,
            pve_mvp = 0,
            pve_smvp = 0,
            pvp_complete_count = 0,
            pvp_win_count = 0,
            pvp_lose_count = 0,
            pvp_mvp = 0,
            pvp_smvp = 0,
            match_win_count = 0,
            match_lose_count = 0,
            match_mvp = 0,
            match_smvp = 0
        },
        match_score = 0,
        match_win_count = 0,
        match_complete_count = 0,
        match_lose_count = 0,
        match_mvp = 0,
        match_smvp = 0,
        pve_complete_count = 0,
        pve_win_count = 0,
        pve_lose_count = 0,
        pve_mvp = 0,
        pve_smvp = 0,
        pvp_complete_count = 0,
        pvp_win_count = 0,
        pvp_lose_count = 0,
        pvp_mvp = 0,
        pvp_smvp = 0,
        idle_count = 0,
        last_game_idle = 0,
        idle_report_count = 0,
        seasonSateInfo = nil,
        seasonSateInfoReward = nil,
        highestSeasonScore = 0,
        singleMatch = false,
        highestSeasonScoreInSeason = {},
        newbieTaskInfo = {taskId = 0, count = 0, completed = false}
    }
end
function ArchiveStatInfo.prototype.startGame(self)
    if self.data.guide_count == nil then
        self.data.guide_count = 0
    end
    local key = dateUtils:getDateKey()
    if self.data.dailySateInfo == nil or self.data.dailySateInfo.dateKey ~= key then
        self.data.dailySateInfo = LoopS({
            dateKey = key,
            wealMonsterCount = 0,
            match_complete_count = 0,
            gotMatchReward = false,
            win_count = 0,
            match_score = 0,
            login_reward_diamond = 0,
            playVideo = false,
            pve_complete_count = 0,
            pve_win_count = 0,
            pve_lose_count = 0,
            pve_mvp = 0,
            pve_smvp = 0,
            pvp_complete_count = 0,
            pvp_win_count = 0,
            pvp_lose_count = 0,
            pvp_mvp = 0,
            pvp_smvp = 0,
            match_win_count = 0,
            match_lose_count = 0,
            match_mvp = 0,
            match_smvp = 0,
            ladder_lose_vip_protect_count = 0
        })
        if self.data.sevenDayInfo == nil then
            self.data.sevenDayInfo = LoopS({signin_count = 1, reward_count = 0})
        else
            local ____self_data_sevenDayInfo_0, ____signin_count_1 = self.data.sevenDayInfo, "signin_count"
            ____self_data_sevenDayInfo_0[____signin_count_1] = ____self_data_sevenDayInfo_0[____signin_count_1] + 1
        end
        self.archive.playerInfo:dailyReward()
    end
    local weekIndex = dateUtils:getCurrentWeekIndex()
    if self.data.weekSateInfo == nil or self.data.weekSateInfo.weekIndex ~= weekIndex then
        self.data.weekSateInfo = LoopS({
            weekIndex = weekIndex,
            gotMatchReward = false,
            currentDiamond = 0,
            match_score = 0,
            match_complete_count = 0,
            pve_complete_count = 0,
            pve_win_count = 0,
            pve_lose_count = 0,
            pve_mvp = 0,
            pve_smvp = 0,
            pvp_complete_count = 0,
            pvp_win_count = 0,
            pvp_lose_count = 0,
            pvp_mvp = 0,
            pvp_smvp = 0,
            match_win_count = 0,
            match_lose_count = 0,
            match_mvp = 0,
            match_smvp = 0
        })
    end
    if self.data.last_game_idle == nil then
        self.data.last_game_idle = 0
    end
    if self.data.idle_count == nil then
        self.data.idle_count = 0
    end
    if self.data.idle_report_count == nil then
        self.data.idle_report_count = 0
    end
    local ____require_result_2 = include("logic.archive.manager.LadderTournamentManager")
    local ladderTournamentManager = ____require_result_2.ladderTournamentManager
    if self.data.seasonSateInfo == nil or self.data.seasonSateInfo.seasonIndex ~= ladderTournamentManager:getCurrentSeason().seasonIndex then
        local ____opt_3 = self.data.seasonSateInfo
        if (____opt_3 and ____opt_3.score) ~= nil then
            self.data.seasonSateInfoReward = self.data.seasonSateInfo
        end
        local ____opt_5 = self.data.seasonSateInfo
        --- 新赛季积分继承规则：
        -- 钻石以上白银开始
        -- 王者以上黄金开始
        local oldScore = ____opt_5 and ____opt_5.score or 0
        local newScore = 0
        if oldScore >= 2500 then
            newScore = 1000
        elseif oldScore >= 2000 then
            newScore = 500
        end
        self.data.seasonSateInfo = LoopS({
            seasonIndex = ladderTournamentManager:getCurrentSeason().seasonIndex,
            score = newScore,
            debtScore = 0,
            isPlaying = false,
            season_complete_count = 0,
            season_win_count = 0,
            season_lose_count = 0,
            season_mvp = 0,
            season_smvp = 0,
            season_continuous_win_count = 0,
            max_score = newScore,
            isGotReward = false,
            taskReward = {},
            single_complete_count = 0,
            single_win_count = 0,
            single_lose_count = 0,
            multi_complete_count = 0,
            multi_win_count = 0,
            multi_lose_count = 0
        })
        local ____console_log_10 = console.log
        local ____self_data_seasonSateInfo_score_9 = self.data.seasonSateInfo.score
        local ____opt_7 = self.data.seasonSateInfoReward
        ____console_log_10(
            console,
            "刷新赛季",
            ____self_data_seasonSateInfo_score_9,
            "上一赛季积分",
            ____opt_7 and ____opt_7.score
        )
    end
    self:useIdle()
end
function ArchiveStatInfo.prototype.start(self)
    local ____self_data_11, ____play_count_12 = self.data, "play_count"
    ____self_data_11[____play_count_12] = ____self_data_11[____play_count_12] + 1
end
function ArchiveStatInfo.prototype.afterEndGame(self)
end
function ArchiveStatInfo.prototype.endGame(self)
    local isPVP = isPvpMode(nil)
    local id = y3.player.get_local().id
    local playerData = datas.players[id]:getSingle(PlayerData)
    local statData = datas.players[id]:getSingle(PlayerStatisticsData)
    if isPVP then
        if statData.matchScoreLimit then
            if isPvpModeRobot(nil) then
                if playerData.isWin then
                    if self.archive.playerData.singleModeChooseLevel == self.archive.playerData.singleModeUnlockLevel + 1 then
                        local ____self_archive_playerData_13, ____singleModeUnlockLevel_14 = self.archive.playerData, "singleModeUnlockLevel"
                        ____self_archive_playerData_13[____singleModeUnlockLevel_14] = ____self_archive_playerData_13[____singleModeUnlockLevel_14] + 1
                    end
                    local ____ = self.archive.playerData.singleModePassLevel["" .. tostring(self.archive.playerData.singleModeChooseLevel)]
                    local data = self.archive.playerData.singleModePassLevel["" .. tostring(self.archive.playerData.singleModeChooseLevel)]
                    if data == nil then
                        data = {
                            passTimes = 0,
                            firstPassTime = Date:now()
                        }
                        self.archive.playerData.singleModePassLevel["" .. tostring(self.archive.playerData.singleModeChooseLevel)] = data
                    end
                    data.passTimes = data.passTimes + 1
                end
            elseif isPvpModeRandom(nil) then
            else
                local ____self_data_15, ____pvp_complete_count_16 = self.data, "pvp_complete_count"
                ____self_data_15[____pvp_complete_count_16] = ____self_data_15[____pvp_complete_count_16] + 1
                local ____self_data_dailySateInfo_17, ____pvp_complete_count_18 = self.data.dailySateInfo, "pvp_complete_count"
                ____self_data_dailySateInfo_17[____pvp_complete_count_18] = ____self_data_dailySateInfo_17[____pvp_complete_count_18] + 1
                local ____self_data_weekSateInfo_19, ____pvp_complete_count_20 = self.data.weekSateInfo, "pvp_complete_count"
                ____self_data_weekSateInfo_19[____pvp_complete_count_20] = ____self_data_weekSateInfo_19[____pvp_complete_count_20] + 1
                if playerData.isWin then
                    local ____self_data_21, ____pvp_win_count_22 = self.data, "pvp_win_count"
                    ____self_data_21[____pvp_win_count_22] = ____self_data_21[____pvp_win_count_22] + 1
                    local ____self_data_dailySateInfo_23, ____pvp_win_count_24 = self.data.dailySateInfo, "pvp_win_count"
                    ____self_data_dailySateInfo_23[____pvp_win_count_24] = ____self_data_dailySateInfo_23[____pvp_win_count_24] + 1
                    local ____self_data_weekSateInfo_25, ____pvp_win_count_26 = self.data.weekSateInfo, "pvp_win_count"
                    ____self_data_weekSateInfo_25[____pvp_win_count_26] = ____self_data_weekSateInfo_25[____pvp_win_count_26] + 1
                else
                    local ____self_data_27, ____pvp_lose_count_28 = self.data, "pvp_lose_count"
                    ____self_data_27[____pvp_lose_count_28] = ____self_data_27[____pvp_lose_count_28] + 1
                    local ____self_data_dailySateInfo_29, ____pvp_lose_count_30 = self.data.dailySateInfo, "pvp_lose_count"
                    ____self_data_dailySateInfo_29[____pvp_lose_count_30] = ____self_data_dailySateInfo_29[____pvp_lose_count_30] + 1
                    local ____self_data_weekSateInfo_31, ____pvp_lose_count_32 = self.data.weekSateInfo, "pvp_lose_count"
                    ____self_data_weekSateInfo_31[____pvp_lose_count_32] = ____self_data_weekSateInfo_31[____pvp_lose_count_32] + 1
                end
                if statData.isMvp then
                    local ____self_data_33, ____pvp_mvp_34 = self.data, "pvp_mvp"
                    ____self_data_33[____pvp_mvp_34] = ____self_data_33[____pvp_mvp_34] + 1
                    local ____self_data_dailySateInfo_35, ____pvp_mvp_36 = self.data.dailySateInfo, "pvp_mvp"
                    ____self_data_dailySateInfo_35[____pvp_mvp_36] = ____self_data_dailySateInfo_35[____pvp_mvp_36] + 1
                    local ____self_data_weekSateInfo_37, ____pvp_mvp_38 = self.data.weekSateInfo, "pvp_mvp"
                    ____self_data_weekSateInfo_37[____pvp_mvp_38] = ____self_data_weekSateInfo_37[____pvp_mvp_38] + 1
                elseif statData.isSMvp then
                    local ____self_data_39, ____pvp_smvp_40 = self.data, "pvp_smvp"
                    ____self_data_39[____pvp_smvp_40] = ____self_data_39[____pvp_smvp_40] + 1
                    local ____self_data_dailySateInfo_41, ____pvp_smvp_42 = self.data.dailySateInfo, "pvp_smvp"
                    ____self_data_dailySateInfo_41[____pvp_smvp_42] = ____self_data_dailySateInfo_41[____pvp_smvp_42] + 1
                    local ____self_data_weekSateInfo_43, ____pvp_smvp_44 = self.data.weekSateInfo, "pvp_smvp"
                    ____self_data_weekSateInfo_43[____pvp_smvp_44] = ____self_data_weekSateInfo_43[____pvp_smvp_44] + 1
                end
            end
        else
            local ____self_data_45, ____match_complete_count_46 = self.data, "match_complete_count"
            ____self_data_45[____match_complete_count_46] = ____self_data_45[____match_complete_count_46] + 1
            local ____self_data_dailySateInfo_47, ____match_complete_count_48 = self.data.dailySateInfo, "match_complete_count"
            ____self_data_dailySateInfo_47[____match_complete_count_48] = ____self_data_dailySateInfo_47[____match_complete_count_48] + 1
            local ____self_data_weekSateInfo_49, ____match_complete_count_50 = self.data.weekSateInfo, "match_complete_count"
            ____self_data_weekSateInfo_49[____match_complete_count_50] = ____self_data_weekSateInfo_49[____match_complete_count_50] + 1
            if playerData.isWin then
                local ____self_data_51, ____match_win_count_52 = self.data, "match_win_count"
                ____self_data_51[____match_win_count_52] = ____self_data_51[____match_win_count_52] + 1
                local ____self_data_dailySateInfo_53, ____match_win_count_54 = self.data.dailySateInfo, "match_win_count"
                ____self_data_dailySateInfo_53[____match_win_count_54] = ____self_data_dailySateInfo_53[____match_win_count_54] + 1
                local ____self_data_weekSateInfo_55, ____match_win_count_56 = self.data.weekSateInfo, "match_win_count"
                ____self_data_weekSateInfo_55[____match_win_count_56] = ____self_data_weekSateInfo_55[____match_win_count_56] + 1
            else
                local ____self_data_57, ____match_lose_count_58 = self.data, "match_lose_count"
                ____self_data_57[____match_lose_count_58] = ____self_data_57[____match_lose_count_58] + 1
                local ____self_data_dailySateInfo_59, ____match_lose_count_60 = self.data.dailySateInfo, "match_lose_count"
                ____self_data_dailySateInfo_59[____match_lose_count_60] = ____self_data_dailySateInfo_59[____match_lose_count_60] + 1
                local ____self_data_weekSateInfo_61, ____match_lose_count_62 = self.data.weekSateInfo, "match_lose_count"
                ____self_data_weekSateInfo_61[____match_lose_count_62] = ____self_data_weekSateInfo_61[____match_lose_count_62] + 1
            end
            if statData.isMvp then
                local ____self_data_63, ____match_mvp_64 = self.data, "match_mvp"
                ____self_data_63[____match_mvp_64] = ____self_data_63[____match_mvp_64] + 1
                local ____self_data_dailySateInfo_65, ____match_mvp_66 = self.data.dailySateInfo, "match_mvp"
                ____self_data_dailySateInfo_65[____match_mvp_66] = ____self_data_dailySateInfo_65[____match_mvp_66] + 1
                local ____self_data_weekSateInfo_67, ____match_mvp_68 = self.data.weekSateInfo, "match_mvp"
                ____self_data_weekSateInfo_67[____match_mvp_68] = ____self_data_weekSateInfo_67[____match_mvp_68] + 1
            elseif statData.isSMvp then
                local ____self_data_69, ____match_smvp_70 = self.data, "match_smvp"
                ____self_data_69[____match_smvp_70] = ____self_data_69[____match_smvp_70] + 1
                local ____self_data_dailySateInfo_71, ____match_smvp_72 = self.data.dailySateInfo, "match_smvp"
                ____self_data_dailySateInfo_71[____match_smvp_72] = ____self_data_dailySateInfo_71[____match_smvp_72] + 1
                local ____self_data_weekSateInfo_73, ____match_smvp_74 = self.data.weekSateInfo, "match_smvp"
                ____self_data_weekSateInfo_73[____match_smvp_74] = ____self_data_weekSateInfo_73[____match_smvp_74] + 1
            end
        end
        if self:getDailyCompletePVPGameCount() == 1 then
            console:log("触发每日掉落")
            local ____require_result_75 = include("logic.archive.manager.RewardManager")
            local rewardManager = ____require_result_75.rewardManager
            rewardManager:drop(defaultConfig["每日任务奖励_掉落ID"])
        end
    else
        local ____self_data_76, ____pve_complete_count_77 = self.data, "pve_complete_count"
        ____self_data_76[____pve_complete_count_77] = ____self_data_76[____pve_complete_count_77] + 1
        local ____self_data_dailySateInfo_78, ____pve_complete_count_79 = self.data.dailySateInfo, "pve_complete_count"
        ____self_data_dailySateInfo_78[____pve_complete_count_79] = ____self_data_dailySateInfo_78[____pve_complete_count_79] + 1
        local ____self_data_weekSateInfo_80, ____pve_complete_count_81 = self.data.weekSateInfo, "pve_complete_count"
        ____self_data_weekSateInfo_80[____pve_complete_count_81] = ____self_data_weekSateInfo_80[____pve_complete_count_81] + 1
        if playerData.isWin then
            local ____self_data_82, ____pve_win_count_83 = self.data, "pve_win_count"
            ____self_data_82[____pve_win_count_83] = ____self_data_82[____pve_win_count_83] + 1
            local ____self_data_dailySateInfo_84, ____pve_win_count_85 = self.data.dailySateInfo, "pve_win_count"
            ____self_data_dailySateInfo_84[____pve_win_count_85] = ____self_data_dailySateInfo_84[____pve_win_count_85] + 1
            local ____self_data_weekSateInfo_86, ____pve_win_count_87 = self.data.weekSateInfo, "pve_win_count"
            ____self_data_weekSateInfo_86[____pve_win_count_87] = ____self_data_weekSateInfo_86[____pve_win_count_87] + 1
        else
            local ____self_data_88, ____pve_lose_count_89 = self.data, "pve_lose_count"
            ____self_data_88[____pve_lose_count_89] = ____self_data_88[____pve_lose_count_89] + 1
            local ____self_data_dailySateInfo_90, ____pve_lose_count_91 = self.data.dailySateInfo, "pve_lose_count"
            ____self_data_dailySateInfo_90[____pve_lose_count_91] = ____self_data_dailySateInfo_90[____pve_lose_count_91] + 1
            local ____self_data_weekSateInfo_92, ____pve_lose_count_93 = self.data.weekSateInfo, "pve_lose_count"
            ____self_data_weekSateInfo_92[____pve_lose_count_93] = ____self_data_weekSateInfo_92[____pve_lose_count_93] + 1
        end
        if statData.isMvp then
            local ____self_data_94, ____pve_mvp_95 = self.data, "pve_mvp"
            ____self_data_94[____pve_mvp_95] = ____self_data_94[____pve_mvp_95] + 1
            local ____self_data_dailySateInfo_96, ____pve_mvp_97 = self.data.dailySateInfo, "pve_mvp"
            ____self_data_dailySateInfo_96[____pve_mvp_97] = ____self_data_dailySateInfo_96[____pve_mvp_97] + 1
            local ____self_data_weekSateInfo_98, ____pve_mvp_99 = self.data.weekSateInfo, "pve_mvp"
            ____self_data_weekSateInfo_98[____pve_mvp_99] = ____self_data_weekSateInfo_98[____pve_mvp_99] + 1
        elseif statData.isSMvp then
            local ____self_data_100, ____pve_smvp_101 = self.data, "pve_smvp"
            ____self_data_100[____pve_smvp_101] = ____self_data_100[____pve_smvp_101] + 1
            local ____self_data_dailySateInfo_102, ____pve_smvp_103 = self.data.dailySateInfo, "pve_smvp"
            ____self_data_dailySateInfo_102[____pve_smvp_103] = ____self_data_dailySateInfo_102[____pve_smvp_103] + 1
            local ____self_data_weekSateInfo_104, ____pve_smvp_105 = self.data.weekSateInfo, "pve_smvp"
            ____self_data_weekSateInfo_104[____pve_smvp_105] = ____self_data_weekSateInfo_104[____pve_smvp_105] + 1
        end
    end
    if playerData.isWin then
        local ____self_data_dailySateInfo_106, ____win_count_107 = self.data.dailySateInfo, "win_count"
        ____self_data_dailySateInfo_106[____win_count_107] = ____self_data_dailySateInfo_106[____win_count_107] + 1
        console:log("【结算】战斗胜利，今日胜场：", self.data.dailySateInfo.win_count)
    end
    self:upload()
end
function ArchiveStatInfo.prototype.escape(self)
    local ____self_data_108, ____escape_count_109 = self.data, "escape_count"
    ____self_data_108[____escape_count_109] = ____self_data_108[____escape_count_109] + 1
end
function ArchiveStatInfo.prototype.init(self)
end
function ArchiveStatInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncStatInfo:execute(
                y3.player.LOCAL_PLAYER.id,
                self:pbEncode()
            ))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function ArchiveStatInfo.prototype.complete_guide(self)
    if self.data.guide_count == nil then
        self.data.guide_count = 0
    end
    local ____self_data_110, ____guide_count_111 = self.data, "guide_count"
    ____self_data_110[____guide_count_111] = ____self_data_110[____guide_count_111] + 1
end
function ArchiveStatInfo.prototype.getWealMonsterCount(self)
    return self.data.dailySateInfo.wealMonsterCount
end
function ArchiveStatInfo.prototype.genWealMonsterCount(self)
    local ____self_data_dailySateInfo_112, ____wealMonsterCount_113 = self.data.dailySateInfo, "wealMonsterCount"
    ____self_data_dailySateInfo_112[____wealMonsterCount_113] = ____self_data_dailySateInfo_112[____wealMonsterCount_113] + 1
end
function ArchiveStatInfo.prototype.setGotMatchRewardFlag(self)
    self.data.dailySateInfo.gotMatchReward = true
end
function ArchiveStatInfo.prototype.isGotMatchRewardFlag(self)
    local ____opt_114 = self.data.dailySateInfo
    return (____opt_114 and ____opt_114.gotMatchReward) == true
end
function ArchiveStatInfo.prototype.setGotMatchWeekRewardFlag(self)
    self.data.weekSateInfo.gotMatchReward = true
end
function ArchiveStatInfo.prototype.isGotMatchWeekRewardFlag(self)
    local ____opt_116 = self.data.weekSateInfo
    return (____opt_116 and ____opt_116.gotMatchReward) == true
end
function ArchiveStatInfo.prototype.getDailyCompleteMatchGameCount(self)
    local ____opt_118 = self.data.dailySateInfo
    return ____opt_118 and ____opt_118.match_complete_count or 0
end
function ArchiveStatInfo.prototype.getDailyCompletePVPGameCount(self)
    local ____opt_120 = self.data.dailySateInfo
    local ____temp_124 = ____opt_120 and ____opt_120.match_complete_count or 0
    local ____opt_122 = self.data.dailySateInfo
    return ____temp_124 + (____opt_122 and ____opt_122.pvp_complete_count or 0)
end
function ArchiveStatInfo.prototype.canSignIn(self)
    if self.data.sevenDayInfo == nil then
        return false
    end
    return self.data.sevenDayInfo.signin_count > self.data.sevenDayInfo.reward_count
end
function ArchiveStatInfo.prototype.signIn(self)
    if self.data.sevenDayInfo == nil then
        return
    end
    self.data.sevenDayInfo.reward_count = self.data.sevenDayInfo.signin_count
end
function ArchiveStatInfo.prototype.getSignInData(self)
    return self.data.sevenDayInfo
end
function ArchiveStatInfo.prototype.getWeekDiamond(self)
    local ____opt_125 = self.data.weekSateInfo
    return ____opt_125 and ____opt_125.currentDiamond or 0
end
function ArchiveStatInfo.prototype.addWeekDiamond(self, diamond)
    local ____self_data_weekSateInfo_127, ____currentDiamond_128 = self.data.weekSateInfo, "currentDiamond"
    ____self_data_weekSateInfo_127[____currentDiamond_128] = ____self_data_weekSateInfo_127[____currentDiamond_128] + diamond
end
function ArchiveStatInfo.prototype.isFirstWin(self)
    return self.data.dailySateInfo.win_count == 1
end
function ArchiveStatInfo.prototype.getDailyMatchScore(self)
    local ____opt_129 = self.data.dailySateInfo
    return ____opt_129 and ____opt_129.match_score or 0
end
function ArchiveStatInfo.prototype.getWeekMatchScore(self)
    local ____opt_131 = self.data.weekSateInfo
    return ____opt_131 and ____opt_131.match_score or 0
end
function ArchiveStatInfo.prototype.getTotalMatchScore(self)
    return self.data.match_score
end
function ArchiveStatInfo.prototype.addMatchScore(self, score)
    local ____self_data_dailySateInfo_133, ____match_score_134 = self.data.dailySateInfo, "match_score"
    ____self_data_dailySateInfo_133[____match_score_134] = ____self_data_dailySateInfo_133[____match_score_134] + score
    local ____self_data_weekSateInfo_135, ____match_score_136 = self.data.weekSateInfo, "match_score"
    ____self_data_weekSateInfo_135[____match_score_136] = ____self_data_weekSateInfo_135[____match_score_136] + score
    local ____self_data_137, ____match_score_138 = self.data, "match_score"
    ____self_data_137[____match_score_138] = ____self_data_137[____match_score_138] + score
end
function ArchiveStatInfo.prototype.isPlayVideo(self)
    return steamUtils:isSteam() or self.data.dailySateInfo.playVideo == true
end
function ArchiveStatInfo.prototype.setPlayVideo(self)
    self.data.dailySateInfo.playVideo = true
end
function ArchiveStatInfo.prototype.idle(self)
    local ____self_data_139, ____idle_count_140 = self.data, "idle_count"
    ____self_data_139[____idle_count_140] = ____self_data_139[____idle_count_140] + 1
    local ____self_data_141, ____last_game_idle_142 = self.data, "last_game_idle"
    ____self_data_141[____last_game_idle_142] = ____self_data_141[____last_game_idle_142] + 1
end
function ArchiveStatInfo.prototype.useIdle(self)
    if self.data.last_game_idle > 0 then
        local ____self_data_143, ____last_game_idle_144 = self.data, "last_game_idle"
        ____self_data_143[____last_game_idle_144] = ____self_data_143[____last_game_idle_144] - 1
    end
end
function ArchiveStatInfo.prototype.removeIdle(self)
    self.data.last_game_idle = 0
end
__TS__SetDescriptor(
    ArchiveStatInfo.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
return ____exports
