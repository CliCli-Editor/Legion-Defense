local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 13,["37"] = 13,["38"] = 14,["39"] = 14,["40"] = 16,["41"] = 16,["42"] = 17,["43"] = 17,["44"] = 18,["45"] = 18,["46"] = 19,["47"] = 19,["48"] = 20,["49"] = 20,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 23,["55"] = 23,["56"] = 24,["57"] = 24,["58"] = 25,["59"] = 25,["60"] = 26,["61"] = 26,["62"] = 29,["63"] = 29,["64"] = 30,["65"] = 30,["66"] = 30,["67"] = 31,["68"] = 31,["69"] = 32,["70"] = 32,["71"] = 33,["72"] = 33,["73"] = 34,["74"] = 34,["75"] = 35,["76"] = 35,["77"] = 36,["78"] = 36,["79"] = 37,["80"] = 37,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 39,["86"] = 39,["87"] = 41,["88"] = 41,["89"] = 41,["90"] = 41,["92"] = 41,["93"] = 42,["94"] = 41,["95"] = 46,["96"] = 47,["97"] = 48,["98"] = 49,["99"] = 51,["100"] = 52,["102"] = 46,["103"] = 56,["106"] = 58,["107"] = 59,["108"] = 60,["109"] = 61,["110"] = 63,["111"] = 64,["112"] = 65,["113"] = 70,["114"] = 70,["115"] = 70,["116"] = 71,["117"] = 70,["118"] = 70,["119"] = 74,["120"] = 74,["121"] = 74,["122"] = 75,["123"] = 74,["124"] = 74,["125"] = 78,["126"] = 91,["128"] = 92,["129"] = 92,["130"] = 93,["131"] = 94,["132"] = 94,["133"] = 94,["134"] = 94,["135"] = 95,["136"] = 96,["139"] = 99,["140"] = 94,["141"] = 94,["142"] = 101,["143"] = 101,["144"] = 101,["145"] = 102,["146"] = 103,["147"] = 103,["149"] = 104,["150"] = 101,["151"] = 101,["152"] = 92,["156"] = 110,["157"] = 110,["158"] = 112,["159"] = 113,["160"] = 116,["161"] = 117,["162"] = 110,["165"] = 121,["167"] = 122,["168"] = 122,["169"] = 123,["170"] = 124,["171"] = 122,["174"] = 127,["175"] = 127,["176"] = 127,["177"] = 128,["178"] = 127,["179"] = 127,["180"] = 131,["181"] = 131,["182"] = 131,["183"] = 131,["184"] = 132,["185"] = 133,["187"] = 135,["188"] = 131,["189"] = 131,["190"] = 138,["191"] = 138,["192"] = 138,["193"] = 139,["194"] = 138,["195"] = 138,["196"] = 147,["197"] = 151,["198"] = 151,["199"] = 151,["200"] = 152,["201"] = 151,["202"] = 151,["203"] = 154,["204"] = 154,["205"] = 154,["206"] = 155,["207"] = 154,["208"] = 154,["209"] = 157,["210"] = 157,["211"] = 157,["212"] = 158,["213"] = 157,["214"] = 157,["215"] = 160,["216"] = 160,["217"] = 160,["218"] = 160,["219"] = 162,["220"] = 163,["221"] = 164,["222"] = 166,["224"] = 167,["225"] = 167,["226"] = 168,["227"] = 169,["228"] = 169,["229"] = 169,["230"] = 170,["231"] = 171,["232"] = 172,["234"] = 174,["235"] = 175,["237"] = 169,["238"] = 169,["239"] = 178,["240"] = 178,["241"] = 178,["242"] = 179,["243"] = 178,["244"] = 178,["245"] = 182,["246"] = 182,["247"] = 182,["248"] = 182,["249"] = 167,["252"] = 186,["253"] = 187,["254"] = 187,["255"] = 187,["256"] = 187,["257"] = 188,["258"] = 189,["259"] = 190,["261"] = 192,["262"] = 193,["264"] = 195,["265"] = 196,["267"] = 187,["268"] = 187,["269"] = 199,["270"] = 199,["271"] = 199,["272"] = 200,["273"] = 199,["274"] = 199,["275"] = 202,["276"] = 205,["277"] = 205,["278"] = 206,["280"] = 207,["281"] = 207,["282"] = 211,["283"] = 212,["284"] = 213,["285"] = 213,["287"] = 207,["290"] = 215,["291"] = 205,["292"] = 205,["293"] = 205,["294"] = 205,["295"] = 205,["296"] = 217,["297"] = 218,["298"] = 220,["300"] = 57,["303"] = 223,["305"] = 57,["307"] = 56,["308"] = 229,["309"] = 230,["310"] = 229,["311"] = 233,["312"] = 233,["313"] = 237,["314"] = 238,["315"] = 241,["316"] = 242,["317"] = 242,["318"] = 242,["319"] = 243,["320"] = 244,["321"] = 244,["323"] = 245,["324"] = 242,["325"] = 242,["326"] = 247,["327"] = 247,["328"] = 247,["329"] = 248,["330"] = 247,["331"] = 247,["332"] = 250,["333"] = 250,["334"] = 250,["335"] = 251,["336"] = 250,["337"] = 250,["338"] = 253,["339"] = 253,["340"] = 253,["341"] = 254,["342"] = 253,["343"] = 253,["344"] = 256,["345"] = 256,["346"] = 256,["347"] = 256,["348"] = 257,["349"] = 256,["350"] = 256,["351"] = 259,["352"] = 259,["353"] = 259,["354"] = 259,["355"] = 260,["356"] = 261,["357"] = 259,["358"] = 259,["359"] = 263,["361"] = 264,["362"] = 264,["363"] = 265,["364"] = 267,["365"] = 267,["366"] = 267,["367"] = 268,["368"] = 269,["369"] = 269,["371"] = 270,["372"] = 270,["374"] = 271,["375"] = 272,["376"] = 272,["378"] = 273,["379"] = 273,["381"] = 274,["382"] = 275,["383"] = 267,["384"] = 267,["385"] = 277,["386"] = 277,["387"] = 277,["388"] = 278,["389"] = 279,["390"] = 279,["392"] = 280,["393"] = 277,["394"] = 277,["395"] = 282,["396"] = 282,["397"] = 282,["398"] = 283,["399"] = 284,["400"] = 284,["402"] = 285,["403"] = 286,["404"] = 286,["406"] = 287,["407"] = 287,["409"] = 288,["410"] = 282,["411"] = 282,["412"] = 291,["413"] = 291,["414"] = 291,["415"] = 291,["416"] = 291,["417"] = 291,["418"] = 291,["419"] = 264,["422"] = 295,["423"] = 295,["424"] = 295,["425"] = 296,["426"] = 297,["427"] = 297,["429"] = 298,["430"] = 295,["431"] = 295,["432"] = 300,["433"] = 300,["434"] = 300,["435"] = 301,["436"] = 302,["437"] = 302,["439"] = 303,["440"] = 300,["441"] = 300,["442"] = 306,["443"] = 306,["444"] = 306,["445"] = 307,["446"] = 308,["447"] = 308,["449"] = 309,["450"] = 306,["451"] = 306,["452"] = 311,["453"] = 311,["454"] = 311,["455"] = 312,["456"] = 313,["457"] = 313,["459"] = 314,["460"] = 311,["461"] = 311,["462"] = 316,["463"] = 316,["464"] = 316,["465"] = 317,["466"] = 318,["467"] = 318,["469"] = 319,["470"] = 316,["471"] = 316,["472"] = 322,["473"] = 322,["474"] = 322,["475"] = 322,["476"] = 322,["477"] = 322,["478"] = 322,["479"] = 323,["480"] = 323,["481"] = 323,["482"] = 323,["483"] = 323,["484"] = 323,["485"] = 323,["486"] = 324,["487"] = 324,["488"] = 324,["489"] = 324,["490"] = 324,["491"] = 324,["492"] = 324,["493"] = 326,["494"] = 331,["495"] = 332,["496"] = 333,["497"] = 237,["498"] = 336,["499"] = 337,["500"] = 340,["501"] = 341,["502"] = 341,["503"] = 343,["504"] = 344,["505"] = 345,["506"] = 345,["508"] = 347,["509"] = 349,["510"] = 351,["511"] = 352,["513"] = 354,["514"] = 356,["515"] = 365,["516"] = 373,["517"] = 374,["518"] = 375,["519"] = 376,["520"] = 377,["521"] = 377,["523"] = 378,["524"] = 378,["526"] = 379,["527"] = 379,["529"] = 380,["532"] = 387,["533"] = 343,["535"] = 390,["536"] = 390,["537"] = 391,["538"] = 392,["539"] = 393,["540"] = 394,["541"] = 394,["542"] = 394,["543"] = 395,["544"] = 394,["545"] = 394,["546"] = 398,["547"] = 398,["548"] = 398,["549"] = 399,["550"] = 399,["552"] = 400,["553"] = 398,["554"] = 398,["555"] = 403,["556"] = 403,["557"] = 403,["558"] = 404,["559"] = 403,["560"] = 403,["561"] = 406,["562"] = 406,["563"] = 406,["564"] = 407,["565"] = 406,["566"] = 406,["567"] = 409,["568"] = 409,["569"] = 409,["570"] = 410,["571"] = 411,["574"] = 412,["575"] = 414,["576"] = 409,["577"] = 409,["578"] = 390,["581"] = 336,["582"] = 419,["583"] = 421,["584"] = 423,["585"] = 423,["586"] = 423,["587"] = 424,["588"] = 423,["589"] = 423,["590"] = 428,["591"] = 429,["592"] = 429,["593"] = 431,["594"] = 432,["595"] = 433,["596"] = 433,["598"] = 435,["599"] = 437,["600"] = 438,["602"] = 440,["603"] = 442,["604"] = 448,["605"] = 449,["607"] = 451,["609"] = 452,["610"] = 452,["612"] = 453,["613"] = 453,["614"] = 453,["615"] = 453,["616"] = 453,["620"] = 459,["621"] = 459,["622"] = 459,["623"] = 460,["624"] = 460,["626"] = 461,["627"] = 461,["629"] = 462,["630"] = 459,["631"] = 459,["632"] = 464,["633"] = 431,["635"] = 467,["636"] = 467,["637"] = 468,["638"] = 469,["639"] = 470,["640"] = 471,["641"] = 471,["642"] = 471,["643"] = 472,["644"] = 471,["645"] = 471,["646"] = 475,["647"] = 475,["648"] = 475,["649"] = 476,["650"] = 476,["652"] = 478,["653"] = 479,["654"] = 480,["656"] = 482,["658"] = 475,["659"] = 475,["660"] = 486,["661"] = 486,["662"] = 486,["663"] = 487,["664"] = 487,["666"] = 488,["667"] = 486,["668"] = 486,["669"] = 490,["670"] = 490,["671"] = 490,["672"] = 491,["673"] = 490,["674"] = 490,["675"] = 493,["676"] = 493,["677"] = 493,["678"] = 494,["679"] = 493,["680"] = 493,["681"] = 496,["682"] = 496,["683"] = 496,["684"] = 497,["685"] = 496,["686"] = 496,["687"] = 499,["688"] = 499,["689"] = 499,["690"] = 500,["691"] = 499,["692"] = 499,["693"] = 502,["694"] = 502,["695"] = 502,["696"] = 503,["697"] = 504,["700"] = 506,["701"] = 502,["702"] = 502,["703"] = 467,["706"] = 419,["707"] = 511,["708"] = 512,["709"] = 512,["710"] = 512,["711"] = 513,["712"] = 512,["713"] = 512,["714"] = 516,["717"] = 520,["718"] = 522,["719"] = 524,["720"] = 524,["721"] = 524,["722"] = 525,["723"] = 524,["724"] = 524,["725"] = 527,["726"] = 527,["727"] = 527,["728"] = 528,["729"] = 529,["731"] = 530,["732"] = 527,["733"] = 527,["734"] = 532,["735"] = 532,["736"] = 532,["737"] = 533,["738"] = 533,["740"] = 534,["741"] = 532,["742"] = 532,["743"] = 536,["744"] = 536,["745"] = 536,["746"] = 537,["747"] = 537,["749"] = 538,["750"] = 538,["752"] = 539,["753"] = 540,["754"] = 536,["755"] = 536,["756"] = 542,["757"] = 542,["758"] = 542,["759"] = 543,["760"] = 543,["762"] = 544,["763"] = 542,["764"] = 542,["765"] = 546,["766"] = 546,["767"] = 546,["768"] = 547,["769"] = 546,["770"] = 546,["771"] = 549,["772"] = 549,["773"] = 549,["774"] = 550,["775"] = 551,["777"] = 553,["778"] = 549,["779"] = 549,["780"] = 555,["781"] = 555,["782"] = 555,["783"] = 556,["784"] = 555,["785"] = 555,["786"] = 511,["787"] = 560,["788"] = 561,["789"] = 562,["791"] = 563,["792"] = 563,["794"] = 564,["795"] = 565,["796"] = 566,["798"] = 568,["799"] = 568,["800"] = 568,["801"] = 568,["802"] = 568,["803"] = 568,["804"] = 568,["805"] = 568,["808"] = 563,["811"] = 560,["812"] = 572,["813"] = 573,["814"] = 575,["815"] = 576,["816"] = 579,["817"] = 579,["818"] = 579,["819"] = 580,["820"] = 579,["821"] = 579,["822"] = 584,["823"] = 584,["824"] = 584,["825"] = 585,["826"] = 585,["827"] = 584,["828"] = 584,["829"] = 588,["830"] = 588,["831"] = 588,["832"] = 589,["833"] = 589,["835"] = 590,["836"] = 588,["837"] = 588,["838"] = 593,["839"] = 593,["840"] = 593,["841"] = 594,["842"] = 593,["843"] = 593,["844"] = 596,["845"] = 596,["846"] = 596,["847"] = 597,["848"] = 597,["850"] = 598,["851"] = 596,["852"] = 596,["853"] = 600,["854"] = 600,["855"] = 600,["856"] = 601,["857"] = 600,["858"] = 600,["859"] = 604,["860"] = 604,["861"] = 604,["862"] = 604,["863"] = 605,["864"] = 606,["867"] = 607,["868"] = 608,["869"] = 604,["870"] = 604,["871"] = 611,["872"] = 611,["873"] = 611,["874"] = 612,["875"] = 612,["877"] = 613,["878"] = 611,["879"] = 611,["880"] = 615,["881"] = 615,["882"] = 615,["883"] = 616,["884"] = 616,["886"] = 617,["887"] = 615,["888"] = 615,["889"] = 619,["890"] = 619,["891"] = 619,["892"] = 620,["893"] = 620,["895"] = 621,["896"] = 619,["897"] = 619,["898"] = 624,["899"] = 624,["900"] = 624,["901"] = 624,["902"] = 624,["903"] = 624,["904"] = 624,["905"] = 625,["906"] = 625,["907"] = 625,["908"] = 625,["909"] = 625,["910"] = 625,["911"] = 625,["912"] = 626,["913"] = 626,["914"] = 626,["915"] = 626,["916"] = 626,["917"] = 626,["918"] = 626,["920"] = 628,["921"] = 628,["922"] = 629,["923"] = 631,["924"] = 632,["925"] = 633,["926"] = 633,["927"] = 633,["928"] = 634,["929"] = 634,["931"] = 635,["932"] = 636,["933"] = 637,["934"] = 637,["936"] = 638,["937"] = 639,["938"] = 639,["940"] = 640,["941"] = 633,["942"] = 633,["943"] = 642,["944"] = 642,["945"] = 642,["946"] = 643,["947"] = 643,["949"] = 644,["950"] = 645,["951"] = 646,["952"] = 646,["954"] = 647,["955"] = 647,["957"] = 648,["958"] = 642,["959"] = 642,["961"] = 651,["962"] = 651,["963"] = 651,["964"] = 652,["965"] = 652,["967"] = 653,["968"] = 651,["969"] = 651,["970"] = 656,["971"] = 656,["972"] = 656,["973"] = 656,["974"] = 656,["975"] = 656,["976"] = 656,["977"] = 628,["980"] = 572,["981"] = 671,["982"] = 672,["983"] = 673,["984"] = 673,["985"] = 673,["986"] = 674,["987"] = 674,["988"] = 674,["989"] = 674,["990"] = 674,["991"] = 674,["992"] = 674,["993"] = 674,["994"] = 673,["995"] = 679,["996"] = 680,["997"] = 673,["998"] = 673,["999"] = 671,["1000"] = 683,["1001"] = 684,["1002"] = 685,["1003"] = 685,["1004"] = 685,["1005"] = 686,["1006"] = 686,["1007"] = 686,["1008"] = 686,["1009"] = 686,["1010"] = 686,["1011"] = 686,["1012"] = 686,["1013"] = 685,["1014"] = 691,["1015"] = 692,["1016"] = 685,["1017"] = 685,["1018"] = 683,["1019"] = 696,["1021"] = 697,["1022"] = 698,["1023"] = 700,["1024"] = 701,["1027"] = 696});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
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
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____StatManager = include("logic.archive.manager.StatManager")
local statManager = ____StatManager.statManager
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipType = ____VipEnum.VipType
local ____VipManager = include("logic.archive.manager.VipManager")
local vipManager = ____VipManager.vipManager
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap_hero = ____SkinConfig.skinConfigMap_hero
local ____SkinSkillConfig = include("logic.configs.SkinSkillConfig")
local skinSkillConfigMap_skillId = ____SkinSkillConfig.skinSkillConfigMap_skillId
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local isPvpModeRandom = ____BobInfo.isPvpModeRandom
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____UIEffect = include("logic.utils.UIEffect")
local UIEffect = ____UIEffect.UIEffect
local ____DLoading = include("logic.dialogs.DLoading")
local DLoading = ____DLoading.DLoading
local ____DObserver = include("logic.dialogs.DObserver")
local DObserver = ____DObserver.DObserver
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpGenre = include("logic.dialogs.help.DHelpGenre")
local DHelpGenre = ____DHelpGenre.DHelpGenre
local ____DSkillInfo = include("logic.dialogs.infos.DSkillInfo")
local DSkillInfo = ____DSkillInfo.DSkillInfo
local ____SoundManager = include("logic.managers.SoundManager")
local BgmType = ____SoundManager.BgmType
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DSelHero = __TS__Class()
local DSelHero = ____exports.DSelHero
DSelHero.name = "DSelHero"
__TS__ClassExtends(DSelHero, Dialog)
function DSelHero.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DSelHero.prototype.onCreate(self)
    statManager:start()
    self:init()
    dialogs:create(DLoading, {})
    if isPvpMode(nil) and not isPvpModeRobot(nil) and not isPvpModeRandom(nil) then
        ladderTournamentManager:enter()
    end
