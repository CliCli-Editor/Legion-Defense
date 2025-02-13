local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 12,["31"] = 14,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 17,["38"] = 17,["39"] = 18,["40"] = 18,["41"] = 19,["42"] = 19,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 22,["48"] = 22,["49"] = 23,["50"] = 23,["51"] = 24,["52"] = 24,["53"] = 25,["54"] = 25,["55"] = 26,["56"] = 26,["57"] = 27,["58"] = 27,["59"] = 28,["60"] = 28,["61"] = 30,["62"] = 30,["63"] = 31,["64"] = 31,["65"] = 31,["66"] = 32,["67"] = 32,["68"] = 33,["69"] = 33,["70"] = 34,["71"] = 34,["72"] = 35,["73"] = 35,["74"] = 36,["75"] = 36,["76"] = 37,["77"] = 37,["78"] = 38,["79"] = 38,["80"] = 39,["81"] = 39,["82"] = 40,["83"] = 40,["84"] = 41,["85"] = 41,["86"] = 43,["87"] = 43,["88"] = 43,["89"] = 44,["90"] = 44,["91"] = 45,["92"] = 45,["93"] = 47,["94"] = 47,["95"] = 47,["96"] = 47,["98"] = 47,["99"] = 48,["100"] = 47,["101"] = 50,["102"] = 51,["103"] = 52,["104"] = 51,["105"] = 50,["106"] = 56,["108"] = 57,["109"] = 58,["110"] = 59,["111"] = 60,["113"] = 62,["115"] = 64,["116"] = 64,["117"] = 64,["118"] = 65,["119"] = 66,["120"] = 64,["121"] = 64,["122"] = 68,["123"] = 68,["124"] = 68,["125"] = 69,["126"] = 70,["127"] = 68,["128"] = 68,["129"] = 73,["130"] = 73,["131"] = 73,["132"] = 74,["133"] = 73,["134"] = 73,["135"] = 77,["136"] = 77,["137"] = 77,["138"] = 78,["139"] = 77,["140"] = 77,["141"] = 82,["142"] = 82,["143"] = 82,["144"] = 83,["145"] = 82,["146"] = 82,["147"] = 87,["148"] = 87,["149"] = 87,["150"] = 88,["151"] = 87,["152"] = 87,["153"] = 91,["154"] = 91,["155"] = 91,["156"] = 91,["157"] = 93,["158"] = 95,["159"] = 96,["160"] = 97,["163"] = 101,["164"] = 102,["165"] = 103,["166"] = 104,["167"] = 105,["168"] = 106,["169"] = 107,["170"] = 108,["173"] = 111,["174"] = 112,["175"] = 114,["176"] = 114,["177"] = 115,["178"] = 121,["180"] = 124,["182"] = 91,["183"] = 91,["184"] = 129,["186"] = 130,["187"] = 130,["188"] = 132,["189"] = 133,["190"] = 135,["191"] = 136,["192"] = 130,["195"] = 139,["196"] = 139,["197"] = 139,["198"] = 140,["199"] = 139,["200"] = 139,["201"] = 142,["202"] = 142,["203"] = 142,["204"] = 143,["205"] = 144,["206"] = 142,["207"] = 142,["208"] = 147,["209"] = 147,["210"] = 147,["211"] = 148,["212"] = 149,["213"] = 147,["214"] = 147,["215"] = 151,["216"] = 151,["217"] = 151,["218"] = 152,["219"] = 153,["220"] = 151,["221"] = 151,["222"] = 156,["223"] = 156,["224"] = 156,["225"] = 157,["226"] = 158,["227"] = 159,["228"] = 160,["229"] = 161,["230"] = 156,["231"] = 156,["232"] = 163,["233"] = 163,["234"] = 163,["235"] = 164,["236"] = 165,["237"] = 163,["238"] = 163,["240"] = 168,["241"] = 168,["242"] = 170,["243"] = 171,["244"] = 172,["245"] = 173,["246"] = 174,["247"] = 174,["249"] = 175,["250"] = 175,["252"] = 176,["253"] = 176,["255"] = 178,["256"] = 179,["257"] = 179,["259"] = 180,["261"] = 182,["262"] = 171,["263"] = 188,["264"] = 188,["265"] = 188,["266"] = 189,["267"] = 189,["269"] = 190,["270"] = 188,["271"] = 188,["272"] = 192,["273"] = 192,["274"] = 192,["275"] = 193,["276"] = 192,["277"] = 192,["278"] = 195,["279"] = 195,["280"] = 195,["281"] = 196,["282"] = 195,["283"] = 195,["284"] = 199,["285"] = 200,["286"] = 201,["287"] = 202,["288"] = 202,["290"] = 203,["291"] = 203,["293"] = 204,["294"] = 204,["296"] = 206,["297"] = 207,["298"] = 207,["300"] = 208,["302"] = 210,["303"] = 199,["304"] = 216,["305"] = 216,["306"] = 216,["307"] = 217,["308"] = 217,["310"] = 218,["311"] = 216,["312"] = 216,["313"] = 220,["314"] = 220,["315"] = 220,["316"] = 221,["317"] = 220,["318"] = 220,["319"] = 223,["320"] = 223,["321"] = 223,["322"] = 224,["323"] = 223,["324"] = 223,["325"] = 168,["328"] = 257,["329"] = 258,["330"] = 259,["331"] = 260,["332"] = 261,["333"] = 257,["334"] = 263,["335"] = 264,["336"] = 265,["337"] = 266,["338"] = 267,["339"] = 263,["340"] = 270,["341"] = 270,["342"] = 270,["343"] = 271,["344"] = 272,["345"] = 270,["346"] = 270,["347"] = 275,["348"] = 275,["349"] = 275,["350"] = 276,["351"] = 275,["352"] = 275,["353"] = 278,["354"] = 278,["355"] = 278,["356"] = 279,["357"] = 278,["358"] = 278,["359"] = 282,["360"] = 282,["361"] = 282,["362"] = 283,["363"] = 284,["364"] = 285,["365"] = 282,["366"] = 282,["367"] = 288,["368"] = 288,["369"] = 288,["370"] = 289,["371"] = 288,["372"] = 288,["373"] = 292,["374"] = 292,["375"] = 292,["376"] = 293,["377"] = 292,["378"] = 292,["379"] = 296,["380"] = 296,["381"] = 296,["382"] = 297,["383"] = 298,["384"] = 299,["385"] = 296,["386"] = 296,["387"] = 303,["388"] = 304,["390"] = 305,["391"] = 305,["392"] = 306,["393"] = 307,["394"] = 308,["395"] = 309,["396"] = 310,["397"] = 311,["398"] = 307,["399"] = 305,["402"] = 315,["403"] = 303,["404"] = 317,["405"] = 318,["406"] = 319,["408"] = 320,["409"] = 320,["410"] = 321,["411"] = 322,["412"] = 324,["413"] = 326,["414"] = 326,["415"] = 326,["416"] = 327,["417"] = 326,["418"] = 326,["419"] = 330,["420"] = 330,["421"] = 330,["422"] = 331,["423"] = 331,["424"] = 330,["425"] = 330,["426"] = 333,["427"] = 333,["428"] = 333,["429"] = 334,["430"] = 333,["431"] = 333,["432"] = 336,["433"] = 336,["434"] = 336,["435"] = 337,["436"] = 336,["437"] = 336,["438"] = 339,["439"] = 339,["440"] = 339,["441"] = 340,["442"] = 340,["443"] = 339,["444"] = 339,["445"] = 342,["446"] = 342,["447"] = 342,["448"] = 343,["449"] = 343,["450"] = 342,["451"] = 342,["452"] = 346,["453"] = 346,["454"] = 346,["455"] = 347,["456"] = 348,["457"] = 348,["458"] = 348,["459"] = 348,["460"] = 348,["461"] = 348,["462"] = 348,["463"] = 348,["464"] = 346,["465"] = 353,["466"] = 354,["467"] = 346,["468"] = 346,["469"] = 320,["473"] = 56,["474"] = 359,["477"] = 391,["478"] = 392,["481"] = 361,["482"] = 362,["483"] = 363,["484"] = 364,["485"] = 365,["486"] = 367,["487"] = 368,["488"] = 369,["489"] = 370,["491"] = 371,["492"] = 371,["493"] = 372,["494"] = 373,["495"] = 374,["496"] = 375,["497"] = 376,["500"] = 371,["503"] = 380,["504"] = 381,["505"] = 381,["506"] = 381,["507"] = 381,["508"] = 381,["509"] = 381,["511"] = 383,["512"] = 383,["513"] = 383,["514"] = 383,["515"] = 383,["516"] = 383,["517"] = 384,["519"] = 385,["520"] = 385,["521"] = 386,["522"] = 386,["523"] = 386,["524"] = 386,["525"] = 386,["526"] = 386,["527"] = 385,["530"] = 388,["531"] = 388,["532"] = 388,["533"] = 388,["534"] = 388,["535"] = 388,["542"] = 359,["543"] = 397,["544"] = 398,["545"] = 399,["546"] = 400,["548"] = 403,["549"] = 404,["551"] = 404,["555"] = 407,["556"] = 408,["557"] = 409,["558"] = 411,["559"] = 411,["560"] = 411,["561"] = 412,["562"] = 411,["563"] = 411,["564"] = 414,["565"] = 414,["566"] = 414,["567"] = 415,["568"] = 414,["569"] = 414,["570"] = 417,["571"] = 417,["572"] = 417,["573"] = 418,["574"] = 417,["575"] = 417,["576"] = 420,["577"] = 420,["578"] = 420,["579"] = 421,["580"] = 422,["581"] = 423,["582"] = 423,["583"] = 423,["584"] = 423,["585"] = 423,["586"] = 423,["587"] = 423,["589"] = 420,["590"] = 428,["591"] = 429,["592"] = 420,["593"] = 420,["594"] = 432,["595"] = 432,["596"] = 432,["597"] = 433,["598"] = 432,["599"] = 432,["600"] = 435,["601"] = 435,["602"] = 435,["603"] = 436,["604"] = 435,["605"] = 435,["606"] = 438,["607"] = 438,["608"] = 438,["609"] = 439,["610"] = 438,["611"] = 438,["612"] = 441,["613"] = 441,["614"] = 441,["615"] = 442,["616"] = 441,["617"] = 441,["618"] = 446,["619"] = 446,["620"] = 446,["621"] = 447,["622"] = 446,["623"] = 446,["624"] = 449,["625"] = 449,["626"] = 449,["627"] = 450,["628"] = 449,["629"] = 449,["630"] = 452,["631"] = 452,["632"] = 452,["633"] = 453,["634"] = 452,["635"] = 452,["636"] = 455,["637"] = 455,["638"] = 455,["639"] = 456,["640"] = 455,["641"] = 455,["642"] = 458,["643"] = 458,["644"] = 458,["645"] = 459,["646"] = 458,["647"] = 458,["648"] = 463,["649"] = 464,["650"] = 464,["651"] = 464,["652"] = 465,["653"] = 466,["654"] = 467,["655"] = 464,["656"] = 464,["657"] = 469,["658"] = 469,["659"] = 469,["660"] = 470,["661"] = 471,["662"] = 469,["663"] = 469,["664"] = 473,["665"] = 473,["666"] = 473,["667"] = 474,["668"] = 475,["669"] = 476,["670"] = 473,["671"] = 473,["672"] = 478,["673"] = 478,["674"] = 478,["675"] = 479,["676"] = 480,["677"] = 478,["678"] = 478,["679"] = 483,["680"] = 483,["681"] = 483,["682"] = 484,["683"] = 485,["684"] = 485,["685"] = 485,["686"] = 485,["687"] = 485,["688"] = 485,["689"] = 485,["690"] = 485,["691"] = 483,["692"] = 490,["693"] = 491,["694"] = 483,["695"] = 483,["696"] = 493,["697"] = 493,["698"] = 493,["699"] = 494,["700"] = 495,["701"] = 495,["702"] = 495,["703"] = 495,["704"] = 495,["705"] = 495,["706"] = 495,["707"] = 495,["708"] = 493,["709"] = 500,["710"] = 501,["711"] = 493,["712"] = 493,["713"] = 504,["714"] = 504,["715"] = 504,["716"] = 505,["717"] = 506,["718"] = 506,["719"] = 506,["720"] = 506,["721"] = 506,["722"] = 506,["723"] = 506,["724"] = 506,["725"] = 504,["726"] = 511,["727"] = 512,["728"] = 504,["729"] = 504,["730"] = 516,["731"] = 517,["732"] = 518,["733"] = 519,["734"] = 519,["735"] = 519,["736"] = 520,["737"] = 521,["739"] = 523,["740"] = 524,["741"] = 525,["742"] = 519,["743"] = 519,["744"] = 528,["745"] = 528,["746"] = 528,["747"] = 529,["748"] = 530,["750"] = 532,["751"] = 533,["752"] = 534,["753"] = 535,["755"] = 538,["756"] = 539,["757"] = 540,["758"] = 541,["759"] = 542,["760"] = 543,["762"] = 546,["763"] = 528,["764"] = 528,["765"] = 548,["766"] = 548,["767"] = 548,["768"] = 549,["771"] = 552,["772"] = 553,["773"] = 553,["774"] = 553,["775"] = 553,["776"] = 553,["777"] = 553,["778"] = 553,["779"] = 553,["780"] = 553,["781"] = 548,["782"] = 559,["783"] = 560,["784"] = 548,["785"] = 548,["786"] = 517,["787"] = 563,["788"] = 564,["789"] = 565,["790"] = 569,["791"] = 570,["793"] = 571,["794"] = 571,["795"] = 572,["796"] = 573,["797"] = 574,["798"] = 574,["799"] = 574,["800"] = 575,["801"] = 576,["803"] = 578,["804"] = 578,["805"] = 578,["806"] = 578,["807"] = 579,["808"] = 579,["809"] = 574,["810"] = 574,["811"] = 582,["812"] = 582,["813"] = 582,["814"] = 583,["815"] = 584,["817"] = 586,["818"] = 587,["819"] = 588,["821"] = 591,["822"] = 592,["823"] = 593,["824"] = 594,["825"] = 595,["826"] = 596,["828"] = 599,["829"] = 582,["830"] = 582,["831"] = 602,["832"] = 602,["833"] = 602,["834"] = 603,["835"] = 604,["838"] = 607,["839"] = 607,["840"] = 607,["841"] = 608,["842"] = 609,["843"] = 610,["844"] = 607,["845"] = 602,["846"] = 612,["847"] = 613,["848"] = 602,["849"] = 602,["850"] = 571,["853"] = 397});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroExpManager = include("logic.archive.manager.HeroExpManager")
local heroExpManager = ____HeroExpManager.heroExpManager
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
local ____HeroExpConfig = include("logic.configs.HeroExpConfig")
local heroExpConfigList = ____HeroExpConfig.heroExpConfigList
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____KeyboardManager = include("logic.managers.KeyboardManager")
local KeyboardManager = ____KeyboardManager.KeyboardManager
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local ____BlessData = include("logic.models.BlessData")
local BlessData = ____BlessData.BlessData
local ____EquipData = include("logic.models.EquipData")
local EquipData = ____EquipData.EquipData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____GameStatisticsData = include("logic.models.GameStatisticsData")
local GameStatisticsData = ____GameStatisticsData.GameStatisticsData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
local ____ProgressEffect = include("logic.utils.ProgressEffect")
local ProgressEffect = ____ProgressEffect.ProgressEffect
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DNewGameHall = include("logic.dialogs.DNewGameHall")
local DNewGameHall = ____DNewGameHall.DNewGameHall
local ____DHelpBless = include("logic.dialogs.help.DHelpBless")
local DHelpBless = ____DHelpBless.DHelpBless
local ____DHelpEscape = include("logic.dialogs.help.DHelpEscape")
local DHelpEscape = ____DHelpEscape.DHelpEscape
local ____DHelpGenre = include("logic.dialogs.help.DHelpGenre")
local DHelpGenre = ____DHelpGenre.DHelpGenre
local ____DHelpReward = include("logic.dialogs.help.DHelpReward")
local DHelpReward = ____DHelpReward.DHelpReward
local ____DEquipInfo = include("logic.dialogs.infos.DEquipInfo")
local DEquipInfo = ____DEquipInfo.DEquipInfo
local ____DSelfTalentInfo = include("logic.dialogs.infos.DSelfTalentInfo")
local DSelfTalentInfo = ____DSelfTalentInfo.DSelfTalentInfo
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
____exports.DGameOver = __TS__Class()
local DGameOver = ____exports.DGameOver
DGameOver.name = "DGameOver"
__TS__ClassExtends(DGameOver, Dialog)
function DGameOver.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DGameOver.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DGameOver.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("展示结算界面.......")
        SoundManager:stopBgm(LOCAL.PLAYER)
        if LOCAL.PLAYER_DATA:getSingle(PlayerData).isWin then
            SoundManager:play(SoundType["胜利"])
        else
            SoundManager:play(SoundType["失败"])
        end
        self:bindVisible(
            "root.result.win",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return playerData.isWin
            end
        )
        self:bindVisible(
            "root.result.loss",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return not playerData.isWin
            end
        )
        self:bindVisible(
            "root.result.win.zh",
            function()
                return i18n.currentLang ~= "en"
            end
        )
        self:bindVisible(
            "root.result.win.en",
            function()
                return i18n.currentLang == "en"
            end
        )
        self:bindVisible(
            "root.result.loss.zh",
            function()
                return i18n.currentLang ~= "en"
            end
        )
        self:bindVisible(
            "root.result.loss.en",
            function()
                return i18n.currentLang == "en"
            end
        )
        self:bindAction(
            "root.sure",
            "左键-点击",
            function(____, ui, player)
                if steamUtils:isSteam() then
                    print("回到大厅 exit_game")
                    y3.game.end_player_game(LOCAL.PLAYER, "defeat", false)
                    LOCAL.PLAYER:exit_game()
                    return
                end
                if isPvpMode(nil) then
                    UIUtils:SetOnlyDrawUIs(true)
                    bob:exitGame()
                    self:hide()
                    local list = dialogs:getAll()
                    for ____, l in ipairs(list) do
                        if l.name ~= "DSettings" and l.name ~= "DNewGameHall" then
                            dialogs:hideByName(l.name)
                        end
                    end
                    dialogs:show(DNewGameHall, {})
                    KeyboardManager:release()
                    local ____require_result_0 = include("logic.loop.GameLoop")
                    local gameLoop = ____require_result_0.gameLoop
                    gameLoop.isExit = true
                    fight.isStop = true
                else
                    gameModeUtils:restartGame()
                end
            end
        )
        local gameData = datas.global:getSingle(GameData)
        do
            local index = 0
            while index < 3 do
                local playerId = #gameData.teamLeft > index and gameData.teamLeft[index + 1] or nil
                self:updateUI(playerId, index, true)
                playerId = #gameData.teamRight > index and gameData.teamRight[index + 1] or nil
                self:updateUI(playerId, index, false)
                index = index + 1
            end
        end
        self:bindImage(
            "root.info.hero.icon",
            function()
                return heroSkinManager:getHeroIcon2(LOCAL.PLAYER_ID)
            end
        )
        self:bindText(
            "root.info.level",
            function()
                local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
                return "LV." .. tostring(heroExpManager:getLevel(playerData.hero.id))
            end
        )
        self:bindText(
            "root.info.expLabel",
            function()
                local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
                return heroExpManager:currentRate(playerData.hero.id)
            end
        )
        self:bindText(
            "root.info.add",
            function()
                local archiveData = datas.players[LOCAL.PLAYER_ID]:getSingle(InGameArchiveData)
                return "+" .. tostring(archiveData.reward_exp)
            end
        )
        self:bindText(
            "root.center.time",
            function()
                local gameStatisticsData = datas.global:getSingle(GameStatisticsData)
                local time = gameStatisticsData.gameTime
                local minutes = math.floor(time / 60)
                local second = math.floor(time % 60)
                return i18n:format("结束时间：${minutes}分${second}秒", {minutes = minutes, second = second})
            end
        )
        self:bindText(
            "root.center.turn",
            function()
                local gameStatisticsData = datas.global:getSingle(GameStatisticsData)
                return i18n:format("结束回合：第${level}回合", {level = gameStatisticsData and gameStatisticsData.endLevel or 0})
            end
        )
        do
            local index = 0
            while index < 3 do
                local idx = index
                local leftData = self:compute(function()
                    local gameStatisticsData = datas.global:getSingle(GameStatisticsData)
                    local level = 0
                    if idx == 0 then
                        level = gameStatisticsData.KillTower1LevelLeft
                    end
                    if idx == 1 then
                        level = gameStatisticsData.KillTower2LevelLeft
                    end
                    if idx == 2 then
                        level = gameStatisticsData.KillTower3LevelLeft
                    end
                    local icon = 0
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING then
                        icon = 134279915
                    else
                        icon = 134234913
                    end
                    return {level = level, icon = icon}
                end)
                self:bindText(
                    ("root.center.left.tower_" .. tostring(idx + 1)) .. ".title",
                    function()
                        if leftData.value.level == 0 then
                            return i18n["local"](i18n, "#00ff00存活")
                        end
                        return i18n:format("#ff0000第${level}回合", {level = leftData.value.level})
                    end
                )
                self:bindVisible(
                    ("root.center.left.tower_" .. tostring(idx + 1)) .. ".icon.death",
                    function()
                        return leftData.value.level ~= 0
                    end
                )
                self:bindImage(
                    ("root.center.left.tower_" .. tostring(idx + 1)) .. ".icon",
                    function()
                        return leftData.value.icon
                    end
                )
                local rightData = self:compute(function()
                    local gameStatisticsData = datas.global:getSingle(GameStatisticsData)
                    local level = 0
                    if idx == 0 then
                        level = gameStatisticsData.KillTower1LevelRight
                    end
                    if idx == 1 then
                        level = gameStatisticsData.KillTower2LevelRight
                    end
                    if idx == 2 then
                        level = gameStatisticsData.KillTower3LevelRight
                    end
                    local icon = 0
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING then
                        icon = 134279915
                    else
                        icon = 134234913
                    end
                    return {level = level, icon = icon}
                end)
                self:bindText(
                    ("root.center.right.tower_" .. tostring(idx + 1)) .. ".title",
                    function()
                        if rightData.value.level == 0 then
                            return i18n["local"](i18n, "#00ff00存活")
                        end
                        return i18n:format("#ff0000第${level}回合", {level = rightData.value.level})
                    end
                )
                self:bindVisible(
                    ("root.center.right.tower_" .. tostring(idx + 1)) .. ".icon.death",
                    function()
                        return rightData.value.level ~= 0
                    end
                )
                self:bindImage(
                    ("root.center.right.tower_" .. tostring(idx + 1)) .. ".icon",
                    function()
                        return rightData.value.icon
                    end
                )
                index = index + 1
            end
        end
        local oldRankConfig = self:compute(function()
            local statData = datas.players[y3.player.get_local().id]:getSingle(PlayerStatisticsData)
            local score = statData and statData.oldScore or 0
            local config = ladderTournamentManager:getRank(score)
            return config
        end)
        local newRankConfig = self:compute(function()
            local statData = datas.players[y3.player.get_local().id]:getSingle(PlayerStatisticsData)
            local score = statData and statData.newScore or 0
            local config = ladderTournamentManager:getRank(score)
            return config
        end)
        self:bindVisible(
            "root.info.ladderResult",
            function()
                local statData = datas.players[y3.player.get_local().id]:getSingle(PlayerStatisticsData)
                return (statData and statData.needShowLadderScore) == true
            end
        )
        self:bindImage(
            "root.info.ladderResult.fromIcon",
            function()
                return oldRankConfig.value.icon
            end
        )
        self:bindText(
            "root.info.ladderResult.fromIcon.name",
            function()
                return oldRankConfig.value.rankName.value
            end
        )
        self:bindText(
            "root.info.ladderResult.fromScore",
            function()
                local statData = datas.players[y3.player.get_local().id]:getSingle(PlayerStatisticsData)
                local score = statData and statData.oldScore or 0
                return tostring(score - oldRankConfig.value.totalScore)
            end
        )
        self:bindImage(
            "root.info.ladderResult.toIcon",
            function()
                return newRankConfig.value.icon
            end
        )
        self:bindText(
            "root.info.ladderResult.toIcon.name",
            function()
                return newRankConfig.value.rankName.value
            end
        )
        self:bindText(
            "root.info.ladderResult.toScore",
            function()
                local statData = datas.players[y3.player.get_local().id]:getSingle(PlayerStatisticsData)
                local score = statData and statData.newScore or 0
                return tostring(score - newRankConfig.value.totalScore)
            end
        )
        local list = self:compute(function()
            local list2 = {}
            do
                local index = 0
                while index < #localData.rewards do
                    local element = localData.rewards[index + 1]
                    local ____list2_18 = list2
                    local ____element_id_15 = element.id
                    local ____element_total_16 = element.total
                    local ____getPropIcon_result_17 = getPropIcon(nil, element.id)
                    local ____opt_13 = propConfigMap[element.id]
                    ____list2_18[#____list2_18 + 1] = {id = ____element_id_15, count = ____element_total_16, icon = ____getPropIcon_result_17, title = ____opt_13 and ____opt_13.name or ""}
                    index = index + 1
                end
            end
            return list2
        end)
        local root = "root.info.rewardList"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local path = (root .. ".") .. element:get_name()
                local idx = i
                self:bindVisible(
                    path,
                    function()
                        return list.value[idx + 1] ~= nil
                    end
                )
                self:bindImage(
                    path .. ".icon",
                    function()
                        local ____opt_19 = list.value[idx + 1]
                        return ____opt_19 and ____opt_19.icon or 0
                    end
                )
                self:bindVisible(
                    path .. ".icon",
                    function()
                        return list.value[idx + 1] ~= nil and list.value[idx + 1].icon > 0
                    end
                )
                self:bindVisible(
                    path .. ".title",
                    function()
                        return list.value[idx + 1] ~= nil and list.value[idx + 1].icon <= 0
                    end
                )
                self:bindText(
                    path .. ".title",
                    function()
                        local ____opt_21 = list.value[idx + 1]
                        return ____opt_21 and ____opt_21.title.value or ""
                    end
                )
                self:bindText(
                    path .. ".value",
                    function()
                        local ____opt_23 = list.value[idx + 1]
                        return "+" .. tostring(____opt_23 and ____opt_23.count or "0")
                    end
                )
                self:bindMouse(
                    path,
                    function()
                        local ui = self:getUI(path)
                        dialogs:showRepeat(
                            DHelpReward,
                            {
                                x = ui:get_absolute_x(),
                                y = ui:get_absolute_y() + 20,
                                info = localData.rewards[idx + 1]
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DHelpReward)
                    end
                )
                i = i + 1
            end
        end
    end)
end
function DGameOver.prototype.onShow(self)
    do
        local function ____catch(____error)
            console:error("error")
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            console:log("展示结算界面.......2")
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local archiveData = datas.players[LOCAL.PLAYER_ID]:getSingle(InGameArchiveData)
            local nExp = heroExpManager:currentProgress(playerData.hero.id)
            local level = heroExpManager:getLevel(playerData.hero.id)
            local data = archive.playerData.heroes["" .. tostring(playerData.hero.id)]
            local oExp = 0
            local oLevel = 0
            local oldExp = math.max(0, data.exp - archiveData.reward_exp)
            do
                local index = 0
                while index < #heroExpConfigList do
                    local element = heroExpConfigList[index + 1]
                    if oldExp < element.score then
                        local pre = heroExpConfigList[index]
                        oExp = (oldExp - pre.score) / (element.score - pre.score) * 100
                        oLevel = index - 1
                        break
                    end
                    index = index + 1
                end
            end
            if oLevel == level then
                ProgressEffect:play(
                    self:getUI("root.info.exp"),
                    oExp,
                    nExp,
                    0.2
                )
            else
                ProgressEffect:play(
                    self:getUI("root.info.exp"),
                    oExp,
                    100,
                    0.2
                )
                local count = level - oLevel - 1
                do
                    local index = 0
                    while index < count do
                        ProgressEffect:play(
                            self:getUI("root.info.exp"),
                            0,
                            100,
                            0.2
                        )
                        index = index + 1
                    end
                end
                ProgressEffect:play(
                    self:getUI("root.info.exp"),
                    0,
                    nExp,
                    0.2
                )
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function DGameOver.prototype.updateUI(self, playerId, index, isLeft)
    local root = "root.left.list.player_" .. tostring(index + 1)
    if not isLeft then
        root = "root.right.list.player_" .. tostring(index + 1)
    end
    if playerId == nil then
        local ____opt_25 = self:getUI(root)
        if ____opt_25 ~= nil then
            ____opt_25:set_visible(false)
        end
        return
    end
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local statData = datas.players[playerId]:getSingle(PlayerStatisticsData)
    local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
    self:bindVisible(
        root .. ".list.rank.mvp",
        function()
            return statData.isMvp
        end
    )
    self:bindVisible(
        root .. ".list.rank.smvp",
        function()
            return statData.isSMvp
        end
    )
    self:bindVisible(
        root .. ".list.rank.escape",
        function()
            return archiveData.statInfo ~= nil and archiveData.statInfo.last_game_idle > 0
        end
    )
    self:bindMouse(
        root .. ".list.rank.escape",
        function()
            if archiveData.statInfo ~= nil and archiveData.statInfo.last_game_idle > 0 then
                local ui = self:getUI(root .. ".list.rank.escape")
                dialogs:showRepeat(
                    DHelpEscape,
                    {
                        x = ui:get_absolute_scale_x(),
                        y = ui:get_absolute_scale_y() + 40
                    }
                )
            end
        end,
        function()
            dialogs:hide(DHelpEscape)
        end
    )
    self:bindText(
        root .. ".name",
        function()
            return playerData.name .. (playerId == LOCAL.PLAYER_ID and ("(" .. i18n["local"](i18n, "我")) .. ")" or "")
        end
    )
    self:bindText(
        root .. ".hero.level.level",
        function()
            return tostring(playerData.level)
        end
    )
    self:bindImage(
        root .. ".hero.icon",
        function()
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindVisible(
        root .. ".self",
        function()
            return playerId == LOCAL.PLAYER_ID
        end
    )
    self:bindText(
        root .. ".list.gold.value",
        function()
            return tostring(statData.gold)
        end
    )
    self:bindText(
        root .. ".list.wood.value",
        function()
            return tostring(statData.wood)
        end
    )
    self:bindText(
        root .. ".list.def.value",
        function()
            return tostring(statData.defenseSuc)
        end
    )
    self:bindText(
        root .. ".list.atk.value",
        function()
            return tostring(statData.attackSuc)
        end
    )
    self:bindText(
        root .. ".list.stat.value",
        function()
            return (((tostring(statData.killMonster) .. "/") .. tostring(statData.killElite)) .. "/") .. tostring(statData.killHero)
        end
    )
    local genreData = datas.players[playerId]:getSingle(PlayerGenreData)
    self:bindImage(
        root .. ".list.genre.genre_1",
        function()
            local genre = genreData.genresSortedList[1]
            local genreIcon = genreLevelConfigMap_genre[genre][1].icon
            return genreIcon
        end
    )
    self:bindText(
        root .. ".list.genre.genre_1.count",
        function()
            local genre = genreData.genresSortedList[1]
            return "" .. tostring(genreData.genreTagCount[genre])
        end
    )
    self:bindImage(
        root .. ".list.genre.genre_2",
        function()
            local genre = genreData.genresSortedList[2]
            local genreIcon = genreLevelConfigMap_genre[genre][1].icon
            return genreIcon
        end
    )
    self:bindText(
        root .. ".list.genre.genre_2.count",
        function()
            local genre = genreData.genresSortedList[2]
            return "" .. tostring(genreData.genreTagCount[genre])
        end
    )
    self:bindMouse(
        root .. ".list.genre.genre_1",
        function()
            local ui = self:getUI(root .. ".list.genre.genre_1")
            dialogs:showRepeat(
                DHelpGenre,
                {
                    genre = genreData.genresSortedList[1],
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 40
                }
            )
        end,
        function()
            dialogs:hide(DHelpGenre)
        end
    )
    self:bindMouse(
        root .. ".list.genre.genre_2",
        function()
            local ui = self:getUI(root .. ".list.genre.genre_2")
            dialogs:showRepeat(
                DHelpGenre,
                {
                    genre = genreData.genresSortedList[2],
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 40
                }
            )
        end,
        function()
            dialogs:hide(DHelpGenre)
        end
    )
    self:bindMouse(
        root .. ".list.talent.talent",
        function()
            local ui = self:getUI(root .. ".list.talent")
            dialogs:showRepeat(
                DSelfTalentInfo,
                {
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 30,
                    playerId = playerId
                }
            )
        end,
        function()
            dialogs:hide(DSelfTalentInfo)
        end
    )
    local blessData = datas.players[playerId]:getSingle(BlessData)
    local function func(____, index)
        local path = ((root .. ".list.bless.b.item") .. tostring(index)) .. ".icon"
        self:bindImage(
            path,
            function()
                if #blessData.have < index + 1 then
                    return 0
                end
                local bless = blessData.have[index + 1]
                local cfg = blessConfigMap[bless.configId]
                return cfg.icon
            end
        )
        self:bindImage(
            ((root .. ".list.bless.b.item") .. tostring(index)) .. ".bg",
            function()
                if #blessData.have < index + 1 then
                    return 131978
                end
                local bless = blessData.have[index + 1]
                local config = blessConfigMap[bless.configId]
                if config == nil then
                    return 131978
                end
                if config.quality == 1 then
                    return 134230997
                elseif config.quality == 2 then
                    return 134281197
                elseif config.quality == 3 then
                    return 134218858
                end
                return 131978
            end
        )
        self:bindMouse(
            path,
            function()
                if #blessData.have < index + 1 then
                    return
                end
                local ui = self:getUI(path)
                dialogs:showRepeat(
                    DHelpBless,
                    {
                        x = ui:get_absolute_x(),
                        y = ui:get_absolute_y() + 30,
                        level = blessData.have[index + 1].level,
                        configId = blessData.have[index + 1].configId
                    }
                )
            end,
            function()
                dialogs:hide(DHelpBless)
            end
        )
    end
    func(nil, 0)
    func(nil, 1)
    func(nil, 2)
    local equips = datas.players[playerId]:getAll(EquipData)
    console:log("equipsequipsequipsequips", #equips)
    do
        local i = 0
        while i < 3 do
            local e = equips[i + 1]
            local path = ((root .. ".list.equip.b.item") .. tostring(i)) .. ".icon"
            self:bindImage(
                path,
                function()
                    if e == nil then
                        return 0
                    end
                    local ____console_log_30 = console.log
                    local ____e_configId_29 = e.configId
                    local ____opt_27 = equipConfigMap[e.configId]
                    ____console_log_30(console, "equipsequipsequipsequips", ____e_configId_29, ____opt_27 and ____opt_27.icon)
                    local ____opt_31 = equipConfigMap[e.configId]
                    return ____opt_31 and ____opt_31.icon
                end
            )
            self:bindImage(
                ((root .. ".list.equip.b.item") .. tostring(i)) .. ".bg",
                function()
                    if e == nil then
                        return 131978
                    end
                    local config = equipConfigMap[e.configId]
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
            self:bindMouse(
                path,
                function()
                    local ui = self:getUI(path)
                    if equipConfigMap[e and e.configId] == nil then
                        return
                    end
                    local ____dialogs_42 = dialogs
                    local ____dialogs_showRepeat_43 = dialogs.showRepeat
                    local ____DEquipInfo_41 = DEquipInfo
                    local ____temp_39 = ui:get_absolute_x()
                    local ____temp_40 = ui:get_absolute_y() + 180 * y3.ui.get_window_width() / y3.ui.get_screen_width()
                    local ____opt_35 = equipConfigMap[e and e.configId]
                    ____dialogs_showRepeat_43(____dialogs_42, ____DEquipInfo_41, {x = ____temp_39, y = ____temp_40, skillId = ____opt_35 and ____opt_35.id or 0})
                end,
                function()
                    dialogs:hide(DEquipInfo)
                end
            )
            i = i + 1
        end
    end
end
return ____exports
