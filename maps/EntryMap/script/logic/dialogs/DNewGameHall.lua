local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__Number = ____lualib.__TS__Number
local __TS__NumberIsNaN = ____lualib.__TS__NumberIsNaN
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 17,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 22,["49"] = 22,["50"] = 25,["51"] = 25,["52"] = 26,["53"] = 26,["54"] = 27,["55"] = 27,["56"] = 28,["57"] = 28,["58"] = 30,["59"] = 30,["60"] = 31,["61"] = 31,["62"] = 32,["63"] = 32,["64"] = 33,["65"] = 33,["66"] = 35,["67"] = 35,["68"] = 36,["69"] = 36,["70"] = 37,["71"] = 37,["72"] = 38,["73"] = 38,["74"] = 39,["75"] = 39,["76"] = 41,["77"] = 41,["78"] = 42,["79"] = 42,["80"] = 43,["81"] = 43,["82"] = 44,["83"] = 44,["84"] = 45,["85"] = 45,["86"] = 46,["87"] = 46,["88"] = 48,["89"] = 48,["90"] = 49,["91"] = 49,["92"] = 50,["93"] = 50,["94"] = 51,["95"] = 51,["96"] = 52,["97"] = 52,["98"] = 78,["99"] = 78,["100"] = 78,["101"] = 78,["103"] = 78,["104"] = 79,["105"] = 78,["106"] = 112,["107"] = 114,["108"] = 115,["109"] = 116,["112"] = 121,["115"] = 119,["121"] = 124,["122"] = 127,["123"] = 130,["124"] = 131,["126"] = 135,["127"] = 136,["128"] = 137,["129"] = 137,["130"] = 137,["131"] = 138,["132"] = 139,["133"] = 140,["134"] = 140,["135"] = 140,["136"] = 140,["137"] = 140,["138"] = 140,["139"] = 140,["140"] = 140,["141"] = 137,["142"] = 137,["144"] = 151,["145"] = 152,["146"] = 153,["147"] = 154,["148"] = 155,["150"] = 157,["151"] = 158,["153"] = 151,["154"] = 161,["155"] = 162,["156"] = 164,["157"] = 164,["158"] = 165,["159"] = 164,["160"] = 166,["161"] = 167,["162"] = 168,["163"] = 169,["165"] = 171,["168"] = 164,["169"] = 164,["170"] = 177,["171"] = 178,["174"] = 178,["175"] = 179,["177"] = 180,["178"] = 180,["180"] = 180,["183"] = 178,["185"] = 184,["186"] = 185,["187"] = 186,["188"] = 186,["189"] = 186,["190"] = 187,["191"] = 188,["193"] = 190,["195"] = 186,["196"] = 186,["197"] = 186,["198"] = 186,["200"] = 112,["201"] = 197,["202"] = 199,["203"] = 199,["204"] = 199,["205"] = 201,["206"] = 203,["207"] = 204,["208"] = 205,["209"] = 206,["210"] = 207,["211"] = 208,["214"] = 211,["216"] = 199,["217"] = 199,["218"] = 199,["219"] = 199,["220"] = 217,["221"] = 217,["222"] = 217,["223"] = 218,["224"] = 217,["225"] = 217,["226"] = 221,["227"] = 221,["228"] = 221,["229"] = 222,["230"] = 221,["231"] = 221,["232"] = 197,["233"] = 228,["234"] = 241,["237"] = 245,["238"] = 246,["239"] = 248,["240"] = 248,["241"] = 248,["242"] = 249,["243"] = 248,["244"] = 248,["245"] = 251,["246"] = 251,["247"] = 251,["248"] = 252,["249"] = 251,["250"] = 253,["251"] = 254,["252"] = 251,["253"] = 251,["254"] = 257,["255"] = 257,["256"] = 257,["257"] = 257,["258"] = 257,["259"] = 263,["260"] = 264,["261"] = 265,["262"] = 265,["263"] = 266,["264"] = 265,["265"] = 267,["266"] = 268,["267"] = 269,["268"] = 270,["269"] = 270,["270"] = 270,["271"] = 270,["272"] = 270,["273"] = 270,["274"] = 270,["275"] = 271,["276"] = 272,["277"] = 273,["278"] = 273,["281"] = 270,["282"] = 270,["284"] = 277,["285"] = 277,["286"] = 277,["287"] = 277,["288"] = 277,["289"] = 277,["290"] = 277,["291"] = 278,["292"] = 279,["293"] = 280,["294"] = 280,["297"] = 277,["298"] = 277,["300"] = 265,["301"] = 265,["302"] = 265,["303"] = 228,["304"] = 287,["305"] = 289,["306"] = 289,["307"] = 289,["308"] = 290,["309"] = 289,["310"] = 289,["311"] = 293,["312"] = 293,["313"] = 293,["314"] = 294,["315"] = 294,["316"] = 294,["317"] = 294,["318"] = 293,["319"] = 293,["320"] = 297,["321"] = 297,["322"] = 297,["323"] = 298,["324"] = 298,["325"] = 298,["326"] = 298,["327"] = 298,["328"] = 298,["329"] = 298,["330"] = 298,["331"] = 297,["332"] = 297,["333"] = 301,["334"] = 301,["335"] = 301,["336"] = 302,["337"] = 302,["338"] = 303,["340"] = 305,["342"] = 301,["343"] = 301,["345"] = 310,["346"] = 310,["347"] = 311,["348"] = 312,["349"] = 313,["350"] = 313,["351"] = 313,["352"] = 314,["353"] = 314,["354"] = 315,["355"] = 313,["356"] = 313,["357"] = 317,["358"] = 317,["359"] = 317,["360"] = 318,["361"] = 318,["362"] = 319,["363"] = 320,["365"] = 322,["367"] = 317,["368"] = 317,["369"] = 325,["370"] = 325,["371"] = 325,["372"] = 326,["373"] = 326,["374"] = 327,["375"] = 328,["377"] = 330,["379"] = 325,["380"] = 325,["381"] = 333,["382"] = 333,["383"] = 333,["384"] = 334,["385"] = 334,["386"] = 335,["388"] = 337,["389"] = 338,["391"] = 339,["393"] = 340,["395"] = 341,["397"] = 342,["399"] = 343,["402"] = 345,["406"] = 348,["408"] = 333,["409"] = 333,["410"] = 351,["411"] = 351,["412"] = 351,["413"] = 352,["414"] = 352,["415"] = 353,["416"] = 354,["417"] = 354,["418"] = 354,["420"] = 356,["422"] = 351,["423"] = 351,["424"] = 360,["425"] = 361,["426"] = 361,["427"] = 362,["430"] = 367,["433"] = 371,["434"] = 373,["435"] = 376,["436"] = 378,["437"] = 378,["438"] = 380,["439"] = 381,["440"] = 378,["441"] = 383,["442"] = 384,["443"] = 385,["446"] = 388,["447"] = 388,["448"] = 389,["449"] = 390,["451"] = 378,["452"] = 378,["453"] = 396,["454"] = 396,["455"] = 398,["456"] = 399,["457"] = 396,["458"] = 401,["459"] = 402,["460"] = 403,["463"] = 406,["464"] = 406,["465"] = 407,["466"] = 408,["468"] = 396,["469"] = 396,["471"] = 415,["472"] = 415,["473"] = 417,["474"] = 418,["475"] = 415,["476"] = 420,["477"] = 421,["478"] = 422,["481"] = 425,["482"] = 426,["484"] = 415,["485"] = 415,["488"] = 436,["489"] = 436,["490"] = 438,["491"] = 439,["492"] = 436,["493"] = 441,["494"] = 442,["495"] = 443,["498"] = 446,["499"] = 436,["500"] = 436,["502"] = 453,["503"] = 453,["504"] = 453,["505"] = 453,["506"] = 453,["507"] = 453,["508"] = 360,["509"] = 456,["510"] = 457,["511"] = 310,["514"] = 287,["515"] = 463,["516"] = 464,["517"] = 464,["518"] = 464,["519"] = 464,["520"] = 465,["521"] = 466,["523"] = 468,["524"] = 469,["527"] = 472,["528"] = 464,["529"] = 464,["530"] = 464,["531"] = 463,["532"] = 477,["533"] = 479,["534"] = 479,["535"] = 479,["536"] = 480,["537"] = 479,["538"] = 479,["539"] = 483,["540"] = 484,["541"] = 483,["542"] = 487,["544"] = 488,["545"] = 488,["546"] = 488,["547"] = 488,["548"] = 488,["549"] = 488,["550"] = 488,["551"] = 488,["552"] = 488,["553"] = 494,["555"] = 487,["556"] = 497,["557"] = 497,["558"] = 497,["559"] = 497,["560"] = 498,["561"] = 497,["562"] = 497,["563"] = 501,["564"] = 501,["565"] = 501,["566"] = 502,["567"] = 501,["568"] = 501,["569"] = 509,["570"] = 509,["571"] = 509,["572"] = 510,["573"] = 509,["574"] = 509,["575"] = 513,["576"] = 513,["577"] = 513,["578"] = 513,["579"] = 514,["580"] = 514,["581"] = 515,["582"] = 516,["584"] = 518,["585"] = 519,["587"] = 513,["588"] = 513,["589"] = 565,["590"] = 565,["591"] = 565,["592"] = 565,["593"] = 566,["594"] = 565,["595"] = 565,["596"] = 568,["597"] = 568,["598"] = 568,["599"] = 568,["600"] = 569,["601"] = 568,["602"] = 568,["603"] = 571,["604"] = 571,["605"] = 571,["606"] = 572,["607"] = 571,["608"] = 571,["609"] = 477,["610"] = 592,["611"] = 593,["612"] = 593,["613"] = 593,["614"] = 594,["615"] = 593,["616"] = 593,["617"] = 596,["618"] = 596,["619"] = 596,["620"] = 596,["621"] = 597,["622"] = 596,["623"] = 596,["624"] = 592,["625"] = 601,["626"] = 602,["627"] = 605,["628"] = 606,["629"] = 606,["630"] = 607,["631"] = 607,["632"] = 607,["633"] = 607,["634"] = 608,["635"] = 608,["636"] = 608,["637"] = 609,["638"] = 608,["639"] = 608,["640"] = 613,["641"] = 613,["642"] = 613,["643"] = 614,["644"] = 613,["645"] = 613,["646"] = 621,["647"] = 621,["648"] = 621,["649"] = 622,["650"] = 623,["651"] = 624,["653"] = 626,["655"] = 621,["656"] = 621,["657"] = 629,["658"] = 629,["659"] = 629,["660"] = 630,["661"] = 631,["662"] = 632,["664"] = 634,["666"] = 629,["667"] = 629,["668"] = 637,["669"] = 637,["670"] = 637,["671"] = 638,["672"] = 639,["673"] = 640,["675"] = 642,["677"] = 637,["678"] = 637,["679"] = 601,["680"] = 654,["681"] = 655,["682"] = 657,["683"] = 657,["684"] = 657,["685"] = 658,["686"] = 657,["687"] = 657,["688"] = 661,["689"] = 661,["690"] = 661,["691"] = 661,["692"] = 662,["693"] = 663,["694"] = 664,["695"] = 664,["696"] = 664,["697"] = 664,["698"] = 664,["699"] = 664,["700"] = 664,["701"] = 661,["702"] = 661,["703"] = 670,["704"] = 670,["705"] = 670,["706"] = 670,["707"] = 671,["708"] = 670,["709"] = 670,["710"] = 674,["711"] = 674,["712"] = 674,["713"] = 675,["714"] = 675,["715"] = 675,["716"] = 675,["717"] = 676,["718"] = 674,["719"] = 674,["720"] = 654,["721"] = 679,["722"] = 680,["723"] = 681,["724"] = 682,["725"] = 682,["726"] = 682,["727"] = 683,["728"] = 682,["729"] = 682,["730"] = 686,["731"] = 686,["732"] = 686,["733"] = 687,["734"] = 688,["735"] = 686,["736"] = 686,["737"] = 691,["738"] = 691,["739"] = 691,["740"] = 692,["741"] = 693,["742"] = 694,["743"] = 691,["744"] = 691,["745"] = 679,["746"] = 698,["747"] = 699,["748"] = 699,["749"] = 699,["750"] = 700,["751"] = 699,["752"] = 699,["753"] = 702,["754"] = 702,["755"] = 702,["756"] = 703,["757"] = 702,["758"] = 702,["759"] = 698,["760"] = 708,["761"] = 709,["762"] = 709,["763"] = 709,["764"] = 710,["765"] = 710,["766"] = 710,["767"] = 710,["768"] = 710,["769"] = 710,["770"] = 710,["771"] = 709,["772"] = 709,["773"] = 712,["774"] = 712,["775"] = 712,["776"] = 713,["777"] = 712,["778"] = 712,["779"] = 715,["780"] = 715,["781"] = 715,["782"] = 716,["783"] = 715,["784"] = 715,["785"] = 708,["786"] = 720,["787"] = 721,["788"] = 721,["789"] = 721,["790"] = 722,["791"] = 723,["792"] = 724,["794"] = 726,["795"] = 727,["796"] = 728,["798"] = 730,["800"] = 721,["801"] = 721,["802"] = 733,["803"] = 733,["804"] = 733,["805"] = 734,["806"] = 735,["807"] = 736,["809"] = 738,["810"] = 740,["811"] = 741,["812"] = 742,["813"] = 744,["814"] = 745,["816"] = 748,["817"] = 749,["819"] = 751,["820"] = 733,["821"] = 733,["822"] = 753,["823"] = 753,["824"] = 753,["825"] = 754,["826"] = 753,["827"] = 753,["828"] = 756,["829"] = 756,["830"] = 756,["831"] = 757,["832"] = 758,["833"] = 759,["835"] = 761,["836"] = 756,["837"] = 756,["838"] = 763,["839"] = 763,["840"] = 763,["841"] = 764,["842"] = 763,["843"] = 763,["844"] = 767,["845"] = 767,["846"] = 767,["847"] = 768,["848"] = 769,["850"] = 771,["852"] = 767,["853"] = 767,["854"] = 720,["855"] = 776,["856"] = 776,["857"] = 780,["858"] = 781,["859"] = 782,["860"] = 783,["861"] = 780,["862"] = 786,["863"] = 787,["864"] = 792,["865"] = 786,["866"] = 795,["867"] = 796,["868"] = 796,["869"] = 796,["870"] = 797,["871"] = 796,["872"] = 796,["873"] = 800,["874"] = 800,["875"] = 800,["876"] = 801,["877"] = 800,["878"] = 800,["879"] = 803,["880"] = 803,["881"] = 803,["882"] = 804,["883"] = 803,["884"] = 803,["885"] = 795,["886"] = 809,["887"] = 811,["888"] = 812,["889"] = 812,["890"] = 812,["891"] = 812,["892"] = 812,["893"] = 812,["894"] = 812,["895"] = 812,["896"] = 812,["897"] = 821,["898"] = 822,["900"] = 822,["902"] = 823,["903"] = 824,["904"] = 824,["905"] = 824,["906"] = 826,["907"] = 827,["908"] = 827,["909"] = 827,["910"] = 827,["911"] = 827,["912"] = 827,["913"] = 828,["914"] = 829,["915"] = 829,["916"] = 829,["917"] = 829,["918"] = 827,["919"] = 827,["920"] = 832,["921"] = 833,["922"] = 834,["924"] = 836,["925"] = 824,["926"] = 837,["927"] = 839,["928"] = 840,["929"] = 840,["930"] = 840,["931"] = 840,["932"] = 840,["933"] = 840,["934"] = 841,["935"] = 842,["936"] = 842,["937"] = 842,["938"] = 842,["939"] = 840,["940"] = 840,["941"] = 845,["942"] = 846,["943"] = 847,["945"] = 824,["946"] = 824,["948"] = 811,["949"] = 853,["950"] = 855,["951"] = 855,["952"] = 855,["953"] = 856,["954"] = 857,["957"] = 860,["958"] = 855,["959"] = 855,["960"] = 863,["961"] = 863,["962"] = 863,["963"] = 864,["964"] = 865,["967"] = 868,["968"] = 863,["969"] = 863,["970"] = 871,["971"] = 871,["972"] = 871,["973"] = 872,["974"] = 871,["975"] = 871,["976"] = 875,["977"] = 875,["978"] = 875,["979"] = 876,["980"] = 875,["981"] = 875,["982"] = 879,["983"] = 879,["984"] = 879,["985"] = 880,["986"] = 879,["987"] = 879,["988"] = 883,["989"] = 883,["990"] = 883,["991"] = 884,["992"] = 883,["993"] = 883,["994"] = 887,["995"] = 887,["996"] = 887,["997"] = 888,["998"] = 887,["999"] = 887,["1000"] = 890,["1001"] = 890,["1002"] = 890,["1003"] = 891,["1004"] = 892,["1005"] = 892,["1007"] = 890,["1008"] = 890,["1009"] = 894,["1010"] = 894,["1011"] = 894,["1012"] = 895,["1013"] = 894,["1014"] = 894,["1015"] = 899,["1016"] = 899,["1017"] = 899,["1018"] = 900,["1019"] = 899,["1020"] = 899,["1021"] = 902,["1022"] = 902,["1023"] = 902,["1024"] = 903,["1025"] = 902,["1026"] = 902,["1027"] = 907,["1028"] = 907,["1029"] = 907,["1030"] = 908,["1031"] = 907,["1032"] = 907,["1033"] = 910,["1034"] = 910,["1035"] = 910,["1036"] = 911,["1037"] = 910,["1038"] = 910,["1039"] = 915,["1040"] = 915,["1041"] = 915,["1042"] = 916,["1043"] = 915,["1044"] = 915,["1045"] = 918,["1046"] = 918,["1047"] = 918,["1048"] = 919,["1049"] = 918,["1050"] = 918,["1051"] = 923,["1052"] = 923,["1053"] = 923,["1054"] = 924,["1055"] = 923,["1056"] = 923,["1057"] = 926,["1058"] = 926,["1059"] = 926,["1060"] = 927,["1061"] = 926,["1062"] = 926,["1063"] = 931,["1064"] = 931,["1065"] = 931,["1066"] = 932,["1067"] = 931,["1068"] = 931,["1069"] = 934,["1070"] = 934,["1071"] = 934,["1072"] = 935,["1073"] = 934,["1074"] = 934,["1075"] = 939,["1076"] = 939,["1077"] = 939,["1078"] = 940,["1079"] = 939,["1080"] = 939,["1081"] = 942,["1082"] = 942,["1083"] = 942,["1084"] = 943,["1085"] = 942,["1086"] = 942,["1087"] = 947,["1088"] = 947,["1089"] = 947,["1090"] = 948,["1091"] = 947,["1092"] = 947,["1093"] = 950,["1094"] = 950,["1095"] = 950,["1096"] = 951,["1097"] = 950,["1098"] = 950,["1099"] = 809,["1100"] = 956,["1101"] = 957,["1102"] = 957,["1103"] = 957,["1104"] = 958,["1105"] = 957,["1106"] = 957,["1107"] = 960,["1108"] = 960,["1109"] = 960,["1110"] = 961,["1111"] = 960,["1112"] = 960,["1113"] = 964,["1114"] = 964,["1115"] = 964,["1116"] = 965,["1117"] = 964,["1118"] = 964,["1119"] = 968,["1120"] = 968,["1121"] = 968,["1122"] = 969,["1123"] = 968,["1124"] = 968,["1125"] = 972,["1126"] = 972,["1127"] = 972,["1128"] = 973,["1129"] = 974,["1130"] = 972,["1131"] = 972,["1132"] = 976,["1133"] = 976,["1134"] = 976,["1135"] = 977,["1136"] = 978,["1137"] = 976,["1138"] = 976,["1139"] = 956,["1140"] = 984,["1141"] = 985,["1142"] = 985,["1143"] = 985,["1144"] = 986,["1145"] = 985,["1146"] = 985,["1147"] = 989,["1148"] = 989,["1149"] = 989,["1150"] = 990,["1151"] = 989,["1152"] = 989,["1153"] = 993,["1154"] = 993,["1155"] = 993,["1156"] = 994,["1157"] = 993,["1158"] = 993,["1159"] = 997,["1161"] = 998,["1162"] = 998,["1163"] = 999,["1164"] = 1000,["1165"] = 1001,["1166"] = 1001,["1167"] = 1001,["1168"] = 1002,["1169"] = 1001,["1170"] = 1001,["1171"] = 1004,["1172"] = 1004,["1173"] = 1004,["1174"] = 1005,["1175"] = 1006,["1176"] = 1007,["1178"] = 1009,["1180"] = 1004,["1181"] = 1004,["1182"] = 1012,["1183"] = 1012,["1184"] = 1012,["1185"] = 1013,["1186"] = 1014,["1187"] = 1012,["1188"] = 1012,["1189"] = 1017,["1190"] = 1017,["1191"] = 1017,["1192"] = 1018,["1193"] = 1019,["1194"] = 1020,["1196"] = 1017,["1197"] = 1017,["1198"] = 998,["1201"] = 984,["1202"] = 1026,["1203"] = 1027,["1204"] = 1028,["1205"] = 1029,["1206"] = 1031,["1207"] = 1033,["1208"] = 1033,["1210"] = 1026,["1211"] = 1036,["1212"] = 1038,["1213"] = 1039,["1216"] = 1038,["1217"] = 1055,["1218"] = 1055,["1219"] = 1055,["1221"] = 1056,["1222"] = 1057,["1223"] = 1057,["1224"] = 1057,["1225"] = 1057,["1226"] = 1057,["1227"] = 1057,["1228"] = 1057,["1229"] = 1057,["1230"] = 1057,["1231"] = 1063,["1232"] = 1064,["1233"] = 1064,["1234"] = 1064,["1235"] = 1065,["1236"] = 1066,["1237"] = 1067,["1239"] = 1064,["1240"] = 1064,["1243"] = 1055,["1244"] = 1055,["1245"] = 1072,["1246"] = 1072,["1247"] = 1072,["1248"] = 1073,["1249"] = 1072,["1250"] = 1072,["1251"] = 1076,["1252"] = 1076,["1253"] = 1076,["1255"] = 1078,["1256"] = 1079,["1259"] = 1083,["1260"] = 1083,["1261"] = 1083,["1262"] = 1083,["1263"] = 1083,["1264"] = 1083,["1265"] = 1083,["1266"] = 1083,["1267"] = 1084,["1268"] = 1085,["1269"] = 1085,["1270"] = 1085,["1271"] = 1086,["1272"] = 1087,["1273"] = 1088,["1276"] = 1091,["1277"] = 1091,["1278"] = 1091,["1279"] = 1092,["1280"] = 1091,["1281"] = 1091,["1282"] = 1085,["1283"] = 1085,["1286"] = 1076,["1287"] = 1076,["1288"] = 1098,["1289"] = 1098,["1290"] = 1098,["1291"] = 1099,["1292"] = 1098,["1293"] = 1098,["1294"] = 1102,["1295"] = 1102,["1296"] = 1102,["1297"] = 1103,["1298"] = 1102,["1299"] = 1102,["1300"] = 1106,["1301"] = 1106,["1302"] = 1106,["1303"] = 1107,["1304"] = 1106,["1305"] = 1106,["1307"] = 1111,["1308"] = 1111,["1309"] = 1112,["1310"] = 1113,["1311"] = 1114,["1312"] = 1115,["1313"] = 1115,["1314"] = 1115,["1315"] = 1116,["1316"] = 1117,["1317"] = 1115,["1318"] = 1115,["1319"] = 1119,["1320"] = 1119,["1321"] = 1119,["1322"] = 1120,["1323"] = 1121,["1324"] = 1122,["1326"] = 1124,["1328"] = 1119,["1329"] = 1119,["1330"] = 1127,["1331"] = 1127,["1332"] = 1127,["1333"] = 1128,["1334"] = 1129,["1335"] = 1130,["1337"] = 1132,["1339"] = 1127,["1340"] = 1127,["1341"] = 1135,["1342"] = 1135,["1343"] = 1135,["1344"] = 1136,["1345"] = 1137,["1346"] = 1138,["1347"] = 1139,["1348"] = 1140,["1349"] = 1141,["1350"] = 1142,["1351"] = 1143,["1352"] = 1144,["1353"] = 1145,["1354"] = 1146,["1355"] = 1147,["1357"] = 1149,["1360"] = 1152,["1362"] = 1135,["1363"] = 1135,["1364"] = 1155,["1365"] = 1156,["1366"] = 1156,["1367"] = 1157,["1370"] = 1160,["1371"] = 1162,["1372"] = 1162,["1373"] = 1164,["1374"] = 1165,["1375"] = 1162,["1376"] = 1167,["1377"] = 1168,["1378"] = 1169,["1381"] = 1172,["1382"] = 1172,["1383"] = 1172,["1384"] = 1173,["1385"] = 1172,["1386"] = 1172,["1387"] = 1162,["1388"] = 1162,["1389"] = 1178,["1390"] = 1178,["1391"] = 1180,["1392"] = 1181,["1393"] = 1178,["1394"] = 1183,["1395"] = 1184,["1396"] = 1184,["1397"] = 1184,["1398"] = 1185,["1399"] = 1186,["1400"] = 1187,["1402"] = 1184,["1403"] = 1184,["1404"] = 1178,["1405"] = 1178,["1406"] = 1194,["1407"] = 1194,["1408"] = 1194,["1409"] = 1194,["1410"] = 1194,["1411"] = 1194,["1412"] = 1155,["1413"] = 1197,["1414"] = 1198,["1415"] = 1111,["1418"] = 1203,["1419"] = 1205,["1420"] = 1205,["1421"] = 1205,["1422"] = 1206,["1423"] = 1205,["1424"] = 1205,["1425"] = 1036,["1426"] = 1211,["1427"] = 1212,["1430"] = 1215,["1431"] = 1211,["1432"] = 1219,["1433"] = 1221,["1434"] = 1221,["1435"] = 1221,["1436"] = 1222,["1437"] = 1221,["1438"] = 1221,["1439"] = 1224,["1440"] = 1224,["1441"] = 1224,["1442"] = 1225,["1443"] = 1224,["1444"] = 1224,["1445"] = 1219,["1446"] = 1230,["1447"] = 1231,["1449"] = 1232,["1450"] = 1232,["1451"] = 1232,["1452"] = 1232,["1453"] = 1232,["1454"] = 1232,["1455"] = 1232,["1456"] = 1232,["1457"] = 1232,["1458"] = 1238,["1460"] = 1231,["1461"] = 1230,["1462"] = 1242,["1463"] = 1244,["1464"] = 1245,["1465"] = 1246,["1466"] = 1247,["1467"] = 1248,["1468"] = 1249,["1469"] = 1250,["1470"] = 1251,["1471"] = 1252,["1472"] = 1253,["1473"] = 1254,["1474"] = 1255,["1475"] = 1256,["1476"] = 1257,["1477"] = 1258,["1478"] = 1259,["1479"] = 1260,["1480"] = 1261,["1481"] = 1262,["1482"] = 1263,["1483"] = 1242});
local ____exports = {}
local ____global = include("framework.global")
local global = ____global.global
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____BattlepassManager = include("logic.archive.manager.BattlepassManager")
local battlepassManager = ____BattlepassManager.battlepassManager
local ____IdleRewardManager = include("logic.archive.manager.IdleRewardManager")
local idleRewardManager = ____IdleRewardManager.idleRewardManager
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____MatchManager = include("logic.archive.manager.MatchManager")
local matchManager = ____MatchManager.matchManager
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipType = ____VipEnum.VipType
local ____BattlepassSeasonConfig = include("logic.configs.BattlepassSeasonConfig")
local battlepassSeasonConfigMap = ____BattlepassSeasonConfig.battlepassSeasonConfigMap
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____SevenDaysConfig = include("logic.configs.SevenDaysConfig")
local sevenDaysConfigList = ____SevenDaysConfig.sevenDaysConfigList
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DLadderInfo = include("logic.dialogs.DLadderInfo")
local DLadderInfo = ____DLadderInfo.DLadderInfo
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DSevenSign = include("logic.dialogs.activity.DSevenSign")
local DSevenSign = ____DSevenSign.DSevenSign
local ____DInfoIdleReward = include("logic.dialogs.infos.DInfoIdleReward")
local DInfoIdleReward = ____DInfoIdleReward.DInfoIdleReward
local ____DAlert = include("logic.dialogs.tips.DAlert")
local DAlert = ____DAlert.DAlert
local ____NewbieTaskManager = include("logic.archive.manager.NewbieTaskManager")
local newbieTaskManager = ____NewbieTaskManager.newbieTaskManager
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____DSingleMode = include("logic.dialogs.menu.DSingleMode")
local DSingleMode = ____DSingleMode.DSingleMode
local ____DRank = include("logic.dialogs.storages.DRank")
local DRank = ____DRank.DRank
local ____DHero = include("logic.dialogs.storages.DHero")
local DHero = ____DHero.DHero
local ____DAchieve = include("logic.dialogs.storages.DAchieve")
local DAchieve = ____DAchieve.DAchieve
local ____DDecoration = include("logic.dialogs.storages.DDecoration")
local DDecoration = ____DDecoration.DDecoration
local ____DMultiMode = include("logic.dialogs.menu.DMultiMode")
local DMultiMode = ____DMultiMode.DMultiMode
local ____IBob = include("logic.match.IBob")
local PlayerState = ____IBob.PlayerState
local ____DInputAlert = include("logic.dialogs.tips.DInputAlert")
local DInputAlert = ____DInputAlert.DInputAlert
local ____Tween = include("framework.animation.Tween")
local tween = ____Tween.tween
local ____Easing = include("framework.animation.Easing")
local Easing = ____Easing.default
local ____DMatching = include("logic.dialogs.menu.DMatching")
local DMatching = ____DMatching.DMatching
local ____DShop = include("logic.dialogs.storages.DShop")
local DShop = ____DShop.DShop
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local ____DS2Battlepass = include("logic.dialogs.activity.DS2Battlepass")
local DS2Battlepass = ____DS2Battlepass.DS2Battlepass
local ____Room = include("logic.match.Room")
local room = ____Room.room
local ____DRoom = include("logic.dialogs.menu.DRoom")
local DRoom = ____DRoom.DRoom
____exports.DNewGameHall = __TS__Class()
local DNewGameHall = ____exports.DNewGameHall
DNewGameHall.name = "DNewGameHall"
__TS__ClassExtends(DNewGameHall, Dialog)
function DNewGameHall.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {log = {updateLog = ""}, rightMenu = {visible = false, title = "", items = {}}, friends = {}}
end
function DNewGameHall.prototype.onCreate(self)
    idleRewardManager:init()
    battlepassManager:init()
    newbieTaskManager:init()
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:initView()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    UIUtils:SetOnlyDrawUIs(true)
    y3.camera.set_moving_with_mouse(LOCAL.PLAYER, false)
    if not steamUtils:isSteam() then
        matchManager:commitRank()
    end
    local score = ladderTournamentManager:exit()
    if score ~= nil then
        y3.timer.wait(
            0.5,
            function()
                local from = ladderTournamentManager:getRank(score.oldScore)
                local to = ladderTournamentManager:getRank(score.resultScore)
                dialogs:show(
                    DAlert,
                    {
                        title = i18n["local"](i18n, "提示"),
                        tips = i18n:format("由于你在排位比赛中逃跑，您的段位从\n #00ff00${rankName}${score} #c2d1eb降为 #00ff00${toName}${toScore}", {rankName = from.rankName.value, score = score.oldScore - from.totalScore, toName = to.rankName.value, toScore = score.resultScore - to.totalScore}),
                        hideCancel = true
                    }
                )
            end
        )
    end
    bob.onCommand = function(____, cmd, args)
        if cmd == "choose-level" then
            local level = __TS__ParseInt(args)
            if level == nil or __TS__NumberIsNaN(__TS__Number(level)) then
                level = -1
            end
            archive.playerData.singleModeChooseLevel = level
            print("切换关卡", level)
        end
    end
    archive.playerData.singleModeChooseLevel = 0
    print("关闭关卡")
    self:watch(
        function()
            return bob.data.isMatching
        end,
        function(____, v)
            if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                if v then
                    dialogs:show(DMatching, {showCancel = false, message = "匹配中"})
                else
                    dialogs:hide(DMatching)
                end
            end
        end
    )
    if steamUtils:isSteam() then
        local ____self_2 = steamTopUpManager:checkTreasureChest()
        ____self_2["then"](
            ____self_2,
            function(____, r)
                if r.result then
                    local ____this_1
                    ____this_1 = r
                    local ____opt_0 = ____this_1.showResultAction
                    if ____opt_0 ~= nil then
                        ____opt_0(____this_1)
                    end
                end
            end
        )
        room:init()
        room:refreshRoomInfo()
        self:watch(
            function() return room.data.roomInfo end,
            function(____, v)
                if v ~= nil then
                    dialogs:show(DRoom, {})
                else
                    dialogs:hide(DRoom)
                end
            end,
            nil,
            true
        )
    end