end
function DSelHero.prototype.init(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            SoundManager:playBgm(BgmType["选人"])
            local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
            local gameData = datas.global:getSingle(GameData)
            local genreData = datas.global:getSingle(GenreData)
            vipManager:use(VipType["开局英雄选择数增加"])
            vipManager:use(VipType["祝福刷新次数增加"])
            vipManager:use(VipType["英雄刷新次数增加"])
            self:bindVisible(
                "root.center",
                function()
                    return not LOCAL.IS_OBSERVER
                end
            )
            self:bindVisible(
                "root.wait",
                function()
                    return LOCAL.IS_OBSERVER
                end
            )
            local list = {134264786, 134272224, 134260669}
            petController.setPet:execute(LOCAL.PLAYER_ID, list[1])
            do
                local index = 0
                while index < 3 do
                    local k = index
                    self:bindAction(
                        "pets.petView.pet" .. tostring(k + 1),
                        "左键-点击",
                        function(____, ui, player)
                            if k >= 1 then
                                DTips:show(i18n["local"](i18n, "未解锁"))
                                return
                            end
                            petController.setPet:execute(LOCAL.PLAYER_ID, list[k + 1])
                        end
                    )
                    self:bindVisible(
                        ("pets.petView.pet" .. tostring(k + 1)) .. ".select",
                        function()
                            local petData = LOCAL.PLAYER_DATA:getSingle(PetData)
                            if petData == nil then
                                return false
                            end
                            return petData.petId == list[k + 1]
                        end
                    )
                    index = index + 1
                end
            end
            do
                local index = 0
                while index < 3 do
                    local path1 = "root.bottom.left.player_" .. tostring(index + 1)
                    self:updatePlayer(path1, #gameData.teamLeft > index and gameData.teamLeft[index + 1] or 0)
                    local path2 = "root.bottom.right.player_" .. tostring(index + 1)
                    self:updatePlayer(path2, #gameData.teamRight > index and gameData.teamRight[index + 1] or 0)
                    index = index + 1
                end
            end
            local itemPath = "root.center.sel.hero_"
            do
                local i = 0
                while i < 4 do
                    local path = itemPath .. tostring(i + 1)
                    self:updateHero(path, i)
                    i = i + 1
                end
            end
            self:bindText(
                "root.center.sel_btn.refresh.title",
                function()
                    return i18n["local"](i18n, "刷新") .. ((("(" .. tostring(playerData.refreshMaxCount - playerData.refreshCount)) .. "/") .. tostring(playerData.refreshMaxCount)) .. ")"
                end
            )
            self:bindAction(
                "root.center.sel_btn.refresh",
                "左键-点击",
                function(____, ui, player)
                    if playerData.refreshCount < playerData.refreshMaxCount then
                        self:playAnim()
                    end
                    playerController.refreshPlayerHero:execute(player.id)
                end
            )
            self:bindVisible(
                "root.center.sel_btn.refresh.disable",
                function()
                    return playerData.refreshCount >= playerData.refreshMaxCount
                end
            )
            self:updateSelect()
            self:bindVisible(
                "root.center.sel",
                function()
                    return playerData.hero == nil
                end
            )
            self:bindVisible(
                "root.center.sel_btn",
                function()
                    return playerData.hero == nil
                end
            )
            self:bindVisible(
                "root.center.sel_ok",
                function()
                    return playerData.hero ~= nil
                end
            )
            self:bindVisible(
                "root.center.sel_ok.hero.refresh",
                function() return false end
            )
            local enlist = genreData.enableList
            local disList = genreData.disableList
            local genreList = __TS__ArrayConcat(enlist, disList)
            local genrePath = "root.genre.genre_list.genre_"
            do
                local idx = 0
                while idx < 12 do
                    local k = idx
                    self:bindImage(
                        genrePath .. tostring(idx + 1),
                        function()
                            if k >= 9 then
                                local genreIcon = genreLevelConfigMap_genre[genreList[k + 1]][1].icon_disable
                                return genreIcon
                            else
                                local genreIcon = genreLevelConfigMap_genre[genreList[k + 1]][1].icon
                                return genreIcon
                            end
                        end
                    )
                    self:bindText(
                        (genrePath .. tostring(idx + 1)) .. ".name",
                        function()
                            return genreLevelConfigMap_genre[genreList[k + 1]][1].name.value
                        end
                    )
                    self:onMouseGenre(
                        genrePath .. tostring(idx + 1),
                        function() return genreList[k + 1] end
                    )
                    idx = idx + 1
                end
            end
            local timeLeft = vue.ref(defaultConfig.selectionTime)
            local timer = y3.ltimer.loop_count(
                1,
                defaultConfig.selectionTime,
                function(timer, count)
                    timeLeft.value = defaultConfig.selectionTime - count
                    if count == 1 then
                        SoundManager:play(SoundType["选人开始VC"])
                    end
                    if count == 49 then
                        SoundManager:play(SoundType["选人10s倒计时VC"])
                    end
                    if count >= 55 then
                        SoundManager:play(SoundType["倒计时SE"])
                    end
                end
            )
            self:bindText(
                "root.top.time",
                function()
                    return tostring(timeLeft.value)
                end
            )
            console:log("syncData.inSync init", syncData.inSync)
            __TS__Await(self:watchOnce(
                function()
                    local isAllSel = true
                    do
                        local i = 0
                        while i < #playerIdList do
                            local playerId = playerIdList[i + 1]
                            local playerData = datas.players[playerId]:getSingle(PlayerData)
                            if isAllSel then
                                isAllSel = playerData.hero ~= nil and playerData.isReady
                            end
                            i = i + 1
                        end
                    end
                    return timeLeft.value <= 0 or isAllSel
                end,
                function(____, v) return v end,
                true,
                true
            ))
            timer:remove()
            console:log("syncData.inSync enterGame", syncData.inSync)
            __TS__Await(self:enterGame():catch(function(____, e) return console:error(e) end))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, e)
                console:error(e)
            end
        ))
    end)
