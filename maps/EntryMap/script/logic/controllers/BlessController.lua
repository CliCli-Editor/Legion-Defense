local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 2,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 11,["28"] = 11,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 17,["39"] = 17,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 19,["44"] = 19,["45"] = 20,["46"] = 20,["47"] = 21,["48"] = 21,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 24,["56"] = 24,["57"] = 25,["58"] = 25,["59"] = 26,["60"] = 26,["61"] = 26,["62"] = 27,["63"] = 27,["64"] = 28,["65"] = 28,["66"] = 29,["67"] = 29,["68"] = 30,["69"] = 30,["70"] = 31,["71"] = 31,["72"] = 32,["73"] = 32,["74"] = 33,["75"] = 33,["76"] = 34,["77"] = 34,["78"] = 35,["79"] = 35,["80"] = 37,["81"] = 37,["82"] = 37,["84"] = 39,["85"] = 312,["86"] = 37,["87"] = 41,["88"] = 42,["89"] = 44,["90"] = 45,["91"] = 45,["92"] = 45,["93"] = 45,["94"] = 46,["95"] = 48,["96"] = 49,["97"] = 50,["98"] = 51,["99"] = 53,["102"] = 41,["103"] = 58,["104"] = 59,["105"] = 60,["107"] = 58,["108"] = 64,["109"] = 66,["110"] = 68,["111"] = 70,["112"] = 71,["113"] = 72,["114"] = 73,["115"] = 74,["116"] = 75,["117"] = 76,["118"] = 77,["119"] = 78,["120"] = 79,["122"] = 81,["123"] = 82,["125"] = 85,["126"] = 86,["127"] = 86,["128"] = 88,["130"] = 89,["131"] = 89,["132"] = 91,["134"] = 92,["135"] = 92,["136"] = 94,["137"] = 95,["143"] = 99,["144"] = 99,["146"] = 100,["147"] = 102,["148"] = 104,["150"] = 107,["151"] = 108,["152"] = 110,["153"] = 111,["156"] = 114,["157"] = 114,["159"] = 115,["160"] = 115,["162"] = 116,["163"] = 116,["165"] = 118,["166"] = 118,["167"] = 118,["168"] = 119,["169"] = 119,["171"] = 120,["172"] = 121,["173"] = 122,["174"] = 122,["175"] = 122,["176"] = 122,["177"] = 122,["178"] = 122,["179"] = 122,["180"] = 123,["182"] = 125,["183"] = 118,["184"] = 118,["185"] = 127,["186"] = 129,["188"] = 132,["189"] = 132,["192"] = 99,["195"] = 64,["196"] = 139,["197"] = 140,["198"] = 141,["199"] = 143,["200"] = 143,["201"] = 143,["202"] = 143,["203"] = 144,["204"] = 145,["205"] = 146,["206"] = 146,["207"] = 146,["208"] = 146,["209"] = 147,["210"] = 148,["211"] = 148,["212"] = 148,["213"] = 148,["214"] = 150,["215"] = 151,["216"] = 139,["217"] = 154,["218"] = 155,["220"] = 156,["221"] = 157,["222"] = 157,["224"] = 158,["228"] = 154,["229"] = 163,["230"] = 164,["231"] = 164,["232"] = 164,["233"] = 164,["234"] = 163,["235"] = 167,["236"] = 169,["237"] = 167,["238"] = 172,["239"] = 173,["240"] = 174,["241"] = 175,["244"] = 178,["245"] = 178,["246"] = 189,["248"] = 191,["249"] = 191,["250"] = 192,["251"] = 193,["252"] = 191,["255"] = 196,["256"] = 197,["258"] = 200,["259"] = 200,["260"] = 200,["261"] = 200,["262"] = 202,["263"] = 204,["264"] = 204,["265"] = 172,["266"] = 207,["267"] = 208,["268"] = 209,["269"] = 210,["272"] = 214,["273"] = 215,["274"] = 216,["277"] = 221,["278"] = 222,["279"] = 223,["280"] = 224,["281"] = 225,["282"] = 226,["283"] = 231,["284"] = 232,["286"] = 234,["287"] = 236,["288"] = 207,["289"] = 240,["290"] = 242,["291"] = 243,["292"] = 244,["293"] = 245,["294"] = 246,["295"] = 247,["296"] = 252,["297"] = 253,["299"] = 255,["300"] = 240,["301"] = 263,["302"] = 264,["303"] = 266,["304"] = 263,["305"] = 269,["306"] = 270,["307"] = 271,["308"] = 272,["310"] = 274,["311"] = 269,["312"] = 277,["313"] = 278,["315"] = 280,["316"] = 280,["317"] = 281,["318"] = 282,["319"] = 283,["321"] = 280,["324"] = 286,["325"] = 277,["326"] = 294,["327"] = 295,["328"] = 296,["329"] = 294,["330"] = 299,["331"] = 300,["333"] = 302,["334"] = 302,["335"] = 303,["336"] = 304,["337"] = 305,["338"] = 306,["339"] = 306,["341"] = 302,["344"] = 309,["345"] = 299,["346"] = 313,["347"] = 314,["348"] = 314,["349"] = 314,["350"] = 314,["351"] = 314,["352"] = 315,["353"] = 316,["354"] = 317,["357"] = 320,["358"] = 321,["359"] = 322,["361"] = 324,["362"] = 325,["363"] = 326,["364"] = 327,["365"] = 328,["367"] = 329,["368"] = 332,["369"] = 330,["371"] = 331,["372"] = 332,["373"] = 333,["374"] = 334,["375"] = 335,["376"] = 336,["377"] = 337,["378"] = 338,["379"] = 339,["380"] = 339,["381"] = 339,["382"] = 339,["383"] = 339,["384"] = 339,["385"] = 339,["386"] = 339,["387"] = 339,["388"] = 339,["389"] = 339,["390"] = 339,["392"] = 341,["393"] = 341,["394"] = 341,["395"] = 341,["396"] = 341,["397"] = 341,["398"] = 341,["399"] = 341,["400"] = 341,["401"] = 341,["402"] = 341,["403"] = 341,["407"] = 344,["409"] = 345,["410"] = 346,["411"] = 347,["412"] = 348,["413"] = 349,["414"] = 350,["415"] = 351,["416"] = 351,["417"] = 351,["418"] = 351,["419"] = 351,["420"] = 351,["421"] = 351,["422"] = 351,["423"] = 351,["424"] = 351,["425"] = 351,["426"] = 351,["428"] = 353,["429"] = 353,["430"] = 353,["431"] = 353,["432"] = 353,["433"] = 353,["434"] = 353,["435"] = 353,["436"] = 353,["437"] = 353,["438"] = 353,["439"] = 353,["443"] = 356,["445"] = 357,["446"] = 358,["447"] = 359,["448"] = 360,["449"] = 361,["450"] = 361,["451"] = 361,["452"] = 361,["453"] = 361,["454"] = 361,["455"] = 361,["456"] = 361,["457"] = 361,["458"] = 361,["459"] = 361,["460"] = 361,["462"] = 363,["463"] = 363,["464"] = 363,["465"] = 363,["466"] = 363,["467"] = 363,["468"] = 363,["469"] = 363,["470"] = 363,["471"] = 363,["472"] = 363,["473"] = 363,["477"] = 366,["479"] = 367,["480"] = 368,["481"] = 369,["484"] = 371,["486"] = 372,["487"] = 373,["488"] = 374,["491"] = 376,["493"] = 377,["494"] = 378,["495"] = 378,["498"] = 380,["500"] = 381,["501"] = 382,["502"] = 382,["505"] = 384,["507"] = 385,["508"] = 386,["511"] = 388,["513"] = 389,["514"] = 390,["515"] = 391,["516"] = 392,["519"] = 394,["521"] = 395,["522"] = 396,["523"] = 397,["526"] = 399,["528"] = 400,["529"] = 401,["532"] = 403,["534"] = 404,["535"] = 406,["536"] = 407,["537"] = 408,["539"] = 410,["542"] = 412,["544"] = 413,["545"] = 414,["546"] = 415,["549"] = 417,["551"] = 418,["553"] = 419,["554"] = 419,["556"] = 420,["557"] = 421,["558"] = 421,["559"] = 421,["560"] = 421,["561"] = 422,["563"] = 424,["564"] = 425,["565"] = 426,["566"] = 427,["567"] = 427,["571"] = 419,["576"] = 431,["578"] = 432,["579"] = 433,["582"] = 435,["584"] = 436,["585"] = 437,["588"] = 439,["590"] = 440,["591"] = 441,["592"] = 442,["595"] = 444,["597"] = 445,["598"] = 446,["599"] = 447,["602"] = 449,["604"] = 450,["605"] = 451,["606"] = 452,["609"] = 454,["611"] = 455,["612"] = 456,["615"] = 458,["617"] = 460,["618"] = 460,["619"] = 460,["620"] = 460,["621"] = 460,["622"] = 461,["625"] = 463,["627"] = 467,["628"] = 468,["631"] = 472,["632"] = 473,["633"] = 474,["634"] = 475,["635"] = 475,["636"] = 475,["638"] = 475,["640"] = 475,["642"] = 476,["643"] = 476,["644"] = 477,["645"] = 476,["648"] = 479,["649"] = 479,["650"] = 479,["651"] = 479,["652"] = 479,["655"] = 481,["657"] = 484,["658"] = 485,["659"] = 486,["661"] = 488,["662"] = 489,["664"] = 491,["665"] = 491,["666"] = 491,["667"] = 491,["670"] = 493,["672"] = 496,["673"] = 497,["675"] = 499,["677"] = 501,["678"] = 501,["679"] = 501,["680"] = 501,["683"] = 503,["685"] = 505,["687"] = 506,["689"] = 507,["690"] = 507,["691"] = 507,["692"] = 507,["694"] = 507,["695"] = 508,["698"] = 510,["700"] = 512,["701"] = 513,["704"] = 516,["706"] = 517,["709"] = 519,["711"] = 520,["712"] = 522,["713"] = 523,["714"] = 524,["715"] = 525,["716"] = 525,["717"] = 525,["718"] = 525,["719"] = 525,["720"] = 525,["721"] = 525,["722"] = 525,["723"] = 525,["724"] = 525,["725"] = 525,["726"] = 525,["728"] = 527,["729"] = 529,["730"] = 530,["731"] = 531,["732"] = 532,["733"] = 532,["734"] = 532,["735"] = 532,["736"] = 532,["737"] = 532,["738"] = 532,["739"] = 532,["740"] = 532,["741"] = 532,["742"] = 532,["743"] = 532,["747"] = 535,["749"] = 536,["750"] = 536,["751"] = 536,["752"] = 536,["753"] = 536,["754"] = 537,["755"] = 537,["756"] = 537,["757"] = 537,["760"] = 540,["762"] = 541,["763"] = 542,["764"] = 544,["765"] = 545,["766"] = 546,["767"] = 547,["768"] = 547,["769"] = 547,["770"] = 547,["771"] = 547,["772"] = 547,["773"] = 547,["774"] = 547,["775"] = 547,["776"] = 547,["777"] = 547,["778"] = 547,["785"] = 553,["786"] = 554,["787"] = 313,["788"] = 557,["789"] = 558,["790"] = 561,["791"] = 562,["792"] = 563,["794"] = 566,["795"] = 567,["796"] = 568,["797"] = 570,["799"] = 571,["800"] = 583,["801"] = 572,["803"] = 580,["805"] = 581,["807"] = 582,["808"] = 582,["810"] = 583,["811"] = 584,["812"] = 585,["813"] = 586,["814"] = 586,["816"] = 587,["817"] = 588,["818"] = 588,["820"] = 589,["821"] = 590,["822"] = 590,["825"] = 592,["827"] = 593,["829"] = 595,["830"] = 596,["831"] = 597,["832"] = 598,["833"] = 599,["835"] = 601,["836"] = 602,["838"] = 603,["840"] = 604,["841"] = 604,["843"] = 605,["844"] = 605,["845"] = 605,["846"] = 605,["847"] = 606,["848"] = 606,["850"] = 607,["852"] = 608,["854"] = 609,["855"] = 610,["856"] = 610,["858"] = 611,["859"] = 612,["860"] = 613,["862"] = 615,["864"] = 616,["866"] = 617,["867"] = 618,["868"] = 618,["870"] = 619,["871"] = 620,["872"] = 621,["874"] = 623,["876"] = 624,["878"] = 626,["879"] = 627,["880"] = 628,["881"] = 629,["883"] = 631,["884"] = 632,["886"] = 634,["888"] = 635,["890"] = 638,["891"] = 639,["892"] = 640,["893"] = 641,["894"] = 642,["895"] = 643,["897"] = 645,["899"] = 646,["901"] = 648,["902"] = 648,["904"] = 649,["906"] = 650,["908"] = 651,["909"] = 652,["910"] = 653,["911"] = 654,["913"] = 656,["915"] = 657,["917"] = 658,["918"] = 658,["920"] = 659,["921"] = 660,["922"] = 660,["924"] = 661,["925"] = 662,["926"] = 663,["928"] = 665,["934"] = 670,["935"] = 557,["936"] = 674,["937"] = 675,["938"] = 677,["939"] = 678,["940"] = 680,["941"] = 681,["942"] = 682,["943"] = 683,["944"] = 684,["945"] = 685,["946"] = 686,["947"] = 687,["948"] = 688,["949"] = 689,["950"] = 690,["952"] = 692,["953"] = 702,["955"] = 709,["956"] = 709,["957"] = 710,["958"] = 711,["959"] = 712,["961"] = 712,["965"] = 713,["967"] = 713,["971"] = 714,["973"] = 714,["977"] = 709,["980"] = 717,["981"] = 718,["982"] = 720,["983"] = 720,["984"] = 720,["985"] = 721,["986"] = 721,["987"] = 721,["988"] = 721,["991"] = 725,["992"] = 726,["995"] = 723,["996"] = 723,["997"] = 723,["998"] = 723,["999"] = 723,["1000"] = 723,["1001"] = 723,["1002"] = 723,["1008"] = 728,["1009"] = 721,["1010"] = 721,["1011"] = 721,["1012"] = 730,["1013"] = 731,["1014"] = 734,["1015"] = 735,["1016"] = 736,["1018"] = 720,["1019"] = 720,["1020"] = 739,["1021"] = 740,["1022"] = 740,["1023"] = 741,["1024"] = 741,["1025"] = 741,["1026"] = 744,["1027"] = 745,["1028"] = 745,["1030"] = 747,["1031"] = 748,["1032"] = 748,["1034"] = 751,["1035"] = 752,["1037"] = 753,["1038"] = 753,["1040"] = 754,["1041"] = 755,["1042"] = 756,["1043"] = 757,["1045"] = 759,["1046"] = 760,["1049"] = 753,["1052"] = 762,["1053"] = 741,["1054"] = 740,["1055"] = 740,["1057"] = 768,["1058"] = 768,["1059"] = 768,["1060"] = 769,["1061"] = 769,["1062"] = 769,["1063"] = 769,["1064"] = 771,["1067"] = 775,["1068"] = 776,["1071"] = 773,["1072"] = 773,["1073"] = 773,["1074"] = 773,["1075"] = 773,["1076"] = 773,["1077"] = 773,["1078"] = 773,["1084"] = 778,["1086"] = 780,["1087"] = 769,["1088"] = 781,["1089"] = 782,["1090"] = 782,["1092"] = 784,["1093"] = 769,["1094"] = 769,["1095"] = 787,["1096"] = 787,["1097"] = 790,["1098"] = 791,["1099"] = 792,["1101"] = 768,["1102"] = 768,["1103"] = 796,["1104"] = 796,["1106"] = 674,["1107"] = 802});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigList = ____BlessConfig.blessConfigList
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____BlessRuleConfig = include("logic.configs.BlessRuleConfig")
local blessRuleConfigList = ____BlessRuleConfig.blessRuleConfigList
local blessRuleConfigMap = ____BlessRuleConfig.blessRuleConfigMap
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____BobInfo = include("logic.match.BobInfo")
local isGuideLevel = ____BobInfo.isGuideLevel
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____BlessData = include("logic.models.BlessData")
local BlessData = ____BlessData.BlessData
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____ITrigger = include("logic.triggers.ITrigger")
local RewardType = ____ITrigger.RewardType
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____AuctionController = include("logic.controllers.AuctionController")
local auctionController = ____AuctionController.auctionController
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____MercenaryController = include("logic.controllers.MercenaryController")
local mercenaryController = ____MercenaryController.mercenaryController
local ____SkillController = include("logic.controllers.SkillController")
local skillController = ____SkillController.skillController
local ____TechnologyController = include("logic.controllers.TechnologyController")
local technologyController = ____TechnologyController.technologyController
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
____exports.BlessController = __TS__Class()
local BlessController = ____exports.BlessController
BlessController.name = "BlessController"
function BlessController.prototype.____constructor(self)
    self.manager = nil
    self.depthCount = 0
