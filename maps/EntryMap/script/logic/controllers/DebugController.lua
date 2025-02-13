local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayPush = ____lualib.__TS__ArrayPush
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__Number = ____lualib.__TS__Number
local __TS__NumberIsNaN = ____lualib.__TS__NumberIsNaN
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ParseFloat = ____lualib.__TS__ParseFloat
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSlice = ____lualib.__TS__StringSlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["20"] = 918,["21"] = 1,["22"] = 1,["23"] = 2,["24"] = 2,["25"] = 2,["26"] = 3,["27"] = 3,["28"] = 3,["29"] = 3,["30"] = 4,["31"] = 4,["32"] = 5,["33"] = 5,["34"] = 6,["35"] = 6,["36"] = 7,["37"] = 7,["38"] = 8,["39"] = 8,["40"] = 8,["41"] = 9,["42"] = 9,["43"] = 11,["44"] = 11,["45"] = 11,["46"] = 12,["47"] = 12,["48"] = 13,["49"] = 13,["50"] = 14,["51"] = 14,["52"] = 14,["53"] = 14,["54"] = 15,["55"] = 15,["56"] = 16,["57"] = 16,["58"] = 16,["59"] = 17,["60"] = 17,["61"] = 17,["62"] = 18,["63"] = 18,["64"] = 19,["65"] = 19,["66"] = 20,["67"] = 20,["68"] = 21,["69"] = 21,["70"] = 22,["71"] = 22,["72"] = 23,["73"] = 23,["74"] = 24,["75"] = 24,["76"] = 25,["77"] = 25,["78"] = 26,["79"] = 26,["80"] = 27,["81"] = 27,["82"] = 28,["83"] = 28,["84"] = 29,["85"] = 29,["86"] = 30,["87"] = 30,["88"] = 31,["89"] = 31,["90"] = 32,["91"] = 32,["92"] = 33,["93"] = 33,["94"] = 34,["95"] = 34,["96"] = 35,["97"] = 35,["98"] = 36,["99"] = 36,["100"] = 37,["101"] = 37,["102"] = 38,["103"] = 38,["104"] = 39,["105"] = 39,["106"] = 40,["107"] = 40,["108"] = 41,["109"] = 41,["110"] = 42,["111"] = 42,["112"] = 43,["113"] = 43,["114"] = 44,["115"] = 44,["116"] = 45,["117"] = 45,["118"] = 46,["119"] = 46,["120"] = 48,["121"] = 50,["141"] = 73,["142"] = 73,["143"] = 73,["145"] = 357,["146"] = 730,["147"] = 786,["148"] = 73,["149"] = 75,["150"] = 76,["151"] = 77,["152"] = 78,["153"] = 79,["154"] = 80,["155"] = 75,["156"] = 83,["157"] = 84,["158"] = 85,["159"] = 86,["160"] = 87,["161"] = 89,["162"] = 90,["164"] = 93,["165"] = 95,["166"] = 96,["167"] = 97,["168"] = 98,["169"] = 99,["170"] = 100,["171"] = 101,["172"] = 102,["173"] = 103,["174"] = 104,["177"] = 107,["178"] = 108,["179"] = 109,["180"] = 110,["181"] = 111,["182"] = 112,["183"] = 113,["184"] = 114,["185"] = 115,["186"] = 116,["187"] = 117,["188"] = 118,["189"] = 118,["190"] = 118,["191"] = 118,["192"] = 118,["193"] = 118,["194"] = 118,["195"] = 119,["196"] = 120,["197"] = 121,["198"] = 122,["199"] = 122,["200"] = 122,["201"] = 122,["202"] = 122,["203"] = 122,["204"] = 122,["205"] = 123,["206"] = 124,["207"] = 125,["208"] = 126,["209"] = 126,["210"] = 126,["211"] = 126,["212"] = 126,["213"] = 126,["214"] = 126,["215"] = 126,["216"] = 127,["217"] = 128,["218"] = 129,["219"] = 130,["220"] = 130,["221"] = 130,["222"] = 130,["223"] = 130,["224"] = 130,["225"] = 130,["226"] = 130,["227"] = 130,["228"] = 131,["229"] = 132,["230"] = 133,["231"] = 134,["232"] = 134,["233"] = 134,["234"] = 134,["235"] = 134,["236"] = 134,["237"] = 134,["238"] = 134,["239"] = 135,["240"] = 136,["241"] = 137,["242"] = 138,["243"] = 138,["244"] = 138,["245"] = 138,["246"] = 138,["247"] = 138,["248"] = 138,["249"] = 139,["250"] = 140,["251"] = 141,["252"] = 142,["254"] = 145,["255"] = 83,["256"] = 147,["257"] = 148,["258"] = 149,["259"] = 147,["260"] = 151,["261"] = 152,["262"] = 153,["263"] = 151,["264"] = 155,["265"] = 156,["266"] = 157,["267"] = 158,["268"] = 159,["269"] = 160,["270"] = 161,["271"] = 162,["273"] = 164,["274"] = 165,["277"] = 155,["278"] = 170,["279"] = 171,["280"] = 172,["281"] = 175,["282"] = 176,["283"] = 178,["284"] = 179,["286"] = 180,["287"] = 180,["288"] = 181,["289"] = 182,["290"] = 183,["293"] = 180,["298"] = 192,["299"] = 193,["300"] = 194,["302"] = 170,["303"] = 199,["304"] = 200,["305"] = 200,["306"] = 200,["307"] = 200,["308"] = 201,["311"] = 204,["312"] = 205,["314"] = 207,["315"] = 207,["316"] = 208,["317"] = 207,["320"] = 199,["321"] = 212,["322"] = 213,["323"] = 214,["324"] = 214,["325"] = 214,["326"] = 214,["327"] = 215,["330"] = 218,["331"] = 219,["332"] = 220,["333"] = 222,["336"] = 223,["337"] = 223,["339"] = 225,["341"] = 226,["342"] = 226,["343"] = 227,["344"] = 226,["348"] = 212,["349"] = 232,["350"] = 233,["351"] = 234,["352"] = 232,["353"] = 237,["354"] = 238,["355"] = 239,["356"] = 240,["357"] = 241,["359"] = 237,["360"] = 244,["361"] = 245,["362"] = 246,["363"] = 247,["364"] = 248,["365"] = 244,["366"] = 253,["367"] = 254,["368"] = 255,["369"] = 257,["370"] = 253,["371"] = 263,["372"] = 264,["373"] = 265,["374"] = 266,["375"] = 263,["376"] = 269,["377"] = 270,["378"] = 271,["379"] = 272,["380"] = 273,["381"] = 274,["382"] = 274,["383"] = 274,["384"] = 274,["385"] = 274,["387"] = 276,["388"] = 277,["390"] = 279,["391"] = 279,["392"] = 279,["393"] = 280,["396"] = 283,["397"] = 279,["398"] = 279,["399"] = 285,["400"] = 285,["401"] = 285,["402"] = 286,["405"] = 289,["406"] = 285,["407"] = 285,["408"] = 291,["409"] = 291,["410"] = 291,["411"] = 292,["414"] = 295,["415"] = 291,["416"] = 291,["417"] = 297,["418"] = 297,["419"] = 297,["420"] = 298,["423"] = 301,["424"] = 297,["425"] = 297,["426"] = 303,["427"] = 303,["428"] = 303,["429"] = 304,["432"] = 307,["433"] = 303,["434"] = 303,["435"] = 309,["436"] = 310,["437"] = 311,["438"] = 311,["439"] = 311,["440"] = 311,["441"] = 311,["443"] = 313,["444"] = 269,["445"] = 316,["446"] = 317,["447"] = 316,["448"] = 320,["449"] = 321,["450"] = 321,["451"] = 321,["452"] = 321,["453"] = 322,["456"] = 325,["457"] = 326,["458"] = 327,["461"] = 328,["464"] = 330,["465"] = 320,["466"] = 334,["467"] = 335,["468"] = 334,["469"] = 337,["470"] = 338,["471"] = 337,["472"] = 340,["473"] = 341,["474"] = 341,["475"] = 341,["476"] = 341,["477"] = 342,["480"] = 345,["481"] = 346,["482"] = 347,["483"] = 349,["484"] = 350,["485"] = 350,["486"] = 350,["487"] = 350,["488"] = 350,["489"] = 340,["490"] = 353,["491"] = 354,["492"] = 353,["493"] = 358,["494"] = 359,["495"] = 360,["496"] = 360,["497"] = 360,["499"] = 360,["501"] = 360,["502"] = 361,["503"] = 362,["504"] = 364,["506"] = 365,["507"] = 365,["508"] = 366,["509"] = 367,["510"] = 368,["511"] = 368,["512"] = 368,["513"] = 368,["514"] = 368,["515"] = 369,["516"] = 370,["517"] = 370,["518"] = 370,["519"] = 370,["520"] = 370,["521"] = 370,["522"] = 370,["523"] = 370,["524"] = 371,["525"] = 371,["527"] = 373,["528"] = 374,["532"] = 365,["536"] = 381,["538"] = 382,["539"] = 382,["540"] = 383,["541"] = 384,["542"] = 385,["543"] = 385,["544"] = 385,["545"] = 385,["546"] = 385,["547"] = 386,["548"] = 387,["549"] = 387,["550"] = 387,["551"] = 387,["552"] = 387,["553"] = 387,["554"] = 387,["555"] = 387,["556"] = 388,["557"] = 388,["559"] = 390,["560"] = 391,["564"] = 382,["568"] = 358,["569"] = 398,["570"] = 399,["571"] = 399,["572"] = 399,["573"] = 399,["574"] = 400,["577"] = 407,["578"] = 408,["579"] = 409,["580"] = 410,["581"] = 412,["582"] = 413,["583"] = 415,["584"] = 416,["585"] = 417,["586"] = 420,["587"] = 424,["588"] = 424,["589"] = 424,["590"] = 424,["592"] = 427,["594"] = 429,["595"] = 429,["596"] = 429,["597"] = 430,["598"] = 431,["599"] = 431,["600"] = 431,["601"] = 431,["602"] = 432,["604"] = 398,["605"] = 438,["606"] = 439,["607"] = 438,["608"] = 445,["609"] = 446,["611"] = 447,["612"] = 448,["613"] = 449,["615"] = 452,["616"] = 452,["617"] = 452,["618"] = 452,["619"] = 453,["620"] = 454,["621"] = 454,["622"] = 454,["623"] = 454,["624"] = 454,["625"] = 454,["626"] = 454,["631"] = 445,["632"] = 462,["633"] = 463,["635"] = 464,["636"] = 465,["637"] = 466,["639"] = 469,["640"] = 469,["641"] = 469,["642"] = 469,["643"] = 469,["644"] = 469,["645"] = 469,["646"] = 469,["647"] = 471,["648"] = 471,["649"] = 471,["650"] = 471,["651"] = 472,["652"] = 472,["653"] = 472,["654"] = 472,["655"] = 474,["656"] = 475,["657"] = 476,["658"] = 476,["659"] = 476,["660"] = 476,["661"] = 476,["662"] = 476,["663"] = 476,["664"] = 476,["665"] = 477,["666"] = 477,["667"] = 477,["668"] = 477,["669"] = 478,["670"] = 478,["671"] = 478,["672"] = 478,["677"] = 462,["678"] = 483,["679"] = 484,["681"] = 485,["682"] = 486,["683"] = 487,["685"] = 490,["686"] = 490,["687"] = 490,["688"] = 490,["689"] = 491,["690"] = 491,["691"] = 491,["692"] = 491,["693"] = 491,["697"] = 483,["698"] = 495,["699"] = 496,["700"] = 497,["701"] = 495,["702"] = 500,["703"] = 501,["704"] = 500,["705"] = 504,["706"] = 505,["707"] = 504,["708"] = 508,["709"] = 509,["710"] = 510,["711"] = 511,["713"] = 513,["714"] = 508,["715"] = 516,["716"] = 517,["717"] = 518,["718"] = 519,["719"] = 516,["720"] = 522,["721"] = 523,["722"] = 524,["723"] = 525,["725"] = 527,["727"] = 522,["728"] = 531,["729"] = 532,["730"] = 533,["731"] = 534,["733"] = 531,["734"] = 538,["735"] = 538,["736"] = 549,["737"] = 550,["738"] = 549,["739"] = 553,["740"] = 554,["741"] = 555,["742"] = 556,["743"] = 557,["745"] = 559,["746"] = 560,["747"] = 561,["749"] = 564,["750"] = 564,["751"] = 564,["752"] = 564,["753"] = 564,["754"] = 566,["756"] = 553,["757"] = 570,["758"] = 571,["759"] = 572,["760"] = 573,["761"] = 574,["763"] = 574,["767"] = 570,["768"] = 579,["769"] = 581,["770"] = 581,["771"] = 581,["772"] = 582,["774"] = 583,["775"] = 585,["776"] = 586,["777"] = 587,["779"] = 587,["781"] = 588,["783"] = 590,["784"] = 591,["785"] = 592,["787"] = 594,["788"] = 595,["789"] = 596,["791"] = 599,["792"] = 600,["794"] = 600,["800"] = 581,["801"] = 581,["802"] = 579,["803"] = 606,["804"] = 607,["805"] = 608,["806"] = 609,["807"] = 610,["808"] = 612,["809"] = 613,["810"] = 615,["811"] = 616,["813"] = 618,["814"] = 618,["815"] = 619,["817"] = 620,["819"] = 621,["820"] = 621,["821"] = 621,["822"] = 621,["823"] = 622,["824"] = 623,["825"] = 624,["827"] = 626,["828"] = 627,["829"] = 627,["830"] = 627,["831"] = 627,["832"] = 627,["833"] = 628,["834"] = 629,["835"] = 630,["838"] = 620,["841"] = 632,["842"] = 633,["843"] = 633,["844"] = 633,["845"] = 633,["846"] = 633,["847"] = 634,["849"] = 618,["852"] = 606,["853"] = 642,["854"] = 643,["855"] = 644,["856"] = 645,["858"] = 648,["859"] = 649,["860"] = 650,["861"] = 651,["862"] = 653,["863"] = 654,["864"] = 642,["865"] = 658,["866"] = 659,["867"] = 660,["868"] = 661,["869"] = 662,["870"] = 664,["872"] = 666,["873"] = 667,["874"] = 669,["876"] = 658,["877"] = 673,["878"] = 674,["879"] = 673,["880"] = 677,["881"] = 678,["882"] = 679,["883"] = 681,["884"] = 682,["885"] = 683,["886"] = 684,["887"] = 684,["888"] = 684,["889"] = 684,["890"] = 685,["891"] = 687,["892"] = 687,["893"] = 687,["894"] = 689,["895"] = 677,["896"] = 692,["897"] = 693,["898"] = 694,["899"] = 695,["900"] = 697,["901"] = 698,["902"] = 700,["903"] = 701,["905"] = 702,["906"] = 702,["907"] = 703,["908"] = 704,["909"] = 705,["911"] = 702,["914"] = 692,["915"] = 711,["916"] = 712,["917"] = 713,["918"] = 714,["919"] = 716,["920"] = 717,["921"] = 719,["922"] = 720,["924"] = 721,["925"] = 721,["926"] = 722,["927"] = 723,["928"] = 724,["930"] = 721,["933"] = 711,["934"] = 731,["935"] = 733,["936"] = 734,["937"] = 735,["938"] = 737,["939"] = 738,["940"] = 739,["941"] = 740,["942"] = 741,["944"] = 743,["945"] = 744,["946"] = 745,["948"] = 733,["949"] = 749,["950"] = 750,["951"] = 751,["952"] = 753,["954"] = 754,["955"] = 755,["956"] = 756,["958"] = 759,["959"] = 760,["960"] = 761,["961"] = 762,["968"] = 769,["969"] = 769,["970"] = 769,["971"] = 770,["973"] = 771,["974"] = 772,["975"] = 773,["977"] = 776,["978"] = 777,["979"] = 778,["980"] = 779,["985"] = 769,["986"] = 769,["987"] = 731,["988"] = 787,["989"] = 788,["990"] = 789,["992"] = 791,["994"] = 793,["995"] = 787,["996"] = 796,["997"] = 797,["998"] = 796,["999"] = 800,["1000"] = 801,["1001"] = 802,["1002"] = 800,["1003"] = 805,["1004"] = 806,["1005"] = 807,["1006"] = 809,["1007"] = 810,["1008"] = 811,["1009"] = 812,["1010"] = 813,["1011"] = 805,["1012"] = 816,["1013"] = 817,["1014"] = 818,["1015"] = 820,["1016"] = 821,["1017"] = 816,["1018"] = 824,["1019"] = 825,["1020"] = 826,["1021"] = 827,["1022"] = 827,["1023"] = 827,["1024"] = 827,["1025"] = 824,["1026"] = 830,["1027"] = 831,["1028"] = 832,["1029"] = 834,["1030"] = 835,["1031"] = 830,["1032"] = 838,["1033"] = 839,["1034"] = 840,["1035"] = 842,["1036"] = 843,["1037"] = 838,["1038"] = 846,["1039"] = 847,["1040"] = 848,["1041"] = 850,["1042"] = 851,["1043"] = 853,["1044"] = 853,["1045"] = 853,["1046"] = 853,["1047"] = 853,["1048"] = 853,["1049"] = 853,["1050"] = 853,["1051"] = 846,["1052"] = 856,["1053"] = 857,["1054"] = 858,["1055"] = 860,["1058"] = 864,["1059"] = 865,["1060"] = 866,["1061"] = 868,["1062"] = 856,["1063"] = 871,["1064"] = 872,["1065"] = 871,["1066"] = 875,["1067"] = 877,["1068"] = 878,["1069"] = 880,["1070"] = 881,["1071"] = 882,["1072"] = 882,["1073"] = 882,["1074"] = 882,["1075"] = 886,["1077"] = 888,["1078"] = 875,["1079"] = 892,["1080"] = 893,["1081"] = 892,["1082"] = 896,["1083"] = 897,["1084"] = 897,["1085"] = 897,["1086"] = 898,["1087"] = 898,["1088"] = 898,["1089"] = 898,["1090"] = 898,["1091"] = 898,["1092"] = 899,["1093"] = 899,["1094"] = 899,["1095"] = 900,["1096"] = 899,["1097"] = 899,["1098"] = 897,["1099"] = 897,["1100"] = 896,["1101"] = 905,["1102"] = 906,["1103"] = 907,["1104"] = 908,["1107"] = 911,["1108"] = 912,["1111"] = 905,["1112"] = 918,["1113"] = 918,["1114"] = 918,["1115"] = 918,["1116"] = 918,["1117"] = 918,["1118"] = 918,["1119"] = 918,["1120"] = 918,["1121"] = 918,["1122"] = 918,["1123"] = 918,["1124"] = 918,["1125"] = 918,["1126"] = 918,["1127"] = 918,["1128"] = 918,["1129"] = 918,["1130"] = 918,["1131"] = 918,["1132"] = 918,["1133"] = 918,["1134"] = 918,["1135"] = 918,["1136"] = 918,["1137"] = 944,["1138"] = 945,["1139"] = 946,["1140"] = 947,["1141"] = 947,["1142"] = 947,["1143"] = 948,["1144"] = 949,["1147"] = 953,["1148"] = 954,["1149"] = 955,["1150"] = 957,["1151"] = 958,["1152"] = 959,["1154"] = 961,["1156"] = 965,["1158"] = 966,["1160"] = 947,["1161"] = 947});
local ____exports = {}
local stateMap
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local battleGround2player = ____PlayerUtils.battleGround2player
local playerIdList = ____PlayerUtils.playerIdList
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____DebugData = include("logic.models.DebugData")
local DebugData = ____DebugData.DebugData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____BlessController = include("logic.controllers.BlessController")
local blessController = ____BlessController.blessController
local ____Status = include("logic.models.Status")
local StateList = ____Status.StateList
local _____65E0_654C = ____Status["无敌"]
local _____65E0_6CD5_63A7_5236 = ____Status["无法控制"]
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____Property = include("logic.models.Property")
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local _____653B_51FB = ____Property["攻击"]
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigList = ____EffectConfig.effectConfigList
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____KingController = include("logic.controllers.KingController")
local kingController = ____KingController.kingController
local ____FowController = include("logic.controllers.ui.FowController")
local fowController = ____FowController.fowController
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____GenreAutoController = include("logic.controllers.GenreAutoController")
local genreAutoController = ____GenreAutoController.genreAutoController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____PlayerBehaveTreeBase = include("logic.ai.PlayerBehaveTreeBase")
local PlayerBehaveTreeBase = ____PlayerBehaveTreeBase.PlayerBehaveTreeBase
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroExpConfig = include("logic.configs.HeroExpConfig")
local heroExpConfigList = ____HeroExpConfig.heroExpConfigList
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap_mercenaryId = ____SkinMercenaryConfig.skinMercenaryConfigMap_mercenaryId
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap_hero = ____SkinConfig.skinConfigMap_hero
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigList = ____PetEffectConfig.petEffectConfigList
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigList = ____PetEmoConfig.petEmoConfigList
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigList = ____PetHaloConfig.petHaloConfigList
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigList = ____PetConfig.petConfigList
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigList = ____PetWingConfig.petWingConfigList
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____BigBlessConfig = include("logic.configs.BigBlessConfig")
local bigBlessConfigMap = ____BigBlessConfig.bigBlessConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DSingleMode = include("logic.dialogs.menu.DSingleMode")
local DSingleMode = ____DSingleMode.DSingleMode
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local originRandom = math.random
local profiler = nil
--- !kill playerId/a/b 杀死某个单位
-- !genre playerId id num 添加流派卡
-- !skip 跳过倒计时
-- !gold playerId 添加金币
-- !bless playerId blessId 添加祝福
-- !aa 左边国王损失一条生命
-- !bb 右边国王损失一条生命
-- !e playerId effectId count 添加效果
-- !effect playerId 添加全部效果
-- !effect playerId effectId 添加效果
-- !wd 0/1 开启关闭无敌
-- !lj 所有英雄单位变垃圾
-- !report 开启战报
-- !ai 开启AI日志
-- !scale 1/2 修改速度缩放
-- !level 设置当前是第几关，结束后将自动进入下一关
-- !random 0.1 设置随机数，不传参可还原
-- !tag playerId tagType num 购买指定数量的tag卡片，按正式概率走
-- !p call|time 开启性能分析，再次调用将关闭
____exports.DebugController = __TS__Class()
local DebugController = ____exports.DebugController
DebugController.name = "DebugController"
function DebugController.prototype.____constructor(self)
    self.effectEntitys = {}
    self.randomAddStateTimer = nil
    self.isPause = false
