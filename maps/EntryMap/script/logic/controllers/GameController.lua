local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__Generator = ____lualib.__TS__Generator
local __TS__ObjectKeys = ____lualib.__TS__ObjectKeys
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 2,["20"] = 3,["21"] = 3,["22"] = 3,["23"] = 4,["24"] = 4,["25"] = 4,["26"] = 4,["27"] = 4,["28"] = 5,["29"] = 5,["30"] = 6,["31"] = 6,["32"] = 7,["33"] = 7,["34"] = 8,["35"] = 8,["36"] = 9,["37"] = 9,["38"] = 10,["39"] = 10,["40"] = 11,["41"] = 11,["42"] = 12,["43"] = 12,["44"] = 13,["45"] = 13,["46"] = 14,["47"] = 14,["48"] = 15,["49"] = 15,["50"] = 15,["51"] = 15,["52"] = 15,["53"] = 16,["54"] = 16,["55"] = 16,["56"] = 17,["57"] = 17,["58"] = 18,["59"] = 18,["60"] = 19,["61"] = 19,["62"] = 20,["63"] = 20,["64"] = 21,["65"] = 21,["66"] = 22,["67"] = 22,["68"] = 23,["69"] = 23,["70"] = 24,["71"] = 24,["72"] = 25,["73"] = 25,["74"] = 26,["75"] = 26,["76"] = 26,["77"] = 27,["78"] = 27,["79"] = 28,["80"] = 28,["81"] = 29,["82"] = 29,["83"] = 30,["84"] = 30,["85"] = 31,["86"] = 31,["87"] = 32,["88"] = 32,["89"] = 33,["90"] = 33,["91"] = 35,["92"] = 35,["93"] = 35,["94"] = 37,["95"] = 37,["96"] = 38,["97"] = 38,["98"] = 39,["99"] = 39,["100"] = 40,["101"] = 40,["102"] = 41,["103"] = 41,["104"] = 42,["105"] = 42,["106"] = 43,["107"] = 43,["108"] = 44,["109"] = 44,["110"] = 45,["111"] = 45,["112"] = 46,["113"] = 46,["114"] = 47,["115"] = 47,["116"] = 48,["117"] = 48,["118"] = 49,["119"] = 49,["120"] = 50,["121"] = 50,["122"] = 51,["123"] = 51,["124"] = 54,["125"] = 54,["126"] = 54,["128"] = 269,["129"] = 270,["130"] = 275,["131"] = 398,["132"] = 54,["133"] = 59,["134"] = 61,["135"] = 64,["136"] = 65,["137"] = 67,["138"] = 68,["139"] = 70,["140"] = 73,["141"] = 75,["142"] = 76,["143"] = 78,["144"] = 81,["145"] = 82,["146"] = 84,["147"] = 84,["148"] = 84,["149"] = 86,["150"] = 87,["152"] = 89,["154"] = 84,["155"] = 84,["156"] = 93,["157"] = 59,["158"] = 96,["159"] = 98,["160"] = 101,["162"] = 103,["163"] = 103,["164"] = 104,["165"] = 105,["166"] = 106,["167"] = 110,["168"] = 111,["169"] = 111,["170"] = 111,["171"] = 111,["172"] = 111,["173"] = 111,["174"] = 111,["175"] = 112,["176"] = 112,["178"] = 113,["179"] = 114,["181"] = 116,["182"] = 117,["183"] = 118,["185"] = 103,["188"] = 125,["189"] = 126,["190"] = 126,["191"] = 126,["192"] = 126,["193"] = 127,["195"] = 133,["196"] = 133,["198"] = 134,["199"] = 134,["200"] = 134,["201"] = 134,["202"] = 135,["203"] = 136,["205"] = 138,["206"] = 139,["209"] = 141,["210"] = 141,["212"] = 142,["215"] = 146,["216"] = 147,["217"] = 148,["218"] = 149,["220"] = 151,["222"] = 154,["223"] = 154,["224"] = 154,["225"] = 154,["226"] = 154,["227"] = 155,["228"] = 156,["230"] = 159,["231"] = 159,["232"] = 159,["233"] = 160,["234"] = 161,["235"] = 161,["236"] = 161,["237"] = 161,["238"] = 159,["239"] = 159,["240"] = 163,["241"] = 164,["243"] = 166,["244"] = 167,["245"] = 168,["248"] = 141,["253"] = 133,["256"] = 96,["257"] = 175,["258"] = 177,["259"] = 178,["260"] = 182,["261"] = 183,["262"] = 184,["263"] = 185,["265"] = 189,["266"] = 190,["267"] = 190,["268"] = 191,["269"] = 193,["270"] = 193,["271"] = 194,["272"] = 195,["274"] = 175,["275"] = 199,["276"] = 202,["277"] = 204,["278"] = 205,["280"] = 208,["281"] = 209,["282"] = 211,["283"] = 211,["284"] = 212,["285"] = 214,["286"] = 216,["287"] = 216,["288"] = 217,["289"] = 218,["291"] = 199,["292"] = 222,["293"] = 224,["294"] = 225,["295"] = 227,["296"] = 228,["297"] = 228,["298"] = 229,["299"] = 229,["300"] = 230,["301"] = 230,["302"] = 231,["303"] = 231,["304"] = 232,["305"] = 232,["306"] = 233,["307"] = 233,["308"] = 234,["309"] = 234,["310"] = 235,["311"] = 235,["312"] = 236,["313"] = 236,["314"] = 237,["315"] = 237,["316"] = 239,["317"] = 240,["318"] = 239,["319"] = 242,["320"] = 244,["321"] = 244,["322"] = 244,["323"] = 245,["326"] = 245,["327"] = 246,["328"] = 247,["329"] = 248,["330"] = 249,["331"] = 250,["332"] = 251,["333"] = 252,["334"] = 253,["335"] = 254,["336"] = 255,["337"] = 256,["339"] = 245,["340"] = 245,["341"] = 259,["342"] = 245,["343"] = 244,["344"] = 244,["345"] = 222,["346"] = 276,["347"] = 277,["348"] = 279,["349"] = 280,["350"] = 281,["351"] = 282,["352"] = 285,["353"] = 286,["354"] = 286,["356"] = 288,["357"] = 289,["358"] = 289,["361"] = 293,["363"] = 295,["364"] = 295,["365"] = 296,["366"] = 297,["367"] = 298,["368"] = 299,["370"] = 301,["371"] = 302,["373"] = 305,["374"] = 305,["375"] = 310,["376"] = 310,["377"] = 295,["380"] = 317,["382"] = 319,["383"] = 319,["384"] = 320,["385"] = 319,["388"] = 322,["389"] = 323,["390"] = 325,["391"] = 276,["392"] = 327,["393"] = 330,["394"] = 332,["395"] = 336,["396"] = 339,["397"] = 342,["398"] = 343,["399"] = 344,["400"] = 350,["401"] = 352,["402"] = 353,["403"] = 355,["404"] = 356,["405"] = 358,["406"] = 359,["407"] = 327,["408"] = 362,["409"] = 363,["410"] = 364,["411"] = 365,["412"] = 366,["413"] = 367,["414"] = 368,["415"] = 368,["416"] = 368,["417"] = 369,["418"] = 370,["419"] = 371,["422"] = 375,["423"] = 376,["424"] = 387,["427"] = 368,["428"] = 368,["430"] = 362,["431"] = 404,["432"] = 405,["433"] = 407,["434"] = 409,["435"] = 411,["436"] = 411,["437"] = 412,["440"] = 415,["441"] = 416,["443"] = 416,["445"] = 417,["447"] = 411,["448"] = 421,["449"] = 422,["452"] = 425,["455"] = 619,["458"] = 427,["459"] = 428,["460"] = 430,["461"] = 432,["462"] = 433,["463"] = 434,["465"] = 436,["466"] = 437,["467"] = 438,["468"] = 439,["469"] = 440,["470"] = 440,["471"] = 440,["472"] = 440,["474"] = 442,["475"] = 443,["476"] = 443,["477"] = 443,["478"] = 443,["479"] = 443,["483"] = 448,["485"] = 450,["486"] = 451,["487"] = 452,["489"] = 455,["490"] = 456,["492"] = 460,["493"] = 461,["495"] = 463,["496"] = 464,["497"] = 466,["498"] = 467,["499"] = 468,["500"] = 469,["502"] = 471,["503"] = 472,["504"] = 474,["505"] = 475,["506"] = 476,["507"] = 477,["508"] = 478,["509"] = 479,["510"] = 481,["511"] = 484,["512"] = 474,["513"] = 491,["514"] = 496,["515"] = 497,["516"] = 498,["518"] = 500,["519"] = 501,["520"] = 502,["522"] = 506,["523"] = 507,["524"] = 508,["525"] = 509,["526"] = 509,["527"] = 509,["528"] = 509,["529"] = 509,["530"] = 509,["531"] = 509,["532"] = 510,["533"] = 511,["534"] = 516,["535"] = 516,["536"] = 516,["537"] = 516,["538"] = 516,["539"] = 516,["540"] = 517,["541"] = 517,["542"] = 517,["543"] = 517,["544"] = 518,["545"] = 518,["546"] = 518,["547"] = 518,["548"] = 518,["549"] = 519,["550"] = 520,["551"] = 520,["552"] = 520,["553"] = 520,["554"] = 520,["555"] = 520,["556"] = 520,["558"] = 522,["559"] = 524,["560"] = 525,["561"] = 525,["562"] = 525,["563"] = 525,["564"] = 525,["565"] = 526,["566"] = 527,["567"] = 527,["568"] = 527,["569"] = 527,["570"] = 527,["571"] = 527,["572"] = 527,["576"] = 532,["577"] = 533,["578"] = 534,["579"] = 534,["580"] = 534,["581"] = 534,["582"] = 534,["583"] = 534,["584"] = 534,["585"] = 536,["586"] = 537,["587"] = 537,["588"] = 537,["589"] = 537,["590"] = 537,["591"] = 538,["593"] = 540,["594"] = 542,["595"] = 543,["596"] = 543,["597"] = 543,["598"] = 543,["599"] = 543,["600"] = 544,["601"] = 545,["602"] = 545,["603"] = 545,["604"] = 545,["605"] = 545,["606"] = 545,["607"] = 545,["611"] = 549,["613"] = 551,["614"] = 555,["615"] = 556,["616"] = 557,["617"] = 562,["618"] = 562,["619"] = 562,["620"] = 562,["621"] = 562,["622"] = 562,["623"] = 563,["624"] = 563,["625"] = 563,["626"] = 563,["627"] = 564,["628"] = 564,["629"] = 564,["630"] = 564,["631"] = 564,["632"] = 565,["633"] = 565,["634"] = 565,["635"] = 565,["636"] = 565,["637"] = 565,["638"] = 565,["640"] = 568,["641"] = 570,["642"] = 571,["643"] = 572,["644"] = 573,["645"] = 574,["646"] = 575,["647"] = 576,["648"] = 576,["649"] = 576,["650"] = 576,["651"] = 576,["652"] = 576,["653"] = 576,["654"] = 576,["655"] = 576,["656"] = 576,["657"] = 576,["658"] = 576,["659"] = 576,["660"] = 576,["661"] = 576,["662"] = 576,["663"] = 576,["664"] = 576,["665"] = 576,["666"] = 576,["667"] = 576,["668"] = 576,["669"] = 576,["670"] = 576,["671"] = 576,["673"] = 601,["674"] = 601,["675"] = 602,["676"] = 603,["677"] = 604,["679"] = 601,["682"] = 608,["683"] = 609,["685"] = 612,["695"] = 621,["698"] = 426,["701"] = 421,["702"] = 625,["703"] = 625,["704"] = 625,["705"] = 627,["706"] = 628,["709"] = 631,["712"] = 634,["713"] = 625,["714"] = 625,["715"] = 648,["716"] = 649,["718"] = 650,["719"] = 650,["721"] = 651,["722"] = 652,["723"] = 653,["724"] = 654,["726"] = 656,["727"] = 658,["728"] = 659,["732"] = 650,["735"] = 648,["736"] = 664,["737"] = 668,["738"] = 668,["739"] = 668,["740"] = 672,["741"] = 674,["742"] = 676,["743"] = 677,["747"] = 682,["750"] = 686,["751"] = 686,["752"] = 686,["753"] = 686,["754"] = 668,["755"] = 668,["756"] = 404,["757"] = 692,["758"] = 693,["759"] = 694,["760"] = 695,["761"] = 697,["764"] = 692,["765"] = 705,["766"] = 707,["767"] = 712,["768"] = 713,["770"] = 713,["771"] = 713,["773"] = 713,["774"] = 715,["776"] = 717,["778"] = 720,["779"] = 721,["780"] = 723,["781"] = 725,["782"] = 727,["783"] = 728,["784"] = 729,["785"] = 731,["786"] = 732,["787"] = 733,["788"] = 735,["789"] = 736,["790"] = 736,["791"] = 738,["793"] = 740,["796"] = 744,["797"] = 745,["798"] = 746,["799"] = 746,["800"] = 748,["801"] = 749,["804"] = 753,["805"] = 755,["806"] = 756,["807"] = 757,["809"] = 760,["810"] = 761,["811"] = 762,["812"] = 766,["814"] = 770,["815"] = 705,["816"] = 776,["817"] = 778,["818"] = 779,["819"] = 780,["820"] = 782,["822"] = 785,["823"] = 787,["824"] = 789,["825"] = 790,["828"] = 795,["829"] = 796,["830"] = 797,["832"] = 776,["833"] = 802,["834"] = 805,["835"] = 806,["836"] = 807,["837"] = 809,["838"] = 810,["839"] = 811,["840"] = 813,["841"] = 814,["842"] = 817,["843"] = 818,["844"] = 819,["845"] = 820,["846"] = 821,["847"] = 822,["849"] = 825,["850"] = 826,["851"] = 827,["852"] = 828,["856"] = 833,["857"] = 802,["858"] = 840,["859"] = 842,["860"] = 843,["861"] = 844,["862"] = 845,["863"] = 845,["864"] = 845,["865"] = 845,["866"] = 845,["867"] = 847,["868"] = 849,["869"] = 849,["870"] = 849,["871"] = 850,["874"] = 851,["875"] = 852,["876"] = 852,["877"] = 852,["878"] = 852,["879"] = 852,["881"] = 849,["882"] = 849,["884"] = 840,["885"] = 862,["886"] = 864,["887"] = 866,["888"] = 867,["889"] = 867,["890"] = 867,["891"] = 867,["892"] = 868,["893"] = 869,["894"] = 870,["895"] = 870,["896"] = 870,["897"] = 870,["898"] = 870,["900"] = 873,["901"] = 874,["902"] = 874,["903"] = 874,["904"] = 874,["905"] = 875,["906"] = 876,["907"] = 877,["908"] = 877,["909"] = 877,["910"] = 877,["911"] = 877,["913"] = 862,["914"] = 881,["915"] = 883,["916"] = 884,["917"] = 885,["918"] = 886,["919"] = 886,["920"] = 886,["921"] = 886,["922"] = 888,["923"] = 890,["924"] = 890,["925"] = 890,["926"] = 891,["927"] = 892,["928"] = 892,["929"] = 892,["930"] = 892,["932"] = 890,["933"] = 890,["935"] = 897,["936"] = 897,["937"] = 897,["938"] = 898,["939"] = 898,["940"] = 898,["941"] = 898,["942"] = 897,["943"] = 897,["944"] = 900,["945"] = 900,["946"] = 900,["947"] = 901,["948"] = 901,["949"] = 901,["950"] = 901,["951"] = 900,["952"] = 900,["953"] = 881,["954"] = 905,["955"] = 906,["956"] = 907,["957"] = 908,["958"] = 908,["959"] = 908,["960"] = 908,["962"] = 910,["963"] = 910,["964"] = 911,["965"] = 912,["966"] = 913,["967"] = 914,["969"] = 916,["970"] = 916,["971"] = 916,["972"] = 916,["973"] = 910,["976"] = 906,["977"] = 919,["978"] = 920,["979"] = 905,["980"] = 923,["981"] = 925,["982"] = 926,["983"] = 926,["984"] = 926,["985"] = 926,["986"] = 927,["987"] = 927,["988"] = 927,["989"] = 927,["990"] = 928,["991"] = 930,["992"] = 934,["994"] = 941,["995"] = 943,["996"] = 945,["997"] = 947,["998"] = 949,["999"] = 951,["1000"] = 953,["1001"] = 923,["1002"] = 959,["1003"] = 960,["1004"] = 961,["1005"] = 962,["1006"] = 963,["1007"] = 964,["1008"] = 965,["1009"] = 966,["1010"] = 967,["1011"] = 968,["1012"] = 968,["1013"] = 969,["1014"] = 970,["1015"] = 971,["1019"] = 975,["1021"] = 1006,["1022"] = 1007,["1023"] = 1008,["1025"] = 959,["1026"] = 1014,["1027"] = 1015,["1028"] = 1016,["1029"] = 1018,["1030"] = 1014,["1031"] = 1021,["1032"] = 1022,["1033"] = 1023,["1034"] = 1024,["1035"] = 1025,["1036"] = 1025,["1038"] = 1027,["1040"] = 1021,["1041"] = 1031,["1042"] = 1032,["1043"] = 1031,["1044"] = 1038,["1045"] = 1039,["1046"] = 1040,["1047"] = 1042,["1048"] = 1044,["1049"] = 1046,["1051"] = 1038,["1052"] = 1054,["1053"] = 1055,["1054"] = 1054,["1055"] = 1061,["1056"] = 1062,["1057"] = 1064,["1058"] = 1061,["1059"] = 1068,["1060"] = 1069,["1061"] = 1068,["1062"] = 1075,["1063"] = 1076,["1064"] = 1077,["1065"] = 1079,["1066"] = 1075,["1067"] = 1085,["1068"] = 1086,["1069"] = 1085,["1070"] = 1089,["1071"] = 1090,["1072"] = 1089,["1073"] = 1092,["1074"] = 1093,["1075"] = 1092,["1076"] = 1096,["1077"] = 1097,["1078"] = 1096,["1079"] = 1100,["1080"] = 1101,["1081"] = 1100,["1082"] = 1104,["1083"] = 1105,["1084"] = 1104,["1085"] = 1108,["1086"] = 1109,["1087"] = 1110,["1088"] = 1108,["1089"] = 1114});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigList = ____LevelConfig.levelConfigList
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameRandomEventType = ____GameData.GameRandomEventType
local GameStatus = ____GameData.GameStatus
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____TechnologyController = include("logic.controllers.TechnologyController")
local technologyController = ____TechnologyController.technologyController
local ____MercenaryController = include("logic.controllers.MercenaryController")
local mercenaryController = ____MercenaryController.mercenaryController
local ____FightController = include("logic.controllers.FightController")
local fightController = ____FightController.fightController
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____KofController = include("logic.controllers.KofController")
local kofController = ____KofController.kofController
local ____KingController = include("logic.controllers.KingController")
local kingController = ____KingController.kingController
local ____BlessController = include("logic.controllers.BlessController")
local blessController = ____BlessController.blessController
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
local battleGround2player = ____PlayerUtils.battleGround2player
local playerIdList = ____PlayerUtils.playerIdList
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____FowController = include("logic.controllers.ui.FowController")
local fowController = ____FowController.fowController
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____GameEndController = include("logic.controllers.game.GameEndController")
local gameStatusController = ____GameEndController.gameStatusController
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____KingConfig = include("logic.configs.KingConfig")
local kingConfigMap_type = ____KingConfig.kingConfigMap_type
local ____Property = include("logic.models.Property")
local propertyConfig2PropertyNumbers = ____Property.propertyConfig2PropertyNumbers
local _____6218_573AID = ____Property["战场ID"]
local ____AuctionController = include("logic.controllers.AuctionController")
local auctionController = ____AuctionController.auctionController
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____RandomEventController = include("logic.controllers.RandomEventController")
local randomEventController = ____RandomEventController.randomEventController
local ____LevelData = include("logic.models.LevelData")
local LevelData = ____LevelData.LevelData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____LoopUtils = include("logic.utils.LoopUtils")
local logLeftMonster = ____LoopUtils.logLeftMonster
local ____ChatController = include("logic.controllers.chat.ChatController")
local MessageType = ____ChatController.MessageType
local chatController = ____ChatController.chatController
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____global = include("framework.global")
local global = ____global.global
local ____RandomEventDisConfig = include("logic.configs.RandomEventDisConfig")
local randomEventDisConfigList = ____RandomEventDisConfig.randomEventDisConfigList
local ____RandomEventConfig = include("logic.configs.RandomEventConfig")
local randomEventConfigMap_type = ____RandomEventConfig.randomEventConfigMap_type
local ____CameraController = include("logic.controllers.ui.CameraController")
local cameraController = ____CameraController.cameraController
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
local ____CheckController = include("logic.controllers.CheckController")
local checkController = ____CheckController.checkController
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____KeyboardManager = include("logic.managers.KeyboardManager")
local KeyboardManager = ____KeyboardManager.KeyboardManager
local ____BigBlessController = include("logic.controllers.BigBlessController")
local bigBlessController = ____BigBlessController.bigBlessController
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.GameController = __TS__Class()
local GameController = ____exports.GameController
GameController.name = "GameController"
function GameController.prototype.____constructor(self)
    self.matchLeft = {}
    self.matchRight = {}
    self.matchCount = 0
    self.unitPosCache = {}
