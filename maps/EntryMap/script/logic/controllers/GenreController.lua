local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["14"] = 1,["15"] = 1,["16"] = 2,["17"] = 2,["18"] = 2,["19"] = 3,["20"] = 3,["21"] = 4,["22"] = 4,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 7,["29"] = 7,["30"] = 8,["31"] = 8,["32"] = 9,["33"] = 9,["34"] = 10,["35"] = 10,["36"] = 11,["37"] = 11,["38"] = 12,["39"] = 12,["40"] = 13,["41"] = 13,["42"] = 14,["43"] = 14,["44"] = 15,["45"] = 15,["46"] = 16,["47"] = 16,["48"] = 17,["49"] = 17,["50"] = 18,["51"] = 18,["52"] = 19,["53"] = 19,["54"] = 20,["55"] = 20,["56"] = 21,["57"] = 21,["58"] = 22,["59"] = 22,["60"] = 23,["61"] = 23,["62"] = 24,["63"] = 24,["64"] = 25,["65"] = 25,["66"] = 26,["67"] = 26,["68"] = 27,["69"] = 27,["70"] = 29,["71"] = 29,["72"] = 29,["74"] = 29,["75"] = 34,["76"] = 35,["77"] = 37,["78"] = 38,["79"] = 40,["80"] = 41,["81"] = 47,["82"] = 48,["83"] = 52,["84"] = 52,["85"] = 52,["86"] = 52,["87"] = 52,["88"] = 52,["89"] = 52,["90"] = 52,["91"] = 52,["92"] = 52,["93"] = 52,["94"] = 52,["95"] = 52,["96"] = 52,["97"] = 55,["98"] = 56,["99"] = 57,["100"] = 59,["101"] = 59,["102"] = 59,["103"] = 59,["104"] = 60,["105"] = 61,["107"] = 64,["108"] = 65,["109"] = 66,["113"] = 79,["114"] = 79,["116"] = 80,["117"] = 81,["118"] = 81,["120"] = 82,["121"] = 82,["122"] = 83,["123"] = 87,["126"] = 79,["129"] = 94,["131"] = 95,["132"] = 95,["133"] = 96,["134"] = 97,["135"] = 97,["136"] = 99,["137"] = 100,["138"] = 104,["139"] = 95,["143"] = 118,["144"] = 118,["146"] = 119,["147"] = 120,["149"] = 121,["150"] = 121,["151"] = 122,["152"] = 123,["153"] = 124,["156"] = 121,["159"] = 129,["160"] = 129,["162"] = 131,["163"] = 133,["164"] = 134,["165"] = 135,["166"] = 135,["167"] = 137,["170"] = 142,["171"] = 143,["172"] = 145,["173"] = 145,["174"] = 145,["175"] = 148,["176"] = 148,["177"] = 149,["178"] = 149,["179"] = 150,["180"] = 150,["181"] = 145,["182"] = 145,["185"] = 118,["188"] = 157,["189"] = 158,["190"] = 159,["191"] = 160,["193"] = 161,["194"] = 161,["196"] = 162,["197"] = 163,["198"] = 164,["199"] = 165,["200"] = 166,["201"] = 167,["202"] = 167,["204"] = 168,["205"] = 168,["208"] = 161,["212"] = 172,["213"] = 175,["214"] = 34,["215"] = 181,["216"] = 182,["219"] = 185,["220"] = 186,["221"] = 187,["222"] = 188,["223"] = 189,["225"] = 191,["226"] = 193,["227"] = 195,["228"] = 181,["229"] = 204,["230"] = 205,["231"] = 206,["232"] = 207,["234"] = 209,["235"] = 210,["236"] = 211,["238"] = 213,["239"] = 204,["240"] = 216,["241"] = 217,["242"] = 218,["243"] = 219,["244"] = 220,["245"] = 216,["246"] = 227,["247"] = 228,["248"] = 229,["249"] = 230,["250"] = 231,["251"] = 232,["252"] = 233,["255"] = 237,["256"] = 238,["259"] = 241,["260"] = 242,["263"] = 245,["266"] = 249,["267"] = 250,["268"] = 252,["269"] = 255,["270"] = 255,["271"] = 255,["272"] = 255,["273"] = 256,["274"] = 257,["276"] = 227,["277"] = 261,["278"] = 261,["279"] = 261,["281"] = 262,["282"] = 263,["283"] = 264,["285"] = 266,["286"] = 268,["287"] = 269,["288"] = 270,["289"] = 271,["290"] = 271,["291"] = 271,["292"] = 271,["293"] = 271,["294"] = 271,["295"] = 271,["296"] = 271,["297"] = 271,["298"] = 271,["299"] = 271,["300"] = 271,["301"] = 261,["302"] = 278,["303"] = 279,["304"] = 280,["305"] = 281,["308"] = 285,["309"] = 287,["310"] = 289,["311"] = 290,["312"] = 293,["313"] = 295,["314"] = 278,["315"] = 300,["316"] = 301,["317"] = 302,["318"] = 303,["319"] = 300,["320"] = 306,["321"] = 307,["322"] = 308,["323"] = 306,["324"] = 310,["325"] = 311,["326"] = 312,["327"] = 310,["328"] = 316,["329"] = 317,["330"] = 318,["331"] = 320,["333"] = 322,["334"] = 322,["335"] = 323,["336"] = 324,["337"] = 324,["338"] = 324,["339"] = 324,["340"] = 324,["341"] = 322,["344"] = 328,["345"] = 331,["347"] = 332,["348"] = 333,["349"] = 338,["350"] = 338,["351"] = 338,["352"] = 338,["353"] = 339,["354"] = 339,["356"] = 341,["357"] = 342,["358"] = 343,["359"] = 343,["360"] = 345,["362"] = 348,["363"] = 349,["364"] = 350,["365"] = 351,["366"] = 352,["367"] = 352,["368"] = 352,["369"] = 352,["370"] = 352,["376"] = 357,["377"] = 316,["378"] = 373,["379"] = 374,["380"] = 375,["381"] = 377,["383"] = 379,["384"] = 379,["386"] = 380,["387"] = 381,["388"] = 381,["390"] = 382,["391"] = 382,["394"] = 379,["397"] = 384,["399"] = 373,["400"] = 388,["401"] = 389,["402"] = 390,["403"] = 390,["404"] = 392,["405"] = 397,["406"] = 398,["407"] = 399,["408"] = 401,["409"] = 402,["410"] = 403,["411"] = 405,["414"] = 388,["415"] = 414,["416"] = 415,["417"] = 416,["418"] = 417,["419"] = 419,["420"] = 420,["422"] = 422,["423"] = 423,["426"] = 428,["427"] = 428,["428"] = 430,["429"] = 431,["430"] = 432,["431"] = 433,["432"] = 433,["433"] = 433,["434"] = 434,["435"] = 435,["436"] = 435,["438"] = 438,["439"] = 441,["440"] = 441,["441"] = 442,["442"] = 442,["443"] = 444,["444"] = 444,["445"] = 446,["446"] = 447,["447"] = 448,["448"] = 448,["450"] = 449,["453"] = 433,["454"] = 433,["455"] = 452,["456"] = 453,["457"] = 454,["458"] = 455,["460"] = 457,["461"] = 458,["462"] = 459,["463"] = 460,["465"] = 462,["468"] = 466,["469"] = 470,["470"] = 474,["471"] = 478,["472"] = 478,["473"] = 478,["474"] = 479,["475"] = 480,["477"] = 487,["478"] = 487,["479"] = 488,["480"] = 488,["481"] = 490,["482"] = 478,["483"] = 478,["484"] = 499,["485"] = 500,["486"] = 501,["487"] = 503,["488"] = 504,["489"] = 505,["490"] = 507,["493"] = 516,["494"] = 517,["495"] = 518,["496"] = 519,["497"] = 519,["498"] = 519,["499"] = 519,["501"] = 524,["502"] = 524,["503"] = 524,["504"] = 524,["505"] = 524,["506"] = 524,["507"] = 524,["508"] = 525,["509"] = 525,["511"] = 526,["512"] = 524,["513"] = 524,["514"] = 524,["515"] = 524,["516"] = 529,["517"] = 530,["518"] = 531,["519"] = 533,["520"] = 534,["523"] = 538,["524"] = 539,["526"] = 543,["527"] = 543,["528"] = 543,["529"] = 543,["530"] = 544,["531"] = 543,["532"] = 543,["533"] = 547,["534"] = 414,["535"] = 550,["547"] = 561,["548"] = 562,["549"] = 563,["551"] = 564,["552"] = 564,["554"] = 565,["555"] = 566,["556"] = 567,["557"] = 571,["558"] = 573,["560"] = 576,["563"] = 564,["566"] = 550,["567"] = 580,["568"] = 583,["569"] = 586,["570"] = 588,["571"] = 580,["572"] = 592,["573"] = 593,["574"] = 594,["575"] = 595,["576"] = 597,["577"] = 598,["578"] = 599,["579"] = 600,["581"] = 602,["582"] = 603,["585"] = 608,["587"] = 609,["588"] = 609,["590"] = 610,["591"] = 611,["592"] = 612,["593"] = 612,["594"] = 613,["595"] = 613,["596"] = 614,["598"] = 616,["599"] = 617,["600"] = 617,["601"] = 618,["602"] = 618,["605"] = 609,["608"] = 621,["610"] = 622,["611"] = 622,["612"] = 623,["613"] = 624,["614"] = 625,["615"] = 625,["616"] = 622,["619"] = 632,["620"] = 634,["621"] = 592,["622"] = 637,["623"] = 638,["624"] = 637,["625"] = 640,["626"] = 641,["627"] = 642,["628"] = 640,["629"] = 644,["630"] = 645,["631"] = 646,["632"] = 644,["633"] = 648,["634"] = 649,["635"] = 650,["636"] = 648,["637"] = 652,["638"] = 653,["639"] = 654,["640"] = 652,["641"] = 659});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigList = ____GenreConfig.genreConfigList
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____GenreAutoController = include("logic.controllers.GenreAutoController")
local genreAutoController = ____GenreAutoController.genreAutoController
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____GenreTags = include("logic.utils.GenreTags")
local genreStatisticsMap = ____GenreTags.genreStatisticsMap
local ____SkillController = include("logic.controllers.SkillController")
local skillController = ____SkillController.skillController
local ____PlayerTextJumpUtils = include("logic.utils.PlayerTextJumpUtils")
local textJump = ____PlayerTextJumpUtils.textJump
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigList = ____GenreLevelConfig.genreLevelConfigList
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____ColorUtils = include("logic.utils.ColorUtils")
local colorUtils = ____ColorUtils.colorUtils
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
____exports.GenreController = __TS__Class()
local GenreController = ____exports.GenreController
GenreController.name = "GenreController"
function GenreController.prototype.____constructor(self)
end
function GenreController.prototype.init(self)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    genreData.skillCount = {}
    genreData.skillCountWithout = {}
    genreData.skillCountByGenre = {}
    genreData.skillCountByGenre[0] = {[1] = 0, [2] = 0, [3] = 0, [4] = 0}
    genreData.genrePool = {}
    genreData.genrePool[0] = {total = 0, left = 0}
    local list = {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12
    }
    local forbidden = {}
    local a1 = random:randomList(defaultConfig["进攻类流派"])
    local b1 = random:randomList(defaultConfig["防御类流派"])
    local list1 = __TS__ArrayFilter(
        __TS__ArrayConcat(list),
        function(____, a) return a ~= a1 and a ~= b1 end
    )
    local c1 = random:randomList(list1)
    forbidden = {a1, b1, c1}
    do
        local test = {}
        if #test == 3 then
            forbidden = test
        end
    end
    do
        local index = 0
        while index < #list do
            do
                local id = list[index + 1]
                if __TS__ArrayIndexOf(forbidden, id) ~= -1 then
                    goto __continue7
                end
                local ____genreData_enableList_0 = genreData.enableList
                ____genreData_enableList_0[#____genreData_enableList_0 + 1] = id
                genreData.genrePool[id] = {total = 0, left = 0}
                genreData.skillCountByGenre[id] = {[1] = 0, [2] = 0, [3] = 0, [4] = 0}
            end
            ::__continue7::
            index = index + 1
        end
    end
    local forbiddenMap = {}
    do
        local index = 0
        while index < #forbidden do
            local id = forbidden[index + 1]
            local ____genreData_disableList_1 = genreData.disableList
            ____genreData_disableList_1[#____genreData_disableList_1 + 1] = id
            forbiddenMap[id] = true
            genreData.genrePool[id] = {total = 0, left = 0}
            genreData.skillCountByGenre[id] = {[1] = 0, [2] = 0, [3] = 0, [4] = 0}
            index = index + 1
        end
    end
    do
        local i = 0
        while i < #genreConfigList do
            do
                local element = genreConfigList[i + 1]
                local forbidden = false
                do
                    local k = 0
                    while k < #element.genre do
                        local genre = element.genre[k + 1]
                        if forbiddenMap[genre] then
                            forbidden = true
                            break
                        end
                        k = k + 1
                    end
                end
                if forbidden then
                    goto __continue10
                end
                local amount = element.amount
                if element.rarity == 3 then
                    local bigBlessData = datas.global:getSingle(BigBlessData)
                    local ____opt_2 = bigBlessData and bigBlessData.bigBless
                    if (____opt_2 and ____opt_2.id) == 11 then
                        amount = amount * 2
                    end
                end
                genreData.skillCount[element.id] = amount
                genreData.skillCountWithout[element.id] = amount
                __TS__ArrayForEach(
                    element.genre,
                    function(____, a)
                        local ____genreData_genrePool_a_6, ____total_7 = genreData.genrePool[a], "total"
                        ____genreData_genrePool_a_6[____total_7] = ____genreData_genrePool_a_6[____total_7] + amount
                        local ____genreData_genrePool_a_8, ____left_9 = genreData.genrePool[a], "left"
                        ____genreData_genrePool_a_8[____left_9] = ____genreData_genrePool_a_8[____left_9] + amount
                        local ____genreData_skillCountByGenre_a_10, ____element_rarity_11 = genreData.skillCountByGenre[a], element.rarity
                        ____genreData_skillCountByGenre_a_10[____element_rarity_11] = ____genreData_skillCountByGenre_a_10[____element_rarity_11] + amount
                    end
                )
            end
            ::__continue10::
            i = i + 1
        end
    end
    for ____, playerId in ipairs(playerIdList) do
        local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
        playerGenre.genreLevels = {}
        playerGenre.genresSortedList = {}
        do
            local i = 0
            while i < 12 do
                do
                    local genre = i + 1
                    playerGenre.genreLevels[genre] = 0
                    playerGenre.genreTagCount[genre] = 0
                    playerGenre.skillLevelByGenre[genre] = {}
                    playerGenre.skillLevelByGenreList[genre] = {}
                    if forbiddenMap[genre] then
                        goto __continue18
                    end
                    local ____playerGenre_genresSortedList_12 = playerGenre.genresSortedList
                    ____playerGenre_genresSortedList_12[#____playerGenre_genresSortedList_12 + 1] = genre
                end
                ::__continue18::
                i = i + 1
            end
        end
    end
    genreAutoController:initConfig()
    self:refreshAll()
end
function GenreController.prototype.refreshGenreList(self, playerId)
    if not self:checkRefreshCost(playerId) then
        return
    end
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local price = GameUtils:getGenreRefreshPrice(playerId)
    if playerData.cardRefreshFreeCount > 0 then
        price = 0
        playerData.cardRefreshFreeCount = playerData.cardRefreshFreeCount - 1
    end
    playerData.gold = playerData.gold - price
    self:refresh(playerId)
    triggerManager:trigger(TriggerType["刷新时"], {playerId = playerId})
end
function GenreController.prototype.checkRefreshCost(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if playerData.cardRefreshFreeCount > 0 then
        return true
    end
    local price = GameUtils:getGenreRefreshPrice(playerId)
    if playerData.gold < price then
        return false
    end
    return true
end
function GenreController.prototype.getGenreMoney(self, playerId, configId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local cfg = genreConfigMap[configId]
    local price = math.floor(cfg.money * (1 + playerData.cardBuy) + playerData.cardBuyValue + 0.5)
    return price
end
function GenreController.prototype.chooseGenre(self, playerId, idx)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local id = playerGenre.canSelGenre[idx + 1].id
    local price = self:getGenreMoney(playerId, id)
    if playerData.gold < price then
        return
    end
    if playerGenre.canSelGenre == nil or #playerGenre.canSelGenre == 0 then
        console:error("选择流派技能异常1")
        return
    end
    if idx >= 3 then
        console:error("选择流派技能异常2")
        return
    end
    if playerGenre.canSelGenre[idx + 1].sellout then
        return
    end
    playerData.gold = playerData.gold - price
    playerGenre.canSelGenre[idx + 1].sellout = true
    self:select(playerId, id)
    local list = __TS__ArrayFilter(
        playerGenre.canSelGenre,
        function(____, a) return not a.sellout end
    )
    if list == nil or #list == 0 then
        self:refresh(playerId)
    end
end
function GenreController.prototype.getGenreByBless(self, playerId, quality, genreType, blessId)
    if blessId == nil then
        blessId = 0
    end
    local id = genreAutoController:getGenreByBless(playerId, quality, genreType)
    if id ~= -1 then
        self:select(playerId, id)
    end
    local genre = genreConfigMap[id]
    local color = colorUtils:quality(genre.rarity)
    local cfg = blessConfigMap[blessId]
    local blessName = cfg ~= nil and cfg.name.value or "来自大头的"
    chatController:sysMsg(
        i18n:format(
            "触发[${blessName}]祝福, 获得一张[${genreName}]",
            {
                blessName = ("#ff0000" .. blessName) .. "#ffffff",
                genreName = (color .. tostring(genre.name)) .. "#ffffff"
            }
        ),
        ChatInputType["仅自己可见消息"],
        playerId,
        playerId
    )
end
function GenreController.prototype.chooseRandom(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local price = math.floor(defaultConfig["流派随机消耗"] * (1 + playerData.cardRandomBuy) + playerData.cardRandomBuyValue + 0.5)
    if playerData.gold < price then
        return
    end
    playerData.gold = playerData.gold - price
    self:_returnToPool(playerId)
    local id = genreAutoController:getGenreByPlayer(playerId)
    self:select(playerId, id)
    self:refresh(playerId)
    triggerManager:trigger(TriggerType["购买随机卡牌时"], {playerId = playerId})
end
function GenreController.prototype.setRecommand(self, playerId, recommand1, recommand2)
    local genreData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    genreData.recommand1 = recommand1
    genreData.recommand2 = recommand2
end
function GenreController.prototype.setLock(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.isLocked = not playerGenre.isLocked
end
function GenreController.prototype.unLock(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.isLocked = false
end
function GenreController.prototype._addEffect(self, playerId, id)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local playerUnit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    local cfg = genreConfigMap[id]
    do
        local index = 0
        while index < #cfg.effect do
            local element = cfg.effect[index + 1]
            playerUnit:getWritableEntity():addEffect(
                playerUnit:getWritableEntity(),
                element,
                nil
            )
            index = index + 1
        end
    end
    local unit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    for key in pairs(playerGenre.genreLevels) do
        do
            local id = __TS__ParseInt(key)
            local level = playerGenre.genreLevels[id]
            local cfg = __TS__ArrayFind(
                genreLevelConfigList,
                function(____, a) return a.genre == id end
            )
            if id == 0 or cfg == nil then
                goto __continue44
            end
            local effects = cfg.effect
            local bigBlessData = datas.global:getSingle(BigBlessData)
            local ____opt_13 = bigBlessData and bigBlessData.bigBless
            if (____opt_13 and ____opt_13.id) == 9 then
                effects = cfg.effect2
            end
            for ____, a in ipairs(effects) do
                local quality = unit.entity:getEffectQuantity(a.id)
                local count = level - quality
                if count > 0 then
                    unit:getWritableEntity():addEffect(
                        unit:getWritableEntity(),
                        a,
                        count
                    )
                end
            end
        end
        ::__continue44::
    end
    playerDataController:addExp(playerId, cfg.exp)
end
function GenreController.prototype._returnToPool(self, playerId)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    if playerGenre.canSelGenre ~= nil and #playerGenre.canSelGenre > 0 then
        do
            local index = 0
            while index < #playerGenre.canSelGenre do
                do
                    local element = playerGenre.canSelGenre[index + 1]
                    if element.sellout then
                        goto __continue54
                    end
                    local ____genreData_skillCount_17, ____element_id_18 = genreData.skillCount, element.id
                    ____genreData_skillCount_17[____element_id_18] = ____genreData_skillCount_17[____element_id_18] + 1
                end
                ::__continue54::
                index = index + 1
            end
        end
        playerGenre.canSelGenre = {}
    end
end
function GenreController.prototype.addTag(self, playerId, genreId, tag)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local ____playerGenre_genreTagCount_19, ____genreId_20 = playerGenre.genreTagCount, genreId
    ____playerGenre_genreTagCount_19[____genreId_20] = ____playerGenre_genreTagCount_19[____genreId_20] + tag
    triggerManager:trigger(TriggerType["流派Tag数达到"], {playerId = playerId, tags = playerGenre.genreTagCount[genreId]})
    for key in pairs(playerGenre.genreTagCount) do
        local id = __TS__ParseInt(key)
        local tags = playerGenre.genreTagCount[id]
        local level = genreAutoController:getLevel(tags)
        if playerGenre.genreLevels[id] ~= level then
            playerGenre.genreLevels[id] = level
            triggerManager:trigger(TriggerType["流派等级提升时"], {playerId = playerId, genre = id, level = level})
        end
    end
end
function GenreController.prototype.select(self, playerId, skillId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    if playerGenre.skillLevels[skillId] == nil then
        playerGenre.skillLevels[skillId] = 0
    end
    local cfg = genreConfigMap[skillId]
    if playerGenre.skillLevels[skillId] >= cfg.maxLevel then
        return
    end
    local ____playerGenre_skillLevels_21, ____skillId_22 = playerGenre.skillLevels, skillId
    ____playerGenre_skillLevels_21[____skillId_22] = ____playerGenre_skillLevels_21[____skillId_22] + 1
    local is_same = false
    local same1 = 0
    local same2 = 0
    __TS__ArrayForEach(
        cfg.genre,
        function(____, a)
            if playerGenre.skillLevels[skillId] == 1 then
                local ____playerGenre_skillLevelByGenreList_a_23 = playerGenre.skillLevelByGenreList[a]
                ____playerGenre_skillLevelByGenreList_a_23[#____playerGenre_skillLevelByGenreList_a_23 + 1] = skillId
            end
            playerGenre.skillLevelByGenre[a][skillId] = playerGenre.skillLevels[skillId]
            local ____genreData_genrePool_a_24, ____left_25 = genreData.genrePool[a], "left"
            ____genreData_genrePool_a_24[____left_25] = ____genreData_genrePool_a_24[____left_25] - 1
            local ____genreData_skillCountByGenre_a_26, ____cfg_rarity_27 = genreData.skillCountByGenre[a], cfg.rarity
            ____genreData_skillCountByGenre_a_26[____cfg_rarity_27] = ____genreData_skillCountByGenre_a_26[____cfg_rarity_27] - 1
            local ____genreData_skillCountWithout_28, ____cfg_id_29 = genreData.skillCountWithout, cfg.id
            ____genreData_skillCountWithout_28[____cfg_id_29] = ____genreData_skillCountWithout_28[____cfg_id_29] - 1
            if playerGenre.lastTag == a or playerGenre.lastTag2 == a then
                is_same = true
                if same1 == 0 then
                    same1 = a
                else
                    same2 = a
                end
            end
        end
    )
    if is_same then
        playerGenre.same_tag_count = playerGenre.same_tag_count + 1
        playerGenre.lastTag = same1
        playerGenre.lastTag2 = same2
    else
        playerGenre.same_tag_count = 1
        playerGenre.lastTag = cfg.genre[1]
        if cfg.genre[2] ~= nil then
            playerGenre.lastTag2 = cfg.genre[2]
        else
            playerGenre.lastTag2 = 0
        end
    end
    triggerManager:trigger(TriggerType["获得卡牌时"], {playerId = playerId, skillId = skillId})
    triggerManager:trigger(TriggerType["连续购买Tag统计"], {playerId = playerId, count = playerGenre.same_tag_count})
    if cfg.genre[1] ~= 0 then
        __TS__ArrayForEach(
            cfg.genre,
            function(____, a)
                if playerGenre.skillByQualitys[a] == nil then
                    playerGenre.skillByQualitys[a] = {[1] = 0, [2] = 0, [3] = 0, [4] = 0}
                end
                local ____playerGenre_skillByQualitys_a_30, ____cfg_rarity_31 = playerGenre.skillByQualitys[a], cfg.rarity
                ____playerGenre_skillByQualitys_a_30[____cfg_rarity_31] = ____playerGenre_skillByQualitys_a_30[____cfg_rarity_31] + 1
                local ____playerGenre_genreTagCount_32, ____a_33 = playerGenre.genreTagCount, a
                ____playerGenre_genreTagCount_32[____a_33] = ____playerGenre_genreTagCount_32[____a_33] + cfg.rarity
                triggerManager:trigger(TriggerType["流派Tag数达到"], {playerId = playerId, tags = playerGenre.genreTagCount[a]})
            end
        )
        for key in pairs(playerGenre.genreTagCount) do
            local id = __TS__ParseInt(key)
            local tags = playerGenre.genreTagCount[id]
            local level = genreAutoController:getLevel(tags)
            if playerGenre.genreLevels[id] ~= level then
                playerGenre.genreLevels[id] = level
                triggerManager:trigger(TriggerType["流派等级提升时"], {playerId = playerId, genre = id, level = level})
            end
        end
        local list = {}
        for key in pairs(playerGenre.genreTagCount) do
            local element = playerGenre.genreTagCount[key]
            list[#list + 1] = {
                id = __TS__ParseInt(key),
                count = element
            }
        end
        playerGenre.genresSortedList = __TS__ArrayMap(
            __TS__ArraySort(
                __TS__ArrayFilter(
                    list,
                    function(____, a) return __TS__ArrayIndexOf(genreData.disableList, a.id) == -1 end
                ),
                function(____, a, b)
                    if a.count == b.count then
                        return b.id - a.id
                    end
                    return b.count - a.count
                end
            ),
            function(____, a) return a.id end
        )
        for genre in pairs(playerGenre.skillByQualitys) do
            local quality = playerGenre.skillByQualitys[genre]
            local tags = quality[1] + quality[2] * 2 + quality[3] * 3
            local old = unitData.entity:getStatistics(genreStatisticsMap[genre])
            unitData:getWritableEntity():genStatistics(genreStatisticsMap[genre], tags - old)
        end
    end
    if cfg.skill ~= nil then
        skillController:addSkill(playerId, cfg.skill.id)
    end
    textJump(
        nil,
        playerId,
        function()
            self:_addEffect(playerId, skillId)
        end
    )
    traceLogUtils:onSelHighQualityGenre(playerId, cfg.name.value)
end
function GenreController.prototype.refreshAll(self)
    --- - 回合通用刷新规则
    -- 
    -- -
    -- 
    -- @todo 循环发卡制：
    -- - 一共8个玩家，第一回合以玩家1、2、3、4、5、6、7、8的顺序发卡，
    -- - 第二回合以玩家2、3、4、5、6、7、8、1的顺序发卡，
    -- - 以8回合为一循环，最后三回合随机顺序发卡即可。
    -- 
    -- -
    -- @todo 当玩家数不足8人时，按照当前总人数循环
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    local len = #playerIdList
    local start = data.level % len
    do
        local i = 0
        while i < len do
            do
                local idx = (i + start) % len
                local playerId = playerIdList[idx + 1]
                local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
                if playerGenre.isLocked then
                    goto __continue89
                end
                self:refresh(playerId)
            end
            ::__continue89::
            i = i + 1
        end
    end
end
function GenreController.prototype.refresh(self, playerId)
    self:_returnToPool(playerId)
    self:addGenre(playerId)
    self:unLock(playerId)
end
function GenreController.prototype.addGenre(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local isMust = false
    if playerData.card_refresh_get_label ~= -1 then
        if playerData.card_refresh_current_count < playerData.card_refresh_step_count then
            playerData.card_refresh_current_count = playerData.card_refresh_current_count + 1
        else
            isMust = true
            playerData.card_refresh_current_count = 0
        end
    end
    playerGenre.tempList = {}
    do
        local index = 0
        while index < 3 do
            do
                if isMust and index == 0 then
                    local id = genreAutoController:getGenreByLabel(playerId, playerData.card_refresh_get_label)
                    local ____playerGenre_tempList_34 = playerGenre.tempList
                    ____playerGenre_tempList_34[#____playerGenre_tempList_34 + 1] = id
                    local ____genreData_skillCount_35, ____id_36 = genreData.skillCount, id
                    ____genreData_skillCount_35[____id_36] = ____genreData_skillCount_35[____id_36] - 1
                    goto __continue96
                end
                local id = genreAutoController:getGenreByPlayer(playerId)
                local ____playerGenre_tempList_37 = playerGenre.tempList
                ____playerGenre_tempList_37[#____playerGenre_tempList_37 + 1] = id
                local ____genreData_skillCount_38, ____id_39 = genreData.skillCount, id
                ____genreData_skillCount_38[____id_39] = ____genreData_skillCount_38[____id_39] - 1
            end
            ::__continue96::
            index = index + 1
        end
    end
    playerGenre.canSelGenre = {}
    do
        local index = 0
        while index < #playerGenre.tempList do
            local element = playerGenre.tempList[index + 1]
            local cfg = genreConfigMap[element]
            local ____playerGenre_canSelGenre_40 = playerGenre.canSelGenre
            ____playerGenre_canSelGenre_40[#____playerGenre_canSelGenre_40 + 1] = {id = element, genre = cfg, sellout = false}
            index = index + 1
        end
    end
    playerGenre.tempList = {}
    playerGenre.refreshCount = playerGenre.refreshCount + 1
end
function GenreController.prototype.debugAdd(self, playerId, id)
    self:select(playerId, id)
end
function GenreController.prototype.debugCard1(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.debugCard = 1
end
function GenreController.prototype.debugCard2(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.debugCard = 2
end
function GenreController.prototype.debugCard3(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.debugCard = 3
end
function GenreController.prototype.debugCard4(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    playerGenre.debugCard = 4
end
____exports.genreController = make(nil, ____exports.GenreController)
return ____exports
