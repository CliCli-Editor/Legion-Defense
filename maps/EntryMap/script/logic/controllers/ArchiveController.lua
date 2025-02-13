local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 13,["30"] = 13,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 18,["36"] = 18,["37"] = 18,["39"] = 18,["40"] = 20,["41"] = 23,["42"] = 24,["43"] = 25,["44"] = 26,["45"] = 26,["46"] = 26,["47"] = 26,["48"] = 26,["49"] = 26,["50"] = 26,["51"] = 26,["52"] = 26,["53"] = 26,["54"] = 26,["55"] = 26,["56"] = 26,["58"] = 40,["59"] = 40,["61"] = 41,["62"] = 42,["63"] = 42,["65"] = 44,["66"] = 45,["67"] = 46,["69"] = 48,["70"] = 49,["71"] = 49,["72"] = 49,["73"] = 49,["74"] = 49,["75"] = 49,["76"] = 49,["77"] = 49,["78"] = 49,["79"] = 49,["80"] = 49,["81"] = 49,["82"] = 49,["85"] = 40,["89"] = 64,["90"] = 64,["92"] = 65,["93"] = 66,["94"] = 66,["96"] = 67,["97"] = 68,["100"] = 64,["103"] = 71,["104"] = 71,["105"] = 71,["106"] = 71,["107"] = 71,["108"] = 71,["109"] = 71,["110"] = 71,["111"] = 71,["112"] = 71,["113"] = 71,["114"] = 71,["115"] = 71,["116"] = 71,["117"] = 71,["118"] = 71,["119"] = 71,["120"] = 99,["121"] = 100,["122"] = 100,["123"] = 102,["124"] = 102,["125"] = 102,["126"] = 102,["127"] = 102,["128"] = 107,["129"] = 107,["130"] = 107,["131"] = 107,["132"] = 107,["133"] = 107,["134"] = 107,["135"] = 107,["136"] = 107,["137"] = 107,["138"] = 107,["139"] = 107,["140"] = 107,["141"] = 107,["142"] = 107,["143"] = 107,["144"] = 107,["145"] = 107,["146"] = 107,["147"] = 107,["148"] = 107,["149"] = 107,["150"] = 107,["151"] = 107,["152"] = 102,["153"] = 102,["154"] = 137,["155"] = 137,["156"] = 137,["157"] = 137,["158"] = 137,["159"] = 137,["160"] = 137,["161"] = 137,["162"] = 137,["163"] = 137,["164"] = 137,["165"] = 137,["166"] = 137,["167"] = 137,["168"] = 137,["169"] = 137,["170"] = 137,["171"] = 137,["172"] = 137,["173"] = 137,["174"] = 102,["175"] = 102,["176"] = 102,["177"] = 102,["178"] = 102,["179"] = 102,["180"] = 102,["181"] = 102,["182"] = 102,["183"] = 102,["184"] = 102,["185"] = 102,["186"] = 102,["187"] = 102,["188"] = 102,["189"] = 102,["190"] = 102,["191"] = 102,["192"] = 102,["193"] = 102,["194"] = 180,["195"] = 180,["196"] = 180,["197"] = 180,["198"] = 180,["199"] = 180,["200"] = 180,["201"] = 180,["202"] = 180,["203"] = 180,["204"] = 180,["205"] = 180,["206"] = 180,["207"] = 180,["208"] = 180,["209"] = 180,["210"] = 180,["211"] = 180,["212"] = 180,["213"] = 180,["214"] = 102,["215"] = 102,["216"] = 102,["217"] = 102,["218"] = 102,["219"] = 102,["220"] = 102,["222"] = 20,["223"] = 226,["224"] = 227,["225"] = 228,["226"] = 229,["227"] = 230,["228"] = 226,["229"] = 232,["230"] = 233,["231"] = 234,["232"] = 235,["233"] = 236,["234"] = 232,["235"] = 244,["236"] = 245,["237"] = 246,["238"] = 247,["239"] = 248,["240"] = 244,["241"] = 255,["242"] = 256,["243"] = 257,["244"] = 258,["245"] = 259,["246"] = 255,["247"] = 266,["248"] = 267,["249"] = 268,["250"] = 269,["251"] = 270,["252"] = 266,["253"] = 278,["254"] = 279,["255"] = 280,["256"] = 281,["257"] = 282,["258"] = 283,["259"] = 278,["260"] = 285,["261"] = 286,["262"] = 287,["263"] = 288,["264"] = 289,["265"] = 290,["266"] = 285,["267"] = 293,["268"] = 294,["269"] = 295,["270"] = 296,["271"] = 297,["272"] = 293,["273"] = 304,["274"] = 305,["275"] = 306,["276"] = 304,["277"] = 320});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigList = ____PetEmoConfig.petEmoConfigList
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigList = ____PetSkillConfig.petSkillConfigList
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigList = ____PropConfig.propConfigList
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeLow = ____BobInfo.isPvpModeLow
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS = ____SafeTableUtils.LoopS
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local S = ____SafeTableUtils.S
____exports.ArchiveController = __TS__Class()
local ArchiveController = ____exports.ArchiveController
ArchiveController.name = "ArchiveController"
function ArchiveController.prototype.____constructor(self)
end
function ArchiveController.prototype.initAI(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if playerData.isAI then
        local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
        archiveData.playerInfo = S({
            heroes = {},
            resource = {},
            battlePass = {},
            version = 0,
            totalProficiency = 0,
            singleModeUnlockLevel = 0,
            singleModePassLevel = {},
            singleModeChooseLevel = 0,
            isGotSteamDefaultProps = false,
            cur_hall_bg = 0,
            hall_bg = {}
        })
        do
            local index = 0
            while index < #heroConfigList do
                do
                    local element = heroConfigList[index + 1]
                    if element.ban == 1 then
                        goto __continue5
                    end
                    local isHave = true
                    if __TS__ArrayIndexOf(defaultConfig["人机不选的英雄"], element.id) ~= -1 then
                        isHave = false
                    end
                    local key = "" .. tostring(element.id)
                    archiveData.playerInfo.heroes[key] = S({
                        isHave = isHave,
                        enable = element.ban == 0,
                        exp = 0,
                        lv = 0,
                        cur_lv = 0,
                        cur_skin = 0,
                        cur_skill = {},
                        unlock_skill_1 = {},
                        unlock_skill_2 = {},
                        unlock_skill_3 = {},
                        unlock_skin = {}
                    })
                end
                ::__continue5::
                index = index + 1
            end
        end
        do
            local index = 0
            while index < #propConfigList do
                do
                    local element = propConfigList[index + 1]
                    if element.ban == 1 or element.propTag ~= 1 then
                        goto __continue8
                    end
                    local key = "" .. tostring(element.id)
                    archiveData.playerInfo.resource[key] = 0
                end
                ::__continue8::
                index = index + 1
            end
        end
        archiveData.petInfo = S({
            version = 1,
            cur_halo = 0,
            cur_skill = {["1"] = petSkillConfigList[1].id, ["2"] = petSkillConfigList[2].id, ["3"] = petSkillConfigList[3].id, ["4"] = petSkillConfigList[4].id},
            cur_emoji = {["1"] = petEmoConfigList[1].id, ["2"] = petEmoConfigList[2].id, ["3"] = petEmoConfigList[3].id, ["4"] = petEmoConfigList[4].id},
            cur_skin = 0,
            cur_wing = 0,
            cur_effect = 0,
            emojies = {},
            halos = {},
            skills = {},
            skins = {},
            wings = {},
            effects = {},
            titles = {},
            current_title = 0
        })
        local MAX_AI_SCORE = defaultConfig["排位AI分数最大值"]
        local ____require_result_0 = include("logic.archive.manager.LadderTournamentManager")
        local ladderTournamentManager = ____require_result_0.ladderTournamentManager
        archiveData.statInfo = LoopS({
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
            seasonSateInfo = {
                seasonIndex = ladderTournamentManager:getCurrentSeason().seasonIndex,
                score = isPvpModeLow(nil) and random:randomRange(0, 100) or random:randomRange(500, MAX_AI_SCORE),
                debtScore = 0,
                isPlaying = false,
                season_complete_count = 0,
                season_win_count = 0,
                season_lose_count = 0,
                season_mvp = 0,
                season_smvp = 0,
                season_continuous_win_count = 0,
                max_score = 0,
                isGotReward = false,
                taskReward = {},
                single_complete_count = 0,
                single_win_count = 0,
                single_lose_count = 0,
                multi_complete_count = 0,
                multi_win_count = 0,
                multi_lose_count = 0
            },
            seasonSateInfoReward = nil,
            highestSeasonScore = 0,
            singleMatch = false,
            highestSeasonScoreInSeason = {},
            newbieTaskInfo = {taskId = 0, count = 0, completed = false}
        })
    end
end
function ArchiveController.prototype.syncPlayerInfo(self, playerId, dataStr)
    console:log("存档数据同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local data = ArchiveBaseProto:pbDecode("ArchivePlayerInfo", dataStr)
    archiveData.playerInfo = LoopS_noVue(data)
end
function ArchiveController.prototype.syncPetInfo(self, playerId, data)
    console:log("宠物存档数据同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchivePetInfo", data)
    archiveData.petInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncStatInfo(self, playerId, dataStr)
    console:log("统计数据同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchiveStatInfo", dataStr)
    archiveData.statInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncVipInfo(self, playerId, dataStr)
    console:log("特权同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchiveVipInfo", dataStr)
    archiveData.vipInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncAchieveInfo(self, playerId, dataStr)
    console:log("统计成就同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchiveAchieveInfo", dataStr)
    archiveData.achieveInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncShopInfo(self, playerId, dataStr)
    console:log("商店数据同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchiveShopInfo", dataStr)
    console:log(dataStr)
    archiveData.shopInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncMercenaryInfo(self, playerId, dataStr)
    console:log("佣兵数据同步。。。。。。。。。。。。", playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local json = ArchiveBaseProto:pbDecode("ArchiveMercenaryInfo", dataStr)
    console:log(dataStr)
    archiveData.mercenaryInfo = LoopS_noVue(json)
end
function ArchiveController.prototype.syncResult(self, playerId, gold, exp, diamond)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    archiveData.reward_gold = gold
    archiveData.reward_exp = exp
    archiveData.reward_diamond = diamond
end
function ArchiveController.prototype.addResult(self, playerId, key, info)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    archiveData.rewards[key] = info
end
____exports.archiveController = make(nil, ____exports.ArchiveController)
return ____exports