end
function DSelHero.prototype.onShow(self)
    steamUtils:switchChat("game")
end
function DSelHero.prototype.onHide(self)
end
function DSelHero.prototype.updateSelect(self)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local path = "root.center.sel_ok.hero"
    self:bindText(
        path .. ".root.name",
        function()
            local hero = playerData.hero
            if hero == nil then
                return ""
            end
            return hero.showName.value
        end
    )
    self:bindText(
        "root.center.sel_ok.select",
        function()
            return playerData.isReady and i18n["local"](i18n, "已准备") or i18n["local"](i18n, "准备")
        end
    )
    self:bindVisible(
        "root.center.sel_ok.cancel",
        function()
            return not playerData.isReady
        end
    )
    self:bindVisible(
        "root.center.sel_ok.select",
        function()
            return not playerData.isReady
        end
    )
    self:bindAction(
        "root.center.sel_ok.cancel",
        "左键-点击",
        function()
            playerController.selHeroCancel:execute(LOCAL.PLAYER_ID)
        end
    )
    self:bindAction(
        "root.center.sel_ok.select",
        "左键-点击",
        function()
            SoundManager:play(SoundType["选人提示"])
            playerController.ready:execute(LOCAL.PLAYER_ID)
        end
    )
    local genreData = datas.global:getSingle(GenreData)
    do
        local i = 0
        while i < 2 do
            local k = i
            self:bindImage(
                ((path .. ".root.genre.genre_") .. tostring(k + 1)) .. ".icon",
                function()
                    local hero = playerData.hero
                    if hero == nil then
                        return 0
                    end
                    if #hero.heroGenre < k then
                        return 0
                    end
                    local genreID = hero.heroGenre[k + 1]
                    if genreID == nil then
                        return 0
                    end
                    if __TS__ArrayIndexOf(genreData.disableList, genreID) ~= -1 then
                        return genreLevelConfigMap_genre[genreID][1].icon_disable
                    end
                    local genreIcon = genreLevelConfigMap_genre[genreID][1].icon
                    return genreIcon
                end
            )
            self:bindVisible(
                (path .. ".root.genre.genre_") .. tostring(k + 1),
                function()
                    local hero = playerData.hero
                    if hero == nil then
                        return false
                    end
                    return #hero.heroGenre > k
                end
            )
            self:bindVisible(
                ((path .. ".root.genre.genre_") .. tostring(k + 1)) .. ".icon.disable",
                function()
                    local hero = playerData.hero
                    if hero == nil then
                        return false
                    end
                    local genreID = hero.heroGenre[k + 1]
                    if genreID == nil then
                        return false
                    end
                    if __TS__ArrayIndexOf(genreData.disableList, genreID) ~= -1 then
                        return true
                    end
                    return false
                end
            )
            self:onMouseGenre(
                (path .. ".root.genre.genre_") .. tostring(k + 1),
                function()
                    local ____opt_0 = playerData and playerData.hero
                    return ____opt_0 and ____opt_0.heroGenre[k + 1] or 0
                end
            )
            i = i + 1
        end
    end
    self:bindText(
        path .. ".root.name",
        function()
            local hero = playerData.hero
            if hero == nil then
                return ""
            end
            return hero.showName.value
        end
    )
    self:bindImage(
        path .. ".root.rect.pic",
        function()
            local hero = playerData.hero
            if hero == nil then
                return 0
            end
            return heroSkinManager:getHeroPic(hero.id)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_1.icon",
        function()
            local hero = playerData.hero
            if hero == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(hero.id, 0)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_2.icon",
        function()
            local hero = playerData.hero
            if hero == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(hero.id, 1)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_3.icon",
        function()
            local hero = playerData.hero
            if hero == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(hero.id, 2)
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_1",
        function()
            local ____opt_4 = playerData.hero
            return ____opt_4 and ____opt_4.skill[1].id or 0
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_2",
        function()
            local ____opt_6 = playerData.hero
            return ____opt_6 and ____opt_6.skill[2].id or 0
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_3",
        function()
            local ____opt_8 = playerData.hero
            return ____opt_8 and ____opt_8.skill[3].id or 0
        end
    )
    self:updateSkins()
    self:updateSkills(1)
    self:updateSkills(2)
    self:updateSkills(3)