end
function DNewGameHall.prototype.initLog(self)
    self:watch(
        function() return i18n.currentLang end,
        function(____, currentLang)
            if steamUtils:isSteam() then
                if currentLang == "zh" then
                    self.data.log.updateLog = defaultConfig["公告中文"]
                elseif currentLang == "tw" then
                    self.data.log.updateLog = defaultConfig["公告繁体"]
                elseif currentLang == "en" then
                    self.data.log.updateLog = defaultConfig["公告英文"]
                end
            else
                self.data.log.updateLog = defaultConfig["公告"]
            end
        end,
        nil,
        true
    )
    self:bindText(
        "root.other.notice.list.content",
        function()
            return self.data.log.updateLog
        end
    )
    self:bindText(
        "root.other.notice.list.title",
        function()
            return i18n["local"](i18n, "【更新公告】")
        end
    )
end
function DNewGameHall.prototype.initChat(self)
    if self:getUI("chat", true) == nil then
        return
    end
    local isMouseOver = vue.ref(false)
    local receiveTime = vue.ref(-999)
    y3.game:event(
        "玩家-发送消息",
        function(trg, data)
            receiveTime.value = global.time.value
        end
    )
    self:bindMouse(
        "chat.hover",
        function()
            isMouseOver.value = true
        end,
        function()
            isMouseOver.value = false
        end
    )
    local nodeList = {
        self:getUI("chat.world_chat_box.bg"),
        self:getUI("chat.world_chat_box.channels_list"),
        self:getUI("chat.world_chat_box.text_layout")
    }
    local oldTween = -1
    local curAlpha = 0
    vue.watch(
        function()
            return isMouseOver.value or global.time.value - receiveTime.value < 3
        end,
        function(____, show)
            tween:stop(oldTween)
            if show then
                oldTween = tween["do"](
                    tween,
                    curAlpha,
                    100,
                    (100 - curAlpha) / 100 * 0.25,
                    Easing.Linear.None,
                    function(____, v)
                        curAlpha = v
                        for ____, node in ipairs(nodeList) do
                            if node ~= nil then
                                node:set_alpha(v)
                            end
                        end
                    end
                )
            else
                oldTween = tween["do"](
                    tween,
                    curAlpha,
                    0,
                    curAlpha / 100 * 0.25,
                    Easing.Linear.None,
                    function(____, v)
                        curAlpha = v
                        for ____, node in ipairs(nodeList) do
                            if node ~= nil then
                                node:set_alpha(v)
                            end
                        end
                    end
                )
            end
        end,
        {immediate = true}
    )
