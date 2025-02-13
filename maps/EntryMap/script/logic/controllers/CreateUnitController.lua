local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFlat = ____lualib.__TS__ArrayFlat
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__Generator = ____lualib.__TS__Generator
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["16"] = 1,["17"] = 1,["18"] = 2,["19"] = 2,["20"] = 2,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 14,["40"] = 14,["41"] = 15,["42"] = 15,["43"] = 16,["44"] = 16,["45"] = 17,["46"] = 17,["47"] = 17,["48"] = 18,["49"] = 18,["50"] = 19,["51"] = 19,["52"] = 20,["53"] = 20,["54"] = 22,["55"] = 22,["56"] = 24,["57"] = 24,["58"] = 25,["59"] = 25,["60"] = 26,["61"] = 26,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 29,["69"] = 29,["70"] = 30,["71"] = 30,["72"] = 31,["73"] = 31,["74"] = 32,["75"] = 32,["76"] = 33,["77"] = 33,["78"] = 33,["79"] = 33,["80"] = 33,["81"] = 33,["82"] = 33,["83"] = 33,["84"] = 33,["85"] = 33,["86"] = 34,["87"] = 34,["88"] = 34,["89"] = 35,["90"] = 35,["91"] = 35,["92"] = 35,["93"] = 36,["94"] = 36,["95"] = 37,["96"] = 37,["97"] = 38,["98"] = 38,["99"] = 39,["100"] = 39,["101"] = 40,["102"] = 40,["103"] = 41,["104"] = 41,["105"] = 42,["106"] = 42,["107"] = 43,["108"] = 43,["109"] = 44,["110"] = 44,["111"] = 44,["112"] = 44,["113"] = 44,["114"] = 44,["115"] = 45,["116"] = 45,["117"] = 46,["118"] = 46,["119"] = 47,["120"] = 47,["121"] = 48,["122"] = 48,["123"] = 49,["124"] = 49,["125"] = 54,["126"] = 55,["127"] = 57,["128"] = 57,["129"] = 57,["131"] = 1449,["132"] = 1450,["133"] = 1451,["134"] = 57,["135"] = 59,["136"] = 65,["137"] = 67,["138"] = 69,["139"] = 70,["140"] = 71,["141"] = 72,["142"] = 74,["143"] = 75,["144"] = 75,["146"] = 76,["148"] = 59,["149"] = 80,["150"] = 81,["151"] = 84,["154"] = 86,["155"] = 88,["156"] = 90,["157"] = 91,["158"] = 92,["159"] = 93,["160"] = 94,["162"] = 97,["163"] = 98,["164"] = 100,["165"] = 100,["166"] = 100,["167"] = 101,["168"] = 102,["170"] = 102,["173"] = 104,["175"] = 104,["178"] = 100,["179"] = 100,["180"] = 100,["182"] = 109,["183"] = 110,["184"] = 111,["185"] = 112,["186"] = 114,["187"] = 115,["188"] = 118,["190"] = 119,["191"] = 119,["192"] = 120,["193"] = 121,["194"] = 122,["195"] = 119,["199"] = 126,["200"] = 127,["201"] = 127,["202"] = 127,["203"] = 127,["204"] = 127,["205"] = 127,["206"] = 127,["207"] = 127,["208"] = 127,["210"] = 130,["211"] = 132,["212"] = 133,["213"] = 134,["214"] = 135,["216"] = 136,["217"] = 137,["218"] = 138,["220"] = 139,["221"] = 140,["222"] = 141,["224"] = 142,["225"] = 143,["226"] = 144,["227"] = 80,["228"] = 147,["229"] = 148,["230"] = 149,["233"] = 150,["234"] = 151,["235"] = 152,["237"] = 154,["238"] = 155,["239"] = 156,["240"] = 156,["241"] = 156,["242"] = 156,["243"] = 156,["244"] = 156,["245"] = 156,["246"] = 156,["247"] = 156,["248"] = 157,["250"] = 147,["251"] = 160,["252"] = 161,["253"] = 162,["256"] = 163,["257"] = 164,["258"] = 165,["260"] = 167,["261"] = 168,["262"] = 169,["263"] = 169,["264"] = 169,["265"] = 169,["266"] = 169,["267"] = 169,["268"] = 169,["269"] = 169,["270"] = 169,["271"] = 170,["273"] = 160,["274"] = 173,["275"] = 174,["276"] = 175,["279"] = 176,["280"] = 177,["281"] = 178,["283"] = 180,["284"] = 181,["285"] = 181,["286"] = 181,["287"] = 181,["288"] = 181,["289"] = 181,["290"] = 181,["291"] = 181,["292"] = 181,["293"] = 182,["295"] = 173,["296"] = 186,["297"] = 187,["298"] = 187,["299"] = 187,["300"] = 187,["301"] = 187,["302"] = 187,["303"] = 187,["304"] = 188,["305"] = 189,["306"] = 189,["307"] = 189,["308"] = 189,["309"] = 189,["310"] = 189,["311"] = 189,["312"] = 190,["313"] = 191,["314"] = 191,["315"] = 191,["316"] = 191,["317"] = 191,["318"] = 191,["319"] = 191,["320"] = 191,["321"] = 191,["322"] = 191,["323"] = 192,["324"] = 193,["325"] = 193,["326"] = 193,["327"] = 193,["328"] = 193,["329"] = 193,["330"] = 193,["331"] = 193,["332"] = 193,["333"] = 193,["334"] = 195,["335"] = 195,["336"] = 195,["337"] = 195,["338"] = 195,["339"] = 195,["340"] = 195,["341"] = 195,["342"] = 186,["343"] = 203,["344"] = 204,["345"] = 206,["346"] = 209,["347"] = 210,["348"] = 213,["349"] = 216,["350"] = 217,["351"] = 219,["352"] = 221,["353"] = 224,["354"] = 225,["355"] = 226,["356"] = 224,["357"] = 224,["358"] = 224,["359"] = 224,["360"] = 224,["361"] = 227,["362"] = 228,["363"] = 228,["364"] = 229,["365"] = 224,["366"] = 224,["367"] = 224,["368"] = 224,["369"] = 224,["370"] = 224,["371"] = 224,["372"] = 224,["373"] = 224,["374"] = 224,["375"] = 224,["376"] = 224,["377"] = 224,["378"] = 224,["379"] = 224,["380"] = 224,["381"] = 224,["382"] = 249,["383"] = 250,["384"] = 251,["385"] = 252,["387"] = 252,["388"] = 252,["389"] = 252,["390"] = 252,["391"] = 252,["392"] = 252,["393"] = 252,["394"] = 252,["395"] = 252,["398"] = 255,["399"] = 256,["401"] = 257,["402"] = 257,["403"] = 258,["404"] = 259,["405"] = 260,["407"] = 260,["409"] = 257,["414"] = 266,["415"] = 268,["416"] = 269,["417"] = 270,["418"] = 272,["419"] = 272,["420"] = 272,["421"] = 273,["422"] = 274,["423"] = 275,["425"] = 277,["427"] = 272,["428"] = 272,["429"] = 282,["430"] = 283,["431"] = 283,["432"] = 284,["433"] = 285,["435"] = 289,["436"] = 290,["437"] = 290,["438"] = 290,["439"] = 290,["440"] = 290,["441"] = 290,["442"] = 290,["443"] = 290,["444"] = 290,["445"] = 290,["446"] = 290,["447"] = 290,["448"] = 290,["449"] = 290,["450"] = 290,["451"] = 290,["452"] = 290,["453"] = 290,["454"] = 311,["455"] = 312,["456"] = 313,["457"] = 314,["458"] = 315,["459"] = 316,["460"] = 316,["461"] = 316,["462"] = 316,["463"] = 317,["464"] = 317,["465"] = 317,["466"] = 317,["467"] = 317,["470"] = 320,["471"] = 321,["472"] = 321,["473"] = 321,["474"] = 321,["475"] = 322,["476"] = 322,["477"] = 322,["478"] = 322,["479"] = 322,["485"] = 203,["486"] = 332,["487"] = 333,["488"] = 335,["489"] = 335,["490"] = 336,["491"] = 337,["492"] = 338,["493"] = 339,["495"] = 335,["497"] = 343,["498"] = 343,["499"] = 344,["500"] = 345,["501"] = 346,["502"] = 347,["503"] = 347,["504"] = 347,["505"] = 347,["507"] = 348,["508"] = 348,["509"] = 349,["510"] = 350,["511"] = 350,["512"] = 350,["513"] = 350,["514"] = 351,["515"] = 348,["518"] = 355,["519"] = 343,["522"] = 332,["523"] = 362,["524"] = 364,["525"] = 364,["526"] = 365,["527"] = 366,["528"] = 367,["529"] = 368,["531"] = 364,["532"] = 372,["533"] = 373,["534"] = 374,["535"] = 375,["536"] = 376,["537"] = 377,["538"] = 378,["539"] = 379,["540"] = 380,["541"] = 382,["542"] = 382,["543"] = 382,["544"] = 382,["545"] = 382,["546"] = 382,["547"] = 382,["548"] = 382,["549"] = 382,["550"] = 383,["552"] = 384,["553"] = 384,["554"] = 385,["555"] = 386,["556"] = 386,["557"] = 386,["558"] = 386,["559"] = 387,["560"] = 384,["565"] = 393,["566"] = 394,["568"] = 395,["569"] = 395,["570"] = 396,["571"] = 397,["572"] = 397,["573"] = 397,["574"] = 397,["575"] = 398,["576"] = 395,["579"] = 401,["580"] = 402,["582"] = 403,["583"] = 403,["584"] = 404,["585"] = 405,["586"] = 405,["587"] = 405,["588"] = 405,["589"] = 406,["590"] = 403,["593"] = 362,["594"] = 414,["595"] = 415,["596"] = 416,["597"] = 417,["598"] = 419,["599"] = 420,["600"] = 422,["601"] = 426,["602"] = 429,["603"] = 430,["604"] = 431,["606"] = 435,["607"] = 436,["608"] = 437,["609"] = 437,["610"] = 437,["611"] = 437,["612"] = 438,["613"] = 439,["614"] = 439,["615"] = 439,["616"] = 439,["617"] = 440,["618"] = 441,["619"] = 441,["620"] = 441,["621"] = 441,["622"] = 442,["623"] = 443,["624"] = 443,["625"] = 443,["626"] = 443,["628"] = 446,["629"] = 448,["630"] = 448,["631"] = 448,["633"] = 449,["634"] = 450,["635"] = 451,["636"] = 452,["638"] = 453,["642"] = 455,["643"] = 456,["645"] = 458,["646"] = 459,["648"] = 461,["649"] = 462,["651"] = 448,["652"] = 466,["653"] = 467,["654"] = 468,["656"] = 470,["657"] = 471,["658"] = 472,["659"] = 473,["660"] = 474,["661"] = 475,["662"] = 476,["663"] = 477,["664"] = 478,["665"] = 479,["667"] = 481,["668"] = 481,["669"] = 481,["670"] = 481,["672"] = 485,["673"] = 485,["674"] = 485,["675"] = 485,["676"] = 487,["677"] = 488,["678"] = 489,["679"] = 490,["680"] = 491,["681"] = 491,["682"] = 491,["683"] = 491,["684"] = 492,["685"] = 493,["686"] = 494,["687"] = 495,["689"] = 496,["690"] = 496,["691"] = 497,["692"] = 498,["693"] = 500,["694"] = 501,["695"] = 502,["696"] = 503,["699"] = 508,["700"] = 509,["701"] = 510,["702"] = 510,["703"] = 514,["704"] = 515,["705"] = 516,["706"] = 517,["709"] = 524,["710"] = 525,["711"] = 527,["712"] = 528,["713"] = 528,["714"] = 528,["715"] = 529,["716"] = 530,["717"] = 532,["718"] = 534,["719"] = 535,["720"] = 536,["721"] = 537,["722"] = 539,["723"] = 540,["724"] = 541,["725"] = 542,["726"] = 543,["727"] = 544,["728"] = 546,["729"] = 546,["730"] = 546,["732"] = 546,["734"] = 524,["735"] = 526,["736"] = 526,["737"] = 526,["738"] = 526,["739"] = 526,["740"] = 526,["741"] = 526,["742"] = 526,["743"] = 526,["744"] = 526,["745"] = 526,["746"] = 526,["747"] = 526,["748"] = 526,["749"] = 526,["750"] = 526,["751"] = 526,["752"] = 526,["753"] = 524,["754"] = 496,["759"] = 558,["760"] = 558,["761"] = 558,["762"] = 558,["763"] = 563,["764"] = 564,["765"] = 565,["766"] = 565,["767"] = 565,["768"] = 565,["770"] = 568,["771"] = 569,["772"] = 571,["773"] = 571,["774"] = 571,["775"] = 571,["776"] = 571,["777"] = 571,["778"] = 571,["779"] = 571,["780"] = 571,["781"] = 571,["782"] = 571,["784"] = 579,["785"] = 579,["786"] = 579,["787"] = 579,["788"] = 579,["789"] = 579,["790"] = 579,["791"] = 579,["792"] = 579,["793"] = 579,["794"] = 579,["796"] = 604,["798"] = 605,["799"] = 605,["800"] = 606,["801"] = 607,["802"] = 608,["804"] = 608,["806"] = 605,["810"] = 613,["811"] = 614,["812"] = 615,["813"] = 615,["814"] = 615,["815"] = 615,["816"] = 615,["817"] = 615,["818"] = 615,["819"] = 616,["820"] = 558,["821"] = 558,["822"] = 414,["823"] = 623,["824"] = 624,["825"] = 625,["827"] = 627,["828"] = 627,["829"] = 627,["830"] = 628,["831"] = 627,["832"] = 627,["833"] = 630,["834"] = 623,["835"] = 640,["836"] = 642,["837"] = 643,["838"] = 644,["839"] = 646,["840"] = 647,["841"] = 648,["842"] = 649,["843"] = 651,["844"] = 652,["845"] = 654,["846"] = 655,["847"] = 656,["848"] = 656,["849"] = 656,["850"] = 656,["851"] = 656,["852"] = 656,["853"] = 656,["854"] = 656,["855"] = 656,["856"] = 656,["857"] = 656,["858"] = 656,["859"] = 656,["860"] = 656,["861"] = 656,["862"] = 656,["863"] = 656,["864"] = 656,["865"] = 656,["866"] = 656,["867"] = 656,["868"] = 680,["869"] = 681,["870"] = 681,["871"] = 681,["872"] = 681,["873"] = 681,["875"] = 683,["876"] = 684,["877"] = 684,["878"] = 684,["879"] = 684,["880"] = 684,["882"] = 687,["883"] = 688,["884"] = 689,["886"] = 690,["887"] = 690,["888"] = 691,["889"] = 692,["890"] = 693,["892"] = 693,["894"] = 690,["898"] = 696,["899"] = 697,["901"] = 697,["902"] = 697,["903"] = 697,["904"] = 697,["905"] = 697,["906"] = 697,["907"] = 697,["908"] = 697,["909"] = 697,["913"] = 700,["915"] = 701,["916"] = 701,["917"] = 702,["918"] = 703,["919"] = 704,["921"] = 704,["923"] = 701,["928"] = 710,["929"] = 711,["930"] = 712,["931"] = 713,["932"] = 715,["934"] = 718,["937"] = 721,["938"] = 721,["939"] = 721,["940"] = 721,["941"] = 723,["942"] = 724,["943"] = 724,["944"] = 724,["945"] = 724,["946"] = 724,["947"] = 725,["948"] = 726,["949"] = 727,["950"] = 727,["951"] = 727,["952"] = 727,["953"] = 727,["954"] = 728,["956"] = 731,["957"] = 732,["958"] = 733,["959"] = 734,["960"] = 734,["961"] = 734,["962"] = 734,["963"] = 734,["967"] = 739,["968"] = 742,["969"] = 742,["970"] = 742,["971"] = 742,["972"] = 743,["973"] = 744,["976"] = 749,["977"] = 750,["978"] = 751,["979"] = 752,["980"] = 753,["981"] = 754,["982"] = 754,["983"] = 754,["984"] = 754,["985"] = 755,["986"] = 755,["987"] = 755,["988"] = 755,["989"] = 755,["992"] = 758,["993"] = 759,["994"] = 759,["995"] = 759,["996"] = 759,["997"] = 760,["998"] = 760,["999"] = 760,["1000"] = 760,["1001"] = 760,["1006"] = 800,["1007"] = 654,["1008"] = 803,["1009"] = 804,["1010"] = 807,["1011"] = 808,["1012"] = 809,["1013"] = 810,["1014"] = 812,["1015"] = 813,["1016"] = 814,["1018"] = 816,["1021"] = 820,["1022"] = 821,["1023"] = 822,["1024"] = 823,["1025"] = 824,["1026"] = 824,["1027"] = 825,["1028"] = 825,["1029"] = 826,["1030"] = 826,["1031"] = 827,["1032"] = 827,["1033"] = 828,["1034"] = 828,["1036"] = 829,["1038"] = 830,["1039"] = 830,["1040"] = 830,["1041"] = 830,["1042"] = 830,["1043"] = 830,["1044"] = 830,["1045"] = 832,["1046"] = 833,["1048"] = 835,["1049"] = 835,["1050"] = 835,["1051"] = 835,["1053"] = 838,["1054"] = 839,["1055"] = 839,["1056"] = 839,["1057"] = 839,["1058"] = 840,["1059"] = 842,["1060"] = 842,["1061"] = 842,["1062"] = 842,["1065"] = 846,["1066"] = 846,["1067"] = 846,["1068"] = 846,["1069"] = 846,["1070"] = 846,["1071"] = 846,["1072"] = 846,["1073"] = 846,["1074"] = 851,["1075"] = 852,["1076"] = 853,["1078"] = 855,["1079"] = 856,["1080"] = 858,["1081"] = 860,["1082"] = 862,["1084"] = 865,["1086"] = 868,["1087"] = 869,["1088"] = 870,["1089"] = 870,["1090"] = 872,["1092"] = 876,["1093"] = 877,["1094"] = 878,["1096"] = 880,["1097"] = 880,["1098"] = 882,["1099"] = 883,["1100"] = 884,["1101"] = 885,["1103"] = 887,["1104"] = 888,["1105"] = 889,["1106"] = 890,["1108"] = 893,["1109"] = 893,["1110"] = 893,["1111"] = 893,["1112"] = 893,["1113"] = 893,["1114"] = 893,["1115"] = 893,["1116"] = 893,["1117"] = 897,["1118"] = 898,["1119"] = 899,["1120"] = 899,["1121"] = 900,["1122"] = 902,["1123"] = 903,["1124"] = 904,["1125"] = 905,["1127"] = 907,["1129"] = 910,["1130"] = 913,["1131"] = 913,["1132"] = 914,["1133"] = 915,["1134"] = 916,["1135"] = 917,["1136"] = 918,["1138"] = 920,["1140"] = 924,["1141"] = 913,["1142"] = 926,["1143"] = 930,["1144"] = 931,["1145"] = 932,["1146"] = 933,["1147"] = 933,["1148"] = 933,["1149"] = 933,["1150"] = 933,["1151"] = 933,["1152"] = 933,["1153"] = 934,["1154"] = 880,["1159"] = 640,["1160"] = 945,["1161"] = 947,["1162"] = 949,["1163"] = 950,["1165"] = 953,["1166"] = 954,["1167"] = 955,["1168"] = 957,["1169"] = 959,["1170"] = 960,["1171"] = 961,["1172"] = 962,["1173"] = 963,["1174"] = 967,["1175"] = 970,["1176"] = 971,["1177"] = 974,["1178"] = 977,["1179"] = 977,["1180"] = 977,["1181"] = 977,["1182"] = 977,["1183"] = 977,["1184"] = 977,["1185"] = 977,["1186"] = 977,["1187"] = 977,["1188"] = 977,["1189"] = 977,["1190"] = 977,["1191"] = 977,["1192"] = 977,["1193"] = 977,["1194"] = 977,["1195"] = 977,["1196"] = 977,["1197"] = 977,["1198"] = 977,["1199"] = 1002,["1200"] = 1006,["1201"] = 1007,["1202"] = 1008,["1203"] = 1009,["1205"] = 1011,["1206"] = 1012,["1208"] = 1012,["1210"] = 1015,["1211"] = 1015,["1212"] = 1015,["1213"] = 1015,["1214"] = 1016,["1215"] = 1017,["1217"] = 1019,["1218"] = 1020,["1220"] = 1020,["1221"] = 1020,["1222"] = 1020,["1223"] = 1020,["1224"] = 1020,["1225"] = 1020,["1226"] = 1020,["1227"] = 1020,["1228"] = 1020,["1231"] = 1023,["1232"] = 1024,["1234"] = 1025,["1235"] = 1025,["1236"] = 1026,["1237"] = 1027,["1238"] = 1028,["1240"] = 1028,["1242"] = 1025,["1247"] = 1034,["1248"] = 1035,["1249"] = 1035,["1250"] = 1036,["1251"] = 1037,["1253"] = 1041,["1254"] = 1041,["1255"] = 1041,["1256"] = 1041,["1257"] = 1041,["1258"] = 1041,["1259"] = 1041,["1260"] = 1041,["1261"] = 1041,["1262"] = 1041,["1263"] = 1041,["1264"] = 1041,["1265"] = 1041,["1266"] = 1055,["1267"] = 1055,["1268"] = 1055,["1269"] = 1055,["1270"] = 1055,["1271"] = 1055,["1272"] = 1057,["1273"] = 1058,["1274"] = 1059,["1275"] = 1060,["1277"] = 1062,["1278"] = 1063,["1279"] = 1063,["1280"] = 1065,["1281"] = 1066,["1282"] = 1067,["1283"] = 1068,["1285"] = 1070,["1287"] = 1073,["1288"] = 1073,["1289"] = 1074,["1290"] = 1075,["1291"] = 1076,["1292"] = 1077,["1293"] = 1078,["1295"] = 1080,["1297"] = 1082,["1298"] = 1083,["1299"] = 1073,["1300"] = 1085,["1301"] = 1088,["1302"] = 1089,["1303"] = 1090,["1304"] = 1090,["1305"] = 1090,["1306"] = 1090,["1307"] = 1090,["1308"] = 1090,["1309"] = 1090,["1310"] = 1091,["1311"] = 1094,["1312"] = 1094,["1313"] = 1094,["1314"] = 1094,["1315"] = 1096,["1316"] = 1099,["1317"] = 1100,["1318"] = 1101,["1319"] = 1102,["1322"] = 1106,["1323"] = 1107,["1324"] = 1108,["1325"] = 1109,["1326"] = 1110,["1327"] = 1111,["1328"] = 1112,["1329"] = 1113,["1330"] = 1114,["1331"] = 1115,["1332"] = 1115,["1333"] = 1115,["1334"] = 1115,["1335"] = 1116,["1336"] = 1117,["1337"] = 1118,["1338"] = 1118,["1339"] = 1118,["1340"] = 1118,["1341"] = 1118,["1343"] = 1120,["1344"] = 1121,["1345"] = 1122,["1353"] = 1133,["1354"] = 1133,["1355"] = 1133,["1356"] = 1134,["1357"] = 1133,["1358"] = 1133,["1359"] = 1137,["1360"] = 945,["1361"] = 1141,["1362"] = 1143,["1363"] = 1145,["1364"] = 1147,["1365"] = 1149,["1366"] = 1149,["1367"] = 1149,["1368"] = 1149,["1369"] = 1149,["1370"] = 1149,["1371"] = 1149,["1372"] = 1149,["1373"] = 1149,["1374"] = 1149,["1375"] = 1149,["1376"] = 1149,["1377"] = 1149,["1378"] = 1149,["1379"] = 1149,["1380"] = 1149,["1381"] = 1149,["1382"] = 1149,["1383"] = 1149,["1384"] = 1173,["1385"] = 1141,["1386"] = 1176,["1387"] = 1177,["1388"] = 1178,["1389"] = 1178,["1390"] = 1178,["1391"] = 1178,["1392"] = 1179,["1393"] = 1180,["1396"] = 1184,["1397"] = 1185,["1398"] = 1186,["1399"] = 1187,["1400"] = 1188,["1401"] = 1189,["1402"] = 1190,["1403"] = 1191,["1404"] = 1191,["1405"] = 1191,["1406"] = 1193,["1407"] = 1195,["1408"] = 1197,["1409"] = 1199,["1410"] = 1199,["1411"] = 1199,["1412"] = 1199,["1413"] = 1199,["1414"] = 1199,["1415"] = 1199,["1416"] = 1199,["1417"] = 1199,["1418"] = 1199,["1419"] = 1199,["1420"] = 1199,["1421"] = 1199,["1422"] = 1199,["1423"] = 1199,["1424"] = 1199,["1425"] = 1199,["1426"] = 1199,["1427"] = 1199,["1428"] = 1220,["1429"] = 1223,["1430"] = 1223,["1431"] = 1223,["1432"] = 1223,["1433"] = 1223,["1434"] = 1223,["1435"] = 1223,["1436"] = 1223,["1437"] = 1225,["1438"] = 1225,["1439"] = 1225,["1440"] = 1225,["1441"] = 1225,["1442"] = 1225,["1443"] = 1225,["1444"] = 1232,["1445"] = 1234,["1446"] = 1236,["1447"] = 1236,["1448"] = 1236,["1449"] = 1237,["1450"] = 1236,["1451"] = 1236,["1452"] = 1240,["1453"] = 1240,["1454"] = 1240,["1455"] = 1241,["1456"] = 1242,["1457"] = 1243,["1459"] = 1245,["1461"] = 1248,["1462"] = 1249,["1463"] = 1240,["1464"] = 1240,["1465"] = 1252,["1466"] = 1253,["1467"] = 1254,["1469"] = 1256,["1471"] = 1191,["1472"] = 1191,["1473"] = 1260,["1474"] = 1261,["1475"] = 1262,["1478"] = 1184,["1479"] = 1266,["1480"] = 1267,["1481"] = 1176,["1482"] = 1270,["1483"] = 1271,["1484"] = 1272,["1487"] = 1275,["1488"] = 1276,["1489"] = 1277,["1490"] = 1278,["1491"] = 1280,["1492"] = 1281,["1493"] = 1282,["1494"] = 1283,["1495"] = 1280,["1496"] = 1287,["1497"] = 1288,["1498"] = 1289,["1500"] = 1293,["1501"] = 1294,["1502"] = 1296,["1503"] = 1270,["1504"] = 1300,["1505"] = 1301,["1506"] = 1302,["1507"] = 1304,["1508"] = 1305,["1509"] = 1306,["1510"] = 1307,["1511"] = 1310,["1512"] = 1310,["1513"] = 1310,["1514"] = 1310,["1515"] = 1311,["1516"] = 1313,["1517"] = 1315,["1518"] = 1315,["1519"] = 1315,["1520"] = 1315,["1521"] = 1315,["1522"] = 1315,["1523"] = 1315,["1524"] = 1315,["1525"] = 1315,["1526"] = 1315,["1527"] = 1315,["1528"] = 1315,["1529"] = 1315,["1530"] = 1315,["1531"] = 1315,["1532"] = 1315,["1533"] = 1315,["1534"] = 1315,["1535"] = 1315,["1536"] = 1336,["1537"] = 1337,["1538"] = 1337,["1539"] = 1337,["1540"] = 1337,["1541"] = 1337,["1542"] = 1338,["1543"] = 1338,["1544"] = 1338,["1545"] = 1338,["1546"] = 1338,["1547"] = 1346,["1548"] = 1347,["1549"] = 1348,["1550"] = 1349,["1551"] = 1350,["1552"] = 1351,["1553"] = 1351,["1554"] = 1351,["1555"] = 1351,["1556"] = 1352,["1557"] = 1352,["1558"] = 1352,["1559"] = 1352,["1560"] = 1352,["1563"] = 1355,["1564"] = 1356,["1565"] = 1356,["1566"] = 1356,["1567"] = 1356,["1568"] = 1357,["1569"] = 1357,["1570"] = 1357,["1571"] = 1357,["1572"] = 1357,["1577"] = 1300,["1578"] = 1366,["1579"] = 1367,["1580"] = 1368,["1581"] = 1370,["1582"] = 1371,["1583"] = 1372,["1584"] = 1373,["1585"] = 1374,["1586"] = 1375,["1588"] = 1377,["1589"] = 1378,["1591"] = 1380,["1592"] = 1383,["1593"] = 1383,["1594"] = 1383,["1595"] = 1383,["1596"] = 1384,["1597"] = 1386,["1598"] = 1388,["1599"] = 1388,["1600"] = 1388,["1601"] = 1388,["1602"] = 1388,["1603"] = 1388,["1604"] = 1388,["1605"] = 1388,["1606"] = 1388,["1607"] = 1388,["1608"] = 1388,["1609"] = 1388,["1610"] = 1388,["1611"] = 1388,["1612"] = 1388,["1613"] = 1388,["1614"] = 1388,["1615"] = 1388,["1616"] = 1388,["1617"] = 1410,["1618"] = 1410,["1619"] = 1410,["1620"] = 1410,["1621"] = 1410,["1622"] = 1411,["1623"] = 1411,["1624"] = 1411,["1625"] = 1411,["1626"] = 1411,["1627"] = 1415,["1628"] = 1416,["1629"] = 1417,["1630"] = 1418,["1631"] = 1419,["1632"] = 1420,["1633"] = 1420,["1634"] = 1420,["1635"] = 1420,["1636"] = 1421,["1637"] = 1421,["1638"] = 1421,["1639"] = 1421,["1640"] = 1421,["1643"] = 1424,["1644"] = 1425,["1645"] = 1425,["1646"] = 1425,["1647"] = 1425,["1648"] = 1426,["1649"] = 1426,["1650"] = 1426,["1651"] = 1426,["1652"] = 1426,["1657"] = 1366,["1658"] = 1437,["1659"] = 1439,["1660"] = 1440,["1661"] = 1441,["1662"] = 1443,["1663"] = 1444,["1664"] = 1445,["1665"] = 1437,["1666"] = 1456,["1667"] = 1461,["1668"] = 1462,["1669"] = 1462,["1670"] = 1462,["1671"] = 1463,["1672"] = 1464,["1673"] = 1465,["1674"] = 1466,["1676"] = 1462,["1677"] = 1462,["1678"] = 1469,["1679"] = 1456,["1680"] = 1475,["1681"] = 1480,["1682"] = 1481,["1683"] = 1484,["1684"] = 1485,["1685"] = 1486,["1686"] = 1487,["1687"] = 1488,["1688"] = 1490,["1689"] = 1492,["1690"] = 1493,["1691"] = 1494,["1692"] = 1495,["1693"] = 1496,["1694"] = 1497,["1695"] = 1498,["1698"] = 1503,["1699"] = 1504,["1700"] = 1505,["1701"] = 1506,["1702"] = 1509,["1703"] = 1510,["1704"] = 1511,["1705"] = 1512,["1706"] = 1512,["1707"] = 1515,["1708"] = 1515,["1709"] = 1515,["1710"] = 1515,["1711"] = 1515,["1712"] = 1515,["1713"] = 1515,["1714"] = 1517,["1715"] = 1517,["1716"] = 1518,["1717"] = 1519,["1718"] = 1520,["1719"] = 1521,["1720"] = 1522,["1721"] = 1523,["1722"] = 1524,["1724"] = 1528,["1725"] = 1517,["1726"] = 1530,["1727"] = 1532,["1728"] = 1533,["1730"] = 1535,["1733"] = 1475,["1734"] = 1544,["1735"] = 1549,["1736"] = 1550,["1737"] = 1551,["1738"] = 1552,["1740"] = 1552,["1742"] = 1553,["1744"] = 1557,["1745"] = 1558,["1746"] = 1559,["1748"] = 1563,["1749"] = 1564,["1750"] = 1565,["1751"] = 1566,["1752"] = 1567,["1753"] = 1568,["1754"] = 1568,["1755"] = 1568,["1756"] = 1568,["1757"] = 1569,["1758"] = 1570,["1761"] = 1572,["1762"] = 1572,["1763"] = 1573,["1764"] = 1574,["1765"] = 1575,["1766"] = 1577,["1767"] = 1578,["1768"] = 1579,["1769"] = 1580,["1770"] = 1580,["1771"] = 1580,["1772"] = 1581,["1773"] = 1582,["1774"] = 1583,["1775"] = 1583,["1776"] = 1583,["1777"] = 1583,["1778"] = 1584,["1779"] = 1580,["1780"] = 1580,["1782"] = 1589,["1783"] = 1590,["1784"] = 1590,["1785"] = 1590,["1786"] = 1591,["1787"] = 1592,["1788"] = 1593,["1789"] = 1593,["1790"] = 1593,["1791"] = 1593,["1792"] = 1594,["1793"] = 1590,["1794"] = 1590,["1796"] = 1598,["1797"] = 1599,["1798"] = 1600,["1799"] = 1601,["1801"] = 1572,["1805"] = 1544,["1806"] = 1610});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____SceneUIManager = include("framework.ui.SceneUIManager")
local sceneUIManager = ____SceneUIManager.sceneUIManager
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____AssassinConfig = include("logic.configs.AssassinConfig")
local assassinConfigList = ____AssassinConfig.assassinConfigList
local ____KingConfig = include("logic.configs.KingConfig")
local kingConfigMap_type = ____KingConfig.kingConfigMap_type
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local ____MonsterPoolConfig = include("logic.configs.MonsterPoolConfig")
local monsterPoolConfigMap = ____MonsterPoolConfig.monsterPoolConfigMap
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigList = ____PetConfig.petConfigList
local petConfigMap = ____PetConfig.petConfigMap
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigMap = ____PetEffectConfig.petEffectConfigMap
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigMap = ____PetHaloConfig.petHaloConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigMap = ____PetWingConfig.petWingConfigMap
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigMap = ____RobotLevelConfig.robotLevelConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigList = ____SkinConfig.skinConfigList
local ____SpecialMonsterConfig = include("logic.configs.SpecialMonsterConfig")
local specialMonsterConfigList = ____SpecialMonsterConfig.specialMonsterConfigList
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameRandomEventType = ____GameData.GameRandomEventType
local ____LevelData = include("logic.models.LevelData")
local LevelData = ____LevelData.LevelData
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____Property = include("logic.models.Property")
local PropertiesList = ____Property.PropertiesList
local propertyConfig2PropertyNumbers = ____Property.propertyConfig2PropertyNumbers
local propertyNumbers2PropertyConfig = ____Property.propertyNumbers2PropertyConfig
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local _____653B_51FB = ____Property["攻击"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_653B_51FB_767E_5206_6BD4 = ____Property["法术攻击百分比"]
local _____7269_7406_653B_51FB_767E_5206_6BD4 = ____Property["物理攻击百分比"]
local _____8840_91CF_767E_5206_6BD4 = ____Property["血量百分比"]
local ____Status = include("logic.models.Status")
local _____514D_75AB_63A7_5236 = ____Status["免疫控制"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitData = include("logic.models.UnitData")
local EnvUnitData = ____UnitData.EnvUnitData
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____ClickMe = include("logic.sceneUI.ClickMe")
local ClickMe = ____ClickMe.ClickMe
local ____SceneNickname = include("logic.sceneUI.SceneNickname")
local SceneNickname = ____SceneNickname.SceneNickname
local ____ScenePlayerStatus = include("logic.sceneUI.ScenePlayerStatus")
local ScenePlayerStatus = ____ScenePlayerStatus.ScenePlayerStatus
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____GenreTags = include("logic.utils.GenreTags")
local genreStatisticsMap = ____GenreTags.genreStatisticsMap
local ____HPBarUtils = include("logic.utils.HPBarUtils")
local setHeroHpBar = ____HPBarUtils.setHeroHpBar
local ____LoopUtils = include("logic.utils.LoopUtils")
local logLeftMonster = ____LoopUtils.logLeftMonster
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local player2battleGround = ____PlayerUtils.player2battleGround
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local BattleGroundId = ____PlayerUtils.BattleGroundId
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____AreaController = include("logic.controllers.ui.AreaController")
local areaController = ____AreaController.areaController
local ____GridController = include("logic.controllers.ui.GridController")
local gridController = ____GridController.gridController
local hellLeft = y3.point.create(-15000, 20000, -9999999)
local hellRight = y3.point.create(18796, 20000, -9999999)
____exports.CreateUnitController = __TS__Class()
local CreateUnitController = ____exports.CreateUnitController
CreateUnitController.name = "CreateUnitController"
function CreateUnitController.prototype.____constructor(self)
    self.needDispatchMonster = nil
    self.autoCreateTimer = nil
    self.autoCreateMonster = nil
end
function CreateUnitController.prototype.createPet(self)
    for ____, playerId in ipairs(playerIdList) do
        local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
        petData.init = true
        petData.playerId = playerId
        petData.nickname = y3.player.get_by_id(playerId):get_name()
        local cfg = petConfigMap[archiveData.petInfo.cur_skin]
        if cfg == nil then
            cfg = petConfigList[1]
        end
        self:changePet(playerId, cfg.id)
    end
end
function CreateUnitController.prototype.changePet(self, playerId, cfgId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    if not petData.init then
        return
    end
    local cfg = petConfigMap[cfgId]
    petData.petId = cfg.role
    local pos = nil
    if petData.y3Unit ~= nil then
        petData.y3Unit:replace_model(cfg.role)
        pos = petData.y3Unit:get_point()
        petData.y3Unit:remove()
    else
        local posId = mapConfig["小宠物出生点"][playerId]
        pos = y3.point.get_point_by_res_id(posId)
        vue.watch(
            function() return petData.selBigBlessArrow end,
            function(____, v)
                if v then
                    local ____opt_0 = petData.y3Unit
                    if ____opt_0 ~= nil then
                        ____opt_0:set_scale(1.5)
                    end
                else
                    local ____opt_2 = petData.y3Unit
                    if ____opt_2 ~= nil then
                        ____opt_2:set_scale(1)
                    end
                end
            end,
            {flush = "sync"}
        )
    end
    local template = y3.object.unit[petData.petId]
    local unit = y3.player.get_by_id(playerId):create_unit(template.key)
    petData.y3Unit = unit
    petData.y3Unit:blink(pos)
    sceneUIManager:showAll(unit.id, "head", SceneNickname)
    sceneUIManager:showAll(unit.id, "chenghao", ScenePlayerStatus)
    if cfg.changeFrom ~= nil and #cfg.changeFrom > 0 and cfg.changeTo ~= nil and #cfg.changeTo > 0 and #cfg.changeTo == #cfg.changeFrom then
        do
            local index = 0
            while index < #cfg.changeFrom do
                local from = cfg.changeFrom[index + 1]
                local to = cfg.changeTo[index + 1]
                petData.y3Unit:change_animation(from, to)
                index = index + 1
            end
        end
    end
    if cfg.roleEffect ~= nil and cfg.roleEffect ~= 0 then
        petData.y3Unit:add_buff({
            key = cfg.roleEffect,
            time = -1,
            source = petData.y3Unit,
            ability = nil,
            pulse = nil,
            stacks = 1,
            data = nil
        })
    end
    petController:init(playerId)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local wingId = 0
    if archiveData.petInfo.cur_wing > 0 then
        wingId = petWingConfigMap[archiveData.petInfo.cur_wing].wing
    end
    local haloId = 0
    if archiveData.petInfo.cur_halo > 0 then
        haloId = petHaloConfigMap[archiveData.petInfo.cur_halo].wing
    end
    local effectId = 0
    if archiveData.petInfo.cur_effect > 0 then
        effectId = petEffectConfigMap[archiveData.petInfo.cur_effect].effect
    end
    self:changeWing(playerId, wingId)
    self:changeHalo(playerId, haloId)
    self:changeEffect(playerId, effectId)
end
function CreateUnitController.prototype.changeWing(self, playerId, wingId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    if petData.y3Unit == nil then
        return
    end
    if petData.wing ~= nil then
        petData.wing:remove()
        petData.wing = nil
    end
    if wingId > 0 then
        console:log("翅膀11111")
        local buff = petData.y3Unit:add_buff({
            key = wingId,
            time = -1,
            source = nil,
            ability = nil,
            pulse = nil,
            stacks = nil,
            data = nil
        })
        petData.wing = buff
    end
end
function CreateUnitController.prototype.changeHalo(self, playerId, haloId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    if petData.y3Unit == nil then
        return
    end
    if petData.halo ~= nil then
        petData.halo:remove()
        petData.halo = nil
    end
    console:log("光环11111", haloId)
    if haloId > 0 then
        local buff = petData.y3Unit:add_buff({
            key = haloId,
            time = -1,
            source = nil,
            ability = nil,
            pulse = nil,
            stacks = nil,
            data = nil
        })
        petData.halo = buff
    end
end
function CreateUnitController.prototype.changeEffect(self, playerId, effectId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    if petData.y3Unit == nil then
        return
    end
    if petData.effect ~= nil then
        petData.effect:remove()
        petData.effect = nil
    end
    if effectId > 0 then
        local buff = petData.y3Unit:add_buff({
            key = effectId,
            time = -1,
            source = nil,
            ability = nil,
            pulse = nil,
            stacks = nil,
            data = nil
        })
        petData.effect = buff
    end
end
function CreateUnitController.prototype.analysisSkill(self, skills)
    local normalSkills = __TS__ArrayMap(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 1 and __TS__StringTrim(a.abilityName) ~= "" end
        ),
        function(____, a) return a.abilityName end
    )
    local heroSkills = {}
    local commandSkills = __TS__ArrayMap(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 2 and __TS__StringTrim(a.abilityName) ~= "" end
        ),
        function(____, a) return a.abilityName end
    )
    local simpleSkills = {}
    __TS__ArrayForEach(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 3 and __TS__StringTrim(a.abilityName) ~= "" end
        ),
        function(____, a)
            simpleSkills[a.abilityName] = 1
            return 1
        end
    )
    local effects = {}
    __TS__ArrayForEach(
        __TS__ArrayFlat(__TS__ArrayMap(
            skills,
            function(____, a) return a.effects end
        )),
        function(____, a)
            effects[a.id] = 1
            return 1
        end
    )
    return {
        normalSkills = normalSkills,
        heroSkills = heroSkills,
        hiddenSkills = {},
        commandSkills = commandSkills,
        simpleSkills = simpleSkills,
        effects = effects
    }
end
function CreateUnitController.prototype.createHeroUnit(self)
    for ____, playerId in ipairs(playerIdList) do
        local player = y3.player.get_by_id(playerId)
        local posId = mapConfig.playerPoints[playerId]
        local pos = y3.point.get_point_by_res_id(posId)
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        local pro = playerData.hero.property
        local skinId = heroSkinManager:getHeroSkin(playerData.hero.id, playerId)
        local sk = self:analysisSkill(playerData.hero.skill)
        local ____unitData_init_9 = unitData.init
        local ____UnitType_PLAYER_8 = UnitType.PLAYER
        local ____opt_4 = playerData.hero
        ____unitData_init_9(
            unitData,
            {
                type = ____UnitType_PLAYER_8,
                name = ____opt_4 and ____opt_4.name or "",
                showName = function()
                    local ____opt_6 = playerData.hero
                    local name = ____opt_6 and ____opt_6.showName.value or ""
                    return ((y3.player.get_by_id(playerId):get_name() .. "[") .. name) .. "]"
                end,
                creatorPlayerId = playerId,
                y3Player = player,
                pos = pos,
                roleId = skinId,
                rolePos = 2,
                battleGroundId = player2battleGround[playerId],
                propertyConfig = pro,
                normalSkills = sk.normalSkills,
                commandSkills = sk.commandSkills,
                heroSkills = sk.heroSkills,
                hiddenSkills = sk.hiddenSkills,
                simpleSKills = sk.simpleSkills,
                effects = sk.effects,
                safeTable = true
            }
        )
        unitData.buildId = heroSkinManager:getHeroBuildSkillId(playerData.hero.id, playerId)
        local skinConfig = heroSkinManager:getHeroCurrentSkinCfg(playerData.hero.id, playerId)
        if skinConfig ~= nil and skinConfig.roleEffect ~= nil and skinConfig.roleEffect ~= 0 then
            local ____opt_10 = unitData:getWritableEntity().y3Unit
            if ____opt_10 ~= nil then
                ____opt_10:add_buff({
                    key = skinConfig.roleEffect,
                    time = -1,
                    source = unitData:getWritableEntity().y3Unit,
                    ability = nil,
                    pulse = nil,
                    stacks = 1,
                    data = nil
                })
            end
        end
        if skinConfig ~= nil then
            if skinConfig.changeFrom ~= nil and #skinConfig.changeFrom > 0 and skinConfig.changeTo ~= nil and #skinConfig.changeTo > 0 and #skinConfig.changeTo == #skinConfig.changeFrom then
                do
                    local index = 0
                    while index < #skinConfig.changeFrom do
                        local from = skinConfig.changeFrom[index + 1]
                        local to = skinConfig.changeTo[index + 1]
                        local ____opt_12 = unitData:getWritableEntity().y3Unit
                        if ____opt_12 ~= nil then
                            ____opt_12:change_animation(from, to)
                        end
                        index = index + 1
                    end
                end
            end
        end
        unitData:getWritableEntity():setAngle(180, 0)
        unitData.collision_x = 4
        unitData.collision_y = 4
        gridController:addGridByPos(playerId, unitData.id)
        unitData.entity:on(
            "单位-死亡",
            function()
                local gameData = writeableDatas.global:getOrCreateSingle(GameData)
                if player2King[playerId] == BattleGroundId.LEFT_KING then
                    gameData.teamALeftPlayerCount = gameData.teamALeftPlayerCount - 1
                else
                    gameData.teamBLeftPlayerCount = gameData.teamBLeftPlayerCount - 1
                end
            end
        )
        local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
        local ____opt_14 = archiveData.playerInfo
        local heroInfo = ____opt_14 and ____opt_14.heroes and archiveData.playerInfo.heroes[tostring(playerData.hero.id)]
        if heroInfo ~= nil then
            setHeroHpBar(nil, unitData.entity.y3Unit, heroInfo.lv)
        end
        local envUnitData = writeableDatas.players[playerId]:getOrCreateSingle(EnvUnitData)
        envUnitData:init({
            type = UnitType.PLAYER,
            name = ("玩家" .. tostring(playerId)) .. "的环境对象",
            creatorPlayerId = playerId,
            y3Player = player,
            pos = y3.point.create(0, 0),
            roleId = -1,
            rolePos = 0,
            battleGroundId = -999,
            propertyConfig = pro,
            normalSkills = {},
            commandSkills = {},
            heroSkills = {},
            hiddenSkills = {},
            simpleSKills = {},
            effects = {},
            safeTable = false
        })
        if isPvpModeRobot(nil) then
            local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
            if config ~= nil then
                if playerId <= 4 then
                    for ____, buff in ipairs(config.ourHeroBuff) do
                        unitData:getWritableEntity():addEffect(
                            unitData:getWritableEntity(),
                            buff.id
                        )
                        console:log(
                            ((("[Robot] 玩家 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 我方英雄添加单机模式buff",
                            buff.id,
                            buff.name
                        )
                    end
                else
                    for ____, buff in ipairs(config.enemyHeroBuff) do
                        unitData:getWritableEntity():addEffect(
                            unitData:getWritableEntity(),
                            buff.id
                        )
                        console:log(
                            ((("[Robot] 玩家 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 敌方英雄添加单机模式buff",
                            buff.id,
                            buff.name
                        )
                    end
                end
            end
        end
    end
end
function CreateUnitController.prototype.clearMercenary(self)
    console:log("移除佣兵")
    local removeChildren
    removeChildren = function(____, children)
        local c = __TS__ArraySlice(children)
        for ____, child in ipairs(c) do
            removeChildren(nil, child.children)
            child:destroy(child)
        end
    end
    do
        local index = 0
        while index < #playerIdList do
            local playerId = playerIdList[index + 1]
            local player = writeableDatas.players[playerId]
            local unitDatas = writeableDatas.players[playerId]:getAll(UnitData)
            local ms = __TS__ArrayFilter(
                unitDatas,
                function(____, a) return a.type == UnitType.MERCENARY end
            )
            do
                local i = 0
                while i < #ms do
                    local element = ms[i + 1]
                    removeChildren(
                        nil,
                        element:getWritableEntity().children
                    )
                    player:remove(UnitData, element)
                    i = i + 1
                end
            end
            gridController:reset(playerId)
            index = index + 1
        end
    end
end
function CreateUnitController.prototype.clearMonster(self)
    local removeChildren
    removeChildren = function(____, children)
        local c = __TS__ArraySlice(children)
        for ____, child in ipairs(c) do
            removeChildren(nil, child.children)
            child:destroy(child)
        end
    end
    for ____, playerId in ipairs(playerIdList) do
        local player = writeableDatas.players[playerId]
        local monsterList = player:getListByIndex(UnitData, "type", UnitType.MONSTER)
        local eliteList = player:getListByIndex(UnitData, "type", UnitType.ELITE)
        local imageList = player:getListByIndex(UnitData, "type", UnitType.HERO_IMAGE)
        local summonsList = player:getListByIndex(UnitData, "type", UnitType.SUMMONS)
        local goodList = player:getListByIndex(UnitData, "type", UnitType.Gold_Monster)
        local woodList = player:getListByIndex(UnitData, "type", UnitType.Wood_Monster)
        local wealList = player:getListByIndex(UnitData, "type", UnitType.Weal_Monster)
        local list = {
            monsterList,
            eliteList,
            imageList,
            summonsList,
            goodList,
            woodList,
            wealList
        }
        for ____, l in ipairs(list) do
            do
                local i = #l - 1
                while i >= 0 do
                    local unit = l[i + 1]
                    removeChildren(
                        nil,
                        unit:getWritableEntity().children
                    )
                    player:remove(UnitData, unit)
                    i = i - 1
                end
            end
        end
    end
    local player = writeableDatas.players[PlayerId.LEFT_KING]
    local monsterList = player:getListByIndex(UnitData, "type", UnitType.Assassin)
    do
        local i = #monsterList - 1
        while i >= 0 do
            local unit = monsterList[i + 1]
            removeChildren(
                nil,
                unit:getWritableEntity().children
            )
            player:remove(UnitData, unit)
            i = i - 1
        end
    end
    player = writeableDatas.players[PlayerId.RIGHT_KING]
    monsterList = player:getListByIndex(UnitData, "type", UnitType.Assassin)
    do
        local i = #monsterList - 1
        while i >= 0 do
            local unit = monsterList[i + 1]
            removeChildren(
                nil,
                unit:getWritableEntity().children
            )
            player:remove(UnitData, unit)
            i = i - 1
        end
    end
end
function CreateUnitController.prototype.startCreateMonsterLevel(self)
    local input = {}
    local output = {}
    self.needDispatchMonster = output
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local neutralPlayer = y3.player.get_by_id(PlayerId.NEUTRAL_AND_HOSTILE)
    local level = levelConfigMap[gameData.level]
    local monsterId = level.value[1]
    local levelData = writeableDatas.global:getOrCreateSingle(LevelData)
    if levelData.levels[gameData.level].monsterId ~= nil then
        monsterId = levelData.levels[gameData.level].monsterId
    end
    local eventMonster = nil
    if gameData.randomEventType == GameRandomEventType["金币怪"] then
        eventMonster = __TS__ArrayFind(
            specialMonsterConfigList,
            function(____, a) return a.wave.id == gameData.level and a.rewardType == 1 end
        )
    elseif gameData.randomEventType == GameRandomEventType["木头怪"] then
        eventMonster = __TS__ArrayFind(
            specialMonsterConfigList,
            function(____, a) return a.wave.id == gameData.level and a.rewardType == 2 end
        )
    elseif gameData.randomEventType == GameRandomEventType["炮车怪"] then
        eventMonster = __TS__ArrayFind(
            specialMonsterConfigList,
            function(____, a) return a.wave.id == gameData.level and a.rewardType == 3 end
        )
    elseif gameData.randomEventType == GameRandomEventType["福利怪入侵"] then
        eventMonster = __TS__ArrayFind(
            specialMonsterConfigList,
            function(____, a) return a.wave.id == gameData.level and a.rewardType == 4 end
        )
    end
    local poolList = {}
    local function func(____, poolId, ____type)
        if ____type == nil then
            ____type = -1
        end
        console:log("创建怪物池", poolId)
        local pool = monsterPoolConfigMap[poolId]
        if pool == nil then
            console:error("无法找到怪物池 levelId=" .. tostring(level.id))
            error(
                "无法找到怪物池 levelId=" .. tostring(level.id),
                0
            )
        end
        if pool.monster1 ~= nil then
            poolList[#poolList + 1] = {pool.monster1, pool.monster1Num, ____type}
        end
        if pool.monster2 ~= nil then
            poolList[#poolList + 1] = {pool.monster2, pool.monster2Num, ____type}
        end
        if pool.monster3 ~= nil then
            poolList[#poolList + 1] = {pool.monster3, pool.monster3Num, ____type}
        end
    end
    func(nil, monsterId)
    if gameData.randomEventType == GameRandomEventType["双倍怪物"] then
        func(nil, monsterId)
    end
    if eventMonster ~= nil then
        local ____type
        if gameData.randomEventType == GameRandomEventType["金币怪"] then
            ____type = UnitType.Gold_Monster
        elseif gameData.randomEventType == GameRandomEventType["木头怪"] then
            ____type = UnitType.Wood_Monster
        elseif gameData.randomEventType == GameRandomEventType["炮车怪"] then
            ____type = UnitType.Cannon_Monster
        elseif gameData.randomEventType == GameRandomEventType["福利怪入侵"] then
            ____type = UnitType.Weal_Monster
        end
        __TS__ArrayForEach(
            eventMonster.monster,
            function(____, a) return func(nil, a.id, ____type) end
        )
    end
    __TS__ArraySort(
        poolList,
        function(____, a, b) return a[1].pos - b[1].pos end
    )
    for ____, playerId in ipairs(playerIdList) do
        input[playerId] = {monsterList = {}}
        local inputData = input[playerId]
        for ____, p in ipairs(poolList) do
            local hasEffect = __TS__ArrayFindIndex(
                level.monsterEffect,
                function(____, a) return a == p[1].type end
            ) ~= -1
            local id = p[1].id
            local num = p[2]
            local randomEventType = p[3]
            local monster = monsterConfigMap[id]
            do
                local i = 0
                while i < num do
                    local pro = monster.property
                    local sk = self:analysisSkill(monster.skill)
                    if eventMonster ~= nil then
                        for ____, e in ipairs(eventMonster.effect) do
                            local q = sk.effects[e.id]
                            sk.effects[e.id] = (q or 0) + 1
                        end
                    end
                    if randomEventType >= 0 and randomEventType or (monster.type == 1 and UnitType.MONSTER or UnitType.ELITE) == UnitType.ELITE then
                        local bigBlessData = datas.global:getSingle(BigBlessData)
                        local ____opt_16 = bigBlessData and bigBlessData.bigBless
                        if (____opt_16 and ____opt_16.id) == 16 then
                            local newPro = JSON:parse(JSON:stringify(monster.property))
                            newPro.attack = pro.attack + pro.attack * bigBlessData.bigBless.a
                            newPro.apAttack = pro.apAttack + pro.apAttack * bigBlessData.bigBless.a
                            pro = newPro
                        end
                    end
                    local ____inputData_monsterList_37 = inputData.monsterList
                    local ____writeableDatas_players_playerId_36 = writeableDatas.players[playerId]
                    local ____monster_name_21 = monster.name
                    local function ____temp_22()
                        return monster.showName.value
                    end
                    local ____player2battleGround_playerId_23 = player2battleGround[playerId]
                    local ____neutralPlayer_id_24 = neutralPlayer.id
                    local ____temp_25 = player2King[playerId] == BattleGroundId.LEFT_KING and hellLeft or hellRight
                    local ____monster_role_26 = monster.role
                    local ____monster_pos_27 = monster.pos
                    local ____temp_28 = randomEventType >= 0 and randomEventType or (monster.type == 1 and UnitType.MONSTER or UnitType.ELITE)
                    local ____pro_29 = pro
                    local ____sk_normalSkills_30 = sk.normalSkills
                    local ____sk_commandSkills_31 = sk.commandSkills
                    local ____sk_heroSkills_32 = sk.heroSkills
                    local ____sk_hiddenSkills_33 = sk.hiddenSkills
                    local ____sk_simpleSkills_34 = sk.simpleSkills
                    local ____sk_effects_35 = sk.effects
                    local ____temp_20
                    if GameUtils:getLevelType(level) == 2 then
                        ____temp_20 = true
                    else
                        ____temp_20 = false
                    end
                    ____inputData_monsterList_37[#____inputData_monsterList_37 + 1] = {datas = ____writeableDatas_players_playerId_36, params = {
                        name = ____monster_name_21,
                        showName = ____temp_22,
                        battleGroundId = ____player2battleGround_playerId_23,
                        creatorPlayerId = ____neutralPlayer_id_24,
                        y3Player = neutralPlayer,
                        pos = ____temp_25,
                        monster = monster,
                        roleId = ____monster_role_26,
                        rolePos = ____monster_pos_27,
                        type = ____temp_28,
                        propertyConfig = ____pro_29,
                        normalSkills = ____sk_normalSkills_30,
                        commandSkills = ____sk_commandSkills_31,
                        heroSkills = ____sk_heroSkills_32,
                        hiddenSkills = ____sk_hiddenSkills_33,
                        simpleSKills = ____sk_simpleSkills_34,
                        effects = ____sk_effects_35,
                        safeTable = ____temp_20
                    }, ext = {hasEffect = hasEffect, randomEventType = randomEventType, monsterConfig = monster}}
                    i = i + 1
                end
            end
        end
    end
    self:startCreateDispatchMonster(
        input,
        output,
        function(____, playerId, unit, index, ext)
            if unit.monster ~= nil then
                unit:getWritableEntity().activeData.level = level.monsterLevel
                unit:getWritableEntity():updateBaseProperties(
                    unit:getWritableEntity(),
                    propertyConfig2PropertyNumbers(nil, unit.monster.property, level.monsterLevel)
                )
            end
            local unitEntity = unit:getWritableEntity()
            if ext.randomEventType >= 0 then
                unitEntity:updateBaseProperties(
                    unitEntity,
                    {
                        _____57FA_7840_8840_91CF_4E0A_9650,
                        unitEntity:p(_____57FA_7840_8840_91CF_4E0A_9650) * (1 + eventMonster.hpChange),
                        _____653B_51FB,
                        unitEntity:p(_____653B_51FB) * (1 + eventMonster.attackChange),
                        _____6CD5_672F_653B_51FB,
                        unitEntity:p(_____6CD5_672F_653B_51FB) * (1 + eventMonster.attackChange)
                    }
                )
            else
                unitEntity:updateBaseProperties(
                    unitEntity,
                    {
                        _____57FA_7840_8840_91CF_4E0A_9650,
                        unitEntity:p(_____57FA_7840_8840_91CF_4E0A_9650) * (1 + level.hpChange),
                        _____653B_51FB,
                        unitEntity:p(_____653B_51FB) * (1 + level.attackChange),
                        _____6CD5_672F_653B_51FB,
                        unitEntity:p(_____6CD5_672F_653B_51FB) * (1 + level.attackChange)
                    }
                )
            end
            if ext.monsterConfig.changeFrom ~= nil and #ext.monsterConfig.changeFrom > 0 and ext.monsterConfig.changeTo ~= nil and #ext.monsterConfig.changeTo > 0 and #ext.monsterConfig.changeTo == #ext.monsterConfig.changeFrom then
                do
                    local index = 0
                    while index < #ext.monsterConfig.changeFrom do
                        local from = ext.monsterConfig.changeFrom[index + 1]
                        local to = ext.monsterConfig.changeTo[index + 1]
                        local ____opt_38 = unit:getWritableEntity().y3Unit
                        if ____opt_38 ~= nil then
                            ____opt_38:change_animation(from, to)
                        end
                        index = index + 1
                    end
                end
            end
            local pathIds = mapConfig.monsterRoads[playerId]
            local road = y3.road.get_road_by_res_id(pathIds[index % #pathIds + 1])
            unit.path = vue.markRaw({
                ["路径"] = road,
                ["是否可攻击"] = true,
                ["偏离后就返回"] = false,
                ["移动模式"] = 0,
                ["就近选择起始点"] = true
            })
            unit:getWritableEntity().activeData.pauseTimer = true
        end
    )
end
function CreateUnitController.prototype.dispatchMonsterLevel(self)
    if self.needDispatchMonster == nil then
        error("怪物派发池为空", 0)
    end
    self:dispatchMonster(
        self.needDispatchMonster,
        function(____, unit)
            unit:getWritableEntity().activeData.pauseTimer = false
        end
    )
    self.needDispatchMonster = nil
end
function CreateUnitController.prototype.createMercenary(self, playerId, cfgId, point, mercenaryLevel, effects, randomPos)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local level = levelConfigMap[gameData.level]
    local cfg = mercenaryConfigMap[cfgId]
    local pos_idx = cfg.pos == 3 and 1 or 0
    local pro = cfg.property
    local sk = self:analysisSkill(cfg.skill)
    local skinCfg = heroSkinManager:getMercenarySkinCfg(cfg.id, playerId)
    local skinId = skinCfg ~= nil and skinCfg.role or cfg.role
    local function create(____, datas, creatorPlayerId, y3Player, battleGroundId, pos, unitType)
        local monsterUnit = datas:create(UnitData)
        monsterUnit:init({
            name = cfg.name,
            showName = function() return cfg.showName.value end,
            battleGroundId = battleGroundId,
            creatorPlayerId = creatorPlayerId,
            y3Player = y3Player,
            pos = pos,
            posIndex = pos_idx,
            mercenary = cfg,
            roleId = skinId,
            rolePos = cfg.pos,
            type = unitType,
            propertyConfig = pro,
            normalSkills = sk.normalSkills,
            commandSkills = sk.commandSkills,
            heroSkills = sk.heroSkills,
            hiddenSkills = sk.hiddenSkills,
            simpleSKills = sk.simpleSkills,
            effects = sk.effects,
            safeTable = false
        })
        for ____, buff in ipairs(playerData.membersBuff) do
            monsterUnit:getWritableEntity():addEffect(
                monsterUnit:getWritableEntity(),
                buff,
                nil
            )
        end
        for ____, buff in ipairs(playerData.mercenaryMemberBuff) do
            monsterUnit:getWritableEntity():addEffect(
                monsterUnit:getWritableEntity(),
                buff,
                nil
            )
        end
        monsterUnit:getWritableEntity():setAngle(180, 0)
        if skinCfg ~= nil then
            if skinCfg.changeFrom ~= nil and #skinCfg.changeFrom > 0 and skinCfg.changeTo ~= nil and #skinCfg.changeTo > 0 and #skinCfg.changeTo == #skinCfg.changeFrom then
                do
                    local index = 0
                    while index < #skinCfg.changeFrom do
                        local from = skinCfg.changeFrom[index + 1]
                        local to = skinCfg.changeTo[index + 1]
                        local ____opt_40 = monsterUnit:getWritableEntity().y3Unit
                        if ____opt_40 ~= nil then
                            ____opt_40:change_animation(from, to)
                        end
                        index = index + 1
                    end
                end
            end
            if skinCfg.roleEffect ~= nil and skinCfg.roleEffect ~= 0 then
                local ____opt_42 = monsterUnit:getWritableEntity().y3Unit
                if ____opt_42 ~= nil then
                    ____opt_42:add_buff({
                        key = skinCfg.roleEffect,
                        time = -1,
                        source = monsterUnit:getWritableEntity().y3Unit,
                        ability = nil,
                        pulse = nil,
                        stacks = 1,
                        data = nil
                    })
                end
            end
        else
            if cfg.changeFrom ~= nil and #cfg.changeFrom > 0 and cfg.changeTo ~= nil and #cfg.changeTo > 0 and #cfg.changeTo == #cfg.changeFrom then
                do
                    local index = 0
                    while index < #cfg.changeFrom do
                        local from = cfg.changeFrom[index + 1]
                        local to = cfg.changeTo[index + 1]
                        local ____opt_44 = monsterUnit:getWritableEntity().y3Unit
                        if ____opt_44 ~= nil then
                            ____opt_44:change_animation(from, to)
                        end
                        index = index + 1
                    end
                end
            end
        end
        if gameData.mode == GameMode["终极大战"] then
            monsterUnit:setReady(true)
            monsterUnit:setBattleGroundId(BattleGroundId.LAST_BATTLE, false)
            if player2King[playerId] == BattleGroundId.LEFT_KING then
                monsterUnit:getWritableEntity():setAngle(90, 0)
            else
                monsterUnit:getWritableEntity():setAngle(-90, 0)
            end
        end
        monsterUnit:getWritableEntity():updateBaseProperties(
            monsterUnit:getWritableEntity(),
            propertyConfig2PropertyNumbers(nil, pro, mercenaryLevel or cfg.level)
        )
        if gameData.randomEventType == GameRandomEventType["无限火力"] then
            monsterUnit:getWritableEntity():addEffect(
                monsterUnit:getWritableEntity(),
                40015,
                nil
            )
            console:log("无限火力")
        elseif gameData.randomEventType == GameRandomEventType["疯狂进攻"] then
            monsterUnit:getWritableEntity():addEffect(
                monsterUnit:getWritableEntity(),
                40016,
                nil
            )
            console:log("疯狂进攻")
        end
        if effects ~= nil then
            for ____, e in ipairs(effects) do
                if e.count > 0 then
                    monsterUnit:getWritableEntity():addEffect(
                        monsterUnit:getWritableEntity(),
                        e.id,
                        e.count
                    )
                end
            end
        end
        if gameData.level == 3 then
            local count = #__TS__ArrayFilter(
                datas:getAll(UnitData),
                function(____, a) return a.type == UnitType.MERCENARY end
            )
            if count == 1 then
                sceneUIManager:showAll(monsterUnit.entity.y3Unit.id, "head", ClickMe)
            end
        end
        if isPvpModeRobot(nil) then
            local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
            if config ~= nil then
                if playerId <= 4 then
                    for ____, buff in ipairs(config.ourTowerBuff) do
                        monsterUnit:getWritableEntity():addEffect(
                            monsterUnit:getWritableEntity(),
                            buff.id
                        )
                        console:log(
                            ((("[Robot] 佣兵 " .. tostring(playerId)) .. " ") .. monsterUnit.entity:getName()) .. " 我方佣兵添加单机模式buff",
                            buff.id,
                            buff.name
                        )
                    end
                else
                    for ____, buff in ipairs(config.enemyTowerBuff) do
                        monsterUnit:getWritableEntity():addEffect(
                            monsterUnit:getWritableEntity(),
                            buff.id
                        )
                        console:log(
                            ((("[Robot] 佣兵 " .. tostring(playerId)) .. " ") .. monsterUnit.entity:getName()) .. " 敌方佣兵添加单机模式buff",
                            buff.id,
                            buff.name
                        )
                    end
                end
            end
        end
        return monsterUnit
    end
    local playerDatas = writeableDatas.players[playerId]
    local fromPlayer = y3.player.get_by_id(playerId)
    local collision_x = 4
    local collision_y = 4
    local pos = point
    local areaId = mapConfig["玩家佣兵据点"][playerId]
    if gameData.mode == GameMode["终极大战"] then
        if player2King[playerId] == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        else
            areaId = mapConfig["终极大战左边阵营"]
        end
    end
    local area = y3.area.get_rectangle_by_res_id(areaId)
    local grid = nil
    if pos == nil then
        local line = 1
        if cfg.atkDistance <= 300 then
            line = 1 * 4 - 4
        elseif cfg.atkDistance <= 500 then
            line = 3 * 4 - 4
        elseif cfg.atkDistance <= 700 then
            line = 5 * 4 - 4
        elseif cfg.atkDistance <= 900 then
            line = 7 * 4 - 4
        elseif cfg.atkDistance <= 1200 then
            line = 8 * 4 - 4
        else
            line = 9 * 4 - 4
        end
        grid = gridController:findAGrid(
            playerId,
            line,
            collision_x,
            collision_y,
            randomPos
        )
        if grid == nil then
            error("无法创建单位", 0)
        end
        pos = y3.point.create(
            area:get_min_x() + (grid.x + collision_x / 2) * 50,
            area:get_min_y() + (grid.y + collision_y / 2) * 50
        )
    end
    if gameData.level == 3 then
        local count = #__TS__ArrayFilter(
            playerDatas:getAll(UnitData),
            function(____, a) return a.type == UnitType.MERCENARY end
        )
        if count == 0 then
            pos = y3.point.create(
                area:get_min_x() + (8 + collision_x / 2) * 50,
                area:get_min_y() + (20 + collision_y / 2) * 50
            )
        end
    end
    local monsterUnit = create(
        nil,
        playerDatas,
        playerId,
        y3.player.get_by_id(playerId),
        player2battleGround[playerId],
        pos,
        UnitType.MERCENARY
    )
    if grid ~= nil then
        monsterUnit.grid_x = grid.x
        monsterUnit.grid_y = grid.y
    end
    monsterUnit.collision_x = collision_x
    monsterUnit.collision_y = collision_y
    monsterUnit.buildId = skinCfg ~= nil and skinCfg.buildId or cfg.buildId
    if monsterUnit.grid_x ~= nil and monsterUnit.grid_x ~= 0 then
        gridController:addGrid(playerId, monsterUnit.id)
    else
        gridController:addGridByPos(playerId, monsterUnit.id)
    end
    local createCount = 1
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_46 = bigBlessData and bigBlessData.bigBless
    if (____opt_46 and ____opt_46.id) == 13 then
        createCount = createCount * 2
    end
    if GameUtils:getLevelType(level) == 4 then
        local playerData = playerDatas:getOrCreateSingle(PlayerData)
        for ____, targetPlayerId in ipairs(playerData.imagePlayerId) do
            do
                local i = 0
                while i < createCount do
                    local targetPlayer = writeableDatas.players[targetPlayerId]
                    local targetPlayerData = targetPlayer:getOrCreateSingle(PlayerData)
                    if self.needDispatchMonster == nil then
                        self.needDispatchMonster = {}
                    end
                    local targetDispatch = self.needDispatchMonster[targetPlayerId]
                    if targetDispatch == nil then
                        self.needDispatchMonster[targetPlayerId] = {unitList = {}, total = 0}
                        targetDispatch = self.needDispatchMonster[targetPlayerId]
                    end
                    local unit = create(
                        nil,
                        targetPlayer,
                        player2King[playerId],
                        y3.player.get_by_id(playerId),
                        player2battleGround[targetPlayerId],
                        player2King[targetPlayerId] == BattleGroundId.LEFT_KING and hellLeft or hellRight,
                        UnitType.MONSTER
                    )
                    unit.kill_gold = cfg.gold
                    unit.dispatched = false
                    local ____targetDispatch_unitList_50 = targetDispatch.unitList
                    ____targetDispatch_unitList_50[#____targetDispatch_unitList_50 + 1] = unit
                    targetDispatch.total = targetDispatch.total + 1
                    targetPlayerData.leftMonster = targetPlayerData.leftMonster + 1
                    gameData.leftMonster = gameData.leftMonster + 1
                    if player2King[targetPlayerId] == BattleGroundId.LEFT_KING then
                        gameData.teamALeftMonster = gameData.teamALeftMonster + 1
                    else
                        gameData.teamBLeftMonster = gameData.teamBLeftMonster + 1
                    end
                    logLeftMonster(nil)
                    local onDied
                    onDied = function()
                        unit.entity:off("单位-死亡", onDied)
                        targetPlayerData.leftMonster = targetPlayerData.leftMonster - 1
                        gameData.leftMonster = gameData.leftMonster - 1
                        if player2King[targetPlayerId] == BattleGroundId.LEFT_KING then
                            gameData.teamALeftMonster = gameData.teamALeftMonster - 1
                        else
                            gameData.teamBLeftMonster = gameData.teamBLeftMonster - 1
                        end
                        logLeftMonster(nil)
                    end
                    unit.entity:on("单位-死亡", onDied)
                    local list = targetPlayer:getListByIndex(UnitData, "type", UnitType.MERCENARY)
                    local pathIds = mapConfig.monsterRoads[targetPlayerId]
                    local road = y3.road.get_road_by_res_id(pathIds[#list % #pathIds + 1])
                    unit.path = vue.markRaw({
                        ["路径"] = road,
                        ["是否可攻击"] = true,
                        ["偏离后就返回"] = false,
                        ["移动模式"] = 0,
                        ["就近选择起始点"] = true
                    })
                    unit:getWritableEntity().activeData.pauseTimer = true
                    i = i + 1
                end
            end
        end
    end
end
function CreateUnitController.prototype.dispatchImageLevel(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if self.needDispatchMonster == nil then
        self.needDispatchMonster = {}
    end
    for ____, playerId in ipairs(playerIdList) do
        local player = writeableDatas.players[playerId]
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        for ____, imageId in ipairs(playerData.imagePlayerId) do
            console:log("设置镜像:", imageId)
            local imagePlayer = y3.player.get_by_id(imageId)
            local imageData = writeableDatas.players[imageId]:getOrCreateSingle(PlayerData)
            local imagePlayerUnit = writeableDatas.players[imageId]:getOrCreateSingle(UnitData)
            local imageGenre = writeableDatas.players[imageId]:getOrCreateSingle(PlayerGenreData)
            local otherKingPlayer = y3.player.get_by_id(player2King[imageId])
            local otherUnit = imagePlayerUnit
            local monsterUnit = player:create(UnitData)
            local cloneParams = otherUnit.entity:clone()
            monsterUnit:init({
                name = otherUnit.entity:getName(),
                showName = otherUnit.showName,
                battleGroundId = player2battleGround[playerId],
                creatorPlayerId = otherKingPlayer.id,
                y3Player = imagePlayer,
                pos = player2King[playerId] == BattleGroundId.LEFT_KING and hellLeft or hellRight,
                rolePos = otherUnit.pos,
                roleId = otherUnit.roleId,
                type = UnitType.HERO_IMAGE,
                isHero = true,
                propertyConfig = propertyNumbers2PropertyConfig(nil, cloneParams.baseProperties),
                defaultValues = cloneParams.defaultValues,
                normalSkills = cloneParams.normalSkills,
                commandSkills = cloneParams.commandSkills,
                heroSkills = cloneParams.heroSkills,
                hiddenSkills = cloneParams.hiddenSkills,
                simpleSKills = cloneParams.simpleSKills,
                effectList = cloneParams.effects,
                safeTable = true
            })
            local monsterUnitEntity = monsterUnit:getWritableEntity()
            for genre in pairs(imageGenre.skillByQualitys) do
                local quality = imageGenre.skillByQualitys[genre]
                local tags = quality[1] + quality[2] * 2 + quality[3] * 3
                monsterUnitEntity:genStatistics(genreStatisticsMap[genre], tags)
            end
            monsterUnitEntity.activeData.level = imageData.level
            local ____opt_51 = monsterUnitEntity.y3Unit
            if ____opt_51 ~= nil then
                ____opt_51:set_level(imageData.level)
            end
            local skinConfig = __TS__ArrayFind(
                skinConfigList,
                function(____, a) return a.role == otherUnit.roleId end
            )
            if skinConfig ~= nil then
                console:log((("皮肤id " .. tostring(skinConfig.id)) .. ", 玩家id ") .. tostring(playerId))
            end
            if skinConfig ~= nil and skinConfig.roleEffect ~= nil and skinConfig.roleEffect ~= 0 then
                local ____opt_53 = monsterUnitEntity.y3Unit
                if ____opt_53 ~= nil then
                    ____opt_53:add_buff({
                        key = skinConfig.roleEffect,
                        time = -1,
                        source = monsterUnitEntity.y3Unit,
                        ability = nil,
                        pulse = nil,
                        stacks = 1,
                        data = nil
                    })
                end
            end
            if skinConfig ~= nil then
                if skinConfig.changeFrom ~= nil and #skinConfig.changeFrom > 0 and skinConfig.changeTo ~= nil and #skinConfig.changeTo > 0 and #skinConfig.changeTo == #skinConfig.changeFrom then
                    do
                        local index = 0
                        while index < #skinConfig.changeFrom do
                            local from = skinConfig.changeFrom[index + 1]
                            local to = skinConfig.changeTo[index + 1]
                            local ____opt_55 = monsterUnitEntity.y3Unit
                            if ____opt_55 ~= nil then
                                ____opt_55:change_animation(from, to)
                            end
                            index = index + 1
                        end
                    end
                end
            end
            local archiveData = writeableDatas.players[imageId]:getOrCreateSingle(InGameArchiveData)
            local ____opt_57 = archiveData.playerInfo
            local heroInfo = ____opt_57 and ____opt_57.heroes and archiveData.playerInfo.heroes[tostring(imageData.hero.id)]
            if heroInfo ~= nil then
                setHeroHpBar(nil, monsterUnitEntity.y3Unit, heroInfo.lv)
            end
            local particle = y3.particle.create({
                type = 134277678,
                angle = 0,
                target = monsterUnitEntity.y3Unit,
                time = nil,
                scale = 1,
                socket = "root",
                follow_rotation = nil,
                follow_scale = true,
                height = nil,
                immediate = true,
                detach = nil
            })
            monsterUnitEntity:modifyValue(
                monsterUnitEntity,
                1,
                monsterUnitEntity:formula(Formula["展示面板_血量上限"]),
                true
            )
            local need = self.needDispatchMonster[playerId]
            if need == nil then
                self.needDispatchMonster[playerId] = {total = 0, unitList = {}}
                need = self.needDispatchMonster[playerId]
            end
            monsterUnit.dispatched = false
            local ____need_unitList_59 = need.unitList
            ____need_unitList_59[#____need_unitList_59 + 1] = monsterUnit
            playerData.leftMonster = playerData.leftMonster + 1
            gameData.leftMonster = gameData.leftMonster + 1
            if player2King[playerId] == BattleGroundId.LEFT_KING then
                gameData.teamALeftMonster = gameData.teamALeftMonster + 1
            else
                gameData.teamBLeftMonster = gameData.teamBLeftMonster + 1
            end
            local onDied
            onDied = function()
                monsterUnitEntity:off("单位-死亡", onDied)
                playerData.leftMonster = playerData.leftMonster - 1
                gameData.leftMonster = gameData.leftMonster - 1
                if player2King[playerId] == BattleGroundId.LEFT_KING then
                    gameData.teamALeftMonster = gameData.teamALeftMonster - 1
                else
                    gameData.teamBLeftMonster = gameData.teamBLeftMonster - 1
                end
                console:log("英雄镜像死亡", playerId)
                logLeftMonster(nil)
            end
            monsterUnitEntity:on("单位-死亡", onDied)
            local pathIds = mapConfig.monsterRoads[playerId]
            local road = y3.road.get_road_by_res_id(random:randomList(pathIds))
            monsterUnit.path = vue.markRaw({
                ["路径"] = road,
                ["是否可攻击"] = true,
                ["偏离后就返回"] = false,
                ["移动模式"] = 0,
                ["就近选择起始点"] = true
            })
            monsterUnitEntity.activeData.pauseTimer = true
            __TS__ArraySort(
                need.unitList,
                function(____, a, b) return a.pos - b.pos end
            )
            if y3.game.is_debug_mode() then
                for k in pairs(Formula) do
                    local v = Formula[k]
                    if type(v) == "number" then
                        monsterUnitEntity:f(v)
                    end
                end
                for e in pairs(otherUnit.entity.effects) do
                    local effect = otherUnit.entity.effects[e]
                    local monsterEffect = monsterUnitEntity.effects[e]
                    if monsterEffect ~= nil and effect.id ~= nil and monsterEffect.id ~= nil and effect.activeData._propertiesMap ~= nil then
                        for pid in pairs(effect.activeData._propertiesMap) do
                            local p = effect.activeData._propertiesMap[pid]
                            local monsterP = monsterEffect.activeData._propertiesMap ~= nil and monsterEffect.activeData._propertiesMap[pid] or 0
                            if p ~= monsterP then
                                console:warn_no_trace("======= 镜像单位属性异常 =======")
                                console:log(
                                    monsterEffect.config.name .. ("(" .. tostring(monsterEffect.config.id)) .. ")",
                                    "属性ID：" .. pid
                                )
                                console:log("英雄", "镜像")
                                for ____, p in ipairs(PropertiesList) do
                                    console:log(
                                        p.name .. ("(" .. tostring(p.key)) .. ")",
                                        effect.owner:p(p.key),
                                        monsterEffect.owner:p(p.key)
                                    )
                                end
                                console:log("数量", effect.activeData.quantity, monsterEffect.activeData.quantity)
                                console:log("值", p, monsterP)
                                console:warn("堆栈")
                            end
                        end
                    end
                end
            end
        end
    end
    self:dispatchMonster(
        self.needDispatchMonster,
        function(____, unit)
            unit:getWritableEntity().activeData.pauseTimer = false
        end
    )
    self.needDispatchMonster = nil
end
function CreateUnitController.prototype.createMonsterByMonsterConfig(self, datas, y3Player, battleGroundId, pos, monster)
    local monsterUnit = datas:create(UnitData)
    local pro = monster.property
    local sk = self:analysisSkill(monster.skill)
    monsterUnit:init({
        name = monster.name,
        showName = function() return monster.showName.value end,
        battleGroundId = battleGroundId,
        creatorPlayerId = y3Player.id,
        y3Player = y3Player,
        pos = pos,
        roleId = monster.role,
        rolePos = monster.pos,
        type = monster.type == 1 and UnitType.MONSTER or UnitType.ELITE,
        propertyConfig = pro,
        normalSkills = sk.normalSkills,
        commandSkills = sk.commandSkills,
        heroSkills = sk.heroSkills,
        hiddenSkills = sk.hiddenSkills,
        simpleSKills = sk.simpleSkills,
        effects = sk.effects,
        safeTable = false
    })
    return monsterUnit
end
function CreateUnitController.prototype.createAssassin(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local cfg = __TS__ArrayFind(
        assassinConfigList,
        function(____, a) return a.wave.id == gameData.level end
    )
    if cfg == nil then
        console:error("刺客id不存在", gameData.level)
        return
    end
    local function func(____, index)
        local road = mapConfig["刺客路径"][index + 1]
        local area = mapConfig["刺客出生区域"][index + 1]
        local point = areaController:get_circle_area(area):get_center_point()
        local battleGroundId = index == 0 and BattleGroundId.LEFT_KING or BattleGroundId.RIGHT_KING
        local player = index == 0 and y3.player.get_by_id(BattleGroundId.LEFT_KING) or y3.player.get_by_id(BattleGroundId.RIGHT_KING)
        local neutralPlayer = y3.player.get_by_id(PlayerId.NEUTRAL_AND_HOSTILE)
        __TS__ArrayForEach(
            cfg.monsterList,
            function(____, monsterConfig)
                local monster = writeableDatas.players[battleGroundId]:create(UnitData)
                local pro = monsterConfig.property
                local sk = self:analysisSkill(monsterConfig.skill)
                monster:init({
                    name = monsterConfig.name,
                    showName = function() return monsterConfig.showName.value end,
                    battleGroundId = battleGroundId,
                    creatorPlayerId = neutralPlayer.id,
                    y3Player = neutralPlayer,
                    pos = point,
                    roleId = monsterConfig.role,
                    rolePos = monsterConfig.pos,
                    type = UnitType.Assassin,
                    propertyConfig = pro,
                    normalSkills = sk.normalSkills,
                    commandSkills = sk.commandSkills,
                    heroSkills = sk.heroSkills,
                    hiddenSkills = sk.hiddenSkills,
                    simpleSKills = sk.simpleSkills,
                    effects = sk.effects,
                    safeTable = false
                })
                local monsterEntity = monster:getWritableEntity()
                monsterEntity:updateBaseProperties(monsterEntity, {
                    _____8840_91CF_767E_5206_6BD4,
                    cfg.hpChange,
                    _____7269_7406_653B_51FB_767E_5206_6BD4,
                    cfg.attackChange,
                    _____6CD5_672F_653B_51FB_767E_5206_6BD4,
                    cfg.attackChange
                })
                monster.path = vue.markRaw({
                    ["路径"] = y3.road.get_road_by_res_id(road),
                    ["是否可攻击"] = true,
                    ["偏离后就返回"] = false,
                    ["移动模式"] = 0,
                    ["就近选择起始点"] = true
                })
                monsterEntity:setMoveAlongRoad(monster.path)
                console:log("创建怪物", monster.id)
                __TS__ArrayForEach(
                    cfg.effect,
                    function(____, a)
                        monsterEntity:addEffect(monsterEntity, a, nil)
                    end
                )
                monsterEntity:on(
                    "单位-死亡",
                    function()
                        gameData.leftMonster = gameData.leftMonster - 1
                        if index == 0 then
                            gameData.teamALeftMonster = gameData.teamALeftMonster - 1
                        else
                            gameData.teamBLeftMonster = gameData.teamBLeftMonster - 1
                        end
                        console:log("刺客死亡", index)
                        logLeftMonster(nil)
                    end
                )
                gameData.leftMonster = gameData.leftMonster + 1
                if index == 0 then
                    gameData.teamALeftMonster = gameData.teamALeftMonster + 1
                else
                    gameData.teamBLeftMonster = gameData.teamBLeftMonster + 1
                end
            end
        )
        for ____, playerId in ipairs(playerIdList) do
            if player2King[playerId] == battleGroundId then
                uiController:send_signal2(playerId, point)
            end
        end
    end
    func(nil, 0)
    func(nil, 1)
end
function CreateUnitController.prototype.gotoAlertArea(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if player.gotoAlertArea then
        return
    end
    local playerData = writeableDatas.players[playerId]
    local areaId = mapConfig["玩家警戒区域"][playerId]
    local area = y3.area.get_rectangle_by_res_id(areaId)
    local areaY = area:get_center_point():get_y()
    local function go(____, unit)
        local pos = unit.entity:getPosition()
        unit.entity.y3Unit:attack_move(y3.point.create(pos.x, areaY))
        unit.moveState = "gotoAlert"
    end
    local unitDatas = playerData:getListByIndex(UnitData, "type", UnitType.MERCENARY)
    for ____, unit in ipairs(unitDatas) do
        go(nil, unit)
    end
    local hero = playerData:getOrCreateSingle(UnitData)
    go(nil, hero)
    player.gotoAlertArea = true
end
function CreateUnitController.prototype.createKing(self, playerId, p)
    local gameData = datas.global:getSingle(GameData)
    local player = y3.player.get_by_id(playerId)
    local unitData = writeableDatas.players[playerId]:create(UnitData)
    local unitId = mapConfig.kingRoles[p + 1]
    local posId = mapConfig.kingPoints[p + 1]
    local pos = y3.point.get_point_by_res_id(posId)
    local config = __TS__ArrayFind(
        kingConfigMap_type[1],
        function(____, a) return a.level == gameData.level + 1 end
    )
    local pro = config.property
    local sk = self:analysisSkill(config.skill)
    unitData:init({
        name = "国王",
        showName = function() return playerId == PlayerId.LEFT_KING and i18n["local"](i18n, "女王") or i18n["local"](i18n, "国王") end,
        battleGroundId = player2battleGround[playerId],
        creatorPlayerId = player.id,
        y3Player = player,
        pos = pos,
        roleId = unitId,
        rolePos = 0,
        type = UnitType.KING,
        propertyConfig = pro,
        normalSkills = sk.normalSkills,
        commandSkills = sk.commandSkills,
        heroSkills = sk.heroSkills,
        hiddenSkills = sk.hiddenSkills,
        simpleSKills = sk.simpleSkills,
        effects = sk.effects,
        safeTable = true
    })
    unitData:getWritableEntity():setAngle(180, 0)
    unitData:getWritableEntity():setBaseState(
        unitData:getWritableEntity(),
        _____9738_4F53,
        true
    )
    unitData:getWritableEntity():setBaseState(
        unitData:getWritableEntity(),
        _____514D_75AB_63A7_5236,
        true
    )
    if isPvpModeRobot(nil) then
        local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
        if config ~= nil then
            if playerId == PlayerId.LEFT_KING then
                for ____, buff in ipairs(config.ourKingBuff) do
                    unitData:getWritableEntity():addEffect(
                        unitData:getWritableEntity(),
                        buff.id
                    )
                    console:log(
                        ((("[Robot] 国王 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 我方国王添加单机模式buff",
                        buff.id,
                        buff.name
                    )
                end
            else
                for ____, buff in ipairs(config.enemyKingBuff) do
                    unitData:getWritableEntity():addEffect(
                        unitData:getWritableEntity(),
                        buff.id
                    )
                    console:log(
                        ((("[Robot] 国王 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 敌方国王添加单机模式buff",
                        buff.id,
                        buff.name
                    )
                end
            end
        end
    end
end
function CreateUnitController.prototype.createCrystal(self, playerId, p)
    local gameData = datas.global:getSingle(GameData)
    local player = y3.player.get_by_id(playerId)
    local unitData = writeableDatas.players[playerId]:create(UnitData)
    local unitId = 0
    local posId = 0
    if playerId == PlayerId.LEFT_KING then
        unitId = mapConfig["A国王对应水晶形象"][p + 1]
        posId = mapConfig["A国王对应水晶坐标"][p + 1]
    else
        unitId = mapConfig["B国王对应水晶形象"][p + 1]
        posId = mapConfig["B国王对应水晶坐标"][p + 1]
    end
    local pos = y3.point.get_point_by_res_id(posId)
    local config = __TS__ArrayFind(
        kingConfigMap_type[2],
        function(____, a) return a.level == gameData.level + 1 end
    )
    local pro = config.property
    local sk = self:analysisSkill(config.skill)
    unitData:init({
        name = "水晶",
        showName = function() return i18n["local"](i18n, "水晶") end,
        battleGroundId = player2battleGround[playerId],
        creatorPlayerId = player.id,
        y3Player = player,
        pos = pos,
        roleId = unitId,
        rolePos = 0,
        type = UnitType.KING,
        propertyConfig = pro,
        normalSkills = sk.normalSkills,
        commandSkills = sk.commandSkills,
        heroSkills = sk.heroSkills,
        hiddenSkills = sk.hiddenSkills,
        simpleSKills = sk.simpleSkills,
        effects = sk.effects,
        safeTable = true
    })
    unitData:getWritableEntity():setBaseState(
        unitData:getWritableEntity(),
        _____9738_4F53,
        true
    )
    unitData:getWritableEntity():setBaseState(
        unitData:getWritableEntity(),
        _____514D_75AB_63A7_5236,
        true
    )
    if isPvpModeRobot(nil) then
        local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
        if config ~= nil then
            if playerId <= PlayerId.LEFT_KING then
                for ____, buff in ipairs(config.ourTowerBuff) do
                    unitData:getWritableEntity():addEffect(
                        unitData:getWritableEntity(),
                        buff.id
                    )
                    console:log(
                        ((("[Robot] 防御塔 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 我方防御塔添加单机模式buff",
                        buff.id,
                        buff.name
                    )
                end
            else
                for ____, buff in ipairs(config.enemyTowerBuff) do
                    unitData:getWritableEntity():addEffect(
                        unitData:getWritableEntity(),
                        buff.id
                    )
                    console:log(
                        ((("[Robot] 防御塔 " .. tostring(playerId)) .. " ") .. unitData.entity:getName()) .. " 敌方防御塔添加单机模式buff",
                        buff.id,
                        buff.name
                    )
                end
            end
        end
    end
end
function CreateUnitController.prototype.createKingUnit(self)
    self:createCrystal(PlayerId.LEFT_KING, 0)
    self:createCrystal(PlayerId.LEFT_KING, 1)
    self:createKing(PlayerId.LEFT_KING, 0)
    self:createCrystal(PlayerId.RIGHT_KING, 0)
    self:createCrystal(PlayerId.RIGHT_KING, 1)
    self:createKing(PlayerId.RIGHT_KING, 1)
end
function CreateUnitController.prototype.startCreateDispatchMonster(self, input, output, onCreate)
    self.autoCreateMonster = self:createDispatchMonster(input, output, onCreate)
    self.autoCreateTimer = y3.ltimer.loop_frame(
        1,
        function()
            if self.autoCreateMonster:next().done then
                self.autoCreateMonster = nil
                self.autoCreateTimer:remove()
                self.autoCreateTimer = nil
            end
        end
    )
    return self.autoCreateMonster
end
CreateUnitController.prototype.createDispatchMonster = __TS__Generator(function(self, input, output, onCreate)
    local isNextAll = false
    local count = 0
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    for playerId in pairs(input) do
        local data = input[playerId]
        output[playerId] = {unitList = {}, total = 0}
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        local count = #data.monsterList
        output[playerId].total = count
        playerData.leftMonster = count
        gameData.leftMonster = gameData.leftMonster + count
        if player2King[playerId] == BattleGroundId.LEFT_KING then
            gameData.teamALeftMonster = gameData.teamALeftMonster + count
        elseif player2King[playerId] == BattleGroundId.RIGHT_KING then
            gameData.teamBLeftMonster = gameData.teamBLeftMonster + count
        end
    end
    for playerId in pairs(input) do
        local data = input[playerId]
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        for ____, monster in ipairs(data.monsterList) do
            local monsterUnit = monster.datas:create(UnitData)
            monsterUnit:init(monster.params)
            monsterUnit.dispatched = false
            local ____output_playerId_unitList_60 = output[playerId].unitList
            ____output_playerId_unitList_60[#____output_playerId_unitList_60 + 1] = monsterUnit
            onCreate(
                nil,
                playerId,
                monsterUnit,
                count,
                monster.ext
            )
            local onDied
            onDied = function()
                monsterUnit.entity:off("单位-死亡", onDied)
                playerData.leftMonster = playerData.leftMonster - 1
                gameData.leftMonster = gameData.leftMonster - 1
                if player2King[playerId] == BattleGroundId.LEFT_KING then
                    gameData.teamALeftMonster = gameData.teamALeftMonster - 1
                elseif player2King[playerId] == BattleGroundId.RIGHT_KING then
                    gameData.teamBLeftMonster = gameData.teamBLeftMonster - 1
                end
                logLeftMonster(nil)
            end
            monsterUnit.entity:on("单位-死亡", onDied)
            if not isNextAll and count % 2 == 0 then
                isNextAll = coroutine.yield() == true
            end
            count = count + 1
        end
    end
end)
function CreateUnitController.prototype.dispatchMonster(self, input, onEnter)
    if self.autoCreateMonster ~= nil then
        self.autoCreateMonster:next(true)
        self.autoCreateMonster = nil
        local ____opt_61 = self.autoCreateTimer
        if ____opt_61 ~= nil then
            ____opt_61:remove()
        end
        self.autoCreateTimer = nil
    end
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        playerData.gotoAlertArea = false
    end
    for playerId in pairs(input) do
        local interval = 0.5
        local data = input[playerId]
        local playerPoint = y3.point.get_point_by_res_id(mapConfig.playerPoints[playerId])
        local pointIds = mapConfig["玩家出怪点"][playerId]
        local points = __TS__ArrayMap(
            pointIds,
            function(____, a) return y3.point.get_point_by_res_id(a) end
        )
        if #points == 4 and #data.unitList <= 2 then
            points = {points[2], points[3]}
        end
        do
            local i = 0
            while i < #data.unitList do
                local unit = data.unitList[i + 1]
                local point
                if #points == 4 then
                    local a = math.floor(i / 2)
                    local b = i % 2
                    point = points[b * 2 + a % 2 + 1]
                    y3.ltimer.wait(
                        interval * a,
                        function()
                            unit:getWritableEntity():setPosition(point, false)
                            unit.dispatched = true
                            unit.entity.y3Unit:attack_move(y3.point.create(
                                point:get_x(),
                                playerPoint:get_y()
                            ))
                            onEnter(nil, unit)
                        end
                    )
                else
                    point = points[i % #points + 1]
                    y3.ltimer.wait(
                        interval * i,
                        function()
                            unit:getWritableEntity():setPosition(point, false)
                            unit.dispatched = true
                            unit.entity.y3Unit:attack_move(y3.point.create(
                                point:get_x(),
                                playerPoint:get_y()
                            ))
                            onEnter(nil, unit)
                        end
                    )
                end
                local gameData = datas.global:getSingle(GameData)
                if gameData.randomEventType == GameRandomEventType["闪电战"] then
                    local unitEntity = unit:getWritableEntity()
                    unitEntity:addEffect(unitEntity, 40007, nil)
                end
                i = i + 1
            end
        end
    end
end
____exports.createUnitController = make(nil, ____exports.CreateUnitController)
return ____exports