end
function DebugController.prototype.init(self)
    local ____debug = writeableDatas.global:getOrCreateSingle(DebugData)
    ____debug.ai_enable = "none"
    ____debug.kof_enable = false
    ____debug.control_hero_enable = false
    ____debug.res_enable = false
end
function DebugController.prototype.ai_status(self, ____type)
    local ____debug = writeableDatas.global:getOrCreateSingle(DebugData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    ____debug.ai_enable = ____type
    console:log("筛选AI--", ____debug.ai_enable)
    while #playerIdList > 0 do
        table.remove(playerIdList, 1)
    end
    if ____debug.ai_enable == "none" then
        playerIdList[#playerIdList + 1] = 1
        playerIdList[#playerIdList + 1] = 2
        playerIdList[#playerIdList + 1] = 3
        playerIdList[#playerIdList + 1] = 4
        playerIdList[#playerIdList + 1] = 5
        playerIdList[#playerIdList + 1] = 6
        playerIdList[#playerIdList + 1] = 7
        playerIdList[#playerIdList + 1] = 8
        gameData.teamLeft = {1, 2, 3, 4}
        gameData.teamRight = {5, 6, 7, 8}
        return
    end
    if ____type == "1v1" then
        gameData.teamLeft = {1}
        gameData.teamRight = {5}
        __TS__ArrayPush(playerIdList, 1, 5)
    elseif ____type == "1v2" then
        gameData.teamLeft = {1}
        gameData.teamRight = {5, 6}
        __TS__ArrayPush(playerIdList, 1, 5, 6)
    elseif ____type == "1v3" then
        gameData.teamLeft = {1}
        gameData.teamRight = {5, 6, 7}
        __TS__ArrayPush(
            playerIdList,
            1,
            5,
            6,
            7
        )
    elseif ____type == "2v2" then
        gameData.teamLeft = {1, 2}
        gameData.teamRight = {5, 6}
        __TS__ArrayPush(
            playerIdList,
            1,
            2,
            5,
            6
        )
    elseif ____type == "2v3" then
        gameData.teamLeft = {1, 2}
        gameData.teamRight = {5, 6, 7}
        __TS__ArrayPush(
            playerIdList,
            1,
            2,
            5,
            6,
            7
        )
    elseif ____type == "3v3" then
        gameData.teamLeft = {1, 2, 3}
        gameData.teamRight = {5, 6, 7}
        __TS__ArrayPush(
            playerIdList,
            1,
            2,
            3,
            5,
            6,
            7
        )
    elseif ____type == "3v2" then
        gameData.teamLeft = {1, 2, 3}
        gameData.teamRight = {5, 6}
        __TS__ArrayPush(
            playerIdList,
            1,
            2,
            3,
            5,
            6
        )
    elseif ____type == "3v1" then
        gameData.teamLeft = {1, 2, 3}
        gameData.teamRight = {5}
        __TS__ArrayPush(
            playerIdList,
            1,
            2,
            3,
            5
        )
    elseif ____type == "2v1" then
        gameData.teamLeft = {1, 2}
        gameData.teamRight = {5}
        __TS__ArrayPush(playerIdList, 1, 2, 5)
    end
    gameData.isInitTeam = true
end
function DebugController.prototype.kof_status(self)
    local ____debug = writeableDatas.global:getOrCreateSingle(DebugData)
    ____debug.kof_enable = not ____debug.kof_enable
end
function DebugController.prototype.control_hero_status(self)
    local ____debug = writeableDatas.global:getOrCreateSingle(DebugData)
    ____debug.control_hero_enable = not ____debug.control_hero_enable
end
function DebugController.prototype.res_status(self)
    local ____debug = writeableDatas.global:getOrCreateSingle(DebugData)
    ____debug.res_enable = not ____debug.res_enable
    for ____, playerId in ipairs(playerIdList) do
        local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        if ____debug.res_enable then
            player.gold = 999999
            player.wood = 999999
        else
            player.gold = defaultConfig.gold
            player.wood = defaultConfig.wood
        end
    end
end
function DebugController.prototype.kill(self, args, playerId2)
    local n = string.lower(__TS__StringTrim(args))
    if n == "a" or n == "b" then
        local leftKings = writeableDatas.players[PlayerId.LEFT_KING]:getAll(UnitData)
        local rightKings = writeableDatas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
        local kings = n == "a" and leftKings or rightKings
        if kings ~= nil and #kings > 0 then
            do
                local index = 0
                while index < #kings do
                    local king = kings[index + 1]
                    if king.type == UnitType.KING and king.entity:isAlive() then
                        king:getWritableEntity():kill(king:getWritableEntity())
                        break
                    end
                    index = index + 1
                end
            end
        end
    else
        local id = __TS__ParseInt(args)
        local player = writeableDatas.players[id]:getOrCreateSingle(UnitData)
        player:getWritableEntity():kill(player:getWritableEntity())
    end
end
function DebugController.prototype.g(self, args, playerId)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        return
    end
    local genre = __TS__ParseInt(list[1])
    local num = __TS__ParseInt(list[2])
    do
        local index = 0
        while index < num do
            genreController:getGenreByBless(playerId, 0, genre)
            index = index + 1
        end
    end
end
function DebugController.prototype.genre(self, args, playerId2)
    console:log(args)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        return
    end
    local playerId = __TS__ParseInt(list[1])
    local id = __TS__ParseInt(list[2])
    local num = __TS__ParseInt(list[3] or "1")
    if not id then
        return
    end
    if not num or __TS__NumberIsNaN(__TS__Number(num)) then
        num = 1
    end
    if self:isGenre(id) then
        do
            local index = 0
            while index < num do
                genreController:debugAdd(playerId, id)
                index = index + 1
            end
        end
    end
end
function DebugController.prototype.nextLevel(self, args, playerId)
    local game = writeableDatas.global:getOrCreateSingle(GameData)
    game.level = game.level + 1
end
function DebugController.prototype.skip(self, args, playerId2)
    local game = writeableDatas.global:getOrCreateSingle(GameData)
    game.skipReady = true
    if game.gameStatus == GameStatus["准备回合"] and gameLoop.timeLeft.value > 4 then
        gameLoop.timeLeft.value = 4
    end
end
function DebugController.prototype.gold(self, args, playerId2)
    local id = __TS__ParseInt(args)
    local player = writeableDatas.players[id]:getOrCreateSingle(PlayerData)
    playerDataController:addGold(id, 7000)
    playerDataController:addWood(id, 7000)
end
function DebugController.prototype.wood(self, args, playerId2)
    local id = __TS__ParseInt(args)
    local player = writeableDatas.players[id]:getOrCreateSingle(PlayerData)
    playerDataController:addWood(id, 99999)
end
function DebugController.prototype.gd(self, args, playerId2)
    local id = __TS__ParseInt(args)
    playerDataController:addGold(id, 2000)
    playerDataController:addWood(id, 300)
end
function DebugController.prototype.all(self, args, playerId2)
    console:log("解锁所有存档英雄。。。。。。")
    for key in pairs(archive.playerInfo.data.heroes) do
        local element = archive.playerInfo.data.heroes[key]
        element.isHave = true
        local ____opt_0 = skinConfigMap_hero[__TS__ParseInt(key)]
        element.unlock_skin = ____opt_0 and __TS__ArrayMap(
            skinConfigMap_hero[__TS__ParseInt(key)],
            function(____, a) return a.id end
        ) or ({})
    end
    for key in pairs(archive.playerInfo.data.resource) do
        archive.playerInfo.data.resource[key] = 9999999
    end
    __TS__ArrayForEach(
        petEffectConfigList,
        function(____, v)
            if v.ban == 1 or steamUtils:isSteam() and v.steamBan then
                return
            end
            archive.petInfo.data.effects["" .. tostring(v.id)] = true
        end
    )
    __TS__ArrayForEach(
        petEmoConfigList,
        function(____, v)
            if v.ban == 1 then
                return
            end
            archive.petInfo.data.emojies["" .. tostring(v.id)] = true
        end
    )
    __TS__ArrayForEach(
        petHaloConfigList,
        function(____, v)
            if v.ban == 1 or steamUtils:isSteam() and v.steamBan then
                return
            end
            archive.petInfo.data.halos["" .. tostring(v.id)] = true
        end
    )
    __TS__ArrayForEach(
        petConfigList,
        function(____, v)
            if v.ban == 1 or steamUtils:isSteam() and v.steamBan then
                return
            end
            archive.petInfo.data.skins["" .. tostring(v.id)] = true
        end
    )
    __TS__ArrayForEach(
        petWingConfigList,
        function(____, v)
            if v.ban == 1 or steamUtils:isSteam() and v.steamBan then
                return
            end
            archive.petInfo.data.wings["" .. tostring(v.id)] = true
        end
    )
    for key in pairs(archive.mercenaryInfo.data.skins) do
        local element = archive.mercenaryInfo.data.skins[key]
        local ____opt_2 = skinMercenaryConfigMap_mercenaryId[__TS__ParseInt(key)]
        element.unlock_skin = ____opt_2 and __TS__ArrayMap(
            skinMercenaryConfigMap_mercenaryId[__TS__ParseInt(key)],
            function(____, a) return a.id end
        ) or ({})
    end
    archive:sync()
end
function DebugController.prototype.isGenre(self, id)
    return genreConfigMap[id] ~= nil
end
function DebugController.prototype.bless(self, args, playerId2)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        return
    end
    local playerId = __TS__ParseInt(list[1])
    local blessId = __TS__ParseInt(list[2])
    if playerId == nil then
        return
    end
    if blessId == nil then
        return
    end
    blessController:debueAddBless(playerId, blessId)
end
function DebugController.prototype.aa(self)
    kingController:loseALife(PlayerId.LEFT_KING)
end
function DebugController.prototype.bb(self, args, playerId)
    kingController:loseALife(PlayerId.RIGHT_KING)
end
function DebugController.prototype.e(self, args, playerId2)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        return
    end
    local playerId = __TS__ParseInt(list[1])
    local effectId = __TS__ParseInt(list[2])
    local count = list[3] ~= nil and __TS__ParseInt(list[3]) or 1
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    unitData:getWritableEntity():addEffect(
        unitData:getWritableEntity(),
        effectId,
        count
    )
end
function DebugController.prototype.t(self)
    genreAutoController:getGenreByMonster(2)
end
function DebugController.prototype.wd(self, args, playerId)
    local id = __TS__ParseInt(args)
    local ____temp_4
    if id == 1 then
        ____temp_4 = true
    else
        ____temp_4 = false
    end
    local state = ____temp_4
    local leftKings = writeableDatas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    local rightKings = writeableDatas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    if leftKings ~= nil and #leftKings > 0 then
        do
            local index = 0
            while index < #leftKings do
                local king = leftKings[index + 1]
                if king.type == UnitType.KING then
                    king:getWritableEntity():setBaseState(
                        king:getWritableEntity(),
                        _____65E0_654C,
                        state
                    )
                    if state then
                        local effEntity = king:getWritableEntity():applyTimeLimitProperties(
                            king:getWritableEntity(),
                            genEffectId(nil),
                            0,
                            2,
                            {_____653B_51FB, 999999},
                            {}
                        )
                        local ____self_effectEntitys_5 = self.effectEntitys
                        ____self_effectEntitys_5[#____self_effectEntitys_5 + 1] = effEntity
                    else
                        for ____, effEntity in ipairs(self.effectEntitys) do
                            effEntity:remove(king:getWritableEntity())
                        end
                    end
                end
                index = index + 1
            end
        end
    end
    if rightKings ~= nil and #rightKings > 0 then
        do
            local index = 0
            while index < #rightKings do
                local king = rightKings[index + 1]
                if king.type == UnitType.KING then
                    king:getWritableEntity():setBaseState(
                        king:getWritableEntity(),
                        _____65E0_654C,
                        state
                    )
                    if state then
                        local effEntity = king:getWritableEntity():applyTimeLimitProperties(
                            king:getWritableEntity(),
                            genEffectId(nil),
                            0,
                            2,
                            {_____653B_51FB, 999999},
                            {}
                        )
                        local ____self_effectEntitys_6 = self.effectEntitys
                        ____self_effectEntitys_6[#____self_effectEntitys_6 + 1] = effEntity
                    else
                        for ____, effEntity in ipairs(self.effectEntitys) do
                            effEntity:remove(king:getWritableEntity())
                        end
                    end
                end
                index = index + 1
            end
        end
    end
end
function DebugController.prototype.effect(self, args, playerId2)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 1 then
        return
    end
    local playerId = __TS__ParseInt(list[1])
    local effectId = __TS__ParseInt(list[2] or "-1")
    local start = __TS__ParseInt(list[3] or "10000")
    local ____end = __TS__ParseInt(list[4] or "10200")
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    if effectId == -1 then
        local idx = 0
        console:time("加载全部effect")
        for ____, e in ipairs(effectConfigList) do
            idx = idx + 1
            unitData:getWritableEntity():addEffect(
                unitData:getWritableEntity(),
                e.id
            )
        end
        console:timeEnd("加载全部effect")
    else
        local ____temp_9 = ("加载effect " .. tostring(effectId)) .. " "
        local ____opt_7 = effectConfigMap[effectId]
        local key = ____temp_9 .. (____opt_7 and ____opt_7.name)
        console:time(key)
        unitData:getWritableEntity():addEffect(
            unitData:getWritableEntity(),
            effectId
        )
        console:timeEnd(key)
    end
end
function DebugController.prototype.fow(self, args, playerId)
    fowController:hide_fog()
end
function DebugController.prototype.lj(self, args, playerId)
    for ____, playerId in ipairs(playerIdList) do
        do
            local unitData = datas.players[playerId]:getSingle(UnitData)
            if not unitData then
                goto __continue96
            end
            unitData:getWritableEntity():updateBaseProperties(
                unitData:getWritableEntity(),
                {1, 1}
            )
            if unitData.entity:f(Formula["展示面板_血量上限"]) > 100 then
                unitData:getWritableEntity():updateBaseProperties(
                    unitData:getWritableEntity(),
                    {
                        1,
                        -unitData.entity:f(Formula["展示面板_血量上限"])
                    }
                )
            end
        end
        ::__continue96::
    end
end
function DebugController.prototype.hp(self)
    for ____, playerId in ipairs(playerIdList) do
        do
            local unitData = datas.players[playerId]:getSingle(UnitData)
            if not unitData then
                goto __continue101
            end
            unitData:getWritableEntity():addTimeLimitProperties(
                unitData:getWritableEntity(),
                genEffectId(nil),
                0,
                {_____57FA_7840_8840_91CF_4E0A_9650, 1000000},
                {},
                {99}
            )
            unitData:getWritableEntity():addEffect(
                unitData:getWritableEntity(),
                17221
            )
            unitData:getWritableEntity():addEffect(
                unitData:getWritableEntity(),
                17151
            )
            local unitDataAll = datas.players[playerId]:getAll(UnitData)
            for ____, unitData in ipairs(unitDataAll) do
                unitData:getWritableEntity():addTimeLimitProperties(
                    unitData:getWritableEntity(),
                    genEffectId(nil),
                    0,
                    {_____57FA_7840_8840_91CF_4E0A_9650, 1000000},
                    {},
                    {99}
                )
                unitData:getWritableEntity():addEffect(
                    unitData:getWritableEntity(),
                    17221
                )
                unitData:getWritableEntity():addEffect(
                    unitData:getWritableEntity(),
                    17151
                )
            end
        end
        ::__continue101::
    end
end
function DebugController.prototype.nb(self, args, playerId)
    for ____, playerId in ipairs(playerIdList) do
        do
            local unitData = datas.players[playerId]:getSingle(UnitData)
            if not unitData then
                goto __continue107
            end
            unitData:getWritableEntity():updateBaseProperties(
                unitData:getWritableEntity(),
                {1, 9000000000, 2, 1}
            )
            unitData:getWritableEntity():cure(
                unitData:getWritableEntity(),
                1,
                9000000000
            )
        end
        ::__continue107::
    end
end
function DebugController.prototype.exit(self, args, playerId)
    local role = GameAPI.get_client_role()
    GameAPI.exit_game(role)
end
function DebugController.prototype.report(self, args, playerId)
    fight.report.enabled = true
end
function DebugController.prototype.ai(self, args, playerId)
    PlayerBehaveTreeBase.logEnabled = true
end
function DebugController.prototype.scale(self, args, playerId)
    local scale = __TS__ParseInt(args)
    if scale ~= scale or scale <= 0 then
        scale = 1
    end
    GameAPI.api_set_time_scale(scale)
end
function DebugController.prototype.level(self, args)
    local level = __TS__ParseInt(args)
    local data = writeableDatas.global:getOrCreateSingle(GameData)
    data.level = level
end
function DebugController.prototype.fog(self, args)
    local fog = __TS__ParseInt(args)
    if fog == 1 then
        fowController:show_fog()
    else
        fowController:hide_fog()
    end
end
function DebugController.prototype.ctrl(self)
    for k in pairs(fight.allUnitMap) do
        local unit = fight.allUnitMap[k]
        unit:setBaseState(unit, _____65E0_6CD5_63A7_5236, false)
    end
end
function DebugController.prototype.move(self)
end
function DebugController.prototype.crazy(self)
    gameController:crazy()
end
function DebugController.prototype.random(self, args, playerId)
    local random = __TS__StringTrim(args)
    if random == "" then
        math.random = originRandom
        y3.ui.display_message(y3.player.LOCAL_PLAYER, "随机数已还原", 30)
    else
        local v = __TS__ParseFloat(random)
        if v ~= v then
            v = 0
        end
        y3.ui.display_message(
            y3.player.LOCAL_PLAYER,
            "随机数已固定为" .. tostring(v),
            30
        )
        math.random = function() return v end
    end
end
function DebugController.prototype.stop(self)
    for k in pairs(fight.allUnitMap) do
        local unit = fight.allUnitMap[k]
        if unit and unit:isAlive() then
            local ____opt_12 = unit.y3Unit
            if ____opt_12 ~= nil then
                ____opt_12:stop()
            end
        end
    end
end
function DebugController.prototype.loopStop(self)
    y3.ltimer.loop(
        1,
        function()
            for k in pairs(fight.allUnitMap) do
                do
                    local unit = fight.allUnitMap[k]
                    local unitData = unit and unit.customData
                    if unitData == nil then
                        local ____opt_16 = unit and unit.y3Unit
                        if ____opt_16 ~= nil then
                            ____opt_16:stop()
                        end
                        goto __continue135
                    end
                    local playerId = battleGround2player[unitData.battleGroundId]
                    if playerId == nil then
                        goto __continue135
                    end
                    local playerData = datas.players[playerId]:getSingle(PlayerData)
                    if playerData ~= nil and not playerData.gotoAlertArea then
                        goto __continue135
                    end
                    if unit and unit:isAlive() then
                        local ____opt_22 = unit.y3Unit
                        if ____opt_22 ~= nil then
                            ____opt_22:stop()
                        end
                    end
                end
                ::__continue135::
            end
        end
    )
end
function DebugController.prototype.tag(self, args, pid)
    local argList = __TS__StringSplit(args, " ")
    local playerId = __TS__ParseInt(argList[1])
    local tagId = __TS__ParseInt(argList[2])
    local num = __TS__ParseInt(argList[3] or "1")
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    player.gold = 90000000000
    player.wood = 90000000000
    do
        local i = 0
        while i < num do
            local t = 0
            do
                while t < 20 do
                    do
                        local genreIndex = __TS__ArrayFindIndex(
                            playerGenre.canSelGenre,
                            function(____, a) return __TS__ArrayIndexOf(a.genre.genre, tagId) ~= -1 end
                        )
                        if genreIndex == -1 then
                            genreController:refreshGenreList(playerId)
                            goto __continue143
                        end
                        local genre = playerGenre.canSelGenre[genreIndex + 1]
                        y3.ui.display_message(
                            y3.player.get_by_id(pid),
                            (("玩家" .. tostring(playerId)) .. " 选择流派卡 ") .. tostring(genre.genre.name),
                            30
                        )
                        console:log((("玩家" .. tostring(playerId)) .. " 选择流派卡 ") .. tostring(genre.genre.name))
                        genreController:chooseGenre(playerId, genreIndex)
                        genreController:refreshGenreList(playerId)
                    end
                    ::__continue143::
                    t = t + 1
                end
            end
            if t >= 20 then
                y3.ui.display_message(
                    y3.player.get_by_id(pid),
                    ("无法刷新到tag=" .. tostring(tagId)) .. "的流派卡",
                    30
                )
                console:log(("无法刷新到tag=" .. tostring(tagId)) .. "的流派卡")
            end
            i = i + 1
        end
    end
end
function DebugController.prototype.dump(self)
    for ____, playerId in ipairs(playerIdList) do
        local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        console:log(fight.report:_dumpUnit(unitData:getWritableEntity()))
    end
    local leftTowerList = datas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    local leftKing = leftTowerList[#leftTowerList]
    local rightTowerList = datas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    local rightKing = rightTowerList[#rightTowerList]
    console:log(fight.report:_dumpUnit(leftKing:getWritableEntity()))
    console:log(fight.report:_dumpUnit(rightKing:getWritableEntity()))
end
function DebugController.prototype.p(self, args)
    if profiler ~= nil then
        profiler:stop()
        profiler:dump_report_to_file("profiler.log")
        profiler = nil
        y3.ui.display_message(y3.player.LOCAL_PLAYER, "结束profiler分析，请查看 profiler.log", 30)
    else
        profiler = newProfiler("call")
        profiler:start()
        y3.ui.display_message(y3.player.LOCAL_PLAYER, "开启profiler分析", 30)
    end
end
function DebugController.prototype.show(self)
    writeableDatas.global:getOrCreateSingle(DebugData).show_all_player = true
end
function DebugController.prototype.addExp(self, args)
    local argList = __TS__StringSplit(args, " ")
    local playerId = __TS__ParseInt(argList[1])
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local data = archive.playerInfo:getHeroInfo(playerData.hero.id)
    data.exp = data.exp + 3000
    local cfg = __TS__ArrayFind(
        heroExpConfigList,
        function(____, a) return a.score > data.exp end
    )
    data.lv = cfg.id - 1
    local ____console_log_26 = console.log
    local ____opt_24 = playerData.hero
    ____console_log_26(console, "英雄熟练度等级", ____opt_24 and ____opt_24.id, data.lv)
    archive:sync()
end
function DebugController.prototype.addState(self, args)
    local argList = __TS__StringSplit(args, " ")
    local playerId = __TS__ParseInt(argList[1])
    local stateId = __TS__ParseInt(argList[2])
    local unitEntity = writeableDatas.players[playerId]:getOrCreateSingle(UnitData):getWritableEntity()
    local key = unitEntity:addTemporaryState(unitEntity, stateId)
    console:log((((("向" .. unitEntity.y3Unit:get_name()) .. "添加非Y3状态") .. tostring(stateId)) .. ", key:") .. tostring(key))
    local k = 1
    do
        local i = 0
        while i < 23 do
            k = k << 1
            if unitEntity.y3Unit:has_state(k) then
                console:log((((unitEntity.y3Unit:get_name() .. " 持有y3状态 ") .. tostring(k)) .. ",") .. stateMap[k])
            end
            i = i + 1
        end
    end
end
function DebugController.prototype.removeState(self, args)
    local argList = __TS__StringSplit(args, " ")
    local playerId = __TS__ParseInt(argList[1])
    local key = __TS__ParseInt(argList[2])
    local unitEntity = writeableDatas.players[playerId]:getOrCreateSingle(UnitData):getWritableEntity()
    unitEntity:removeTemporaryState(unitEntity, key)
    console:log((("从" .. unitEntity.y3Unit:get_name()) .. "移除非Y3状态,key:") .. tostring(key))
    local k = 1
    do
        local i = 0
        while i < 23 do
            k = k << 1
            if unitEntity.y3Unit:has_state(k) then
                console:log((((unitEntity.y3Unit:get_name() .. " 持有y3状态 ") .. tostring(k)) .. ",") .. stateMap[k])
            end
            i = i + 1
        end
    end
end
function DebugController.prototype.randomAddState(self)
    local function attack(____, unitData, add)
        local randoms = random:randomList(StateList)
        local key = randoms and randoms.key
        local data = unitData:getWritableEntity()
        local oldKey = data:getValue(-99999)
        if oldKey ~= nil and oldKey ~= 0 then
            data:removeTemporaryState(data, oldKey)
            data:setValue(-99999, 0)
        end
        if key ~= nil and add then
            local id = data:addTemporaryState(data, key)
            data:setValue(-99999, id)
        end
    end
    if self.randomAddStateTimer ~= nil then
        self.randomAddStateTimer:remove()
        self.randomAddStateTimer = nil
        for ____, playerId in ipairs(playerIdList) do
            do
                local unitData = datas.players[playerId]:getSingle(UnitData)
                if not unitData then
                    goto __continue167
                end
                attack(nil, unitData, false)
                local unitDataAll = datas.players[playerId]:getAll(UnitData)
                for ____, unitData in ipairs(unitDataAll) do
                    attack(nil, unitData, false)
                end
            end
            ::__continue167::
        end
        return
    end
    self.randomAddStateTimer = y3.timer.loop(
        0.2,
        function()
            for ____, playerId in ipairs(playerIdList) do
                do
                    local unitData = datas.players[playerId]:getSingle(UnitData)
                    if not unitData then
                        goto __continue173
                    end
                    attack(nil, unitData, true)
                    local unitDataAll = datas.players[playerId]:getAll(UnitData)
                    for ____, unitData in ipairs(unitDataAll) do
                        attack(nil, unitData, true)
                    end
                end
                ::__continue173::
            end
        end
    )
end
function DebugController.prototype.pause(self)
    if self.isPause then
        y3.game.resume_soft_pause()
    else
        y3.game.enable_soft_pause()
    end
    self.isPause = not self.isPause
end
function DebugController.prototype.offline(self)
    playerController.offline:execute(LOCAL.PLAYER_ID)
end
function DebugController.prototype.clearGold(self)
    local player = writeableDatas.players[LOCAL.PLAYER_ID]:getOrCreateSingle(PlayerData)
    player.gold = -999999
end
function DebugController.prototype.score(self, args)
    local argList = __TS__StringSplit(args, " ")
    local score = __TS__ParseInt(argList[1])
    archive.statData.seasonSateInfo.score = score
    archive.statData.seasonSateInfo.max_score = score
    archive.statData.highestSeasonScore = score
    archive.statData.highestSeasonScoreInSeason["" .. tostring(archive.statData.seasonSateInfo.seasonIndex)] = score
    archive:sync()
end
function DebugController.prototype.dscore(self, args)
    local argList = __TS__StringSplit(args, " ")
    local debtScore = __TS__ParseInt(argList[1])
    archive.statData.seasonSateInfo.debtScore = debtScore
    archive:sync()
end
function DebugController.prototype.volume(self, args)
    local argList = __TS__StringSplit(args, " ")
    local volume = __TS__ParseInt(argList[1])
    y3.sound:set_volume(
        y3.player.get_local(),
        volume
    )
end
function DebugController.prototype.multi(self, args)
    local argList = __TS__StringSplit(args, " ")
    local count = __TS__ParseInt(argList[1])
    archive.statData.seasonSateInfo.multi_complete_count = count
    archive:sync()
end
function DebugController.prototype.single(self, args)
    local argList = __TS__StringSplit(args, " ")
    local count = __TS__ParseInt(argList[1])
    archive.statData.seasonSateInfo.single_complete_count = count
    archive:sync()
end
function DebugController.prototype.big(self, args)
    local argList = __TS__StringSplit(args, " ")
    local id = __TS__ParseInt(argList[1])
    local bigBless = writeableDatas.global:getOrCreateSingle(BigBlessData)
    bigBless.bigBless = bigBlessConfigMap[id]
    local ____DTips_32 = DTips
    local ____DTips_show_33 = DTips.show
    local ____tostring_31 = tostring
    local ____opt_29 = bigBless.bigBless
    ____DTips_show_33(
        ____DTips_32,
        "大祝福以修改为" .. ____tostring_31(____opt_29 and ____opt_29.name)
    )
end
function DebugController.prototype.task(self, args)
    local argList = __TS__StringSplit(args, " ")
    local id = __TS__ParseInt(argList[1])
    if archive.statData.newbieTaskInfo == nil then
        return
    end
    archive.statData.newbieTaskInfo.taskId = id
    archive.statData.newbieTaskInfo.count = 0
    archive.statData.newbieTaskInfo.completed = false
    archive:sync()
end
function DebugController.prototype.showDSingleMode(self)
    dialogs:show(DSingleMode, {})
end
function DebugController.prototype.passLevel(self, args)
    local argList = __TS__StringSplit(args, " ")
    local id = __TS__ParseInt(argList[1])
    local data = archive.playerData.singleModePassLevel["" .. tostring(id)]
    if data == nil then
        data = {
            passTimes = 0,
            firstPassTime = Date:now()
        }
        archive.playerData.singleModePassLevel["" .. tostring(id)] = data
    end
    data.passTimes = data.passTimes + 1
end
function DebugController.prototype.chat(self, args)
    bob:sendChat(args)
end
function DebugController.prototype.invite(self, args)
    y3.steam.request_aid_by_nickname(
        __TS__StringTrim(args),
        function(aid, error_code)
            print(
                "request_aid_by_nickname",
                __TS__StringTrim(args),
                aid,
                error_code
            )
            y3.steam.request_invite_join_team(
                aid or 0,
                function(s)
                    print("request_invite_join_team", s)
                end
            )
        end
    )
end
function DebugController.prototype.ui(self, args)
    if __TS__StringTrim(args) == "show" then
        for ____, d in ipairs(dialogs:getAll()) do
            d.ui:set_alpha(255)
        end
    else
        for ____, d in ipairs(dialogs:getAll()) do
            d.ui:set_alpha(0)
        end
    end
end
stateMap = {
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
____exports.debugController = make(nil, ____exports.DebugController)
local inFightRoom = os ~= nil and os.getenv ~= nil and os.getenv("IN_FIGHTROOM") == "1"
if debugEnv.enabled and not inFightRoom then
    y3.game:event(
        "玩家-发送消息",
        function(tr, data)
            local command = data.str1
            if not __TS__StringStartsWith(command, "!") then
                return
            end
            local firstSpaceIndex = (string.find(command, " ", nil, true) or 0) - 1
            local cmd = ""
            local args = ""
            if firstSpaceIndex ~= -1 then
                cmd = __TS__StringSlice(command, 1, firstSpaceIndex)
                args = __TS__StringSlice(command, firstSpaceIndex + 1)
            else
                cmd = __TS__StringSlice(command, 1, #command)
            end
            if ____exports.debugController[cmd] ~= nil then
                local ____self_34 = ____exports.debugController
                ____self_34[cmd](____self_34, args, data.player.id)
            end
        end
    )
end
return ____exports
