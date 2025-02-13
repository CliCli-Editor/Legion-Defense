local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 3,["9"] = 3,["10"] = 4,["11"] = 4,["12"] = 5,["13"] = 5,["14"] = 6,["15"] = 6,["16"] = 7,["17"] = 7,["18"] = 8,["19"] = 8,["20"] = 9,["21"] = 9,["22"] = 10,["23"] = 10,["24"] = 11,["25"] = 11,["26"] = 12,["27"] = 12,["28"] = 13,["29"] = 13,["30"] = 14,["31"] = 14,["32"] = 15,["33"] = 15,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 17,["38"] = 17,["39"] = 19,["40"] = 19,["41"] = 20,["42"] = 20,["43"] = 21,["44"] = 21,["45"] = 22,["46"] = 22,["47"] = 23,["48"] = 23,["49"] = 24,["50"] = 24,["51"] = 25,["52"] = 25,["53"] = 28,["54"] = 28,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 28,["61"] = 28,["62"] = 28,["63"] = 28,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["72"] = 28,["73"] = 49,["74"] = 49,["75"] = 49,["76"] = 49,["78"] = 49,["79"] = 50,["80"] = 60,["81"] = 60,["82"] = 60,["83"] = 60,["84"] = 60,["85"] = 60,["86"] = 60,["87"] = 60,["88"] = 80,["89"] = 107,["90"] = 114,["91"] = 49,["92"] = 70,["93"] = 71,["94"] = 70,["95"] = 74,["96"] = 75,["97"] = 76,["98"] = 77,["99"] = 74,["100"] = 82,["101"] = 83,["102"] = 85,["103"] = 87,["104"] = 89,["105"] = 89,["106"] = 90,["107"] = 89,["108"] = 91,["109"] = 92,["110"] = 93,["112"] = 89,["113"] = 89,["114"] = 82,["115"] = 97,["116"] = 98,["117"] = 99,["118"] = 100,["119"] = 97,["120"] = 102,["121"] = 103,["122"] = 104,["123"] = 102,["124"] = 108,["125"] = 109,["126"] = 109,["127"] = 109,["128"] = 109,["129"] = 108,["130"] = 111,["131"] = 112,["132"] = 111,["133"] = 115,["134"] = 116,["135"] = 116,["136"] = 116,["137"] = 116,["138"] = 115,["139"] = 118,["140"] = 119,["141"] = 118,["142"] = 122,["143"] = 123,["144"] = 123,["145"] = 123,["146"] = 123,["147"] = 125,["148"] = 125,["149"] = 125,["150"] = 125,["151"] = 126,["152"] = 125,["153"] = 125,["154"] = 129,["155"] = 129,["156"] = 129,["157"] = 130,["158"] = 130,["160"] = 131,["161"] = 129,["162"] = 129,["163"] = 134,["164"] = 135,["165"] = 135,["167"] = 136,["168"] = 137,["169"] = 134,["170"] = 139,["171"] = 140,["172"] = 140,["174"] = 141,["175"] = 142,["176"] = 139,["177"] = 144,["178"] = 145,["179"] = 145,["181"] = 146,["182"] = 147,["183"] = 144,["185"] = 150,["186"] = 150,["187"] = 151,["188"] = 152,["189"] = 153,["190"] = 153,["191"] = 153,["192"] = 154,["193"] = 153,["194"] = 153,["195"] = 157,["196"] = 157,["197"] = 157,["198"] = 158,["199"] = 158,["201"] = 159,["202"] = 159,["204"] = 160,["205"] = 161,["206"] = 162,["207"] = 157,["208"] = 157,["209"] = 164,["210"] = 164,["211"] = 164,["212"] = 165,["213"] = 165,["215"] = 166,["216"] = 166,["218"] = 167,["219"] = 168,["220"] = 169,["221"] = 170,["222"] = 164,["223"] = 164,["224"] = 172,["225"] = 172,["226"] = 172,["227"] = 173,["228"] = 173,["230"] = 174,["231"] = 174,["233"] = 175,["234"] = 176,["235"] = 177,["236"] = 178,["237"] = 172,["238"] = 172,["239"] = 180,["240"] = 180,["241"] = 180,["242"] = 181,["243"] = 182,["245"] = 184,["246"] = 184,["248"] = 185,["249"] = 185,["251"] = 187,["253"] = 180,["254"] = 180,["255"] = 190,["256"] = 190,["257"] = 190,["258"] = 191,["259"] = 190,["260"] = 190,["261"] = 193,["262"] = 193,["263"] = 193,["264"] = 194,["265"] = 193,["266"] = 193,["267"] = 196,["268"] = 196,["269"] = 196,["270"] = 197,["271"] = 196,["272"] = 196,["273"] = 199,["274"] = 199,["275"] = 199,["276"] = 199,["277"] = 200,["280"] = 201,["283"] = 204,["284"] = 205,["285"] = 199,["286"] = 199,["287"] = 208,["288"] = 208,["289"] = 208,["290"] = 209,["291"] = 209,["293"] = 210,["294"] = 210,["296"] = 211,["297"] = 212,["298"] = 213,["299"] = 214,["300"] = 215,["301"] = 216,["302"] = 217,["303"] = 217,["304"] = 218,["305"] = 218,["306"] = 219,["308"] = 219,["310"] = 208,["311"] = 220,["312"] = 221,["313"] = 208,["314"] = 208,["315"] = 150,["318"] = 225,["319"] = 225,["320"] = 225,["321"] = 226,["322"] = 227,["323"] = 228,["325"] = 230,["326"] = 225,["327"] = 225,["329"] = 233,["330"] = 233,["331"] = 234,["332"] = 235,["333"] = 235,["334"] = 235,["335"] = 236,["336"] = 235,["337"] = 235,["338"] = 233,["342"] = 239,["343"] = 239,["344"] = 240,["345"] = 241,["346"] = 241,["347"] = 241,["348"] = 242,["349"] = 241,["350"] = 241,["351"] = 239,["354"] = 246,["355"] = 246,["356"] = 246,["357"] = 247,["358"] = 248,["359"] = 249,["361"] = 251,["362"] = 252,["363"] = 246,["364"] = 246,["365"] = 255,["366"] = 255,["367"] = 255,["368"] = 256,["369"] = 256,["371"] = 257,["372"] = 258,["373"] = 258,["375"] = 259,["376"] = 255,["377"] = 255,["378"] = 262,["379"] = 262,["380"] = 262,["381"] = 263,["382"] = 262,["383"] = 262,["384"] = 265,["385"] = 265,["386"] = 265,["387"] = 266,["388"] = 265,["389"] = 265,["390"] = 268,["391"] = 268,["392"] = 268,["393"] = 269,["394"] = 268,["395"] = 268,["396"] = 122,["397"] = 274,["398"] = 275,["399"] = 275,["400"] = 275,["401"] = 275,["402"] = 277,["403"] = 278,["404"] = 279,["405"] = 280,["406"] = 284,["408"] = 289,["409"] = 289,["411"] = 290,["412"] = 291,["413"] = 292,["414"] = 293,["415"] = 293,["417"] = 294,["418"] = 295,["420"] = 300,["424"] = 289,["427"] = 306,["428"] = 307,["429"] = 308,["430"] = 277,["431"] = 316,["432"] = 316,["433"] = 316,["434"] = 317,["435"] = 316,["436"] = 316,["437"] = 320,["438"] = 321,["439"] = 322,["441"] = 323,["442"] = 323,["443"] = 324,["444"] = 325,["445"] = 326,["446"] = 328,["447"] = 330,["448"] = 330,["449"] = 330,["450"] = 331,["451"] = 330,["452"] = 330,["454"] = 334,["455"] = 334,["456"] = 335,["457"] = 336,["458"] = 337,["459"] = 338,["460"] = 340,["461"] = 340,["462"] = 340,["463"] = 341,["464"] = 340,["465"] = 340,["466"] = 343,["467"] = 343,["468"] = 343,["469"] = 344,["470"] = 343,["471"] = 343,["472"] = 347,["473"] = 347,["474"] = 347,["475"] = 348,["476"] = 348,["478"] = 349,["479"] = 347,["480"] = 347,["481"] = 351,["482"] = 351,["483"] = 351,["484"] = 352,["485"] = 352,["487"] = 353,["488"] = 351,["489"] = 351,["490"] = 355,["491"] = 355,["492"] = 355,["493"] = 356,["494"] = 355,["495"] = 355,["496"] = 358,["497"] = 358,["498"] = 358,["499"] = 359,["500"] = 359,["502"] = 360,["503"] = 358,["504"] = 358,["505"] = 362,["506"] = 362,["507"] = 362,["508"] = 362,["509"] = 364,["510"] = 364,["511"] = 364,["512"] = 365,["513"] = 365,["515"] = 366,["516"] = 364,["517"] = 364,["519"] = 369,["520"] = 369,["521"] = 370,["522"] = 371,["523"] = 373,["524"] = 374,["525"] = 374,["527"] = 375,["528"] = 376,["529"] = 376,["531"] = 377,["532"] = 373,["533"] = 379,["534"] = 379,["535"] = 379,["536"] = 381,["537"] = 379,["538"] = 379,["539"] = 383,["540"] = 383,["541"] = 383,["542"] = 384,["543"] = 383,["544"] = 383,["545"] = 386,["546"] = 386,["547"] = 386,["548"] = 387,["549"] = 388,["550"] = 389,["553"] = 390,["554"] = 390,["555"] = 390,["556"] = 390,["557"] = 390,["558"] = 395,["559"] = 386,["560"] = 396,["561"] = 397,["562"] = 386,["563"] = 386,["564"] = 369,["567"] = 400,["568"] = 400,["569"] = 400,["570"] = 400,["571"] = 401,["574"] = 402,["575"] = 403,["576"] = 404,["577"] = 406,["578"] = 400,["579"] = 400,["580"] = 408,["581"] = 408,["582"] = 408,["583"] = 408,["584"] = 409,["587"] = 410,["588"] = 411,["589"] = 412,["590"] = 414,["591"] = 408,["592"] = 408,["593"] = 334,["596"] = 323,["599"] = 419,["600"] = 420,["601"] = 421,["603"] = 422,["604"] = 422,["605"] = 423,["606"] = 424,["607"] = 425,["608"] = 427,["609"] = 429,["610"] = 429,["611"] = 429,["612"] = 430,["613"] = 429,["614"] = 429,["616"] = 433,["617"] = 433,["618"] = 434,["619"] = 435,["620"] = 436,["621"] = 437,["622"] = 439,["623"] = 439,["624"] = 439,["625"] = 440,["626"] = 439,["627"] = 439,["628"] = 442,["629"] = 442,["630"] = 442,["631"] = 443,["632"] = 442,["633"] = 442,["634"] = 445,["635"] = 445,["636"] = 445,["637"] = 446,["638"] = 445,["639"] = 445,["640"] = 449,["641"] = 449,["642"] = 449,["643"] = 450,["644"] = 450,["646"] = 451,["647"] = 449,["648"] = 449,["649"] = 453,["650"] = 453,["651"] = 453,["652"] = 454,["653"] = 454,["655"] = 455,["656"] = 453,["657"] = 453,["658"] = 457,["659"] = 457,["660"] = 457,["661"] = 457,["662"] = 458,["663"] = 458,["664"] = 458,["665"] = 458,["667"] = 460,["668"] = 460,["669"] = 461,["670"] = 462,["671"] = 464,["672"] = 465,["673"] = 465,["675"] = 466,["676"] = 467,["677"] = 467,["679"] = 468,["680"] = 464,["681"] = 470,["682"] = 470,["683"] = 470,["684"] = 471,["685"] = 470,["686"] = 470,["687"] = 473,["688"] = 473,["689"] = 473,["690"] = 474,["691"] = 473,["692"] = 473,["693"] = 476,["694"] = 476,["695"] = 476,["696"] = 477,["697"] = 478,["698"] = 479,["701"] = 480,["702"] = 480,["703"] = 480,["704"] = 480,["705"] = 480,["706"] = 485,["707"] = 476,["708"] = 486,["709"] = 487,["710"] = 476,["711"] = 476,["712"] = 460,["715"] = 490,["716"] = 490,["717"] = 490,["718"] = 490,["719"] = 491,["722"] = 492,["723"] = 493,["724"] = 495,["725"] = 490,["726"] = 490,["727"] = 433,["730"] = 422,["733"] = 274,["734"] = 500,["735"] = 502,["736"] = 502,["737"] = 502,["738"] = 502,["739"] = 504,["740"] = 504,["741"] = 504,["742"] = 504,["743"] = 505,["744"] = 506,["745"] = 507,["746"] = 504,["747"] = 504,["748"] = 509,["749"] = 509,["750"] = 509,["751"] = 509,["752"] = 510,["753"] = 509,["754"] = 509,["755"] = 512,["756"] = 512,["757"] = 512,["758"] = 512,["759"] = 513,["760"] = 512,["761"] = 512,["762"] = 521,["763"] = 521,["764"] = 521,["765"] = 522,["766"] = 522,["768"] = 523,["769"] = 521,["770"] = 521,["771"] = 526,["772"] = 526,["773"] = 526,["774"] = 527,["775"] = 527,["777"] = 528,["778"] = 526,["779"] = 526,["780"] = 530,["781"] = 530,["782"] = 530,["783"] = 531,["784"] = 531,["786"] = 532,["787"] = 530,["788"] = 530,["789"] = 535,["790"] = 535,["791"] = 535,["792"] = 536,["793"] = 536,["795"] = 537,["796"] = 535,["797"] = 535,["798"] = 539,["799"] = 539,["800"] = 539,["801"] = 540,["802"] = 540,["804"] = 541,["805"] = 539,["806"] = 539,["807"] = 543,["808"] = 543,["809"] = 543,["810"] = 544,["811"] = 544,["813"] = 545,["814"] = 543,["815"] = 543,["816"] = 547,["817"] = 547,["818"] = 547,["819"] = 548,["820"] = 548,["822"] = 549,["823"] = 547,["824"] = 547,["825"] = 551,["826"] = 551,["827"] = 551,["828"] = 552,["829"] = 552,["831"] = 553,["832"] = 551,["833"] = 551,["834"] = 555,["835"] = 555,["836"] = 555,["837"] = 556,["838"] = 556,["840"] = 557,["841"] = 555,["842"] = 555,["843"] = 559,["844"] = 559,["845"] = 559,["846"] = 560,["847"] = 560,["849"] = 561,["850"] = 559,["851"] = 559,["852"] = 563,["853"] = 563,["854"] = 563,["855"] = 564,["856"] = 564,["858"] = 565,["859"] = 563,["860"] = 563,["861"] = 569,["862"] = 569,["863"] = 569,["864"] = 570,["867"] = 571,["868"] = 572,["869"] = 572,["870"] = 572,["871"] = 572,["872"] = 572,["873"] = 572,["874"] = 578,["875"] = 569,["876"] = 579,["877"] = 580,["878"] = 569,["879"] = 569,["880"] = 584,["881"] = 584,["882"] = 584,["883"] = 585,["884"] = 585,["886"] = 586,["887"] = 587,["888"] = 584,["889"] = 584,["890"] = 589,["891"] = 589,["892"] = 589,["893"] = 590,["894"] = 590,["896"] = 591,["897"] = 591,["899"] = 592,["900"] = 593,["901"] = 589,["902"] = 589,["903"] = 596,["904"] = 596,["905"] = 596,["906"] = 597,["907"] = 597,["909"] = 598,["910"] = 596,["911"] = 596,["912"] = 600,["913"] = 600,["914"] = 600,["915"] = 601,["916"] = 601,["918"] = 602,["919"] = 602,["921"] = 603,["922"] = 600,["923"] = 600,["925"] = 607,["926"] = 607,["927"] = 608,["928"] = 609,["929"] = 610,["930"] = 610,["931"] = 610,["932"] = 611,["933"] = 611,["935"] = 612,["936"] = 613,["937"] = 610,["938"] = 610,["939"] = 616,["940"] = 616,["941"] = 616,["942"] = 617,["945"] = 618,["946"] = 619,["947"] = 619,["948"] = 619,["949"] = 619,["950"] = 619,["951"] = 624,["952"] = 616,["953"] = 625,["954"] = 626,["955"] = 616,["956"] = 616,["957"] = 607,["960"] = 630,["961"] = 631,["962"] = 631,["964"] = 635,["965"] = 636,["966"] = 638,["967"] = 644,["968"] = 645,["969"] = 646,["970"] = 646,["971"] = 646,["972"] = 646,["973"] = 646,["976"] = 653,["977"] = 654,["978"] = 655,["979"] = 655,["980"] = 655,["981"] = 655,["982"] = 655,["985"] = 663,["986"] = 630,["987"] = 668,["988"] = 669,["989"] = 670,["991"] = 672,["992"] = 672,["993"] = 673,["994"] = 674,["995"] = 675,["996"] = 677,["997"] = 679,["998"] = 679,["999"] = 679,["1000"] = 680,["1001"] = 679,["1002"] = 679,["1004"] = 683,["1005"] = 683,["1006"] = 684,["1007"] = 685,["1008"] = 686,["1009"] = 687,["1010"] = 688,["1011"] = 688,["1012"] = 688,["1013"] = 689,["1014"] = 688,["1015"] = 688,["1016"] = 691,["1017"] = 691,["1018"] = 691,["1019"] = 692,["1020"] = 692,["1022"] = 693,["1023"] = 691,["1024"] = 691,["1025"] = 695,["1026"] = 695,["1027"] = 695,["1028"] = 698,["1029"] = 695,["1030"] = 695,["1031"] = 700,["1032"] = 700,["1033"] = 700,["1034"] = 701,["1035"] = 700,["1036"] = 700,["1037"] = 703,["1038"] = 703,["1039"] = 703,["1040"] = 704,["1041"] = 704,["1043"] = 705,["1044"] = 703,["1045"] = 703,["1046"] = 707,["1047"] = 707,["1048"] = 707,["1049"] = 708,["1050"] = 708,["1052"] = 709,["1053"] = 707,["1054"] = 707,["1055"] = 711,["1056"] = 711,["1057"] = 711,["1058"] = 712,["1059"] = 712,["1061"] = 714,["1062"] = 715,["1063"] = 716,["1065"] = 718,["1067"] = 711,["1068"] = 711,["1069"] = 721,["1070"] = 721,["1071"] = 721,["1072"] = 725,["1073"] = 721,["1074"] = 721,["1075"] = 729,["1076"] = 729,["1077"] = 729,["1078"] = 730,["1079"] = 730,["1081"] = 731,["1082"] = 731,["1084"] = 732,["1085"] = 732,["1087"] = 733,["1088"] = 733,["1090"] = 734,["1091"] = 734,["1093"] = 735,["1094"] = 735,["1096"] = 736,["1097"] = 729,["1098"] = 729,["1099"] = 738,["1100"] = 738,["1101"] = 738,["1102"] = 739,["1103"] = 739,["1105"] = 740,["1106"] = 740,["1108"] = 741,["1109"] = 741,["1111"] = 742,["1112"] = 742,["1114"] = 743,["1115"] = 743,["1117"] = 744,["1118"] = 744,["1120"] = 745,["1121"] = 738,["1122"] = 738,["1123"] = 748,["1124"] = 748,["1125"] = 748,["1126"] = 749,["1127"] = 749,["1129"] = 750,["1130"] = 750,["1132"] = 751,["1133"] = 751,["1135"] = 752,["1136"] = 752,["1138"] = 753,["1139"] = 753,["1141"] = 754,["1142"] = 754,["1144"] = 755,["1145"] = 748,["1146"] = 748,["1147"] = 757,["1148"] = 757,["1149"] = 757,["1150"] = 758,["1151"] = 758,["1153"] = 759,["1154"] = 759,["1156"] = 760,["1157"] = 760,["1159"] = 761,["1160"] = 761,["1162"] = 762,["1163"] = 762,["1165"] = 763,["1166"] = 763,["1168"] = 764,["1169"] = 757,["1170"] = 757,["1171"] = 683,["1174"] = 672,["1177"] = 770,["1178"] = 771,["1179"] = 771,["1180"] = 771,["1181"] = 772,["1184"] = 773,["1187"] = 775,["1188"] = 775,["1190"] = 777,["1191"] = 777,["1192"] = 777,["1193"] = 779,["1194"] = 779,["1195"] = 779,["1196"] = 779,["1197"] = 779,["1198"] = 779,["1199"] = 779,["1200"] = 779,["1201"] = 779,["1202"] = 779,["1203"] = 782,["1204"] = 782,["1205"] = 782,["1206"] = 782,["1207"] = 782,["1208"] = 782,["1209"] = 783,["1210"] = 783,["1211"] = 783,["1212"] = 783,["1213"] = 783,["1214"] = 783,["1215"] = 784,["1216"] = 777,["1217"] = 777,["1218"] = 771,["1219"] = 771,["1220"] = 771,["1221"] = 771,["1222"] = 787,["1223"] = 787,["1224"] = 787,["1225"] = 788,["1226"] = 788,["1228"] = 789,["1229"] = 789,["1231"] = 790,["1232"] = 787,["1233"] = 787,["1234"] = 792,["1235"] = 792,["1236"] = 792,["1237"] = 793,["1238"] = 793,["1240"] = 794,["1241"] = 794,["1243"] = 795,["1244"] = 792,["1245"] = 792,["1246"] = 797,["1247"] = 797,["1248"] = 797,["1249"] = 798,["1250"] = 798,["1252"] = 799,["1253"] = 799,["1255"] = 800,["1256"] = 797,["1257"] = 797,["1258"] = 803,["1259"] = 803,["1260"] = 803,["1261"] = 804,["1262"] = 804,["1264"] = 805,["1265"] = 803,["1266"] = 803,["1267"] = 807,["1268"] = 807,["1269"] = 807,["1270"] = 808,["1271"] = 808,["1273"] = 809,["1274"] = 810,["1276"] = 811,["1277"] = 807,["1278"] = 807,["1279"] = 814,["1280"] = 814,["1281"] = 814,["1282"] = 815,["1283"] = 815,["1285"] = 816,["1286"] = 814,["1287"] = 814,["1288"] = 826,["1289"] = 826,["1290"] = 826,["1291"] = 827,["1292"] = 827,["1294"] = 828,["1295"] = 826,["1296"] = 826,["1297"] = 835,["1298"] = 835,["1299"] = 835,["1300"] = 836,["1301"] = 836,["1303"] = 837,["1304"] = 837,["1306"] = 838,["1307"] = 835,["1308"] = 835,["1309"] = 840,["1310"] = 840,["1311"] = 840,["1312"] = 841,["1313"] = 841,["1315"] = 842,["1316"] = 842,["1318"] = 843,["1319"] = 840,["1320"] = 840,["1321"] = 845,["1322"] = 845,["1323"] = 845,["1324"] = 846,["1325"] = 846,["1327"] = 847,["1328"] = 847,["1330"] = 848,["1331"] = 845,["1332"] = 845,["1333"] = 850,["1334"] = 850,["1335"] = 850,["1336"] = 851,["1337"] = 851,["1339"] = 852,["1340"] = 850,["1341"] = 850,["1342"] = 858,["1343"] = 858,["1344"] = 858,["1345"] = 859,["1346"] = 859,["1348"] = 860,["1349"] = 858,["1350"] = 858,["1351"] = 500,["1352"] = 868,["1353"] = 869,["1354"] = 869,["1355"] = 869,["1356"] = 870,["1357"] = 871,["1360"] = 872,["1361"] = 872,["1362"] = 872,["1363"] = 872,["1364"] = 872,["1365"] = 872,["1366"] = 872,["1367"] = 872,["1368"] = 869,["1369"] = 877,["1370"] = 878,["1371"] = 869,["1372"] = 869,["1373"] = 868});
local ____exports = {}
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
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local ____HeroExpConfig = include("logic.configs.HeroExpConfig")
local heroExpConfigList = ____HeroExpConfig.heroExpConfigList
local ____HeroExpRewardConfig = include("logic.configs.HeroExpRewardConfig")
local heroExpRewardConfigMap = ____HeroExpRewardConfig.heroExpRewardConfigMap
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap_hero = ____SkinConfig.skinConfigMap_hero
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpGenre = include("logic.dialogs.help.DHelpGenre")
local DHelpGenre = ____DHelpGenre.DHelpGenre
local ____DSelfTalentInfo = include("logic.dialogs.infos.DSelfTalentInfo")
local DSelfTalentInfo = ____DSelfTalentInfo.DSelfTalentInfo
local ____DSkillInfo = include("logic.dialogs.infos.DSkillInfo")
local DSkillInfo = ____DSkillInfo.DSkillInfo
local ____DHeroRank = include("logic.dialogs.storages.DHeroRank")
local DHeroRank = ____DHeroRank.DHeroRank
____exports.RankIcon = {
    [0] = 0,
    [1] = 134259076,
    [2] = 134242707,
    [3] = 134272092,
    [4] = 134276032,
    [5] = 134256187,
    [6] = 134278163,
    [7] = 134241517,
    [8] = 134275682,
    [9] = 134222070,
    [10] = 134264357,
    [11] = 134224338,
    [12] = 134255414,
    [13] = 134232074,
    [14] = 134232074,
    [15] = 134232074,
    [16] = 134232074,
    [17] = 134232074
}
____exports.DHero = __TS__Class()
local DHero = ____exports.DHero
DHero.name = "DHero"
__TS__ClassExtends(DHero, Dialog)
function DHero.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {
        type = 0,
        currentHero = nil,
        tab = 0,
        skinSelectIndex = 0,
        showHover = false,
        hoverTitle = "",
        hoverDes = ""
    }
    self.eventId = 0
    self.backId = 0
    self.backId2 = 0
