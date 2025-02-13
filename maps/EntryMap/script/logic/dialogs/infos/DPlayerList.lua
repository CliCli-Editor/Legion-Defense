local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 14,["38"] = 14,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 16,["44"] = 16,["45"] = 17,["46"] = 17,["47"] = 18,["48"] = 18,["49"] = 19,["50"] = 19,["51"] = 20,["52"] = 20,["53"] = 21,["54"] = 21,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 23,["59"] = 23,["60"] = 24,["61"] = 24,["62"] = 25,["63"] = 25,["64"] = 27,["65"] = 27,["66"] = 28,["67"] = 28,["68"] = 30,["69"] = 30,["70"] = 30,["71"] = 30,["73"] = 30,["74"] = 31,["75"] = 30,["76"] = 40,["77"] = 41,["78"] = 42,["79"] = 41,["80"] = 40,["81"] = 46,["83"] = 48,["85"] = 49,["86"] = 49,["87"] = 51,["88"] = 52,["89"] = 54,["90"] = 55,["91"] = 49,["95"] = 46,["96"] = 59,["97"] = 60,["98"] = 62,["99"] = 63,["101"] = 63,["102"] = 63,["103"] = 63,["104"] = 63,["105"] = 63,["109"] = 66,["110"] = 67,["111"] = 68,["112"] = 70,["113"] = 70,["114"] = 70,["115"] = 70,["116"] = 75,["117"] = 75,["118"] = 75,["119"] = 76,["120"] = 75,["121"] = 75,["122"] = 78,["123"] = 78,["124"] = 78,["125"] = 79,["126"] = 79,["127"] = 78,["128"] = 78,["129"] = 81,["130"] = 81,["131"] = 81,["132"] = 82,["133"] = 81,["134"] = 81,["135"] = 84,["136"] = 84,["137"] = 84,["138"] = 85,["139"] = 85,["141"] = 86,["142"] = 84,["143"] = 84,["144"] = 88,["145"] = 88,["146"] = 88,["147"] = 89,["148"] = 88,["149"] = 88,["150"] = 91,["151"] = 91,["152"] = 91,["153"] = 92,["154"] = 92,["155"] = 92,["157"] = 93,["158"] = 91,["159"] = 91,["160"] = 95,["161"] = 95,["162"] = 95,["163"] = 96,["164"] = 96,["165"] = 96,["167"] = 97,["168"] = 95,["169"] = 95,["170"] = 99,["171"] = 99,["172"] = 99,["173"] = 100,["174"] = 99,["175"] = 99,["176"] = 104,["177"] = 105,["178"] = 105,["179"] = 105,["180"] = 106,["181"] = 106,["183"] = 107,["184"] = 108,["185"] = 105,["186"] = 105,["187"] = 110,["188"] = 110,["189"] = 110,["190"] = 111,["191"] = 111,["193"] = 112,["194"] = 113,["195"] = 114,["196"] = 110,["197"] = 110,["198"] = 116,["199"] = 116,["200"] = 116,["201"] = 117,["202"] = 117,["204"] = 118,["205"] = 119,["206"] = 116,["207"] = 116,["208"] = 121,["209"] = 121,["210"] = 121,["211"] = 122,["212"] = 122,["214"] = 123,["215"] = 124,["216"] = 125,["217"] = 121,["218"] = 121,["219"] = 127,["220"] = 127,["221"] = 127,["222"] = 128,["223"] = 128,["225"] = 129,["226"] = 130,["227"] = 127,["228"] = 127,["229"] = 132,["230"] = 132,["231"] = 132,["232"] = 133,["233"] = 133,["235"] = 134,["236"] = 135,["237"] = 136,["238"] = 132,["239"] = 132,["240"] = 139,["241"] = 139,["242"] = 139,["243"] = 140,["244"] = 139,["245"] = 139,["246"] = 142,["247"] = 142,["248"] = 142,["249"] = 143,["250"] = 142,["251"] = 142,["252"] = 145,["253"] = 145,["254"] = 145,["255"] = 146,["256"] = 145,["257"] = 145,["258"] = 148,["259"] = 148,["260"] = 148,["261"] = 149,["262"] = 148,["263"] = 148,["264"] = 151,["265"] = 151,["266"] = 151,["267"] = 152,["268"] = 151,["269"] = 151,["270"] = 154,["271"] = 154,["272"] = 154,["273"] = 155,["274"] = 154,["275"] = 154,["276"] = 157,["277"] = 157,["278"] = 157,["279"] = 157,["280"] = 157,["281"] = 158,["282"] = 158,["283"] = 158,["284"] = 158,["285"] = 158,["286"] = 159,["287"] = 159,["288"] = 159,["289"] = 159,["290"] = 159,["291"] = 162,["292"] = 162,["293"] = 162,["294"] = 162,["295"] = 165,["296"] = 166,["297"] = 166,["298"] = 166,["299"] = 167,["300"] = 167,["302"] = 168,["303"] = 169,["305"] = 171,["306"] = 172,["307"] = 173,["308"] = 166,["309"] = 166,["310"] = 176,["311"] = 176,["312"] = 176,["313"] = 177,["314"] = 177,["316"] = 178,["317"] = 179,["319"] = 181,["320"] = 182,["321"] = 184,["322"] = 185,["323"] = 186,["324"] = 187,["325"] = 188,["326"] = 189,["328"] = 192,["329"] = 176,["330"] = 176,["331"] = 195,["332"] = 195,["333"] = 195,["334"] = 196,["335"] = 196,["337"] = 197,["338"] = 198,["340"] = 200,["341"] = 201,["342"] = 202,["343"] = 195,["344"] = 195,["345"] = 204,["346"] = 204,["347"] = 204,["348"] = 205,["349"] = 205,["351"] = 206,["352"] = 207,["354"] = 209,["355"] = 210,["356"] = 212,["357"] = 213,["358"] = 214,["359"] = 215,["360"] = 216,["361"] = 217,["363"] = 220,["364"] = 204,["365"] = 204,["366"] = 223,["367"] = 223,["368"] = 223,["369"] = 224,["370"] = 224,["372"] = 225,["373"] = 226,["375"] = 228,["376"] = 229,["377"] = 230,["378"] = 223,["379"] = 223,["380"] = 232,["381"] = 232,["382"] = 232,["383"] = 233,["384"] = 233,["386"] = 234,["387"] = 235,["389"] = 237,["390"] = 238,["391"] = 240,["392"] = 241,["393"] = 242,["394"] = 243,["395"] = 244,["396"] = 245,["398"] = 248,["399"] = 232,["400"] = 232,["401"] = 251,["402"] = 251,["403"] = 251,["404"] = 252,["405"] = 251,["406"] = 251,["407"] = 254,["408"] = 254,["409"] = 254,["410"] = 255,["411"] = 254,["412"] = 254,["413"] = 257,["414"] = 257,["415"] = 257,["416"] = 258,["417"] = 257,["418"] = 257,["419"] = 260,["420"] = 260,["421"] = 260,["422"] = 261,["423"] = 260,["424"] = 260,["425"] = 263,["426"] = 263,["427"] = 263,["428"] = 264,["429"] = 263,["430"] = 263,["431"] = 266,["432"] = 266,["433"] = 266,["434"] = 267,["435"] = 266,["436"] = 266,["437"] = 269,["438"] = 269,["439"] = 269,["440"] = 269,["441"] = 269,["442"] = 270,["443"] = 270,["444"] = 270,["445"] = 270,["446"] = 270,["447"] = 271,["448"] = 271,["449"] = 271,["450"] = 271,["451"] = 271,["452"] = 275,["453"] = 275,["454"] = 275,["455"] = 276,["456"] = 276,["458"] = 277,["459"] = 278,["460"] = 279,["462"] = 281,["463"] = 281,["464"] = 275,["465"] = 275,["466"] = 283,["467"] = 283,["468"] = 283,["469"] = 284,["470"] = 284,["472"] = 285,["473"] = 286,["474"] = 287,["476"] = 289,["477"] = 291,["478"] = 292,["480"] = 295,["481"] = 296,["482"] = 297,["483"] = 298,["484"] = 299,["485"] = 300,["487"] = 303,["488"] = 283,["489"] = 283,["490"] = 306,["491"] = 306,["492"] = 306,["493"] = 307,["494"] = 307,["496"] = 308,["497"] = 309,["498"] = 310,["500"] = 312,["501"] = 312,["502"] = 306,["503"] = 306,["504"] = 314,["505"] = 314,["506"] = 314,["507"] = 315,["508"] = 315,["510"] = 316,["511"] = 317,["512"] = 318,["514"] = 320,["515"] = 322,["516"] = 323,["518"] = 326,["519"] = 327,["520"] = 328,["521"] = 329,["522"] = 330,["523"] = 331,["525"] = 334,["526"] = 314,["527"] = 314,["528"] = 337,["529"] = 337,["530"] = 337,["531"] = 338,["532"] = 338,["534"] = 339,["535"] = 340,["536"] = 341,["538"] = 343,["539"] = 343,["540"] = 337,["541"] = 337,["542"] = 346,["543"] = 346,["544"] = 346,["545"] = 347,["546"] = 347,["548"] = 348,["549"] = 349,["550"] = 350,["552"] = 352,["553"] = 354,["554"] = 355,["556"] = 358,["557"] = 359,["558"] = 360,["559"] = 361,["560"] = 362,["561"] = 363,["563"] = 366,["564"] = 346,["565"] = 346,["566"] = 368,["567"] = 368,["568"] = 368,["569"] = 369,["570"] = 368,["571"] = 368,["572"] = 371,["573"] = 371,["574"] = 371,["575"] = 372,["576"] = 371,["577"] = 371,["578"] = 374,["579"] = 374,["580"] = 374,["581"] = 375,["582"] = 374,["583"] = 374,["584"] = 377,["585"] = 377,["586"] = 377,["587"] = 378,["588"] = 377,["589"] = 377,["590"] = 380,["591"] = 380,["592"] = 380,["593"] = 381,["594"] = 380,["595"] = 380,["596"] = 383,["597"] = 383,["598"] = 383,["599"] = 384,["600"] = 383,["601"] = 383,["602"] = 386,["603"] = 386,["604"] = 386,["605"] = 386,["606"] = 386,["607"] = 387,["608"] = 387,["609"] = 387,["610"] = 387,["611"] = 387,["612"] = 388,["613"] = 388,["614"] = 388,["615"] = 388,["616"] = 388,["617"] = 391,["618"] = 391,["619"] = 391,["620"] = 392,["621"] = 391,["622"] = 391,["623"] = 394,["624"] = 394,["625"] = 394,["626"] = 395,["627"] = 396,["628"] = 397,["631"] = 400,["632"] = 401,["634"] = 403,["635"] = 404,["637"] = 406,["638"] = 407,["640"] = 408,["641"] = 409,["642"] = 409,["644"] = 410,["648"] = 412,["649"] = 414,["650"] = 415,["651"] = 416,["652"] = 417,["657"] = 422,["658"] = 394,["659"] = 394,["660"] = 59,["661"] = 426,["662"] = 431,["663"] = 426,["664"] = 434,["665"] = 435,["666"] = 435,["667"] = 435,["668"] = 436,["669"] = 437,["670"] = 437,["671"] = 438,["672"] = 438,["673"] = 438,["674"] = 438,["675"] = 438,["676"] = 438,["677"] = 438,["678"] = 438,["680"] = 435,["681"] = 444,["682"] = 445,["683"] = 435,["684"] = 435,["685"] = 434,["686"] = 449,["687"] = 450,["688"] = 450,["689"] = 450,["690"] = 451,["691"] = 452,["694"] = 453,["695"] = 455,["698"] = 458,["699"] = 458,["700"] = 458,["701"] = 459,["702"] = 460,["703"] = 461,["704"] = 458,["705"] = 450,["706"] = 463,["707"] = 464,["708"] = 450,["709"] = 450,["710"] = 449,["711"] = 469,["712"] = 470,["713"] = 470,["714"] = 470,["715"] = 471,["716"] = 472,["717"] = 472,["718"] = 473,["719"] = 474,["722"] = 475,["723"] = 476,["724"] = 477,["725"] = 477,["726"] = 477,["727"] = 477,["728"] = 477,["729"] = 477,["730"] = 477,["731"] = 477,["732"] = 477,["734"] = 470,["735"] = 484,["736"] = 485,["737"] = 470,["738"] = 470,["739"] = 469,["740"] = 489,["741"] = 490,["742"] = 490,["743"] = 490,["744"] = 491,["745"] = 492,["746"] = 492,["747"] = 493,["748"] = 493,["749"] = 493,["750"] = 493,["751"] = 493,["752"] = 493,["753"] = 493,["754"] = 493,["756"] = 490,["757"] = 499,["758"] = 500,["759"] = 490,["760"] = 490,["761"] = 489});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____CheckController = include("logic.controllers.CheckController")
local checkController = ____CheckController.checkController
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____BlessData = include("logic.models.BlessData")
local BlessData = ____BlessData.BlessData
local ____DebugData = include("logic.models.DebugData")
local DebugData = ____DebugData.DebugData
local ____EquipData = include("logic.models.EquipData")
local EquipData = ____EquipData.EquipData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameStatus = ____GameData.GameStatus
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____PlayerInHookData = include("logic.models.PlayerInHookData")
local PlayerInHookData = ____PlayerInHookData.PlayerInHookData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpBless = include("logic.dialogs.help.DHelpBless")
local DHelpBless = ____DHelpBless.DHelpBless
local ____DHelpGenre = include("logic.dialogs.help.DHelpGenre")
local DHelpGenre = ____DHelpGenre.DHelpGenre
local ____DEquipInfo = include("logic.dialogs.infos.DEquipInfo")
local DEquipInfo = ____DEquipInfo.DEquipInfo
local ____DSelfTalentInfo = include("logic.dialogs.infos.DSelfTalentInfo")
local DSelfTalentInfo = ____DSelfTalentInfo.DSelfTalentInfo
____exports.DPlayerList = __TS__Class()
local DPlayerList = ____exports.DPlayerList
DPlayerList.name = "DPlayerList"
__TS__ClassExtends(DPlayerList, Dialog)
function DPlayerList.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DPlayerList.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DPlayerList.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local gameData = datas.global:getSingle(GameData)
        do
            local index = 0
            while index < 3 do
                local playerId = #gameData.teamLeft > index and gameData.teamLeft[index + 1] or nil
                self:updateUI(playerId, index)
                playerId = #gameData.teamRight > index and gameData.teamRight[index + 1] or nil
                self:updateUI(playerId, index + 3)
                index = index + 1
            end
        end
    end)