end
function BlessController.prototype.init(self, manager)
    self.manager = manager
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local rule = random:randomWeight(
        blessRuleConfigList,
        function(____, item) return item.weight end
    )
    gameData.blessRule = rule.id
    for ____, playerId in ipairs(playerIdList) do
        local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
        blessData.level = 0
        if GameUtils.isSingleGame or isGuideLevel(nil) then
            blessData.refreshMaxCount = {999, 999, 999}
        end
    end
end
function BlessController.prototype.genBlessAll(self)
    for ____, playerId in ipairs(playerIdList) do
        self:genBless(playerId)
    end
end
function BlessController.prototype.genBless(self, playerId)
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    blessData.refreshCount = {0, 0, 0}
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local rule = blessRuleConfigMap[gameData.blessRule]
    blessData.pool = {}
    local quality = 1
    if gameData.level < 10 then
        blessData.level = 1
        quality = rule.level1
    elseif gameData.level < 20 then
        blessData.level = 2
        quality = rule.level2
    else
        blessData.level = 3
        quality = rule.level3
    end
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_0 = bigBlessData and bigBlessData.bigBless
    if (____opt_0 and ____opt_0.id) == 5 then
        quality = 3
    else
        local ____opt_4 = bigBlessData and bigBlessData.bigBless
        if (____opt_4 and ____opt_4.id) == 6 then
            quality = 1
        else
            local ____opt_8 = bigBlessData and bigBlessData.bigBless
            if (____opt_8 and ____opt_8.id) == 12 then
                if #blessData.have == 0 then
                    quality = 3
                end
            end
        end
    end
    do
        local index = 0
        while index < #blessConfigList do
            do
                local element = blessConfigList[index + 1]
                if element.quality ~= quality then
                    goto __continue19
                end
                if (bigBlessData and bigBlessData.bigBless) ~= nil then
                    if __TS__ArrayIndexOf(bigBlessData.bigBless.disableBless, element) ~= -1 then
                        console:log("筛选掉品被ban的祝福", element.id)
                        goto __continue19
                    end
                end
                if blessData.level == 1 and #element.level1 == 0 then
                    goto __continue19
                end
                if blessData.level == 2 and #element.level2 == 0 then
                    goto __continue19
                end
                if blessData.level == 3 and #element.level3 == 0 then
                    goto __continue19
                end
                local find = __TS__ArrayFindIndex(
                    blessData.have,
                    function(____, a)
                        if a.configId == element.id then
                            return true
                        end
                        local group1 = blessConfigMap[a.configId].groupId
                        local group2 = element.groupId
                        if __TS__ArrayFindIndex(
                            group1,
                            function(____, a) return __TS__ArrayFindIndex(
                                group2,
                                function(____, b) return a == b end
                            ) >= 0 end
                        ) >= 0 then
                            return true
                        end
                        return false
                    end
                )
                if find >= 0 then
                    goto __continue19
                end
                local ____blessData_pool_14 = blessData.pool
                ____blessData_pool_14[#____blessData_pool_14 + 1] = {weight = 1, configId = element.id}
            end
            ::__continue19::
            index = index + 1
        end
    end
end
function BlessController.prototype.genCanSelBless(self, playerId, unlimitedRefresh)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    local item = random:randomWeight(
        blessData.pool,
        function(____, item) return item.weight end
    )
    local tempPool = __TS__ArrayConcat(blessData.pool)
    tempPool = self:getTempPoolData(tempPool, item.configId)
    local item2 = random:randomWeight(
        tempPool,
        function(____, item) return item.weight end
    )
    tempPool = self:getTempPoolData(tempPool, item2.configId)
    local item3 = random:randomWeight(
        tempPool,
        function(____, item) return item.weight end
    )
    blessData.temp = {item.configId, item2.configId, item3.configId}
    player.canSelBless = {blessConfigMap[item.configId], blessConfigMap[item2.configId], blessConfigMap[item3.configId]}
end
function BlessController.prototype.selRandomAll(self)
    for ____, playerId in ipairs(playerIdList) do
        do
            local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
            if player.canSelBless == nil or #player.canSelBless == 0 then
                goto __continue37
            end
            self:selRandom(playerId)
        end
        ::__continue37::
    end
end
function BlessController.prototype.selRandom(self, playerId)
    self:selBless(
        playerId,
        random:randomRange(0, 2)
    )
end
function BlessController.prototype.refresh(self, playerId, unlimitedRefresh)
    self:genCanSelBless(playerId, unlimitedRefresh)
end
function BlessController.prototype.refresh2(self, playerId, idx)
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if player.canSelBless == nil or blessData.refreshCount[idx + 1] >= blessData.refreshMaxCount[idx + 1] then
        return
    end
    local ____blessData_refreshCount_15, ____temp_16 = blessData.refreshCount, idx + 1
    ____blessData_refreshCount_15[____temp_16] = ____blessData_refreshCount_15[____temp_16] + 1
    local tempPool = __TS__ArrayConcat(blessData.pool)
    do
        local index = 0
        while index < #blessData.temp do
            local element = blessData.temp[index + 1]
            tempPool = self:getTempPoolData(tempPool, element)
            index = index + 1
        end
    end
    if tempPool == nil or #tempPool == 0 then
        tempPool = blessData.pool
    end
    local item = random:randomWeight(
        tempPool,
        function(____, item) return item.weight end
    )
    player.canSelBless[idx + 1] = blessConfigMap[item.configId]
    local ____blessData_temp_17 = blessData.temp
    ____blessData_temp_17[#____blessData_temp_17 + 1] = item.configId
end
function BlessController.prototype.selBless(self, playerId, pos)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if not player.canSelBless then
        console:warn(("玩家" .. tostring(playerId)) .. "没有提前生成祝福可选项")
        return
    end
    local bless = player.canSelBless[pos + 1]
    if not bless then
        console:warn((("玩家" .. tostring(playerId)) .. "没有找到祝福") .. tostring(pos))
        return
    end
    player.canSelBless = nil
    self:register(playerId, bless.id)
    self.manager:trigger(TriggerType["获得祝福时"], {playerId = playerId})
    triggerManager:trigger(TriggerType["获得及科技等级提升时"], {playerId = playerId, isGet = true})
    local kingdata = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    triggerManager:trigger(TriggerType["当前塔的个数小于等于时触发"], {playerId = playerId, count = #kingdata.aliveList})
    for ____, group in ipairs(bless.groupId) do
        self:removeAllBlessWithGroup(playerId, group)
    end
    self:changeAllWeightWithTag(playerId, bless.tag)
    traceLogUtils:onSelBless(playerId, bless.id)
end
function BlessController.prototype.debueAddBless(self, playerId, blessId)
    local bless = blessConfigMap[blessId]
    self:register(playerId, blessId)
    self.manager:trigger(TriggerType["获得祝福时"], {playerId = playerId})
    triggerManager:trigger(TriggerType["获得及科技等级提升时"], {playerId = playerId, isGet = true})
    local kingdata = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    triggerManager:trigger(TriggerType["当前塔的个数小于等于时触发"], {playerId = playerId, count = #kingdata.aliveList})
    for ____, group in ipairs(bless.groupId) do
        self:removeAllBlessWithGroup(playerId, group)
    end
    self:changeAllWeightWithTag(playerId, bless.tag)
end
function BlessController.prototype.removeAllBlessWithGroup(self, playerId, group)
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    blessData.pool = self:_removeAllBlessWithGroup(blessData.pool, group)
end
function BlessController.prototype.getTempPoolData(self, pool, cfgId)
    local bless = blessConfigMap[cfgId]
    for ____, group in ipairs(bless.groupId) do
        pool = self:_removeAllBlessWithGroup(pool, group)
    end
    return pool
end
function BlessController.prototype._removeAllBlessWithGroup(self, pool, group)
    local len = #pool
    do
        local idx = len - 1
        while idx >= 0 do
            local ele = pool[idx + 1]
            if __TS__ArrayIndexOf(blessConfigMap[ele.configId].groupId, group) ~= -1 then
                __TS__ArraySplice(pool, idx, 1)
            end
            idx = idx - 1
        end
    end
    return pool
end
function BlessController.prototype.changeAllWeightWithTag(self, playerId, tag)
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    blessData.pool = self:_changeAllWeightWithTag(blessData.pool, tag)
end
function BlessController.prototype._changeAllWeightWithTag(self, pool, tag)
    local len = #pool
    do
        local idx = len - 1
        while idx >= 0 do
            local ele = pool[idx + 1]
            local cfg = blessConfigMap[ele.configId]
            if cfg.tag == tag then
                local ____pool_index_18, ____weight_19 = pool[idx + 1], "weight"
                ____pool_index_18[____weight_19] = ____pool_index_18[____weight_19] + cfg.weightCorrection
            end
            idx = idx - 1
        end
    end
    return pool
end
function BlessController.prototype.reward(self, data, rewardType, arg1, arg2, arg3, blessId)
    console:log(
        "触发奖励: " .. tostring(data.playerId),
        rewardType,
        self.depthCount
    )
    self.depthCount = self.depthCount + 1
    if self.depthCount >= 100 then
        console:log("死循环了？？？")
        return
    end
    local playerId = data.playerId
    if data.playerId == 0 then
        playerId = y3.player.LOCAL_PLAYER.id
    end
    local cfg = blessConfigMap[blessId]
    local blessName = cfg ~= nil and cfg.name or "来自大头的"
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local unit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    repeat
        local ____switch69 = rewardType
        local x, y, heroX, hero, ____type, mercenaryNum, quality, num, genre, count, reward
        local ____cond69 = ____switch69 == RewardType["根据佣兵等级获得金币"]
        if ____cond69 then
            SoundManager:play(SoundType["获得金币"], data.playerId)
            x = data.rarity
            y = math.floor(arg1 * (x or 1) + arg2 + 0.5)
            playerDataController:addGold(playerId, y)
            heroX = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
            effectController:showGold(playerId, heroX.entity.y3Unit, y)
            console:log("获得金币: " .. tostring(y))
            if y < 0 then
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 减少金币[${gold}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            gold = ("#ff0000" .. tostring(y)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            else
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 获得金币[${gold}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            gold = ("#ff0000" .. tostring(y)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["获得金币"]
        if ____cond69 then
            SoundManager:play(SoundType["获得金币"], data.playerId)
            playerDataController:addGold(playerId, arg1)
            hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
            effectController:showGold(playerId, hero.entity.y3Unit, arg1)
            console:log("获得金币: " .. tostring(arg1))
            if arg1 < 0 then
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 减少金币[${gold}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            gold = ("#ff0000" .. tostring(arg1)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            else
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 获得金币[${gold}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            gold = ("#ff0000" .. tostring(arg1)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["获得木材"]
        if ____cond69 then
            SoundManager:play(SoundType["获得木头"], data.playerId)
            playerDataController:addWood(playerId, arg1)
            console:log("获得木材: " .. tostring(arg1))
            if arg1 < 0 then
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 减少水晶[${wood}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            wood = ("#ff0000" .. tostring(arg1)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            else
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 获得水晶[${wood}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            wood = ("#ff0000" .. tostring(arg1)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["佣兵购买价格"]
        if ____cond69 then
            player.mercenaryDiscard = player.mercenaryDiscard + (arg1 or 0)
            player.mercenaryDiscardValue = player.mercenaryDiscardValue + (arg2 or 0)
            console:log("佣兵购买折扣: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["佣兵利息"]
        if ____cond69 then
            player.mercenaryInterest = player.mercenaryInterest + (arg1 or 0)
            player.mercenaryInterestValue = player.mercenaryInterestValue + (arg2 or 0)
            console:log("佣兵额外利息: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["佣兵Buff"]
        if ____cond69 then
            console:log("添加佣兵buff: " .. tostring(arg1))
            local ____player_mercenaryMemberBuff_20 = player.mercenaryMemberBuff
            ____player_mercenaryMemberBuff_20[#____player_mercenaryMemberBuff_20 + 1] = arg1
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["全员Buff"]
        if ____cond69 then
            console:log("添加全员buff: " .. tostring(arg1))
            local ____player_membersBuff_21 = player.membersBuff
            ____player_membersBuff_21[#____player_membersBuff_21 + 1] = arg1
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["升级经验百分比"]
        if ____cond69 then
            console:log("升级经验百分比: " .. tostring(arg1))
            player.expRate = arg1
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["设置某个品质卡牌的几率"]
        if ____cond69 then
            console:log("设置某个品质卡牌的几率: " .. tostring(arg1))
            player.card1_rate = arg1
            player.card2_rate = arg2
            player.card3_rate = arg3
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["木头产量提升"]
        if ____cond69 then
            console:log("木头产量提升: " .. tostring(arg1))
            player.gatherScale = arg1
            player.gatherScaleCount = arg2
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["设置利息上限"]
        if ____cond69 then
            console:log("设置利息上限: " .. tostring(arg1))
            player.interestRate = arg1
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["增加Tag"]
        if ____cond69 then
            console:log("增加Tag: " .. tostring(arg1))
            ____type = arg1
            if ____type == 0 then
                ____type = playerGenre.genresSortedList[1]
            end
            genreController:addTag(playerId, ____type, arg2)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["每多少次刷新必定出某个Label的卡牌"]
        if ____cond69 then
            console:log("每多少次刷新必定出某个Label的卡牌: " .. tostring(arg1))
            player.card_refresh_get_label = arg1
            player.card_refresh_step_count = arg2
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["每四级科技赠送永久佣兵"]
        if ____cond69 then
            mercenaryNum = arg1 > 0 and math.floor((player.farmerLevel + 0.5) / arg1) or 1
            do
                local i = 1
                while i <= mercenaryNum do
                    do
                        if i <= #player.mercenaryList then
                            console:log(
                                ("当前" .. tostring(i)) .. "级佣兵: ",
                                player.mercenaryList[i]
                            )
                            goto __continue77
                        end
                        console:log("每四级科技赠送永久佣兵: ", mercenaryNum)
                        local m = mercenaryController:randomGetCurrentLevelMercenary(playerId, i)
                        if m ~= nil then
                            local ____player_mercenaryList_22 = player.mercenaryList
                            ____player_mercenaryList_22[#____player_mercenaryList_22 + 1] = m.id
                        end
                    end
                    ::__continue77::
                    i = i + 1
                end
            end
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["设置英雄单位数值"]
        if ____cond69 then
            console:log((("设置英雄单位数值: " .. tostring(arg1)) .. " ") .. tostring(arg2))
            unit:getWritableEntity():setValue(arg1, arg2)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["获得简单技能"]
        if ____cond69 then
            console:log("获得技能: " .. tostring(arg1))
            skillController:addSkill(playerId, arg1)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["卡片购买价格"]
        if ____cond69 then
            player.cardBuy = player.cardBuy + (arg1 or 0)
            player.cardBuyValue = player.cardBuyValue + (arg2 or 0)
            console:log("卡牌购买价格: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["刷新价格"]
        if ____cond69 then
            player.cardRefresh = player.cardRefresh + (arg1 or 0)
            player.cardRefreshValue = player.cardRefreshValue + (arg2 or 0)
            console:log("刷新价格: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["随机卡购买价格"]
        if ____cond69 then
            player.cardRandomBuy = player.cardRandomBuy + (arg1 or 0)
            player.cardRandomBuyValue = player.cardRandomBuyValue + (arg2 or 0)
            console:log("随机卡购买价格: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["获取免费刷新次数"]
        if ____cond69 then
            player.cardRefreshFreeCount = player.cardRefreshFreeCount + (arg1 or 0)
            console:log("获取免费刷新次数: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or (____switch69 == RewardType["添加Buff"] or ____switch69 == RewardType["英雄Buff"])
        if ____cond69 then
            unit:getWritableEntity():addEffect(
                unit:getWritableEntity(),
                arg1 or 0,
                arg2 > 0 and arg2 or nil
            )
            console:log("添加Buff: " .. tostring(arg1))
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["获取卡牌"]
        if ____cond69 then
            if arg1 == 0 then
                genreController:getGenreByBless(data.playerId, nil, nil, blessId)
                break
            end
            quality = arg1
            num = arg2
            genre = arg3
            local ____temp_23
            if genre == 0 then
                ____temp_23 = nil
            else
                ____temp_23 = genre
            end
            genre = ____temp_23
            do
                local index = 0
                while index < num do
                    genreController:getGenreByBless(data.playerId, quality, genre, blessId)
                    index = index + 1
                end
            end
            console:log(
                "获得卡牌: " .. tostring(quality),
                num,
                genre
            )
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["科技修改"]
        if ____cond69 then
            if arg1 == 1 then
                player.farmerLevel = arg2 or 0
                technologyController:updateFarmer(playerId)
            else
                player.gatherLevel = arg2 or 0
                technologyController:updateGather(playerId)
            end
            console:log(
                "科技修改: " .. tostring(arg1),
                arg2
            )
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["科技上限"]
        if ____cond69 then
            if arg1 == 1 then
                player.farmerLevelLimit = arg2 or 0
            else
                player.gatherLevelLimit = arg2 or 0
            end
            console:log(
                "科技上限:" .. tostring(arg1),
                arg2
            )
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["根据佣兵原价返还水晶比例"]
        if ____cond69 then
            error("根据佣兵原价返还水晶比例 待实现", 0)
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["竞拍出价加成"]
        if ____cond69 then
            local ____data_25 = data
            local ____data_ratio_24 = data.ratio
            if ____data_ratio_24 == nil then
                ____data_ratio_24 = 0
            end
            ____data_25.ratio = ____data_ratio_24 + arg1
            console:log("竞拍出价加成:", data.ratio)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["叠加利息上限"]
        if ____cond69 then
            player.addInterestMax = player.addInterestMax + arg1
            console:log("叠加利息上限:", arg1, player.addInterestMax)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["随机获得装备"]
        if ____cond69 then
            auctionController:autoAddOrangeEquip(playerId, arg1)
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["平衡金币水晶"]
        if ____cond69 then
            if player.gold <= player.wood then
                SoundManager:play(SoundType["获得金币"], data.playerId)
                playerDataController:addGold(playerId, arg1)
                console:log((tostring(blessName) .. "获得金币: ") .. tostring(arg1))
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 获得金币[${gold}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            gold = ("#ff0000" .. tostring(arg1)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            if player.gold >= player.wood then
                SoundManager:play(SoundType["获得木头"], data.playerId)
                playerDataController:addWood(playerId, arg2)
                console:log((tostring(blessName) .. "获得木材: ") .. tostring(arg2))
                chatController:sysMsg(
                    i18n:format(
                        "触发[${bless}]祝福, 获得水晶[${wood}]",
                        {
                            bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                            wood = ("#ff0000" .. tostring(arg2)) .. "#ffffff"
                        }
                    ),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["英雄失去Buff"]
        if ____cond69 then
            unit:getWritableEntity():modifyEffectQuantity(
                unit:getWritableEntity(),
                arg1,
                arg2 > 0 and -arg2 or -1
            )
            console:log(
                "失去Buff: " .. tostring(arg1),
                -arg2
            )
            break
        end
        ____cond69 = ____cond69 or ____switch69 == RewardType["结算水晶利息"]
        if ____cond69 then
            count = math.floor(player.wood / arg1)
            reward = math.min(count * arg2, arg3)
            SoundManager:play(SoundType["获得木头"], data.playerId)
            playerDataController:addWood(playerId, reward)
            console:log((tostring(blessName) .. "获得木材: ") .. tostring(reward))
            chatController:sysMsg(
                i18n:format(
                    "触发[${bless}]祝福, 获得水晶[${wood}]",
                    {
                        bless = ("#ff0000" .. tostring(blessName)) .. "#ffffff",
                        wood = ("#ff0000" .. tostring(reward)) .. "#ffffff"
                    }
                ),
                ChatInputType["仅自己可见消息"],
                playerId,
                playerId
            )
            break
        end
        do
            break
        end
    until true
    self.depthCount = 0
    console:log("触发奖励完成")
end
function BlessController.prototype.condition(self, data, condition, arg1, arg2)
    console:log("触发条件: " .. tostring(data.playerId))
    local playerId = data.playerId
    if data.playerId == 0 then
        playerId = y3.player.LOCAL_PLAYER.id
    end
    local genreData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    console:log("触发条件类型: " .. tostring(condition))
    repeat
        local ____switch90 = condition
        local ____type, mode, kingData, list2, mod, r, hireModResult, skillId, cfg, modX, rX
        local ____cond90 = ____switch90 == TriggerType["获得祝福时"] or ____switch90 == TriggerType["每回合开始时"] or ____switch90 == TriggerType["刷新时"] or ____switch90 == TriggerType["击破敌方战区时"] or ____switch90 == TriggerType["对抗波成功防守时"] or ____switch90 == TriggerType["购买随机卡牌时"] or ____switch90 == TriggerType["战斗中佣兵死亡时"] or ____switch90 == TriggerType["英雄等级提升时"]
        if ____cond90 then
            return true
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["战斗中击杀敌人"]
        if ____cond90 then
            if arg1 == 0 and arg2 == 0 then
                return true
            end
            ____type = data.type
            mode = data.mode
            if arg1 ~= 0 and arg2 ~= 0 then
                if arg1 == ____type and arg2 == mode then
                    return true
                end
            elseif arg1 ~= 0 then
                if arg1 == ____type then
                    return true
                end
            elseif arg2 ~= 0 then
                if arg2 == mode then
                    return true
                end
            end
            return false
        end
        ____cond90 = ____cond90 or (____switch90 == TriggerType["当前塔的个数小于等于时触发"] or ____switch90 == TriggerType["当前塔的个数小于等于后每回合触发"])
        if ____cond90 then
            kingData = writeableDatas.players[player2King[playerId]]:getOrCreateSingle(KingData)
            console:log("当前塔的个数: " .. tostring(arg1))
            if #kingData.aliveList <= arg1 then
                console:log("当前塔的个数小于等于: " .. tostring(arg1))
                return true
            end
            console:log("当前塔的个数小于等于失败")
            return false
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["镜像关战斗单位数量小于等于"]
        if ____cond90 then
            if gameData.mode ~= GameMode["镜像"] then
                return false
            end
            list2 = __TS__ArrayFilter(
                writeableDatas.players[playerId]:getAll(UnitData),
                function(____, a) return a.type == UnitType.MERCENARY end
            )
            if #list2 + 1 <= arg1 then
                return true
            end
            return false
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["科技等级提升时"]
        if ____cond90 then
            mod = 1
            if arg1 > 0 then
                mod = arg1
            end
            r = playerData.farmerLevel % mod
            if playerData.farmerLevel > 0 and r == 0 then
                return true
            end
            return false
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["购买佣兵时"]
        if ____cond90 then
            mod = 1
            if arg1 > 0 then
                mod = arg1
            end
            hireModResult = playerData.hireCount % mod
            if playerData.hireCount > 0 and hireModResult == 0 then
                return true
            end
            return false
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["获得卡牌时"]
        if ____cond90 then
            skillId = data.skillId
            cfg = genreConfigMap[skillId]
            if arg2 ~= 0 and cfg.rarity ~= arg2 then
                return false
            end
            if arg1 == 0 then
                return true
            end
            return genreData.skillLevels[skillId] == 1
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["流派等级提升时"]
        if ____cond90 then
            if arg1 == 4 then
                return data.genre == arg2
            elseif arg1 == 1 then
                return data.genre == genreData.genresSortedList[1]
            elseif arg1 == 2 then
                return data.genre == genreData.genresSortedList[2]
            end
            return true
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["流派Tag数达到"]
        if ____cond90 then
            if arg1 ~= 0 then
                return data.genre == arg1 and data.tags >= arg2
            end
            return data.tags >= arg2
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["连续购买Tag统计"]
        if ____cond90 then
            if data.count >= arg1 then
                local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
                playerGenre.same_tag_count = 0
                return true
            end
            return false
        end
        ____cond90 = ____cond90 or ____switch90 == TriggerType["获得及科技等级提升时"]
        if ____cond90 then
            if data.isGet == true then
                return true
            end
            modX = 1
            if arg1 > 0 then
                modX = arg1
            end
            rX = playerData.farmerLevel % modX
            if playerData.farmerLevel > 0 and rX == 0 then
                return true
            end
            return false
        end
        do
            break
        end
    until true
    return true
end
function BlessController.prototype.register(self, playerId, cfgId)
    local cfg = blessConfigMap[cfgId]
    local blessData = writeableDatas.players[playerId]:getOrCreateSingle(BlessData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local level = 1
    local list = {}
    if gameData.level <= 10 then
        list = cfg.level1
        level = 1
    elseif gameData.level <= 20 then
        list = cfg.level2
        level = 2
    elseif gameData.level <= 30 then
        list = cfg.level3
        level = 3
    end
    local data = {configId = cfgId, trigger = {}, level = level}
    if cfg.rateType == 1 then
        do
            local index = 1
            while index < #list do
                local element = list[index + 1]
                local pre = list[index]
                if pre.condition ~= element.condition then
                    error(
                        "祝福表的互斥触发条件配置有问题:" .. tostring(cfg.id),
                        0
                    )
                end
                if pre.conditionArgs1 ~= element.conditionArgs1 then
                    error(
                        "祝福表的互斥触发条件配置有问题:" .. tostring(cfg.id),
                        0
                    )
                end
                if pre.conditionArgs2 ~= element.conditionArgs2 then
                    error(
                        "祝福表的互斥触发条件配置有问题:" .. tostring(cfg.id),
                        0
                    )
                end
                index = index + 1
            end
        end
        local trgs = {}
        local rateList = {}
        __TS__ArrayForEach(
            list,
            function(____, element)
                local trigger = self.manager:add(
                    element.condition,
                    element.times,
                    function(____, data)
                        do
                            local function ____catch(____error)
                                console:error("祝福奖励发放失败:")
                                console:error(____error)
                            end
                            local ____try, ____hasReturned = pcall(function()
                                ____exports.blessController:reward(
                                    data,
                                    element.reward,
                                    element.rewardArgs1,
                                    element.rewardArgs2,
                                    element.rewardArgs3,
                                    cfgId
                                )
                            end)
                            if not ____try then
                                ____catch(____hasReturned)
                            end
                        end
                        return true
                    end,
                    element.id
                )
                trgs[#trgs + 1] = trigger
                rateList[#rateList + 1] = element.rewardConditionArgs
                if element.condition == TriggerType["连续购买Tag统计"] then
                    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
                    playerGenre.same_tag_count = 0
                end
            end
        )
        local element = list[1]
        self.manager:link(
            element.condition,
            {
                rate = rateList,
                triggers = trgs,
                condition = function(____, data)
                    if data.playerId ~= 0 and data.playerId ~= playerId then
                        return -1
                    end
                    local success = ____exports.blessController:condition(data, element.condition, element.conditionArgs1, element.conditionArgs2)
                    if not success then
                        return -1
                    end
                    local rate = random:random()
                    local cur = 0
                    do
                        local index = 0
                        while index < #rateList do
                            do
                                local element = rateList[index + 1]
                                cur = cur + element
                                if cur < rate then
                                    goto __continue133
                                end
                                console:log(("互斥事件第" .. tostring(index)) .. "个触发成功")
                                return index
                            end
                            ::__continue133::
                            index = index + 1
                        end
                    end
                    return 0
                end
            }
        )
    else
        __TS__ArrayForEach(
            list,
            function(____, element)
                local trigger = self.manager:register(
                    element.condition,
                    element.times,
                    function(____, data)
                        if element.rewardCondition ~= 1 or random:random() <= element.rewardConditionArgs then
                            do
                                local function ____catch(____error)
                                    console:error("祝福奖励发放失败:")
                                    console:error(____error)
                                end
                                local ____try, ____hasReturned = pcall(function()
                                    ____exports.blessController:reward(
                                        data,
                                        element.reward,
                                        element.rewardArgs1,
                                        element.rewardArgs2,
                                        element.rewardArgs3,
                                        cfgId
                                    )
                                end)
                                if not ____try then
                                    ____catch(____hasReturned)
                                end
                            end
                            return true
                        end
                        return false
                    end,
                    function(____, data)
                        if data.playerId ~= 0 and data.playerId ~= playerId then
                            return false
                        end
                        return ____exports.blessController:condition(data, element.condition, element.conditionArgs1, element.conditionArgs2)
                    end
                )
                local ____data_trigger_26 = data.trigger
                ____data_trigger_26[#____data_trigger_26 + 1] = trigger
                if element.condition == TriggerType["连续购买Tag统计"] then
                    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
                    playerGenre.same_tag_count = 0
                end
            end
        )
        local ____blessData_have_27 = blessData.have
        ____blessData_have_27[#____blessData_have_27 + 1] = data
    end
end
____exports.blessController = make(nil, ____exports.BlessController)
return ____exports