end
function DHero.prototype.onCreate(self)
    self:initView()
end
function DHero.prototype.initView(self)
    self:initHeros()
    self:initDetails()
    self:initExpView()
end
function DHero.prototype.onShow(self)
    self.data.tab = 0
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Hero_英雄"]
    self:watch(
        function()
            return localData.setting.tabIndex == SettingType["Hero_英雄"]
        end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DHero.prototype.onHide(self)
    escManager:removeEvent(self.backId)
    escManager:removeEvent(self.backId2)
    escManager:removeEvent(self.eventId)
end
function DHero.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
function DHero.prototype.addEsc(self)
    self.backId = escManager:addEvent(function()
        self.data.tab = 0
        return 0
    end)
end
function DHero.prototype.removeEsc(self)
    escManager:removeEvent(self.backId)
end
function DHero.prototype.addEsc2(self)
    self.backId2 = escManager:addEvent(function()
        self.data.tab = 1
        return 1
    end)
end
function DHero.prototype.removeEsc2(self)
    escManager:removeEvent(self.backId2)
end
function DHero.prototype.initExpView(self)
    self:bindVisible(
        "expView",
        function() return self.data.tab == 2 end
    )
    self:bindAction(
        "expView.back",
        "左键-点击",
        function()
            self.data.tab = 1
        end
    )
    self:bindText(
        "expView.name",
        function()
            if self.data.currentHero == nil then
                return ""
            end
            return self.data.currentHero.showName.value
        end
    )
    local exp = self:compute(function()
        if self.data.currentHero == nil then
            return 0
        end
        local info = archive.playerInfo:getHeroInfo(self.data.currentHero.id)
        return info and info.exp or 0
    end)
    local level = self:compute(function()
        if self.data.currentHero == nil then
            return 0
        end
        local info = archive.playerInfo:getHeroInfo(self.data.currentHero.id)
        return info and info.lv or 0
    end)
    local current_level = self:compute(function()
        if self.data.currentHero == nil then
            return 0
        end
        local info = archive.playerInfo:getHeroInfo(self.data.currentHero.id)
        return info and info.cur_lv or 0
    end)
    do
        local index = 0
        while index < 13 do
            local path = "expView.reward.content.list.level_" .. tostring(index)
            local temp_i = index
            self:bindText(
                path .. ".exp",
                function()
                    return "" .. tostring(heroExpConfigList[temp_i + 1].score)
                end
            )
            self:bindText(
                path .. ".rewardBtn.count",
                function()
                    if temp_i == 0 then
                        return "0"
                    end
                    if self.data.currentHero == nil then
                        return "0"
                    end
                    local cfg = heroExpRewardConfigMap[self.data.currentHero.id]
                    local reward = heroExpManager:getReward(cfg, temp_i)
                    return "x" .. tostring(reward[2])
                end
            )
            self:bindImage(
                path .. ".rewardBtn.icon",
                function()
                    if temp_i == 0 then
                        return 0
                    end
                    if self.data.currentHero == nil then
                        return 0
                    end
                    local cfg = heroExpRewardConfigMap[self.data.currentHero.id]
                    local reward = heroExpManager:getReward(cfg, temp_i)
                    local item = propConfigMap[reward[1]]
                    return getPropIcon(nil, item)
                end
            )
            self:bindText(
                path .. ".rewardBtn.type.type",
                function()
                    if temp_i == 0 then
                        return ""
                    end
                    if self.data.currentHero == nil then
                        return ""
                    end
                    local cfg = heroExpRewardConfigMap[self.data.currentHero.id]
                    local reward = heroExpManager:getReward(cfg, temp_i)
                    local item = propConfigMap[reward[1]]
                    return item and item.name.value or ""
                end
            )
            self:bindProgress(
                path .. ".progress",
                function()
                    if level.value > temp_i then
                        return 100
                    else
                        if self.data.currentHero == nil then
                            return 0
                        end
                        if level.value < temp_i then
                            return 0
                        end
                        return heroExpManager:currentProgress(self.data.currentHero.id)
                    end
                end
            )
            self:bindVisible(
                path .. ".rewardBtn.lock",
                function()
                    return level.value < temp_i
                end
            )
            self:bindVisible(
                path .. ".rewardBtn.canGet",
                function()
                    return current_level.value < temp_i and temp_i <= level.value
                end
            )
            self:bindVisible(
                path .. ".rewardBtn.get",
                function()
                    return current_level.value >= temp_i
                end
            )
            self:bindAction(
                path .. ".rewardBtn",
                "左键-点击",
                function()
                    if self.data.currentHero == nil then
                        return
                    end
                    if not heroExpManager:canReward(self.data.currentHero.id, temp_i, true) then
                        return
                    end
                    heroExpManager:reward(self.data.currentHero.id, temp_i)
                    DTips:show(i18n["local"](i18n, "领取成功"))
                end
            )
            self:bindMouse(
                path .. ".rewardBtn.icon",
                function()
                    if temp_i == 0 then
                        return ""
                    end
                    if self.data.currentHero == nil then
                        return ""
                    end
                    local cfg = heroExpRewardConfigMap[self.data.currentHero.id]
                    local reward = heroExpManager:getReward(cfg, temp_i)
                    local item = propConfigMap[reward[1]]
                    self.data.showHover = true
                    self.data.hoverTitle = item.name.value
                    self.data.hoverDes = item.des.value
                    local ____opt_8 = self:getUI(path .. ".rewardBtn")
                    local x = ____opt_8 and ____opt_8:get_absolute_x()
                    local ____opt_10 = self:getUI(path .. ".rewardBtn")
                    local y = ____opt_10 and ____opt_10:get_absolute_y()
                    local ____opt_12 = self:getUI("reward_hover")
                    if ____opt_12 ~= nil then
                        ____opt_12:set_pos(x or -2000, y or -2000)
                    end
                end,
                function()
                    self.data.showHover = false
                end
            )
            index = index + 1
        end
    end
    self:bindText(
        "expView.exp.exp",
        function()
            local max = heroExpConfigList[#heroExpConfigList]
            if level.value >= max.id then
                return "" .. tostring(exp.value)
            end
            return "#e5e1ac" .. tostring(exp.value)
        end
    )
    do
        local index = 0
        while index < 12 do
            local level2 = index + 1
            self:bindVisible(
                "expView.exp.level.level_" .. tostring(index + 1),
                function()
                    return level.value == level2
                end
            )
            index = index + 1
        end
    end
    do
        local index = 0
        while index < 12 do
            local level2 = index + 1
            self:bindVisible(
                "detail.left.exp.level.level_" .. tostring(index + 1),
                function()
                    return level.value == level2
                end
            )
            index = index + 1
        end
    end
    self:bindText(
        "detail.left.exp.exp",
        function()
            local max = heroExpConfigList[#heroExpConfigList]
            if level.value >= max.id then
                return "" .. tostring(exp.value)
            end
            local nextExp = heroExpConfigList[level.value + 1 + 1]
            return "#e5e1ac" .. tostring(exp.value)
        end
    )
    self:bindVisible(
        "detail.left.exp.reward",
        function()
            if self.data.currentHero == nil then
                return false
            end
            local info = archive.playerInfo:getHeroInfo(self.data.currentHero.id)
            if info == nil then
                return false
            end
            return info.lv > info.cur_lv
        end
    )
    self:bindVisible(
        "reward_hover",
        function()
            return self.data.showHover
        end
    )
    self:bindText(
        "reward_hover.hover.name",
        function()
            return self.data.hoverTitle
        end
    )
    self:bindText(
        "reward_hover.hover.des",
        function()
            return self.data.hoverDes
        end
    )
end
function DHero.prototype.initHeros(self)
    self:bindVisible(
        "heros",
        function() return self.data.tab == 0 end
    )
    local data = self:compute(function()
        local total = 0
        local have = 0
        local haveList = {}
        local notHaveList = {}
        do
            local index = 0
            while index < #heroConfigList do
                do
                    local element = heroConfigList[index + 1]
                    local key = "" .. tostring(element.id)
                    local data = archive.playerData.heroes[key]
                    if element.ban == 1 then
                        goto __continue71
                    end
                    if data.isHave then
                        haveList[#haveList + 1] = {cfg = element, archive = data}
                    else
                        notHaveList[#notHaveList + 1] = {cfg = element, archive = data}
                    end
                end
                ::__continue71::
                index = index + 1
            end
        end
        have = #haveList
        total = #haveList + #notHaveList
        return {haveList = haveList, notHaveList = notHaveList, total = total, have = have}
    end)
    self:bindText(
        "heros.title.title",
        function()
            return i18n:format("英雄列表：${have}/${total}", {have = data.value.have, total = data.value.total})
        end
    )
    local ui = self:getUI("heros.list.list1")
    local childrens = ui:get_childs()
    local idx = 0
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local sec_childs = element:get_childs()
            local path1 = "heros.list.list1." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #data.value.haveList > temp_i
                end
            )
            do
                local j = 0
                while j < #sec_childs do
                    local temp_j = idx
                    idx = idx + 1
                    local ui2 = sec_childs[j + 1]
                    local path = (path1 .. ".") .. ui2:get_name()
                    self:bindVisible(
                        path,
                        function()
                            return #data.value.haveList > temp_j
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return false
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            if data.value.haveList[temp_j + 1] == nil then
                                return 0
                            end
                            return heroSkinManager:getHeroPic(data.value.haveList[temp_j + 1].cfg.id)
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            if data.value.haveList[temp_j + 1] == nil then
                                return ""
                            end
                            return data.value.haveList[temp_j + 1].cfg.showName.value
                        end
                    )
                    self:bindText(
                        path .. ".rewardBtn.label_17",
                        function()
                            return i18n["local"](i18n, "可领取")
                        end
                    )
                    self:bindVisible(
                        path .. ".rewardBtn",
                        function()
                            if data.value.haveList[temp_j + 1] == nil or data.value.haveList[temp_j + 1].archive == nil then
                                return false
                            end
                            return data.value.haveList[temp_j + 1].archive.cur_lv < data.value.haveList[temp_j + 1].archive.lv
                        end
                    )
                    self:bindVisible(
                        path .. ".lock",
                        function() return false end
                    )
                    self:bindImage(
                        path .. ".rank",
                        function()
                            if data.value.haveList[temp_j + 1] == nil or data.value.haveList[temp_j + 1].archive == nil then
                                return 0
                            end
                            return ____exports.RankIcon[data.value.haveList[temp_j + 1].archive.lv] or 0
                        end
                    )
                    do
                        local g = 0
                        while g < 2 do
                            local temp_g = g
                            local genre_path = (path .. ".genre.genre_") .. tostring(g + 1)
                            local getIcon = self:compute(function()
                                if data.value.haveList[temp_j + 1] == nil then
                                    return 0
                                end
                                local genre = data.value.haveList[temp_j + 1].cfg.heroGenre[temp_g + 1]
                                if genre == nil then
                                    return 0
                                end
                                return genreLevelConfigMap_genre[genre][1].icon
                            end)
                            self:bindImage(
                                genre_path,
                                function()
                                    return getIcon.value
                                end
                            )
                            self:bindVisible(
                                genre_path,
                                function()
                                    return getIcon.value ~= 0
                                end
                            )
                            self:bindMouse(
                                genre_path,
                                function()
                                    local ui = self:getUI(genre_path)
                                    local genre = data.value.haveList[temp_j + 1].cfg.heroGenre[temp_g + 1]
                                    if genre == nil then
                                        return
                                    end
                                    local params = {
                                        x = ui:get_absolute_x() + 180 * UIUtils:get_scale(),
                                        y = ui:get_absolute_y() + 60,
                                        genre = genre
                                    }
                                    dialogs:showRepeat(DHelpGenre, params)
                                end,
                                function()
                                    dialogs:hide(DHelpGenre)
                                end
                            )
                            g = g + 1
                        end
                    end
                    self:bindAction(
                        path,
                        "左键-点击",
                        function()
                            if data.value.haveList[temp_j + 1] == nil then
                                return
                            end
                            self:addEsc()
                            self.data.skinSelectIndex = 0
                            self.data.tab = 1
                            self.data.currentHero = data.value.haveList[temp_j + 1].cfg
                        end
                    )
                    self:bindAction(
                        path .. ".rewardBtn",
                        "左键-点击",
                        function()
                            if data.value.haveList[temp_j + 1] == nil then
                                return
                            end
                            self:addEsc()
                            self:addEsc2()
                            self.data.tab = 2
                            self.data.currentHero = data.value.haveList[temp_j + 1].cfg
                        end
                    )
                    j = j + 1
                end
            end
            i = i + 1
        end
    end
    ui = self:getUI("heros.list.list2")
    childrens = ui:get_childs()
    idx = 0
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local sec_childs = element:get_childs()
            local path1 = "heros.list.list2." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #data.value.notHaveList > temp_i
                end
            )
            do
                local j = 0
                while j < #sec_childs do
                    local temp_j = idx
                    idx = idx + 1
                    local ui2 = sec_childs[j + 1]
                    local path = (path1 .. ".") .. ui2:get_name()
                    self:bindVisible(
                        path,
                        function()
                            return #data.value.notHaveList > temp_j
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return false
                        end
                    )
                    self:bindImage(
                        path .. ".rank",
                        function()
                            return 0
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            if data.value.notHaveList[temp_j + 1] == nil then
                                return 0
                            end
                            return heroSkinManager:getHeroPic(data.value.notHaveList[temp_j + 1].cfg.id)
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            if data.value.notHaveList[temp_j + 1] == nil then
                                return ""
                            end
                            return data.value.notHaveList[temp_j + 1].cfg.showName.value
                        end
                    )
                    self:bindVisible(
                        path .. ".rewardBtn",
                        function() return false end
                    )
                    self:bindVisible(
                        path .. ".lock",
                        function() return true end
                    )
                    do
                        local g = 0
                        while g < 2 do
                            local temp_g = g
                            local genre_path = (path .. ".genre.genre_") .. tostring(g + 1)
                            local getIcon = self:compute(function()
                                if data.value.notHaveList[temp_j + 1] == nil then
                                    return 0
                                end
                                local genre = data.value.notHaveList[temp_j + 1].cfg.heroGenre[temp_g + 1]
                                if genre == nil then
                                    return 0
                                end
                                return genreLevelConfigMap_genre[genre][1].icon
                            end)
                            self:bindImage(
                                genre_path,
                                function()
                                    return getIcon.value
                                end
                            )
                            self:bindVisible(
                                genre_path,
                                function()
                                    return getIcon.value ~= 0
                                end
                            )
                            self:bindMouse(
                                genre_path,
                                function()
                                    local ui = self:getUI(genre_path)
                                    local genre = data.value.notHaveList[temp_j + 1].cfg.heroGenre[temp_g + 1]
                                    if genre == nil then
                                        return
                                    end
                                    local params = {
                                        x = ui:get_absolute_x(),
                                        y = ui:get_absolute_y() + 60,
                                        genre = genre
                                    }
                                    dialogs:showRepeat(DHelpGenre, params)
                                end,
                                function()
                                    dialogs:hide(DHelpGenre)
                                end
                            )
                            g = g + 1
                        end
                    end
                    self:bindAction(
                        path,
                        "左键-点击",
                        function()
                            if data.value.notHaveList[temp_j + 1] == nil then
                                return
                            end
                            self:addEsc()
                            self.data.tab = 1
                            self.data.currentHero = data.value.notHaveList[temp_j + 1].cfg
                        end
                    )
                    j = j + 1
                end
            end
            i = i + 1
        end
    end
end
function DHero.prototype.initDetails(self)
    self:bindVisible(
        "detail",
        function() return self.data.tab == 1 end
    )
    self:bindAction(
        "detail.left.back",
        "左键-点击",
        function()
            self.data.tab = 0
            self.data.skinSelectIndex = 0
            self:removeEsc()
        end
    )
    self:bindAction(
        "detail.left.exp.goto",
        "左键-点击",
        function()
            self.data.tab = 2
        end
    )
    self:bindAction(
        "expView.exp.goto",
        "左键-点击",
        function()
            dialogs:show(DHeroRank, {})
        end
    )
    self:bindText(
        "detail.left.name",
        function()
            if self.data.currentHero == nil then
                return ""
            end
            return self.data.currentHero.showName.value
        end
    )
    self:bindText(
        "detail.left.hp.hp",
        function()
            if self.data.currentHero == nil then
                return ""
            end
            return tostring(self.data.currentHero.property.hp)
        end
    )
    self:bindText(
        "detail.left.mp.speed",
        function()
            if self.data.currentHero == nil then
                return ""
            end
            return i18n:format("+${mp}/秒", {mp = self.data.currentHero.property.mpRecover})
        end
    )
    self:bindText(
        "detail.left.list.attr1.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.attack)
        end
    )
    self:bindText(
        "detail.left.list.attr2.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.apAttack)
        end
    )
    self:bindText(
        "detail.left.list.attr3.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.def)
        end
    )
    self:bindText(
        "detail.left.list.attr4.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.apDef)
        end
    )
    self:bindText(
        "detail.left.list.attr5.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.critical)
        end
    )
    self:bindText(
        "detail.left.list.attr6.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.miss)
        end
    )
    self:bindText(
        "detail.left.list.attr7.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.property.atkSpeed)
        end
    )
    self:bindText(
        "detail.left.list.attr8.value",
        function()
            if self.data.currentHero == nil then
                return "0"
            end
            return "" .. tostring(self.data.currentHero.atkDistance)
        end
    )
    self:bindMouse(
        "detail.left.list2.talent",
        function()
            if self.data.currentHero == nil then
                return
            end
            local ui = self:getUI("detail.left.list2.talent")
            local params = {
                x = ui:get_absolute_x() + 200 * UIUtils:get_scale(),
                y = ui:get_absolute_y() + 30,
                playerId = LOCAL.PLAYER_ID,
                heroConfig = self.data.currentHero
            }
            dialogs:show(DSelfTalentInfo, params)
        end,
        function()
            dialogs:hide(DSelfTalentInfo)
        end
    )
    self:bindImage(
        "detail.left.genre.genre_1",
        function()
            if self.data.currentHero == nil then
                return 0
            end
            local genre = genreLevelConfigMap_genre[self.data.currentHero.heroGenre[1]][1]
            return genre.icon
        end
    )
    self:bindImage(
        "detail.left.genre.genre_2",
        function()
            if self.data.currentHero == nil then
                return 0
            end
            if self.data.currentHero.heroGenre[2] == nil then
                return 0
            end
            local genre = genreLevelConfigMap_genre[self.data.currentHero.heroGenre[2]][1]
            return genre.icon
        end
    )
    self:genreHelp(
        "detail.left.genre.genre_1",
        function()
            if self.data.currentHero == nil then
                return 0
            end
            return self.data.currentHero.heroGenre[1]
        end
    )
    self:genreHelp(
        "detail.left.genre.genre_2",
        function()
            if self.data.currentHero == nil then
                return 0
            end
            if self.data.currentHero.heroGenre[2] == nil then
                return 0
            end
            return self.data.currentHero.heroGenre[2]
        end
    )
    do
        local idx = 0
        while idx < 3 do
            local k = idx
            local path = "detail.left.skill_" .. tostring(k + 1)
            self:bindImage(
                path .. ".icon",
                function()
                    if self.data.currentHero == nil then
                        return 0
                    end
                    local cfg = self.data.currentHero.skill[k + 1]
                    return cfg.icon
                end
            )
            self:bindMouse(
                path,
                function()
                    if self.data.currentHero == nil then
                        return
                    end
                    local ui = self:getUI(path)
                    local params = {
                        x = ui:get_absolute_x(),
                        y = ui:get_absolute_y() + ui:get_height() / 2 + 80,
                        skillId = self.data.currentHero.skill[k + 1].id
                    }
                    dialogs:showRepeat(DSkillInfo, params)
                end,
                function()
                    dialogs:hide(DSkillInfo)
                end
            )
            idx = idx + 1
        end
    end
    local skinData = self:compute(function()
        if self.data.currentHero == nil then
            return {list = {}}
        end
        local heroInfo = archive.playerData.heroes["" .. tostring(self.data.currentHero.id)]
        local list = skinConfigMap_hero[self.data.currentHero.id]
        local data = {}
        for ____, cfg in ipairs(list) do
            if cfg.isDefault then
                data[#data + 1] = {
                    cfg = cfg,
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skin, cfg.id) >= 0,
                    select = heroInfo.cur_skin == cfg.id
                }
            end
        end
        for ____, cfg in ipairs(list) do
            if not cfg.isDefault and cfg.ban == 0 then
                data[#data + 1] = {
                    cfg = cfg,
                    unlock = __TS__ArrayIndexOf(heroInfo.unlock_skin, cfg.id) >= 0,
                    select = heroInfo.cur_skin == cfg.id
                }
            end
        end
        return {list = data}
    end)
    local ui = self:getUI("detail.right.list")
    local childrens = ui:get_childs()
    local idx = 0
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local sec_childs = element:get_childs()
            local path1 = "detail.right.list." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #skinData.value.list > temp_i
                end
            )
            do
                local j = 0
                while j < #sec_childs do
                    local temp_j = idx
                    idx = idx + 1
                    local ui2 = sec_childs[j + 1]
                    local path = (path1 .. ".") .. ui2:get_name()
                    self:bindVisible(
                        path,
                        function()
                            return #skinData.value.list > temp_j
                        end
                    )
                    self:bindVisible(
                        path .. ".lock",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return false
                            end
                            return not skinData.value.list[temp_j + 1].unlock
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return false
                        end
                    )
                    self:bindVisible(
                        path .. ".select2",
                        function()
                            return self.data.skinSelectIndex == temp_j
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            if self.data.currentHero == nil then
                                return ""
                            end
                            return self.data.currentHero.showName.value
                        end
                    )
                    self:bindText(
                        path .. ".skinName",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return i18n["local"](i18n, "默认皮肤")
                            end
                            return skinData.value.list[temp_j + 1].cfg.name.value
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return 0
                            end
                            local skin = skinData.value.list[temp_j + 1].cfg
                            if i18n.currentLang == "en" and skin.enPic ~= 0 then
                                return skin.enPic
                            else
                                return skin.pic
                            end
                        end
                    )
                    self:bindClick(
                        path,
                        function()
                            self.data.skinSelectIndex = temp_j
                        end
                    )
                    self:bindImage(
                        path .. ".bg",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return 134270568
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 0 then
                                return 134270568
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 1 then
                                return 134277873
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 2 then
                                return 134247885
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 3 then
                                return 134277993
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 4 then
                                return 134256318
                            end
                            return 134270568
                        end
                    )
                    self:bindImage(
                        path .. ".bg2",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return 134249910
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 0 then
                                return 134249910
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 1 then
                                return 134263292
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 2 then
                                return 134255313
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 3 then
                                return 134257619
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 4 then
                                return 134247032
                            end
                            return 134249910
                        end
                    )
                    self:bindTextColor(
                        path .. ".skinName",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return UIUtils:toColor("c7cbd9")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 0 then
                                return UIUtils:toColor("c7cbd9")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 1 then
                                return UIUtils:toColor("a6c7ff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 2 then
                                return UIUtils:toColor("c9acff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 3 then
                                return UIUtils:toColor("ffd3a3")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 4 then
                                return UIUtils:toColor("ffb9b9")
                            end
                            return UIUtils:toColor("c7cbd9")
                        end
                    )
                    self:bindTextColor(
                        path .. ".name",
                        function()
                            if skinData.value.list[temp_j + 1] == nil then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 0 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 1 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 2 then
                                return UIUtils:toColor("f22fff")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 3 then
                                return UIUtils:toColor("fff8ee")
                            end
                            if skinData.value.list[temp_j + 1].cfg.quality == 4 then
                                return UIUtils:toColor("fff8ee")
                            end
                            return UIUtils:toColor("ecf2ff")
                        end
                    )
                    j = j + 1
                end
            end
            i = i + 1
        end
    end
    local timer = nil
    self:watch(
        function() return skinData.value.list[self.data.skinSelectIndex + 1] end,
        function(____, v, o)
            if v == o then
                return
            end
            if v == nil then
                return
            end
            if timer ~= nil then
                timer:remove()
            end
            timer = y3.ltimer.wait_frame(
                5,
                function()
                    GameAPI.play_ui_model_anim(
                        LOCAL.PLAYER.handle,
                        self:getUI("detail.center.model").handle,
                        v.cfg.uiBornAnime,
                        1,
                        0,
                        -1,
                        false,
                        true
                    )
                    GameAPI.set_modifier_on_ui_model(
                        v.cfg.roleEffect,
                        0,
                        LOCAL.PLAYER.handle,
                        self:getUI("detail.center.model").handle
                    )
                    GameAPI.set_modifier_on_ui_model(
                        v.cfg.roleEffect,
                        0,
                        LOCAL.PLAYER.handle,
                        self:getUI("expView.center.model").handle
                    )
                    timer = nil
                end
            )
        end,
        false,
        true
    )
    self:bindModel(
        "detail.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return 0
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return 0
            end
            return skinData.value.list[self.data.skinSelectIndex + 1].cfg.role
        end
    )
    self:bindVisible(
        "detail.center.tips",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return false
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return true
            end
            return false
        end
    )
    self:bindVisible(
        "detail.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return true
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return false
            end
            return true
        end
    )
    self:bindText(
        "detail.left.skinName",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return i18n["local"](i18n, "默认皮肤")
            end
            return skinData.value.list[self.data.skinSelectIndex + 1].cfg.name.value
        end
    )
    self:bindText(
        "detail.left.skinUnlockTip",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return i18n["local"](i18n, "默认拥有")
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.isDefault then
                return i18n["local"](i18n, "默认拥有")
            end
            return ""
        end
    )
    self:bindModelCamera(
        "detail.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return {x = 0, y = 0, z = 0}
            end
            return {x = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[1], y = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[2], z = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[3]}
        end
    )
    self:bindModelFocus(
        "detail.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return {x = 0, y = 0, z = 0}
            end
            return {x = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[1], y = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[2], z = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[3]}
        end
    )
    self:bindModel(
        "expView.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return 0
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return 0
            end
            return skinData.value.list[self.data.skinSelectIndex + 1].cfg.role
        end
    )
    self:bindVisible(
        "expView.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return true
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return false
            end
            return true
        end
    )
    self:bindVisible(
        "expView.center.tips",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return false
            end
            if skinData.value.list[self.data.skinSelectIndex + 1].cfg.banModel == 1 then
                return true
            end
            return false
        end
    )
    self:bindModelCamera(
        "expView.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return {x = 0, y = 0, z = 0}
            end
            return {x = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[1], y = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[2], z = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailCamera[3]}
        end
    )
    self:bindModelFocus(
        "expView.center.model",
        function()
            if self.data.currentHero == nil or skinData.value.list[self.data.skinSelectIndex + 1] == nil then
                return {x = 0, y = 0, z = 0}
            end
            return {x = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[1], y = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[2], z = skinData.value.list[self.data.skinSelectIndex + 1].cfg.heroDetailoffset[3]}
        end
    )
end
function DHero.prototype.genreHelp(self, path, getId)
    self:bindMouse(
        path,
        function()
            local ui = self:getUI(path)
            if getId(nil) == 0 then
                return
            end
            dialogs:showRepeat(
                DHelpGenre,
                {
                    genre = getId(nil),
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + ui:get_height() / 2 + 30
                }
            )
        end,
        function()
            dialogs:hide(DHelpGenre)
        end
    )
end
return ____exports