end
function DNewGameHall.prototype.initTeam(self)
    self:bindVisible(
        "root.teams.team",
        function()
            return bob.data.teamInfo ~= nil
        end
    )
    self:bindText(
        "root.teams.team.teamId",
        function()
            local ____i18n_9 = i18n
            local ____i18n_format_10 = i18n.format
            local ____opt_7 = bob.data.teamInfo
            return ____i18n_format_10(____i18n_9, "队伍号[${teamId}]", {teamId = ____opt_7 and ____opt_7.team_id or 0})
        end
    )
    self:bindText(
        "root.teams.team.title",
        function()
            local ____i18n_13 = i18n
            local ____i18n_format_14 = i18n.format
            local ____opt_11 = bob.data.teamInfo
            return ____i18n_format_14(
                ____i18n_13,
                "队伍[${count}]",
                {count = tostring(____opt_11 and #____opt_11.members or 0) .. "/3"}
            )
        end
    )
    self:bindTextColor(
        "root.teams.team.title",
        function()
            local ____opt_15 = bob.data.teamInfo
            if (____opt_15 and #____opt_15.members or 0) > 3 then
                return UIUtils:toColor("#ff0000")
            else
                return UIUtils:toColor("#d5e9f4")
            end
        end
    )
    do
        local i = 0
        while i < 8 do
            local index = i
            local path = "root.teams.team.list.item_" .. tostring(index + 1)
            self:bindVisible(
                path,
                function()
                    local ____opt_17 = bob.data.teamInfo
                    local player = ____opt_17 and ____opt_17.members[index + 1]
                    return player ~= nil
                end
            )
            self:bindImageUrl(
                path .. ".head",
                function()
                    local ____opt_19 = bob.data.teamInfo
                    local player = ____opt_19 and ____opt_19.members[index + 1]
                    if player ~= nil then
                        return player.head_icon
                    else
                        return nil
                    end
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local ____opt_21 = bob.data.teamInfo
                    local player = ____opt_21 and ____opt_21.members[index + 1]
                    if player ~= nil then
                        return player.name
                    else
                        return ""
                    end
                end
            )
            self:bindText(
                path .. ".state",
                function()
                    local ____opt_23 = bob.data.teamInfo
                    local player = ____opt_23 and ____opt_23.members[index + 1]
                    if player ~= nil then
                        repeat
                            local ____switch65 = player.state
                            local ____cond65 = ____switch65 == PlayerState["空闲"]
                            if ____cond65 then
                                return i18n["local"](i18n, "空闲")
                            end
                            ____cond65 = ____cond65 or ____switch65 == PlayerState["匹配中"]
                            if ____cond65 then
                                return i18n["local"](i18n, "匹配中")
                            end
                            ____cond65 = ____cond65 or ____switch65 == PlayerState["游戏中"]
                            if ____cond65 then
                                return i18n["local"](i18n, "游戏中")
                            end
                            do
                                return i18n["local"](i18n, "未知状态") .. tostring(player.state)
                            end
                        until true
                    else
                        return ""
                    end
                end
            )
            self:bindVisible(
                path .. ".captain",
                function()
                    local ____opt_25 = bob.data.teamInfo
                    local player = ____opt_25 and ____opt_25.members[index + 1]
                    if player ~= nil then
                        local ____player_aid_29 = player.aid
                        local ____opt_27 = bob.data.teamInfo
                        return ____player_aid_29 == (____opt_27 and ____opt_27.captain)
                    else
                        return false
                    end
                end
            )
            local function showMenu(____, ui)
                local ____opt_30 = bob.data.teamInfo
                local player = ____opt_30 and ____opt_30.members[index + 1]
                if player == nil then
                    return
                end
                if not bob.data.isCaptain and player.name ~= LOCAL.PLAYER:get_platform_name() then
                    return
                end
                local items = {}
                if bob.data.isCaptain then
                    if player.name ~= LOCAL.PLAYER:get_platform_name() then
                        items[#items + 1] = {
                            label = i18n["local"](i18n, "设为队长"),
                            enabled = function()
                                return not bob.data.isMatching
                            end,
                            callback = function()
                                if bob.data.isMatching then
                                    DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                                    return
                                end
                                local ____opt_32 = bob.data.teamInfo
                                local player = ____opt_32 and ____opt_32.members[index + 1]
                                if player ~= nil and bob.data.isCaptain then
                                    bob:changeCaptain(player.aid)
                                end
                            end
                        }
                        items[#items + 1] = {
                            label = i18n["local"](i18n, "踢出队伍"),
                            enabled = function()
                                return not bob.data.isMatching
                            end,
                            callback = function()
                                if bob.data.isMatching then
                                    DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                                    return
                                end
                                local ____opt_34 = bob.data.teamInfo
                                local player = ____opt_34 and ____opt_34.members[index + 1]
                                if player ~= nil and bob.data.isCaptain then
                                    bob:kick(player.aid)
                                end
                            end
                        }
                    else
                        items[#items + 1] = {
                            label = i18n["local"](i18n, "解散队伍"),
                            enabled = function()
                                return not bob.data.isMatching
                            end,
                            callback = function()
                                if bob.data.isMatching then
                                    DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                                    return
                                end
                                if bob.data.isCaptain then
                                    bob:dismissTeam()
                                end
                            end
                        }
                    end
                else
                    items[#items + 1] = {
                        label = i18n["local"](i18n, "离开队伍"),
                        enabled = function()
                            return not bob.data.isMatching
                        end,
                        callback = function()
                            if bob.data.isMatching then
                                DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                                return
                            end
                            bob:leaveTeam()
                        end
                    }
                end
                self:showRightMenu(
                    player and player.name or "未知玩家",
                    ui:get_absolute_x(),
                    ui:get_absolute_y(),
                    items
                )
            end
            self:bindClick(path, showMenu)
            self:bindRightClick(path, showMenu)
            i = i + 1
        end
    end
end
function DNewGameHall.prototype.bindNetworkAction(self, path, event, callback)
    self:bindAction(
        path,
        event,
        function(____, ui, player)
            if bob.data.connectState == "disconnect" then
                DTips:show(i18n["local"](i18n, "网络已断开，请稍后再试~"))
                return
            elseif bob.data.connectState == "connecting" then
                DTips:show(i18n["local"](i18n, "网络连接中，请稍后再试~"))
                return
            end
            callback(nil, ui, player)
        end,
        1
    )
end
function DNewGameHall.prototype.outOfTeam(self)
    self:bindVisible(
        "root.teams.outOfTeam",
        function()
            return bob.data.teamInfo == nil
        end
    )
    bob.onMessage = function(____, msg)
        DTips:show(msg)
    end
    bob.onTeamInvite = function(____, teamId, playerAid, nickname)
        return __TS__AsyncAwaiter(function(____awaiter_resolve)
            local result = __TS__Await(dialogs:got(
                DAlert,
                {
                    title = i18n["local"](i18n, "队伍邀请"),
                    tips = i18n:format("收到来自${nickname}的队伍邀请，是否加入？", {nickname = nickname}),
                    sure = i18n["local"](i18n, "加入"),
                    hideCancel = false
                }
            ))
            return ____awaiter_resolve(nil, result.ok)
        end)
    end
    self:bindNetworkAction(
        "root.teams.outOfTeam.create",
        "左键-点击",
        function()
            bob:createTeam()
        end
    )
    self:bindText(
        "root.teams.outOfTeam.create.title",
        function()
            return i18n["local"](i18n, "创建队伍")
        end
    )
    self:bindText(
        "root.teams.outOfTeam.join.title",
        function()
            return i18n["local"](i18n, "加入队伍")
        end
    )
    self:bindNetworkAction(
        "root.teams.outOfTeam.join",
        "左键-点击",
        function()
            local ____opt_38 = self:getUI("root.teams.outOfTeam.input.roomId")
            local input = ____opt_38 and ____opt_38:get_input_field_content()
            if input == "" then
                DTips:show(i18n["local"](i18n, "请输入队伍号"))
            end
            if input then
                bob:joinTeam(__TS__ParseInt(input))
            end
        end
    )
    self:bindButtonEnableHover(
        "root.teams.outOfTeam.create",
        {"root.teams.outOfTeam.create.hover"},
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindButtonEnableHover(
        "root.teams.outOfTeam.join",
        {"root.teams.outOfTeam.join.hover"},
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindButtonEnable(
        "root.teams.outOfTeam.input",
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
end
function DNewGameHall.prototype.initQQ(self)
    self:bindVisible(
        "root.other.QQ",
        function()
            return not steamUtils:isSteam()
        end
    )
    self:bindAction(
        "root.other.QQ",
        "左键-点击",
        function()
            UIUtils:gotoQQ()
        end
    )
end
function DNewGameHall.prototype.initActivity(self)
    local path = "root.other"
    local cfgLength = #sevenDaysConfigList
    local ____opt_40 = archive.statData.sevenDayInfo
    local rewardCount = ____opt_40 and ____opt_40.reward_count or 0
    self:bindVisible(
        path .. ".sevenSign",
        function() return rewardCount < cfgLength and not steamUtils:isSteam() end
    )
    self:bindClick(
        path .. ".sevenSign",
        function()
            dialogs:show(DSevenSign, {})
        end
    )
    self:bindClick(
        path .. ".season",
        function()
            dialogs:show(DLadderInfo, {})
        end
    )
    self:bindImage(
        path .. ".season",
        function()
            local season = ladderTournamentManager:getCurrentSeason()
            if i18n.currentLang == "en" then
                return season.enEntryImg
            else
                return season.entryImg
            end
        end
    )
    self:bindImage(
        path .. ".season.hover",
        function()
            local season = ladderTournamentManager:getCurrentSeason()
            if i18n.currentLang == "en" then
                return season.enEntryImg
            else
                return season.entryImg
            end
        end
    )
    self:bindPressImage(
        path .. ".season",
        function()
            local season = ladderTournamentManager:getCurrentSeason()
            if i18n.currentLang == "en" then
                return season.enEntryImg
            else
                return season.entryImg
            end
        end
    )
end
function DNewGameHall.prototype.initIdleReward(self)
    local path = "root.other.idleReward"
    self:bindVisible(
        path,
        function()
            return not steamUtils:isSteam()
        end
    )
    self:bindAction(
        path,
        "鼠标-移入",
        function(____, ui, p)
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:show(
                DInfoIdleReward,
                {
                    x = x + ui:get_real_width() * 1.2,
                    y = y + ui:get_real_height() / 2
                }
            )
        end
    )
    self:bindAction(
        path,
        "鼠标-移出",
        function()
            dialogs:hide(DInfoIdleReward)
        end
    )
    self:bindText(
        path .. ".time",
        function()
            local time = dateUtils:timeStampFormatToHHMMSS(
                idleRewardManager:getSecond(),
                1
            )
            return "#Y" .. time
        end
    )
end
function DNewGameHall.prototype.initBattlePass(self)
    local id = 3
    local path = "root.other.battlepass"
    self:bindClick(
        path,
        function(____, ui, p)
            dialogs:show(DS2Battlepass, {})
        end
    )
    self:bindText(
        "root.other.battlepass.name",
        function()
            local config = battlepassSeasonConfigMap[id]
            return config.seasonName.value
        end
    )
    self:bindVisible(
        path,
        function()
            local config = battlepassSeasonConfigMap[id]
            local now = Date:now()
            return not steamUtils:isSteam() and now > config.startTime and now < config.endTime
        end
    )
end
function DNewGameHall.prototype.initLiveActive(self)
    self:bindVisible(
        "root.other.liveActive",
        function()
            return not steamUtils:isSteam()
        end
    )
    self:bindClick(
        "root.other.liveActive.img",
        function(____, ui, p)
            UIUtils:gotoUrl("https://www.wjx.cn/vm/tWc3Prr.aspx?utm_source=kkduizhan")
        end
    )
end
function DNewGameHall.prototype.initDailyTask(self)
    self:bindText(
        "root.other.task.dailyTask.des",
        function()
            return i18n:format(
                "单人或组队完成一场PVP战斗#feaa3d（${value}/1）",
                {value = math.min(
                    archive.statInfo:getDailyCompletePVPGameCount(),
                    1
                )}
            )
        end
    )
    self:bindVisible(
        "root.other.task.dailyTask.finish",
        function()
            return archive.statInfo:getDailyCompletePVPGameCount() >= 1
        end
    )
    self:bindVisible(
        "root.other.task.dailyTask",
        function()
            return not steamUtils:isSteam() and newbieTaskManager:getCurrentTask() == nil
        end
    )
end
function DNewGameHall.prototype.initNewbieTask(self)
    self:bindText(
        "root.other.task.newbieTask.title",
        function()
            local task = newbieTaskManager:getCurrentTask()
            if task == nil then
                return ""
            end
            print("task.taskName.value", task.taskName.value)
            if newbieTaskManager:canGetReward() then
                return ((task.taskName.value .. "#8ffe34（") .. i18n["local"](i18n, "点击领取")) .. "）"
            else
                return task.taskName.value
            end
        end
    )
    self:bindText(
        "root.other.task.newbieTask.des",
        function()
            local task = newbieTaskManager:getCurrentTask()
            if task == nil then
                return ""
            end
            local progress = newbieTaskManager:getCurrentTaskProgress()
            local current = tostring(progress.current)
            local need = tostring(progress.need)
            if task.condition1 == 7 then
                current = ladderTournamentManager:getRank(progress.current).rankName.value
                need = ladderTournamentManager:getRank(progress.need).rankName.value
            end
            if progress.current >= progress.need then
                return ((((tostring(task.taskDes) .. "#8ffe34（") .. current) .. "/") .. need) .. "）"
            end
            return ((((tostring(task.taskDes) .. "#feaa3d（") .. current) .. "/") .. need) .. "）"
        end
    )
    self:bindVisible(
        "root.other.task.newbieTask.finish",
        function()
            return false
        end
    )
    self:bindText(
        "root.other.task.newbieTask.reward",
        function()
            local task = newbieTaskManager:getCurrentTask()
            if task == nil then
                return ""
            end
            return task.rewardDes.value
        end
    )
    self:bindVisible(
        "root.other.task.newbieTask",
        function()
            return not steamUtils:isSteam() and newbieTaskManager:getCurrentTask() ~= nil
        end
    )
    self:bindClick(
        "root.other.task.newbieTask",
        function()
            if newbieTaskManager:canGetReward() then
                newbieTaskManager:receiveReward()
            else
                DTips:show(i18n["local"](i18n, "任务未完成，不可领取"))
            end
        end
    )
end
function DNewGameHall.prototype.initBgm(self)
end
function DNewGameHall.prototype.onHide(self)
    localData.inGameHall = false
    idleRewardManager:stop()
    battlepassManager:stopTimer()
end
function DNewGameHall.prototype.onShow(self)
    localData.inGameHall = true
    steamUtils:switchChat("hall")
end
function DNewGameHall.prototype.initLogo(self)
    self:bindVisible(
        "root.logo",
        function()
            return steamUtils:isSteam()
        end
    )
    self:bindVisible(
        "root.logo.logo_zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "root.logo.logo_en",
        function()
            return i18n.currentLang == "en"
        end
    )
end
function DNewGameHall.prototype.initMenu(self)
    local function initUIAnim()
        local list = {
            "root.menu.singleGame",
            "root.menu.multiGame",
            "root.menu.ranks",
            "root.menu.heros",
            "root.menu.shop",
            "root.menu.achievements",
            "root.menu.decorates"
        }
        for ____, ui_path in ipairs(list) do
            local ____opt_42 = self:getUI(ui_path .. ".hover")
            if ____opt_42 ~= nil then
                ____opt_42:set_anim_opacity(0, 0, 0.1)
            end
            local t = -1
            self:bindMouse(
                ui_path,
                function(____, ui)
                    tween:stop(t)
                    t = tween["do"](
                        tween,
                        ui:get_relative_x(),
                        10,
                        0.1,
                        Easing.Linear.None,
                        function(____, v)
                            ui:set_pos(
                                v,
                                ui:get_relative_y()
                            )
                        end
                    )
                    local hover = ui:get_child("hover")
                    if hover ~= nil then
                        hover:set_anim_opacity(0, 255, 0.1)
                    end
                    SoundManager:play(SoundType["UI主界面滑动"])
                end,
                function(____, ui)
                    tween:stop(t)
                    t = tween["do"](
                        tween,
                        ui:get_relative_x(),
                        0,
                        0.1,
                        Easing.Linear.None,
                        function(____, v)
                            ui:set_pos(
                                v,
                                ui:get_relative_y()
                            )
                        end
                    )
                    local hover = ui:get_child("hover")
                    if hover ~= nil then
                        hover:set_anim_opacity(255, 0, 0.1)
                    end
                end
            )
        end
    end
    initUIAnim(nil)
    self:bindClick(
        "root.menu.singleGame",
        function()
            if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                DTips:show(i18n["local"](i18n, "仅限队长选择游戏模式"))
                return
            end
            dialogs:show(DSingleMode, {})
        end
    )
    self:bindClick(
        "root.menu.multiGame",
        function()
            if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                DTips:show(i18n["local"](i18n, "仅限队长选择游戏模式"))
                return
            end
            dialogs:show(DMultiMode, {})
        end
    )
    self:bindClick(
        "root.menu.ranks",
        function()
            dialogs:show(DRank, {})
        end
    )
    self:bindClick(
        "root.menu.heros",
        function()
            dialogs:show(DHero, {})
        end
    )
    self:bindClick(
        "root.menu.shop",
        function()
            dialogs:show(DShop, {})
        end
    )
    self:bindClick(
        "root.menu.achievements",
        function()
            dialogs:show(DAchieve, {})
        end
    )
    self:bindClick(
        "root.menu.decorates",
        function()
            dialogs:show(DDecoration, {})
        end
    )
    self:bindClick(
        "root.botttom.setting",
        function()
            local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DSettings.setting")
            if ui ~= nil then
                ui:set_visible(true)
            end
        end
    )
    self:bindClick(
        "root.botttom.exit",
        function()
            LOCAL.PLAYER:exit_game()
        end
    )
    self:bindText(
        "root.menu.singleGame",
        function()
            return i18n["local"](i18n, "单人游戏")
        end
    )
    self:bindText(
        "root.menu.singleGame.hover",
        function()
            return i18n["local"](i18n, "单人游戏")
        end
    )
    self:bindText(
        "root.menu.multiGame",
        function()
            return i18n["local"](i18n, "多人游戏")
        end
    )
    self:bindText(
        "root.menu.multiGame.hover",
        function()
            return i18n["local"](i18n, "多人游戏")
        end
    )
    self:bindText(
        "root.menu.ranks",
        function()
            return i18n["local"](i18n, "排行榜")
        end
    )
    self:bindText(
        "root.menu.ranks.hover",
        function()
            return i18n["local"](i18n, "排行榜")
        end
    )
    self:bindText(
        "root.menu.heros",
        function()
            return i18n["local"](i18n, "资料")
        end
    )
    self:bindText(
        "root.menu.heros.hover",
        function()
            return i18n["local"](i18n, "资料")
        end
    )
    self:bindText(
        "root.menu.shop",
        function()
            return i18n["local"](i18n, "商店")
        end
    )
    self:bindText(
        "root.menu.shop.hover",
        function()
            return i18n["local"](i18n, "商店")
        end
    )
    self:bindText(
        "root.menu.achievements",
        function()
            return i18n["local"](i18n, "成就")
        end
    )
    self:bindText(
        "root.menu.achievements.hover",
        function()
            return i18n["local"](i18n, "成就")
        end
    )
    self:bindText(
        "root.menu.decorates",
        function()
            return i18n["local"](i18n, "装饰")
        end
    )
    self:bindText(
        "root.menu.decorates.hover",
        function()
            return i18n["local"](i18n, "装饰")
        end
    )
end
function DNewGameHall.prototype.initCareer(self)
    self:bindText(
        "root.teams.career.name",
        function()
            return LOCAL.PLAYER:get_name()
        end
    )
    self:bindImageUrl(
        "root.teams.career.head",
        function()
            return LOCAL.PLAYER:get_platform_icon_url()
        end
    )
    self:bindVisible(
        "root.teams.career.head_frame_vip",
        function()
            return archive.vipInfo:has(VipType["头像框换成会员"])
        end
    )
    self:bindText(
        "root.teams.career.gold.value",
        function()
            return "" .. tostring(archive.playerInfo.gold)
        end
    )
    self:bindImage(
        "root.teams.career.score.icon",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return cfg.icon
        end
    )
    self:bindText(
        "root.teams.career.score.score",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return i18n:format("段位：${rankName}", {rankName = cfg.rankName.value})
        end
    )
end
function DNewGameHall.prototype.initRightMenu(self)
    self:bindVisible(
        "root.rightMenuBox",
        function()
            return self.data.rightMenu.visible
        end
    )
    self:bindClick(
        "root.rightMenuBox",
        function()
            self.data.rightMenu.visible = false
        end
    )
    self:bindText(
        "root.rightMenuBox.rightMenu.title.name",
        function()
            return self.data.rightMenu.title
        end
    )
    local itemCount = 4
    do
        local i = 0
        while i < itemCount do
            local index = i + 1
            local path = "root.rightMenuBox.rightMenu.item" .. tostring(index)
            self:bindVisible(
                path,
                function()
                    return self.data.rightMenu.items[index] ~= nil
                end
            )
            self:bindTextColor(
                path .. ".name",
                function()
                    local data = self.data.rightMenu.items[index]
                    if data and data:enabled() then
                        return UIUtils:toColor("#bec5cc")
                    else
                        return UIUtils:toColor("#5f6266")
                    end
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local data = self.data.rightMenu.items[index]
                    return data and data.label or ""
                end
            )
            self:bindClick(
                path,
                function()
                    local data = self.data.rightMenu.items[index]
                    if data and data:enabled() then
                        data:callback()
                    end
                end
            )
            i = i + 1
        end
    end
end
function DNewGameHall.prototype.showRightMenu(self, title, x, y, items)
    self.data.rightMenu.title = title
    self.data.rightMenu.items = items
    self.data.rightMenu.visible = true
    local ui = self:getUI("root.rightMenuBox.rightMenu")
    if ui ~= nil then
        ui:set_absolute_pos(x, y)
    end
end
function DNewGameHall.prototype.initFriend(self)
    local function refreshList()
        if not steamUtils:isSteam() then
            return
        end
    end
    y3.game:event(
        "steam-收到好友申请",
        function(trg, data)
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                print("steam-收到好友申请 ", data.nick_name)
                local result = __TS__Await(dialogs:got(
                    DAlert,
                    {
                        title = i18n["local"](i18n, "好友申请"),
                        tips = i18n:format("是否同意与${nickname}加为好友？", {nickname = data.nick_name}),
                        sure = i18n["local"](i18n, "同意"),
                        hideCancel = false
                    }
                ))
                if result.ok then
                    y3.steam.request_aid_by_nickname(
                        data.nick_name,
                        function(aid, error_code)
                            print("request_aid_by_nickname ", aid, error_code)
                            if aid ~= nil then
                                y3.steam.reply_friend_add(aid, true)
                            end
                        end
                    )
                end
            end)
        end
    )
    y3.game:event(
        "steam-收到被好友删除",
        function(trg, data)
            refreshList(nil)
        end
    )
    self:bindClick(
        "root.teams.friends.add_friend",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if not steamUtils:isSteam() then
                    DTips:show(i18n["local"](i18n, "敬请期待"))
                    return ____awaiter_resolve(nil)
                end
                local result = __TS__Await(dialogs:got(
                    DInputAlert,
                    {
                        title = i18n["local"](i18n, "添加好友"),
                        des = i18n["local"](i18n, "请输入好友昵称（仅限游戏好友）"),
                        sure = i18n["local"](i18n, "确定")
                    }
                ))
                if result.ok then
                    y3.steam.request_aid_by_nickname(
                        __TS__StringTrim(result.result),
                        function(aid, error_code)
                            print("request_aid_by_nickname ", aid, error_code)
                            if aid == nil then
                                DTips:show(i18n:format("玩家${nickname}不存在", {nickname = result.result}))
                                return
                            end
                            y3.steam.request_add_friend(
                                aid,
                                function(s)
                                    print("request_add_friend ", aid, s)
                                end
                            )
                        end
                    )
                end
            end)
        end
    )
    self:bindVisible(
        "root.teams.friends.add_friend",
        function()
            return false
        end
    )
    self:bindVisible(
        "root.teams.friends.refresh",
        function()
            return false
        end
    )
    self:bindClick(
        "root.teams.friends.refresh",
        function()
            refreshList(nil)
        end
    )
    do
        local i = 0
        while i < 20 do
            local index = i
            local path = "root.teams.friends.friends.item_" .. tostring(index + 1)
            local friend = self.data.friends[index + 1]
            self:bindVisible(
                path,
                function()
                    local friend = self.data.friends[index + 1]
                    return friend ~= nil
                end
            )
            self:bindImageUrl(
                path .. ".head",
                function()
                    local friend = self.data.friends[index + 1]
                    if friend ~= nil then
                        return friend.head_icon
                    else
                        return nil
                    end
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local friend = self.data.friends[index + 1]
                    if friend ~= nil then
                        return friend.nickname
                    else
                        return ""
                    end
                end
            )
            self:bindText(
                path .. ".state",
                function()
                    local friend = self.data.friends[index + 1]
                    if friend ~= nil then
                        if friend.state == 1 then
                            return i18n["local"](i18n, "离线")
                        elseif friend.state == 2 then
                            return i18n["local"](i18n, "在线")
                        elseif friend.state == 3 then
                            return i18n["local"](i18n, "房间中")
                        elseif friend.state == 4 then
                            return i18n["local"](i18n, "匹配中")
                        elseif friend.state == 5 then
                            return i18n["local"](i18n, "游戏中")
                        else
                            return i18n["local"](i18n, "未知状态")
                        end
                    else
                        return ""
                    end
                end
            )
            local function showMenu(____, ui)
                local ____opt_54 = bob.data.teamInfo
                local player = ____opt_54 and ____opt_54.members[index + 1]
                if player == nil then
                    return
                end
                local items = {}
                items[#items + 1] = {
                    label = i18n["local"](i18n, "邀请加入队伍"),
                    enabled = function()
                        return not bob.data.isMatching and (friend.state == 1 or friend.state == 2)
                    end,
                    callback = function()
                        if bob.data.isMatching then
                            DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                            return
                        end
                        y3.steam.request_invite_join_team(
                            friend.aid,
                            function(s)
                                print("request_invite_join_team", s)
                            end
                        )
                    end
                }
                items[#items + 1] = {
                    label = i18n["local"](i18n, "删除好友"),
                    enabled = function()
                        return true
                    end,
                    callback = function()
                        y3.steam.request_delete_friend(
                            friend.aid,
                            function(s)
                                print("request_delete_friend", s)
                                if s then
                                    refreshList(nil)
                                end
                            end
                        )
                    end
                }
                self:showRightMenu(
                    friend.nickname,
                    ui:get_absolute_x(),
                    ui:get_absolute_y(),
                    items
                )
            end
            self:bindClick(path, showMenu)
            self:bindRightClick(path, showMenu)
            i = i + 1
        end
    end
    refreshList(nil)
    self:bindText(
        "root.teams.friends.title",
        function()
            return i18n["local"](i18n, "好友")
        end
    )
end
function DNewGameHall.prototype.initWorldChat(self)
    if not steamUtils:isSteam() then
        return
    end
    print("创建")
end
function DNewGameHall.prototype.initBg(self)
    self:bindVisible(
        "root.bg0",
        function()
            return archive.playerData.cur_hall_bg == 0
        end
    )
    self:bindVisible(
        "root.bg2951",
        function()
            return archive.playerData.cur_hall_bg == 2951
        end
    )
end
function DNewGameHall.prototype.initRoom(self)
    room.onRoomInvite = function(____, teamId, playerAid, nickname)
        return __TS__AsyncAwaiter(function(____awaiter_resolve)
            local result = __TS__Await(dialogs:got(
                DAlert,
                {
                    title = i18n["local"](i18n, "房间邀请"),
                    tips = i18n:format("收到来自${nickname}的房间邀请，是否加入？", {nickname = nickname}),
                    sure = i18n["local"](i18n, "加入"),
                    hideCancel = false
                }
            ))
            return ____awaiter_resolve(nil, result.ok)
        end)
    end
end
function DNewGameHall.prototype.initView(self)
    self:initMenu()
    self:initLog()
    self:initChat()
    self:initCareer()
    self:initLogo()
    self:initTeam()
    self:outOfTeam()
    self:initQQ()
    self:initActivity()
    self:initIdleReward()
    self:initBattlePass()
    self:initDailyTask()
    self:initNewbieTask()
    self:initLiveActive()
    self:initBgm()
    self:initRightMenu()
    self:initFriend()
    self:initWorldChat()
    self:initBg()
    self:initRoom()
end
return ____exports