end
function DSelHero.prototype.updateSkills(self, skill_idx)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local ui = ("root.center.sel_ok.skills.skill" .. tostring(skill_idx)) .. ".list"
    local ____opt_10 = self:getUI(ui)
    local childrens = ____opt_10 and ____opt_10:get_childs()
    local skins = self:compute(function()
        local hero = playerData.hero
        if hero == nil then
            return {}
        end
        local skill = hero.skill[skill_idx]
        local list = skinSkillConfigMap_skillId[skill.id]
        if archive.playerInfo == nil then
            return {}
        end
        local heroInfo = archive.playerData.heroes["" .. tostring(hero.id)]
        local data = {}
        data[#data + 1] = {cfg = {id = 0, icon = skill.icon}, unlock = true, select = heroInfo.cur_skill[skill_idx] == 0}
        if list ~= nil then
            for ____, cfg in ipairs(list) do
                local unlock = false
                console:log(cfg.id)
                if skill_idx == 1 then
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skill_1, cfg.id) >= 0
                end
                if skill_idx == 2 then
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skill_2, cfg.id) >= 0
                end
                if skill_idx == 3 then
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skill_3, cfg.id) >= 0
                end
                data[#data + 1] = {cfg = cfg, unlock = unlock, select = heroInfo.cur_skill[skill_idx] == cfg.id}
            end
        end
        return data
    end)
    do
        local index = 0
        while index < #childrens do
            local element = childrens[index + 1]
            local path = (ui .. ".") .. element:get_name()
            local idx = index + 0
            self:bindVisible(
                path,
                function()
                    return skins.value[idx + 1] ~= nil
                end
            )
            self:bindImage(
                path .. ".icon",
                function()
                    if skins.value[idx + 1] == nil then
                        return 0
                    end
                    return skins.value[idx + 1].cfg.icon
                end
            )
            self:bindVisible(
                path .. ".select",
                function()
                    return skins.value[idx + 1] ~= nil and skins.value[idx + 1].select
                end
            )
            self:bindVisible(
                path .. ".lock",
                function()
                    return skins.value[idx + 1] == nil or not skins.value[idx + 1].unlock
                end
            )
            self:bindClick(
                path,
                function()
                    local hero = playerData.hero
                    if hero == nil or skins.value[idx + 1] == nil then
                        return
                    end
                    console:log(skill_idx)
                    heroSkinManager:replaceSkillSkin(hero.id, skill_idx - 1, skins.value[idx + 1].cfg.id)
                end
            )
            index = index + 1
        end
    end