end
function DPlayerList.prototype.updateUI(self, playerId, index)
    local root = "root.center.list.item_" .. tostring(index + 1)
    if playerId == nil then
        local ____opt_0 = self:getUI(root)
        if ____opt_0 ~= nil then
            local ____opt_1 = self:getUI(root)
            __TS__ArrayForEach(
                ____opt_1 and ____opt_1:get_childs(),
                function(____, a) return a:set_visible(false) end
            )
        end
        return
    end
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local unitData = datas.players[playerId]:getSingle(UnitData)
    local gameData = datas.global:getSingle(GameData)
    local isShow = self:compute(function()
        local ____opt_4 = datas.global:getSingle(DebugData)
        return ____opt_4 and ____opt_4.show_all_player or player2King[playerId] == player2King[LOCAL.PLAYER_ID] or gameData.mode == GameMode["镜像"] and gameData.gameStatus == GameStatus["战斗中"]
    end)
    self:bindText(
        root .. ".info.playerName",
        function()
            return playerData.name .. (playerId == LOCAL.PLAYER_ID and i18n["local"](i18n, "(我)") or "")
        end
    )
    self:bindText(
        root .. ".info.heroName",
        function()
            local ____opt_6 = playerData.hero
            return ((____opt_6 and ____opt_6.showName.value or "") .. " Lv.") .. tostring(playerData.level)
        end
    )
    self:bindImage(
        root .. ".info.icon",
        function()
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindImage(
        root .. ".ladder.icon",
        function()
            if GameUtils.isSingleGame and playerData.isAI then
                return 0
            end
            return ladderTournamentManager:getRankByPlayerId(playerId).config.icon
        end
    )
    self:bindText(
        root .. ".def.count",
        function()
            return tostring(playerData.defCount)
        end
    )
    self:bindText(
        root .. ".gold.count",
        function()
            local ____opt_8 = datas.global:getSingle(DebugData)
            if not (____opt_8 and ____opt_8.show_all_player) and player2King[playerId] ~= player2King[LOCAL.PLAYER_ID] then
                return "?"
            end
            return tostring(playerData.gold)
        end
    )
    self:bindText(
        root .. ".wood.count",
        function()
            local ____opt_10 = datas.global:getSingle(DebugData)
            if not (____opt_10 and ____opt_10.show_all_player) and player2King[playerId] ~= player2King[LOCAL.PLAYER_ID] then
                return "?"
            end
            return tostring(playerData.wood)
        end
    )
    self:bindVisible(
        root .. ".layout.self",
        function()
            return playerId == LOCAL.PLAYER_ID
        end
    )
    local genreData = datas.players[playerId]:getSingle(PlayerGenreData)
    self:bindText(
        root .. ".genre.g.item0.count",
        function()
            if not isShow.value then
                return ""
            end
            local genre = genreData.genresSortedList[1]
            return tostring(genreData.genreTagCount[genre])
        end
    )
    self:bindImage(
        root .. ".genre.g.item0.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local genre = genreData.genresSortedList[1]
            local genreIcon = genreLevelConfigMap_genre[genre][1].icon
            return genreIcon
        end
    )
    self:bindText(
        root .. ".genre.g.item1.count",
        function()
            if not isShow.value then
                return ""
            end
            local genre = genreData.genresSortedList[2]
            return tostring(genreData.genreTagCount[genre])
        end
    )
    self:bindImage(
        root .. ".genre.g.item1.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local genre = genreData.genresSortedList[2]
            local genreIcon = genreLevelConfigMap_genre[genre][1].icon
            return genreIcon
        end
    )
    self:bindText(
        root .. ".genre.g.item2.count",
        function()
            if not isShow.value then
                return ""
            end
            local genre = genreData.genresSortedList[3]
            return tostring(genreData.genreTagCount[genre])
        end
    )
    self:bindImage(
        root .. ".genre.g.item2.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local genre = genreData.genresSortedList[3]
            local genreIcon = genreLevelConfigMap_genre[genre][1].icon
            return genreIcon
        end
    )
    self:bindVisible(
        root .. ".genre.g.item0",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".genre.g.item1",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".genre.g.item2",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".genre.g.item3",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".genre.g.item4",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".genre.g.item5",
        function()
            return not isShow.value
        end
    )
    self:onMouseGenre(
        self:getUI(root .. ".genre.g.item0"),
        function() return genreData.genresSortedList[1] end,
        playerId
    )
    self:onMouseGenre(
        self:getUI(root .. ".genre.g.item1"),
        function() return genreData.genresSortedList[2] end,
        playerId
    )
    self:onMouseGenre(
        self:getUI(root .. ".genre.g.item2"),
        function() return genreData.genresSortedList[3] end,
        playerId
    )
    self:onMouseTalent(
        self:getUI(root .. ".talent.icon"),
        playerId
    )
    local blessData = datas.players[playerId]:getSingle(BlessData)
    self:bindImage(
        root .. ".bless.b.item0.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            if #blessData.have < 1 then
                return 0
            end
            local bless = blessData.have[1]
            local cfg = blessConfigMap[bless.configId]
            return cfg.icon
        end
    )
    self:bindImage(
        root .. ".bless.b.item0.bg",
        function()
            if not isShow.value then
                return 131978
            end
            if #blessData.have < 1 then
                return 131978
            end
            local bless = blessData.have[1]
            local cfg = blessConfigMap[bless.configId]
            if cfg.quality == 1 then
                return 134230997
            elseif cfg.quality == 2 then
                return 134281197
            elseif cfg.quality == 3 then
                return 134218858
            end
            return 131978
        end
    )
    self:bindImage(
        root .. ".bless.b.item1.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            if #blessData.have < 2 then
                return 0
            end
            local bless = blessData.have[2]
            local cfg = blessConfigMap[bless.configId]
            return cfg.icon
        end
    )
    self:bindImage(
        root .. ".bless.b.item1.bg",
        function()
            if not isShow.value then
                return 131978
            end
            if #blessData.have < 2 then
                return 131978
            end
            local bless = blessData.have[2]
            local cfg = blessConfigMap[bless.configId]
            if cfg.quality == 1 then
                return 134230997
            elseif cfg.quality == 2 then
                return 134281197
            elseif cfg.quality == 3 then
                return 134218858
            end
            return 131978
        end
    )
    self:bindImage(
        root .. ".bless.b.item2.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            if #blessData.have < 3 then
                return 0
            end
            local bless = blessData.have[3]
            local cfg = blessConfigMap[bless.configId]
            return cfg.icon
        end
    )
    self:bindImage(
        root .. ".bless.b.item2.bg",
        function()
            if not isShow.value then
                return 131978
            end
            if #blessData.have < 3 then
                return 131978
            end
            local bless = blessData.have[3]
            local cfg = blessConfigMap[bless.configId]
            if cfg.quality == 1 then
                return 134230997
            elseif cfg.quality == 2 then
                return 134281197
            elseif cfg.quality == 3 then
                return 134218858
            end
            return 131978
        end
    )
    self:bindVisible(
        root .. ".bless.b.item0",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".bless.b.item1",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".bless.b.item2",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".bless.b.item3",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".bless.b.item4",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".bless.b.item5",
        function()
            return not isShow.value
        end
    )
    self:onMouseBless(
        self:getUI(root .. ".bless.b.item0"),
        playerId,
        0
    )
    self:onMouseBless(
        self:getUI(root .. ".bless.b.item1"),
        playerId,
        1
    )
    self:onMouseBless(
        self:getUI(root .. ".bless.b.item2"),
        playerId,
        2
    )
    self:bindImage(
        root .. ".equip.b.item0.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[1] == nil then
                return 0
            end
            local ____opt_12 = equipConfigMap[equips[1].configId]
            return ____opt_12 and ____opt_12.icon
        end
    )
    self:bindImage(
        root .. ".equip.b.item0.bg",
        function()
            if not isShow.value then
                return 131978
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[1] == nil then
                return 131978
            end
            local config = equipConfigMap[equips[1].configId]
            if config == nil then
                return 131978
            end
            if config.quality == 1 then
                return 134218452
            elseif config.quality == 2 then
                return 134246519
            elseif config.quality == 3 then
                return 134238791
            end
            return 131978
        end
    )
    self:bindImage(
        root .. ".equip.b.item1.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[2] == nil then
                return 0
            end
            local ____opt_14 = equipConfigMap[equips[2].configId]
            return ____opt_14 and ____opt_14.icon
        end
    )
    self:bindImage(
        root .. ".equip.b.item1.bg",
        function()
            if not isShow.value then
                return 131978
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[2] == nil then
                return 131978
            end
            local config = equipConfigMap[equips[2].configId]
            if config == nil then
                return 131978
            end
            if config.quality == 1 then
                return 134218452
            elseif config.quality == 2 then
                return 134246519
            elseif config.quality == 3 then
                return 134238791
            end
            return 131978
        end
    )
    self:bindImage(
        root .. ".equip.b.item2.icon",
        function()
            if not isShow.value then
                return 134264716
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[3] == nil then
                return 0
            end
            local ____opt_16 = equipConfigMap[equips[3].configId]
            return ____opt_16 and ____opt_16.icon
        end
    )
    self:bindImage(
        root .. ".equip.b.item2.bg",
        function()
            if not isShow.value then
                return 131978
            end
            local equips = datas.players[playerId]:getAll(EquipData)
            if equips[3] == nil then
                return 131978
            end
            local config = equipConfigMap[equips[3].configId]
            if config == nil then
                return 131978
            end
            if config.quality == 1 then
                return 134218452
            elseif config.quality == 2 then
                return 134246519
            elseif config.quality == 3 then
                return 134238791
            end
            return 131978
        end
    )
    self:bindVisible(
        root .. ".equip.b.item0",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".equip.b.item1",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".equip.b.item2",
        function()
            return isShow.value
        end
    )
    self:bindVisible(
        root .. ".equip.b.item3",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".equip.b.item4",
        function()
            return not isShow.value
        end
    )
    self:bindVisible(
        root .. ".equip.b.item5",
        function()
            return not isShow.value
        end
    )
    self:onMouseEquip(
        self:getUI(root .. ".equip.b.item0"),
        playerId,
        0
    )
    self:onMouseEquip(
        self:getUI(root .. ".equip.b.item1"),
        playerId,
        1
    )
    self:onMouseEquip(
        self:getUI(root .. ".equip.b.item2"),
        playerId,
        2
    )
    self:bindVisible(
        root .. ".report",
        function()
            return isPvpMode(nil) and not isPvpModeRobot(nil) and playerId ~= LOCAL.PLAYER_ID and gameData.level >= 5
        end
    )
    self:bindClick(
        root .. ".report.report",
        function()
            local checkData = datas.players[playerId]:getSingle(PlayerInHookData)
            if checkData == nil then
                DTips:show(i18n["local"](i18n, "系统已对该玩家进行挂机检测"))
                return
            end
            if checkData.inHook then
                DTips:show(i18n["local"](i18n, "系统已对该玩家进行挂机检测"))
            else
                if checkData.idle_count >= 1 then
                    DTips:show(i18n["local"](i18n, "系统已对该玩家进行挂机检测"))
                else
                    local avgLevel = 1
                    for ____, playerId2 in ipairs(playerIdList) do
                        do
                            local playerData = datas.players[playerId2]:getSingle(PlayerData)
                            if playerId == playerId2 then
                                goto __continue118
                            end
                            avgLevel = avgLevel + playerData.level
                        end
                        ::__continue118::
                    end
                    avgLevel = avgLevel / 5
                    local playerData = datas.players[playerId]:getSingle(PlayerData)
                    local dis = avgLevel - playerData.level
                    if dis < 5 then
                        DTips:show(i18n["local"](i18n, "系统已对该玩家进行挂机检测"))
                        return
                    end
                end
            end
            checkController.report:execute(LOCAL.PLAYER_ID, playerId)
        end
    )
end
function DPlayerList.prototype.onHide(self)
    dialogs:hideHover()
end
function DPlayerList.prototype.onMouseGenre(self, ui, genre, playerId)
    self:uiBindMouse(
        ui,
        function()
            local gameData = datas.global:getSingle(GameData)
            local ____opt_18 = datas.global:getSingle(DebugData)
            if ____opt_18 and ____opt_18.show_all_player or player2King[playerId] == player2King[LOCAL.PLAYER_ID] or gameData.mode == GameMode["镜像"] and gameData.gameStatus == GameStatus["战斗中"] then
                dialogs:showRepeat(
                    DHelpGenre,
                    {
                        genre = genre(nil),
                        x = ui:get_absolute_x(),
                        y = ui:get_absolute_y() + 40
                    }
                )
            end
        end,
        function()
            dialogs:hide(DHelpGenre)
        end
    )
end
function DPlayerList.prototype.onMouseEquip(self, ui, playerId, index)
    self:uiBindMouse(
        ui,
        function()
            local list = datas.players[playerId]:getAll(EquipData)
            if list[index + 1] == nil then
                return
            end
            local configId = list[index + 1].configId
            if equipConfigMap[configId] == nil then
                return
            end
            local ____dialogs_25 = dialogs
            local ____dialogs_showRepeat_26 = dialogs.showRepeat
            local ____DEquipInfo_24 = DEquipInfo
            local ____temp_22 = ui:get_absolute_x()
            local ____temp_23 = ui:get_absolute_y() + 180 * y3.ui.get_window_width() / y3.ui.get_screen_width()
            local ____opt_20 = equipConfigMap[configId]
            ____dialogs_showRepeat_26(____dialogs_25, ____DEquipInfo_24, {x = ____temp_22, y = ____temp_23, skillId = ____opt_20 and ____opt_20.id or 0})
        end,
        function()
            dialogs:hide(DEquipInfo)
        end
    )
end
function DPlayerList.prototype.onMouseBless(self, ui, playerId, index)
    self:uiBindMouse(
        ui,
        function()
            local gameData = datas.global:getSingle(GameData)
            local ____opt_27 = datas.global:getSingle(DebugData)
            if ____opt_27 and ____opt_27.show_all_player or player2King[playerId] == player2King[LOCAL.PLAYER_ID] or gameData.mode == GameMode["镜像"] and gameData.gameStatus == GameStatus["战斗中"] then
                local blessData = datas.players[playerId]:getSingle(BlessData)
                if blessData.have[index + 1] == nil then
                    return
                end
                local configId = blessData.have[index + 1].configId
                local level = blessData.have[index + 1].level
                dialogs:showRepeat(
                    DHelpBless,
                    {
                        configId = configId,
                        x = ui:get_absolute_x(),
                        y = ui:get_absolute_y() + 20,
                        level = level
                    }
                )
            end
        end,
        function()
            dialogs:hide(DHelpBless)
        end
    )
end
function DPlayerList.prototype.onMouseTalent(self, ui, playerId)
    self:uiBindMouse(
        ui,
        function()
            local gameData = datas.global:getSingle(GameData)
            local ____opt_29 = datas.global:getSingle(DebugData)
            if ____opt_29 and ____opt_29.show_all_player or player2King[playerId] == player2King[LOCAL.PLAYER_ID] or gameData.mode == GameMode["镜像"] and gameData.gameStatus == GameStatus["战斗中"] then
                dialogs:showRepeat(
                    DSelfTalentInfo,
                    {
                        playerId = playerId,
                        x = ui:get_absolute_x(),
                        y = ui:get_absolute_y() + 20
                    }
                )
            end
        end,
        function()
            dialogs:hide(DSelfTalentInfo)
        end
    )
end
return ____exports