end
function GameController.prototype.init(self)
    fightController:init()
    mercenaryController:init()
    chatController:init()
    playerController:init()
    kingController:init()
    fowController:set_mini_map_alpha()
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStartFrame = global.frameCount
    console:log("游戏开始帧", global.frameCount)
    uiController:show_fog()
    createUnitController:createPet()
    KeyboardManager:initPet()
    y3.ltimer.wait_frame(
        1,
        function()
            if debugEnv.enableBigBless then
                self:startSelBigBless()
            else
                self:startSelHero()
            end
        end
    )
    traceLogUtils:onGameStart()
end
function GameController.prototype.initLevel(self)
    local levelData = writeableDatas.global:getOrCreateSingle(LevelData)
    local haveMonster = {}
    do
        local index = 0
        while index < #levelConfigList do
            local level = index + 1
            local cfg = levelConfigList[index + 1]
            levelData.levels[level] = {level = level, event = nil}
            if GameUtils:getLevelType(cfg) == 1 or GameUtils:getLevelType(cfg) == 2 then
                local nlist = __TS__ArrayFilter(
                    __TS__ArrayConcat(cfg.value),
                    function(____, a) return __TS__ArrayFindIndex(
                        haveMonster,
                        function(____, b) return a == b end
                    ) == -1 end
                )
                if #nlist == 0 then
                    error("不是小豪的问题就是我的问题", 0)
                end
                levelData.levels[level].monsterId = random:randomList(nlist)
                haveMonster[#haveMonster + 1] = levelData.levels[level].monsterId
            end
            if GameUtils:getLevelType(cfg) == 4 then
                local match = self:match()
                levelData.levels[level].image = match
            end
            index = index + 1
        end
    end
    local haveEvent = {}
    local randomEventDis = random:randomWeight(
        randomEventDisConfigList,
        function(____, a) return a.weight end
    )
    local lastLevelId = -1
    do
        local levelGroupIndex = 1
        while levelGroupIndex <= 3 do
            do
                local levels = __TS__ArrayFilter(
                    __TS__ArraySlice(levelConfigList, (levelGroupIndex - 1) * 10, levelGroupIndex * 10),
                    function(____, a) return not a.banEvent end
                )
                if lastLevelId == 10 or lastLevelId == 20 then
                    __TS__ArraySplice(levels, 0, 1)
                end
                if #levels == 0 then
                    goto __continue15
                end
                do
                    local i = 0
                    while i < randomEventDis["dis" .. tostring(levelGroupIndex)] do
                        do
                            if #levels == 0 then
                                break
                            end
                            local levelIndex = random:randomRange(0, #levels - 1)
                            local level = levels[levelIndex + 1]
                            if levelIndex == 0 then
                                __TS__ArraySplice(levels, levelIndex, 2)
                            else
                                __TS__ArraySplice(levels, levelIndex - 1, 3)
                            end
                            local ____opt_0 = randomEventConfigMap_type[GameUtils:getLevelType(level)]
                            local events = ____opt_0 and __TS__ArrayFilter(
                                randomEventConfigMap_type[GameUtils:getLevelType(level)],
                                function(____, a) return haveEvent[a.id] == nil end
                            )
                            if events == nil or #events == 0 then
                                goto __continue19
                            end
                            local event = random:randomWeight(
                                events,
                                function(____, a)
                                    local w = a["weight" .. tostring(levelGroupIndex)]
                                    return w[__TS__ArrayIndexOf(
                                        a.type,
                                        GameUtils:getLevelType(level)
                                    ) + 1] or w[1] or 0
                                end
                            )
                            if event == nil then
                                goto __continue19
                            end
                            haveEvent[event.id] = true
                            levelData.levels[level.id].event = event.id
                            lastLevelId = level.id
                        end
                        ::__continue19::
                        i = i + 1
                    end
                end
            end
            ::__continue15::
            levelGroupIndex = levelGroupIndex + 1
        end
    end
end
function GameController.prototype.startSelBigBless(self)
    UIUtils:SetOnlyDrawUIs(false)
    uiController:focusBigBlessArea()
    for ____, playerId in ipairs(playerIdList) do
        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
        petData.y3Unit:stop()
        petData.y3Unit:blink(y3.point.get_point_by_res_id(mapConfig["大祝福玩家点位列表"][playerId]))
    end
    bigBlessController:init()
    local ____require_result_2 = include("logic.dialogs.DSelBigBless")
    local DSelBigBless = ____require_result_2.DSelBigBless
    dialogs:show(DSelBigBless, {})
    local ____require_result_3 = include("logic.dialogs.DSettings")
    local DSettings = ____require_result_3.DSettings
    if not dialogs:isShowed(DSettings) then
        dialogs:show(DSettings, {})
    end
end
function GameController.prototype.startSelHero(self)
    genreController:init()
    for ____, playerId in ipairs(playerIdList) do
        playerController:refreshPlayerHero(playerId)
    end
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["选人阶段"]
    local ____require_result_4 = include("logic.dialogs.DSelHero")
    local DSelHero = ____require_result_4.DSelHero
    dialogs:show(DSelHero, {})
    ____exports.gameController:initLevel()
    local ____require_result_5 = include("logic.dialogs.DSettings")
    local DSettings = ____require_result_5.DSettings
    if not dialogs:isShowed(DSettings) then
        dialogs:show(DSettings, {})
    end
end
function GameController.prototype.enterGame(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.isEnterGame = true
    local gameLoop = include("logic.loop.GameLoop").gameLoop
    local ____require_result_6 = include("logic.dialogs.DSelHero")
    local DSelHero = ____require_result_6.DSelHero
    local ____require_result_7 = include("logic.dialogs.DMain")
    local DMain = ____require_result_7.DMain
    local ____require_result_8 = include("logic.dialogs.DTalent")
    local DTalent = ____require_result_8.DTalent
    local ____require_result_9 = include("logic.dialogs.DSelBless")
    local DSelBless = ____require_result_9.DSelBless
    local ____require_result_10 = include("logic.dialogs.top.DPve")
    local DPve = ____require_result_10.DPve
    local ____require_result_11 = include("logic.dialogs.top.DKof")
    local DKof = ____require_result_11.DKof
    local ____require_result_12 = include("logic.dialogs.top.DLastBattle")
    local DLastBattle = ____require_result_12.DLastBattle
    local ____require_result_13 = include("logic.dialogs.top.DRvs")
    local DRvs = ____require_result_13.DRvs
    local ____require_result_14 = include("logic.dialogs.DChatView")
    local DChatView = ____require_result_14.DChatView
    local ____require_result_15 = include("logic.dialogs.DTest")
    local DTest = ____require_result_15.DTest
    local function errorHandler(____, e)
        console:error(e)
    end
    console:log("syncData.inSync", syncData.inSync)
    y3.ltimer.wait_frame(
        1,
        function()
            local ____self_16 = gameLoop:start()
            ____self_16["then"](
                ____self_16,
                function()
                    dialogs:hide(DSelHero):catch(errorHandler)
                    dialogs:hide(DTest):catch(errorHandler)
                    if not gameLoop.isExit then
                        dialogs:show(DMain, {}):catch(errorHandler)
                        dialogs:show(DTalent, {}):catch(errorHandler)
                        dialogs:show(DSelBless, {}):catch(errorHandler)
                        dialogs:show(DPve, {}):catch(errorHandler)
                        dialogs:show(DKof, {}):catch(errorHandler)
                        dialogs:show(DLastBattle, {}):catch(errorHandler)
                        dialogs:show(DRvs, {}):catch(errorHandler)
                        dialogs:show(DChatView, {}):catch(errorHandler)
                    end
                end
            ):catch(function(____, e)
                console:error(e)
            end)
        end
    )
end
function GameController.prototype.match(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if self.matchCount == 0 or self.matchCount == #gameData.teamLeft then
        self.matchCount = 0
        self.matchLeft = random:randomListNum(gameData.teamLeft, #gameData.teamLeft)
        self.matchRight = random:randomListNum(gameData.teamRight, #gameData.teamRight)
        while #self.matchLeft < #self.matchRight do
            local ____self_matchLeft_17 = self.matchLeft
            ____self_matchLeft_17[#____self_matchLeft_17 + 1] = random:randomList(self.matchLeft)
        end
        while #self.matchRight < #self.matchLeft do
            local ____self_matchRight_18 = self.matchRight
            ____self_matchRight_18[#____self_matchRight_18 + 1] = random:randomList(self.matchRight)
        end
    end
    local data = {}
    do
        local index = 0
        while index < #self.matchLeft do
            local leftId = self.matchLeft[index + 1]
            local rightId = self.matchRight[index + 1]
            if data[leftId] == nil then
                data[leftId] = {}
            end
            if data[rightId] == nil then
                data[rightId] = {}
            end
            local ____data_leftId_19 = data[leftId]
            ____data_leftId_19[#____data_leftId_19 + 1] = {imageId = rightId, genre1 = 0, genre2 = 0}
            local ____data_rightId_20 = data[rightId]
            ____data_rightId_20[#____data_rightId_20 + 1] = {imageId = leftId, genre1 = 0, genre2 = 0}
            index = index + 1
        end
    end
    local last = self.matchRight[#self.matchRight]
    do
        local index = #self.matchRight - 1
        while index > 0 do
            self.matchRight[index + 1] = self.matchRight[index]
            index = index - 1
        end
    end
    self.matchRight[1] = last
    self.matchCount = self.matchCount + 1
    return data
end
function GameController.prototype.startGame(self)
    playerController:autoSelHero()
    blessController:init(triggerManager)
    createUnitController:createHeroUnit()
    createUnitController:createKingUnit()
    petController:backToOrigin()
    auctionController:init()
    kingController:create()
    technologyController:init()
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    data.gameStatus = GameStatus["准备回合"]
    uiController:init()
    uiController:allPlayerFocusMain()
    self:initFightAlertArea()
    self:initFightMoveLogic()
end
function GameController.prototype.initFightAlertArea(self)
    local data = datas.global:getSingle(GameData)
    for ____, playerId in ipairs(playerIdList) do
        local playerData = datas.players[playerId]:getSingle(PlayerData)
        local areaId = mapConfig["玩家警戒区域"][playerId]
        local area = y3.area.get_rectangle_by_res_id(areaId)
        area:event(
            "区域-进入",
            function(tri, d)
                if data.mode == GameMode.NORMAL or data.mode == GameMode.ELITE or data.mode == GameMode["镜像"] then
                    local unit = fight.allY3UnitMap[d.unit.id]
                    if unit == nil or unit.customData == nil then
                        return
                    end
                    local customData = unit.customData
                    if not playerData.gotoAlertArea and (customData.type == UnitType.MONSTER or customData.type == UnitType.ELITE or customData.type == UnitType.Assassin or customData.type == UnitType.Gold_Monster or customData.type == UnitType.Wood_Monster or customData.type == UnitType.Cannon_Monster or customData.type == UnitType.Weal_Monster or customData.type == UnitType.HERO_IMAGE) then
                        createUnitController:gotoAlertArea(playerId)
                    end
                end
            end
        )
    end
end
function GameController.prototype.initFightMoveLogic(self)
    local gameData = datas.global:getSingle(GameData)
    local continueFightOrGotoKingLock = false
    local enabledLog = false
    local childrenFollow
    childrenFollow = function(____, parent, entity)
        if #entity.children == 0 then
            return
        end
        for ____, child in ipairs(entity.children) do
            local ____opt_21 = child.y3Unit
            if ____opt_21 ~= nil then
                ____opt_21:follow(parent.y3Unit)
            end
            childrenFollow(nil, parent, child)
        end
    end
    local function continueFightOrGotoKing(____, unitEntity)
        if continueFightOrGotoKingLock then
            return
        end
        continueFightOrGotoKingLock = true
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned, ____returnValue = pcall(function()
                local unitData = unitEntity.customData
                if unitData == nil or not unitData.entity:isAlive() then
                    if unitEntity:isAlive() then
                        local y3Unit = unitEntity.y3Unit
                        if y3Unit == nil then
                            return true
                        end
                        if unitEntity.parent ~= nil and not unitEntity.activeData.isFighting and unitEntity.parent.y3Unit ~= nil then
                            local enemy = unitEntity:findTarget({"敌人"}, nil, 1, 8000)
                            if enemy ~= nil and enemy.y3Unit ~= nil then
                                y3Unit:attack_target(enemy.y3Unit, 5000)
                                local ____ = enabledLog and console:log(
                                    "召唤物打目标",
                                    unitEntity:getName()
                                )
                            else
                                y3Unit:follow(unitEntity.parent.y3Unit)
                                local ____ = enabledLog and console:log(
                                    "召唤物跟随",
                                    unitEntity:getName(),
                                    unitEntity:getValue(_____6218_573AID)
                                )
                            end
                        end
                    end
                    return true
                end
                local y3Unit = unitData.entity.y3Unit
                if y3Unit == nil then
                    return true
                end
                if unitData.dispatched ~= nil and unitData.dispatched == false then
                    return true
                end
                if unitEntity.__isPosCache == nil then
                    unitEntity.__isPosCache = {}
                end
                local moveCache = unitEntity.__isPosCache
                local isMoving = false
                local pos = unitEntity:getPosition()
                if moveCache[1] ~= pos.x or moveCache[2] ~= pos.y or y3Unit:is_moving() then
                    isMoving = true
                    moveCache[3] = global.frameCount
                end
                moveCache[1] = pos.x
                moveCache[2] = pos.y
                local function movePoint(____, from, to, length)
                    local x = to.x - from.x
                    local y = to.y - from.y
                    local distance = math.sqrt(x * x + y * y)
                    x = x / distance
                    y = y / distance
                    local l = math.min(length, distance)
                    return {x = from.x + x * l, y = from.y + y * l}
                end
                if unitData.battleGroundId >= BattleGroundId.LEFT_1 and unitData.battleGroundId <= BattleGroundId.LEFT_4 or unitData.battleGroundId >= BattleGroundId.RIGHT_1 and unitData.battleGroundId <= BattleGroundId.RIGHT_4 then
                    local playerId = battleGround2player[unitData.battleGroundId]
                    if playerId == nil then
                        return true
                    end
                    local playerData = datas.players[playerId]:getSingle(PlayerData)
                    if playerData ~= nil and not playerData.gotoAlertArea then
                        return true
                    end
                    if not isMoving and not unitData.entity.activeData.isFighting and y3Unit:is_alive() then
                        if unitData.moveState ~= "gotoKing" then
                            unitData.moveState = "none"
                            local ____ = enabledLog and console:log(
                                "状态进入B",
                                unitData.moveState,
                                unitEntity:getName(),
                                unitEntity.id,
                                unitData.battleGroundId
                            )
                            local enemy = unitData.entity:findTarget({"敌人"}, nil, 1, 8000)
                            if enemy ~= nil then
                                local pos = movePoint(
                                    nil,
                                    unitEntity:getPosition(),
                                    enemy:getPosition(),
                                    350
                                )
                                unitData.entity.y3Unit:attack_move(
                                    y3.point.create(pos.x, pos.y),
                                    5000
                                )
                                childrenFollow(
                                    nil,
                                    unitData:getWritableEntity(),
                                    unitData:getWritableEntity()
                                )
                                unitData.moveState = "gotoTarget"
                                local ____ = enabledLog and console:log(
                                    "状态进入C",
                                    unitData.moveState,
                                    unitEntity:getName(),
                                    unitEntity.id,
                                    unitData.battleGroundId
                                )
                            else
                                if unitData.path ~= nil then
                                    unitData:getWritableEntity():setMoveAlongRoad(unitData.path)
                                    childrenFollow(
                                        nil,
                                        unitData:getWritableEntity(),
                                        unitData:getWritableEntity()
                                    )
                                    unitData.moveState = "gotoKing"
                                    local ____ = enabledLog and console:log(
                                        "状态进入D",
                                        unitData.moveState,
                                        unitEntity:getName(),
                                        unitEntity.id,
                                        unitData.battleGroundId
                                    )
                                end
                            end
                        else
                            unitData.idleStateTotal = unitData.idleStateTotal + 1
                            if unitData.idleStateTotal >= 3 then
                                local ____ = enabledLog and console:log(
                                    "单位疑似卡死",
                                    unitData.moveState,
                                    unitEntity:getName(),
                                    unitEntity.id,
                                    unitData.battleGroundId
                                )
                                local pos = unitEntity:getPosition()
                                childrenFollow(
                                    nil,
                                    unitData:getWritableEntity(),
                                    unitData:getWritableEntity()
                                )
                                unitEntity:blink({x = pos.x - 50, y = pos.y + 50})
                            end
                            if unitData.path ~= nil then
                                unitData:getWritableEntity():setMoveAlongRoad(unitData.path)
                                childrenFollow(
                                    nil,
                                    unitData:getWritableEntity(),
                                    unitData:getWritableEntity()
                                )
                                unitData.moveState = "gotoKing"
                                local ____ = enabledLog and console:log(
                                    "状态进入E",
                                    unitData.moveState,
                                    unitEntity:getName(),
                                    unitEntity.id,
                                    unitData.battleGroundId
                                )
                            end
                        end
                    else
                        unitData.idleStateTotal = 0
                    end
                elseif unitData.battleGroundId == BattleGroundId.LEFT_KING or unitData.battleGroundId == BattleGroundId.RIGHT_KING or unitData.battleGroundId == BattleGroundId.LEFT_RABBIT_VS_SHEEP or unitData.battleGroundId == BattleGroundId.RIGHT_RABBIT_VS_SHEEP or unitData.battleGroundId == BattleGroundId.KOF or unitData.battleGroundId == BattleGroundId.THREE_VS_THREE or unitData.battleGroundId == BattleGroundId.LAST_BATTLE then
                    if not isMoving and not unitData.entity.activeData.isFighting and unitData.entity:isAlive() then
                        local enemy = unitData.entity:findTarget({"敌人"}, nil, 1, 8000)
                        if enemy ~= nil then
                            local pos = movePoint(
                                nil,
                                unitEntity:getPosition(),
                                enemy:getPosition(),
                                1000
                            )
                            unitData.entity.y3Unit:attack_move(
                                y3.point.create(pos.x, pos.y),
                                5000
                            )
                            childrenFollow(
                                nil,
                                unitData:getWritableEntity(),
                                unitData:getWritableEntity()
                            )
                            local ____ = enabledLog and console:log(
                                "状态进入F",
                                unitData.moveState,
                                unitEntity:getName(),
                                unitEntity.id,
                                unitData.battleGroundId
                            )
                        end
                    elseif not isMoving and unitData.entity.activeData.isFighting and unitData.entity:isAlive() then
                        local x = unitData.entity.customData
                        if x ~= nil and x.type == UnitType.HERO_IMAGE and global.frameCount - moveCache[3] > 120 then
                            local enemy = unitData.entity:findTarget({"敌人"}, nil, 1, 8000)
                            if enemy == nil then
                                local r = (((((("单位疑似卡死 " .. unitData.moveState) .. ", ") .. unitEntity:getName()) .. ", ") .. tostring(unitEntity.id)) .. ", ") .. tostring(unitData.battleGroundId)
                                local k = 1
                                local stateMap = {
                                    [2] = "禁止普攻",
                                    [4] = "禁止施法",
                                    [8] = "禁止移动",
                                    [16] = "禁止转向",
                                    [32] = "动画定帧",
                                    [64] = "无法施加运动",
                                    [128] = "无法被技能指示器锁定",
                                    [256] = "无法被选中",
                                    [512] = "隐身",
                                    [1024] = "无视静态碰撞",
                                    [2048] = "无视动态碰撞",
                                    [4096] = "不会死亡",
                                    [8192] = "无敌",
                                    [16384] = "无法控制",
                                    [32768] = "无法被攻击",
                                    [65536] = "AI无视",
                                    [131072] = "物理伤害免疫",
                                    [262144] = "魔法伤害免疫",
                                    [524288] = "负面效果免疫",
                                    [1048576] = "隐藏",
                                    [2097152] = "无法被筛选器选中",
                                    [4194304] = "真实伤害免疫",
                                    [8388608] = "禁止使用道具"
                                }
                                do
                                    local i = 0
                                    while i < 23 do
                                        k = k << 1
                                        if y3Unit:has_state(k) then
                                            r = r .. (((("\n单位疑似卡死 " .. y3Unit:get_name()) .. " 持有y3状态 ") .. tostring(k)) .. ",") .. stateMap[k]
                                        end
                                        i = i + 1
                                    end
                                end
                                if y3Unit:is_casting() then
                                    r = r .. ("\n位疑似卡死 " .. y3Unit:get_name()) .. " 正在施法"
                                end
                                console:error(r)
                            end
                        end
                    end
                end
            end)
            if not ____try then
                ____hasReturned, ____returnValue = ____catch(____hasReturned)
            end
            do
                continueFightOrGotoKingLock = false
            end
            if ____hasReturned then
                return ____returnValue
            end
        end
    end
    y3.game:event(
        "单位-脱离战斗",
        function(trg, data)
            local unitEntity = fight.allY3UnitMap[data.unit.id]
            if unitEntity == nil then
                return
            end
            if gameData.gameStatus ~= GameStatus["战斗中"] then
                return
            end
            continueFightOrGotoKing(nil, unitEntity)
        end
    )
    local genLoop = __TS__Generator(function(self, keyList)
        local count = math.ceil(#keyList / 30)
        do
            local i = 0
            while i < #keyList do
                do
                    local k = keyList[i + 1]
                    local unitEntity = fight.allUnitMap[k]
                    if unitEntity == nil then
                        goto __continue103
                    end
                    continueFightOrGotoKing(nil, unitEntity)
                    if i % count == 0 then
                        coroutine.yield()
                    end
                end
                ::__continue103::
                i = i + 1
            end
        end
    end)
    local gen = nil
    y3.ltimer.loop_frame(
        1,
        function()
            if gen ~= nil then
                local r = gen:next()
                if r.done == true then
                    gen = nil
                end
                return
            end
            if gameData.gameStatus ~= GameStatus["战斗中"] then
                return
            end
            gen = genLoop(
                nil,
                __TS__ObjectKeys(fight.allUnitMap)
            )
        end
    )
end
function GameController.prototype.gameloop(self)
    technologyController:startTimer()
    for ____, playerId in ipairs(playerIdList) do
        if not y3.game.is_debug_mode() then
            cameraController:limit(playerId)
        end
    end
end
function GameController.prototype.next(self)
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____temp_27 = data.level == 14
    if ____temp_27 then
        local ____opt_23 = bigBlessData and bigBlessData.bigBless
        ____temp_27 = (____opt_23 and ____opt_23.id) == 4
    end
    if ____temp_27 then
        data.level = 30
    else
        data.level = data.level + 1
    end
    local config = levelConfigMap[data.level]
    data.mode = GameUtils:getLevelType(config)
    data.gameStatus = GameStatus["准备回合"]
    self:updateKingProperty()
    playerController:resetStatus()
    technologyController:settlement()
    randomEventController:check()
    local level = levelConfigMap[data.level]
    if level.trigger == 1 then
        console:log("装备暗拍环节开始。。。。。。")
        local bigBlessData = datas.global:getSingle(BigBlessData)
        local ____opt_28 = bigBlessData and bigBlessData.bigBless
        if (____opt_28 and ____opt_28.id) == 15 then
            console:log("免费橙装 无需装备暗拍")
        else
            auctionController:create()
        end
    end
    if level.id % 5 == 0 then
        local bigBlessData = datas.global:getSingle(BigBlessData)
        local ____opt_32 = bigBlessData and bigBlessData.bigBless
        if (____opt_32 and ____opt_32.id) == 15 then
            console:log("免费橙装 每5回合获得一次")
            auctionController:autoAddOrangeEquipAll(2)
        end
    end
    for ____, playerId in ipairs(playerIdList) do
        if level.trigger == 2 then
            blessController:genBless(playerId)
            blessController:genCanSelBless(playerId)
        end
        triggerManager:trigger(TriggerType["每回合开始时"], {playerId = playerId})
        local kingdata = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        triggerManager:trigger(TriggerType["当前塔的个数小于等于后每回合触发"], {playerId = playerId, count = #kingdata.aliveList})
        chatController:trigger(MessageType["回合开始"], playerId)
    end
    checkController:check()
end
function GameController.prototype.fight(self)
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    local cfg = levelConfigMap[data.level]
    if cfg.trigger == 2 then
        blessController:selRandomAll()
    end
    if data.mode == GameMode["镜像"] then
        fowController:hide_fog()
        for ____, playerId in ipairs(playerIdList) do
            triggerManager:trigger(TriggerType["镜像关战斗单位数量小于等于"], {playerId = playerId})
        end
    end
    if data.mode == GameMode.NORMAL or data.mode == GameMode.ELITE or data.mode == GameMode["镜像"] then
        playerController:inFighting()
        playerController:moveCameraToFightPoint()
    end
end
function GameController.prototype.fightEnd(self)
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    console:log(("回合" .. tostring(data.level)) .. "结束")
    logLeftMonster(nil)
    playerController:fightEnd()
    self:removeCrazy()
    genreController:refreshAll()
    self:clear()
    kingController:clearCrazy()
    data.leftMonster = 0
    data.teamALeftMonster = 0
    data.teamBLeftMonster = 0
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        playerData.leftMonster = 0
    end
    if data.mode == GameMode["镜像"] or data.mode == GameMode.KOF or data.mode == GameMode["兔羊大战"] then
        local config = levelConfigMap[data.level + 1]
        petController:backToOrigin()
        if config == nil or GameUtils:getLevelType(config) == GameMode.KOF then
            return
        end
    end
    uiController:show_fog()
end
function GameController.prototype.crazy(self)
    local crazyId = 6
    for ____, playerId in ipairs(playerIdList) do
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        hero:getWritableEntity():addEffect(
            hero:getWritableEntity(),
            crazyId,
            1
        )
        local allUnits = writeableDatas.players[playerId]:getAll(UnitData)
        __TS__ArrayForEach(
            allUnits,
            function(____, a)
                if not a.entity:isAlive() then
                    return
                end
                if a.type == UnitType.ELITE or a.type == UnitType.HERO_IMAGE or a.type == UnitType.MONSTER or a.type == UnitType.MERCENARY then
                    a:getWritableEntity():addEffect(
                        hero:getWritableEntity(),
                        crazyId,
                        1
                    )
                end
            end
        )
    end
end
function GameController.prototype.towerCrazy(self)
    local crazyId = 6
    local kingData = writeableDatas.players[PlayerId.LEFT_KING]:getOrCreateSingle(KingData)
    local unit = __TS__ArrayFilter(
        writeableDatas.players[PlayerId.LEFT_KING]:getAll(UnitData),
        function(____, a) return a.id == kingData.currentUnit end
    )[1]
    if unit ~= nil and unit.entity:isAlive() then
        console:log("添加狂暴了 哈哈哈哈")
        unit:getWritableEntity():addEffect(
            unit:getWritableEntity(),
            crazyId,
            1
        )
    end
    local kingData2 = writeableDatas.players[PlayerId.RIGHT_KING]:getOrCreateSingle(KingData)
    local unit2 = __TS__ArrayFilter(
        writeableDatas.players[PlayerId.RIGHT_KING]:getAll(UnitData),
        function(____, a) return a.id == kingData2.currentUnit end
    )[1]
    if unit2 ~= nil and unit2.entity:isAlive() then
        console:log("添加狂暴了 哈哈哈哈")
        unit2:getWritableEntity():addEffect(
            unit2:getWritableEntity(),
            crazyId,
            1
        )
    end
end
function GameController.prototype.removeCrazy(self)
    local crazyId = 6
    for ____, playerId in ipairs(playerIdList) do
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        hero:getWritableEntity():removeEffect(
            hero:getWritableEntity(),
            {crazyId}
        )
        local allUnits = writeableDatas.players[playerId]:getAll(UnitData)
        __TS__ArrayForEach(
            allUnits,
            function(____, a)
                if a.type == UnitType.ELITE or a.type == UnitType.HERO_IMAGE or a.type == UnitType.MONSTER or a.type == UnitType.MERCENARY then
                    a:getWritableEntity():removeEffect(
                        hero:getWritableEntity(),
                        {crazyId}
                    )
                end
            end
        )
    end
    __TS__ArrayForEach(
        writeableDatas.players[PlayerId.LEFT_KING]:getAll(UnitData),
        function(____, a)
            a:getWritableEntity():removeEffect(
                a:getWritableEntity(),
                {crazyId}
            )
        end
    )
    __TS__ArrayForEach(
        writeableDatas.players[PlayerId.RIGHT_KING]:getAll(UnitData),
        function(____, a)
            a:getWritableEntity():removeEffect(
                a:getWritableEntity(),
                {crazyId}
            )
        end
    )
end
function GameController.prototype.updateKingProperty(self)
    local function create(____, playerId, p)
        local gameData = datas.global:getSingle(GameData)
        local units = __TS__ArrayFilter(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.type == UnitType.KING end
        )
        do
            local index = 0
            while index < #units do
                local unitData = units[index + 1]
                local config = kingConfigMap_type[2][gameData.level]
                if index == 2 then
                    config = kingConfigMap_type[1][gameData.level]
                end
                unitData:getWritableEntity():updateBaseProperties(
                    unitData:getWritableEntity(),
                    propertyConfig2PropertyNumbers(nil, config.property, 1)
                )
                index = index + 1
            end
        end
    end
    create(nil, PlayerId.LEFT_KING, 0)
    create(nil, PlayerId.RIGHT_KING, 1)
end
function GameController.prototype.clear(self)
    for ____, playerId in ipairs(playerIdList) do
        local list = __TS__ArrayFilter(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.type == UnitType.MERCENARY end
        )
        local alive = #__TS__ArrayFilter(
            list,
            function(____, a) return a.entity:isAlive() end
        )
        local death = #list - alive
        triggerManager:trigger(TriggerType["战斗后佣兵存活数量"], {playerId = playerId, alive = alive})
        triggerManager:trigger(TriggerType["战斗后佣兵死亡数量"], {playerId = playerId, death = death})
    end
    mercenaryController:interest()
    mercenaryController:addBigBless10()
    mercenaryController:addBigBless17()
    mercenaryController:addBigBless18()
    mercenaryController:addRobotReward()
    createUnitController:clearMercenary()
    createUnitController:clearMonster()
end
function GameController.prototype.randomImageList(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local levelData = writeableDatas.global:getOrCreateSingle(LevelData)
    local data = levelData.levels[gameData.level]
    if data.image ~= nil then
        for key in pairs(data.image) do
            local elementList = data.image[key]
            for ____, element in ipairs(elementList) do
                local left = writeableDatas.players[key]:getOrCreateSingle(PlayerData)
                local ____left_imagePlayerId_36 = left.imagePlayerId
                ____left_imagePlayerId_36[#____left_imagePlayerId_36 + 1] = element.imageId
                local genreData = writeableDatas.players[element.imageId]:getOrCreateSingle(PlayerGenreData)
                element.genre1 = genreData.genresSortedList[1]
                element.genre2 = genreData.genresSortedList[2]
            end
        end
    else
        error("镜像随机出错了", 0)
    end
    for ____, id in ipairs(playerIdList) do
        local playerData = writeableDatas.players[id]:getOrCreateSingle(PlayerData)
        console:log((("玩家【" .. tostring(id)) .. "】的镜像对手为：") .. tostring(playerData.imagePlayerId[1]))
    end
end
function GameController.prototype.createImage(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["战斗中"]
    createUnitController:dispatchImageLevel()
end
function GameController.prototype.imageEnd(self)
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        for ____, imagePlayerId in ipairs(playerData.imagePlayerId) do
            local ____playerData_imageList_37 = playerData.imageList
            ____playerData_imageList_37[#____playerData_imageList_37 + 1] = imagePlayerId
        end
        playerData.imagePlayerId = {}
    end
end
function GameController.prototype.startCreateMonster(self)
    createUnitController:startCreateMonsterLevel()
end
function GameController.prototype.createMonster(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["战斗中"]
    createUnitController:dispatchMonsterLevel()
    if gameData.randomEventType == GameRandomEventType["刺客"] then
        createUnitController:createAssassin()
    end
end
function GameController.prototype.startKOF(self)
    kofController:start()
end
function GameController.prototype.jumpToKOFArena(self)
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    kofController:jumpToKOFArena()
end
function GameController.prototype.roundNext(self)
    kofController:roundNext()
end
function GameController.prototype.startKOFFight(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["战斗中"]
    kofController:startFight()
end
function GameController.prototype.endKOF(self)
    kofController:endKOF()
end
function GameController.prototype.roundEnd(self)
    kofController:roundEnd()
end
function GameController.prototype.forceEndRound(self)
    kofController:forceEndRound()
end
function GameController.prototype.pauseGame(self)
    gameStatusController:pauseGame()
end
function GameController.prototype.resumeGame(self)
    gameStatusController:resumeGame()
end
function GameController.prototype.endGame(self)
    gameStatusController:endGame()
end
function GameController.prototype.setAiDifficulty(self, mode)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.aiDifficulty = mode
end
____exports.gameController = make(nil, ____exports.GameController)
return ____exports