end
function DSelHero.prototype.updateSkins(self)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    self:bindVisible(
        "root.center.sel_ok.skins",
        function()
            return not playerData.isReady
        end
    )
    local ui = "root.center.sel_ok.skins"
    local ____opt_12 = self:getUI(ui)
    local childrens = ____opt_12 and ____opt_12:get_childs()
    local skins = self:compute(function()
        local hero = playerData.hero
        if hero == nil then
            return {}
        end
        local list = skinConfigMap_hero[hero.id]
        if archive.playerInfo == nil then
            return {}
        end
        local heroInfo = archive.playerData.heroes["" .. tostring(hero.id)]
        local data = {}
        if list == nil then
            error("没有该英雄的默认皮肤配置", 0)
        end
        for ____, cfg in ipairs(list) do
            do
                if cfg.ban == 1 then
                    goto __continue99
                end
                data[#data + 1] = {
                    cfg = cfg,
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skin, cfg.id) >= 0,
                    select = heroInfo.cur_skin == cfg.id
                }
            end
            ::__continue99::
        end
        __TS__ArraySort(
            data,
            function(____, a, b)
                if a.unlock then
                    return -1
                end
                if b.unlock then
                    return 1
                end
                return -1
            end
        )
        return data
    end)
    do
        local index = 0
        while index < #childrens do
            local element = childrens[index + 1]
            local path = (ui .. ".") .. element:get_name()
            local idx = index
            self:bindVisible(
                path,
                function()
                    return skins.value[idx + 1] ~= nil
                end
            )
            self:bindImage(
                path .. ".rect.image_71",
                function()
                    if skins.value[idx + 1] == nil then
                        return 0
                    end
                    local skin = skins.value[idx + 1].cfg
                    if i18n.currentLang == "en" and skin.enPic ~= 0 then
                        return skin.enBadge
                    else
                        return skin.badge
                    end
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    if skins.value[idx + 1] == nil then
                        return i18n["local"](i18n, "默认皮肤")
                    end
                    return skins.value[idx + 1].cfg.name.value
                end
            )
            self:bindVisible(
                path .. ".select",
                function()
                    return skins.value[idx + 1] ~= nil and skins.value[idx + 1].select
                end
            )
            self:bindVisible(
                path .. ".select2",
                function()
                    return skins.value[idx + 1] ~= nil and skins.value[idx + 1].select
                end
            )
            self:bindVisible(
                path .. ".lock",
                function()
                    return skins.value[idx + 1] == nil or not skins.value[idx + 1].unlock
                end
            )
            self:bindText(
                path .. ".lock.tips",
                function()
                    return i18n["local"](i18n, "未解锁")
                end
            )
            self:bindClick(
                path,
                function()
                    local hero = playerData.hero
                    if hero == nil or skins.value[idx + 1] == nil then
                        return
                    end
                    heroSkinManager:replaceSkin(hero.id, skins.value[idx + 1].cfg.id)
                end
            )
            index = index + 1
        end
    end
end
function DSelHero.prototype.updatePlayer(self, path, playerId)
    self:bindVisible(
        path,
        function()
            return playerId > 0
        end
    )
    if playerId == 0 then
        return
    end
    local isMy = LOCAL.IS_OBSERVER or player2King[playerId] == player2King[LOCAL.PLAYER_ID]
    local player = datas.players[playerId]:getSingle(PlayerData)
    self:bindText(
        path .. ".name",
        function()
            return player.name
        end
    )
    self:bindTextColor(
        path .. ".name",
        function()
            if playerId == LOCAL.PLAYER_ID then
                return {255, 255, 0, 255}
            end
            return {255, 255, 255, 255}
        end
    )
    self:bindImage(
        path .. ".hero.hero",
        function()
            if not isMy then
                return 0
            end
            return player.hero and heroSkinManager:getHeroIcon(player.hero.id, player.id) or 0
        end
    )
    self:bindImage(
        path .. ".genre",
        function()
            if not player.hero then
                return 0
            end
            if not isMy then
                return 0
            end
            local cfg = genreLevelConfigMap_genre[player.hero.heroGenre[1]][1]
            return cfg.icon
        end
    )
    self:bindImage(
        path .. ".ladder",
        function()
            if (GameUtils.isSingleGame or isPvpModeRobot(nil)) and player.isAI then
                return 0
            end
            return ladderTournamentManager:getRankByPlayerId(playerId).config.icon
        end
    )
    self:bindVisible(
        path .. ".hero_frame",
        function()
            return vipManager:has(VipType["头像框换成会员"], playerId)
        end
    )
    self:bindVisible(
        path .. ".就绪",
        function()
            if player.isReady then
                SoundManager:play(SoundType["选人提示"])
            end
            return player.hero ~= nil and player.isReady
        end
    )
    self:bindVisible(
        path .. ".问号",
        function()
            return not isMy
        end
    )
end
function DSelHero.prototype.playAnim(self)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local itemPath = "root.center.sel.hero_"
    do
        local i = 0
        while i < 4 do
            do
                local path = (itemPath .. tostring(i + 1)) .. ".root"
                if playerData.lockPos == i then
                    goto __continue137
                end
                UIEffect:play_scale2(
                    self:getUI(path),
                    1,
                    1.1,
                    0.1,
                    function()
                    end
                )
            end
            ::__continue137::
            i = i + 1
        end
    end
end
function DSelHero.prototype.updateHero(self, path, idx)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local genreData = datas.global:getSingle(GenreData)
    local disList = genreData.disableList
    self:bindVisible(
        path,
        function()
            return playerData.canSelHeros[idx + 1] ~= nil
        end
    )
    self:bindText(
        path .. ".root.name",
        function()
            local ____opt_14 = playerData.canSelHeros[idx + 1]
            return ____opt_14 and ____opt_14.showName.value or ""
        end
    )
    self:bindImage(
        path .. ".root.rect.pic",
        function()
            if playerData.canSelHeros[idx + 1] == nil then
                return 0
            end
            return heroSkinManager:getHeroPic(playerData.canSelHeros[idx + 1].id)
        end
    )
    self:bindClick(
        path .. ".refresh",
        function()
            playerController.lockHero:execute(LOCAL.PLAYER_ID, idx)
        end
    )
    self:bindText(
        path .. ".refresh.title",
        function()
            if playerData.lockPos == idx then
                return i18n["local"](i18n, "取消锁定")
            end
            return i18n["local"](i18n, "锁定")
        end
    )
    self:bindVisible(
        path .. ".refresh.disable",
        function()
            return playerData.lockPos == idx
        end
    )
    self:bindAction(
        path .. ".root",
        "左键-点击",
        function(____, ui, player)
            local playerData = datas.players[player.id]:getSingle(PlayerData)
            if playerData.canSelHeros[idx + 1] == nil then
                return
            end
            playerController.selHero:execute(player.id, idx)
            traceLogUtils:onSelHero(playerData.canSelHeros[idx + 1].showName.value)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_1.icon",
        function()
            if playerData.canSelHeros[idx + 1] == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(playerData.canSelHeros[idx + 1].id, 0)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_2.icon",
        function()
            if playerData.canSelHeros[idx + 1] == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(playerData.canSelHeros[idx + 1].id, 1)
        end
    )
    self:bindImage(
        path .. ".root.skill.skill_3.icon",
        function()
            if playerData.canSelHeros[idx + 1] == nil then
                return 0
            end
            return heroSkinManager:getHeroSkillSkin(playerData.canSelHeros[idx + 1].id, 2)
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_1",
        function()
            local ____opt_16 = playerData.canSelHeros[idx + 1]
            return ____opt_16 and ____opt_16.skill[1].id or 0
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_2",
        function()
            local ____opt_18 = playerData.canSelHeros[idx + 1]
            return ____opt_18 and ____opt_18.skill[2].id or 0
        end
    )
    self:onMouseSkill(
        path .. ".root.skill.skill_3",
        function()
            local ____opt_20 = playerData.canSelHeros[idx + 1]
            return ____opt_20 and ____opt_20.skill[3].id or 0
        end
    )
    do
        local k = 0
        while k < 2 do
            local j = k
            if playerData.canSelHeros[idx + 1] ~= nil and #playerData.canSelHeros[idx + 1].heroGenre > j then
                local p = ((path .. ".root.genre.genre_") .. tostring(j + 1)) .. ".icon"
                self:bindImage(
                    p,
                    function()
                        if playerData.canSelHeros[idx + 1] == nil then
                            return 0
                        end
                        local hero = playerData.canSelHeros[idx + 1]
                        local genreID = hero.heroGenre[j + 1]
                        if genreID == nil then
                            return 0
                        end
                        local cfg = genreLevelConfigMap_genre[genreID][1]
                        if __TS__ArrayIndexOf(disList, genreID) ~= -1 then
                            return cfg.icon_disable
                        end
                        return cfg.icon
                    end
                )
                self:bindVisible(
                    p .. ".disable",
                    function()
                        if playerData.canSelHeros[idx + 1] == nil then
                            return false
                        end
                        local hero = playerData.canSelHeros[idx + 1]
                        local genreID = hero.heroGenre[j + 1]
                        if genreID == nil then
                            return false
                        end
                        if __TS__ArrayIndexOf(disList, genreID) ~= -1 then
                            return true
                        end
                        return false
                    end
                )
            end
            self:bindVisible(
                (path .. ".root.genre.genre_") .. tostring(j + 1),
                function()
                    if playerData.canSelHeros[idx + 1] == nil then
                        return false
                    end
                    return #playerData.canSelHeros[idx + 1].heroGenre > j
                end
            )
            self:onMouseGenre(
                (path .. ".root.genre.genre_") .. tostring(j + 1),
                function()
                    local ____opt_22 = playerData.canSelHeros[idx + 1]
                    return ____opt_22 and ____opt_22.heroGenre[j + 1] or 0
                end
            )
            k = k + 1
        end
    end
end
function DSelHero.prototype.onMouseGenre(self, path, genreId)
    local ui = self:getUI(path)
    self:bindMouse(
        path,
        function()
            dialogs:showRepeat(
                DHelpGenre,
                {
                    genre = genreId(nil),
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 60
                }
            )
        end,
        function()
            dialogs:hide(DHelpGenre)
        end
    )
end
function DSelHero.prototype.onMouseSkill(self, path, skillId)
    local ui = self:getUI(path)
    self:bindMouse(
        path,
        function()
            dialogs:show(
                DSkillInfo,
                {
                    skillId = skillId(nil),
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 100
                }
            )
        end,
        function()
            dialogs:hide(DSkillInfo)
        end
    )
end
function DSelHero.prototype.enterGame(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DLoading"):set_visible(true)
        gameController.enterGame:executeTogether()
        if LOCAL.IS_OBSERVER then
            dialogs:show(DObserver, {})
        end
    end)
end
return ____exports
