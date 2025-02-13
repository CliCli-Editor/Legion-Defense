local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["14"] = 1,["15"] = 1,["16"] = 2,["17"] = 2,["18"] = 3,["19"] = 3,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 13,["39"] = 13,["40"] = 14,["41"] = 14,["42"] = 15,["43"] = 15,["44"] = 16,["45"] = 16,["46"] = 17,["47"] = 17,["48"] = 17,["49"] = 18,["50"] = 18,["51"] = 19,["52"] = 19,["53"] = 20,["54"] = 20,["55"] = 21,["56"] = 21,["57"] = 22,["58"] = 22,["59"] = 23,["60"] = 23,["61"] = 24,["62"] = 24,["63"] = 25,["64"] = 25,["65"] = 28,["66"] = 28,["67"] = 29,["68"] = 29,["69"] = 31,["70"] = 31,["71"] = 34,["72"] = 38,["73"] = 39,["74"] = 40,["75"] = 41,["76"] = 43,["77"] = 47,["78"] = 47,["79"] = 48,["80"] = 48,["81"] = 49,["82"] = 49,["83"] = 50,["84"] = 50,["86"] = 56,["87"] = 56,["88"] = 56,["89"] = 56,["91"] = 56,["92"] = 58,["93"] = 59,["94"] = 292,["95"] = 56,["96"] = 60,["97"] = 62,["98"] = 62,["99"] = 62,["100"] = 62,["101"] = 62,["102"] = 62,["103"] = 62,["104"] = 62,["105"] = 62,["106"] = 62,["107"] = 62,["108"] = 62,["109"] = 62,["111"] = 75,["112"] = 75,["114"] = 76,["115"] = 77,["116"] = 78,["118"] = 80,["119"] = 81,["123"] = 75,["127"] = 84,["128"] = 84,["129"] = 85,["130"] = 89,["131"] = 84,["135"] = 92,["136"] = 92,["137"] = 93,["138"] = 94,["139"] = 95,["140"] = 96,["141"] = 96,["142"] = 96,["143"] = 96,["144"] = 96,["145"] = 96,["146"] = 96,["147"] = 96,["148"] = 96,["149"] = 96,["150"] = 96,["152"] = 92,["156"] = 111,["157"] = 111,["158"] = 112,["159"] = 114,["160"] = 111,["163"] = 117,["164"] = 60,["165"] = 124,["166"] = 125,["168"] = 136,["169"] = 136,["171"] = 137,["172"] = 138,["173"] = 138,["175"] = 139,["176"] = 140,["177"] = 141,["179"] = 144,["180"] = 145,["181"] = 146,["182"] = 147,["183"] = 148,["185"] = 152,["186"] = 154,["187"] = 155,["188"] = 156,["189"] = 157,["191"] = 159,["192"] = 159,["193"] = 159,["194"] = 159,["195"] = 160,["196"] = 160,["198"] = 163,["199"] = 165,["200"] = 166,["204"] = 136,["208"] = 177,["209"] = 177,["211"] = 178,["212"] = 179,["213"] = 179,["215"] = 180,["216"] = 181,["217"] = 182,["221"] = 177,["225"] = 185,["226"] = 185,["227"] = 186,["228"] = 187,["229"] = 188,["230"] = 189,["231"] = 189,["232"] = 189,["233"] = 189,["234"] = 189,["235"] = 189,["236"] = 189,["237"] = 189,["238"] = 189,["239"] = 189,["240"] = 189,["242"] = 185,["245"] = 203,["246"] = 204,["247"] = 205,["248"] = 206,["249"] = 207,["251"] = 209,["253"] = 211,["254"] = 213,["255"] = 215,["256"] = 216,["257"] = 218,["258"] = 218,["259"] = 220,["260"] = 221,["261"] = 222,["262"] = 225,["263"] = 226,["264"] = 227,["265"] = 227,["266"] = 228,["267"] = 229,["269"] = 231,["272"] = 235,["273"] = 235,["274"] = 236,["275"] = 238,["276"] = 239,["278"] = 235,["281"] = 124,["282"] = 245,["283"] = 245,["284"] = 249,["285"] = 249,["286"] = 253,["287"] = 254,["288"] = 255,["289"] = 256,["290"] = 257,["291"] = 253,["292"] = 260,["293"] = 260,["294"] = 263,["297"] = 265,["298"] = 265,["299"] = 265,["300"] = 265,["302"] = 264,["305"] = 267,["307"] = 264,["309"] = 263,["310"] = 271,["311"] = 272,["312"] = 273,["313"] = 273,["316"] = 276,["317"] = 271,["318"] = 279,["319"] = 280,["320"] = 281,["321"] = 282,["324"] = 285,["325"] = 285,["328"] = 286,["329"] = 286,["332"] = 287,["333"] = 287,["336"] = 289,["337"] = 279,["338"] = 317,["339"] = 318,["340"] = 319,["341"] = 319,["342"] = 319,["343"] = 319,["344"] = 320,["345"] = 321,["346"] = 322,["347"] = 323,["348"] = 325,["349"] = 326,["350"] = 327,["352"] = 328,["354"] = 329,["355"] = 330,["356"] = 331,["358"] = 332,["361"] = 334,["362"] = 335,["364"] = 336,["367"] = 338,["368"] = 339,["369"] = 340,["370"] = 341,["371"] = 342,["373"] = 345,["374"] = 346,["375"] = 347,["378"] = 348,["379"] = 349,["380"] = 349,["381"] = 351,["382"] = 352,["383"] = 354,["384"] = 354,["385"] = 354,["386"] = 354,["387"] = 355,["390"] = 356,["391"] = 317,["392"] = 359,["393"] = 360,["394"] = 361,["395"] = 362,["396"] = 363,["397"] = 364,["398"] = 365,["399"] = 367,["400"] = 368,["401"] = 369,["402"] = 370,["404"] = 371,["406"] = 372,["407"] = 373,["408"] = 374,["410"] = 375,["413"] = 377,["414"] = 378,["416"] = 379,["420"] = 382,["421"] = 383,["422"] = 384,["424"] = 385,["426"] = 386,["427"] = 387,["428"] = 388,["430"] = 389,["433"] = 391,["434"] = 392,["436"] = 393,["440"] = 399,["441"] = 417,["442"] = 418,["443"] = 419,["444"] = 420,["445"] = 422,["446"] = 423,["447"] = 424,["448"] = 425,["449"] = 427,["450"] = 428,["451"] = 429,["452"] = 430,["453"] = 431,["454"] = 432,["455"] = 433,["457"] = 435,["458"] = 436,["459"] = 437,["460"] = 438,["463"] = 442,["464"] = 444,["465"] = 446,["466"] = 447,["467"] = 448,["468"] = 449,["469"] = 450,["470"] = 451,["471"] = 452,["472"] = 453,["473"] = 454,["474"] = 454,["475"] = 454,["476"] = 454,["477"] = 456,["479"] = 457,["480"] = 458,["482"] = 460,["483"] = 461,["484"] = 462,["485"] = 463,["486"] = 464,["488"] = 465,["489"] = 466,["491"] = 469,["492"] = 470,["493"] = 472,["494"] = 474,["495"] = 475,["497"] = 477,["498"] = 477,["499"] = 477,["500"] = 477,["501"] = 477,["502"] = 477,["503"] = 477,["504"] = 477,["505"] = 477,["506"] = 477,["507"] = 477,["508"] = 477,["509"] = 477,["512"] = 491,["514"] = 494,["515"] = 495,["516"] = 496,["517"] = 497,["518"] = 497,["519"] = 497,["520"] = 497,["521"] = 498,["522"] = 499,["523"] = 500,["525"] = 502,["528"] = 506,["529"] = 508,["530"] = 509,["532"] = 511,["533"] = 511,["534"] = 511,["535"] = 511,["536"] = 511,["537"] = 511,["538"] = 511,["539"] = 511,["540"] = 511,["541"] = 511,["542"] = 511,["543"] = 511,["544"] = 511,["545"] = 524,["549"] = 528,["550"] = 529,["552"] = 531,["553"] = 532,["555"] = 533,["556"] = 534,["558"] = 536,["561"] = 538,["563"] = 540,["570"] = 544,["571"] = 545,["572"] = 546,["573"] = 547,["574"] = 548,["575"] = 549,["576"] = 550,["577"] = 551,["578"] = 552,["579"] = 553,["580"] = 554,["581"] = 555,["582"] = 556,["583"] = 359,["584"] = 560,["585"] = 561,["586"] = 562,["587"] = 564,["588"] = 565,["590"] = 566,["591"] = 566,["593"] = 567,["594"] = 568,["595"] = 569,["597"] = 571,["598"] = 572,["599"] = 573,["601"] = 575,["603"] = 577,["604"] = 578,["605"] = 580,["606"] = 581,["607"] = 582,["608"] = 583,["609"] = 583,["610"] = 583,["611"] = 583,["612"] = 583,["613"] = 583,["614"] = 583,["615"] = 583,["616"] = 583,["617"] = 583,["618"] = 583,["619"] = 583,["620"] = 583,["624"] = 566,["627"] = 560,["628"] = 600,["629"] = 601,["630"] = 602,["631"] = 603,["632"] = 604,["634"] = 606,["635"] = 607,["636"] = 608,["638"] = 610,["639"] = 611,["640"] = 612,["641"] = 612,["642"] = 613,["643"] = 614,["645"] = 616,["646"] = 600,["647"] = 629,["648"] = 630,["649"] = 630,["651"] = 631,["652"] = 632,["653"] = 629,["654"] = 634,["655"] = 635,["656"] = 635,["658"] = 636,["659"] = 637,["660"] = 634,["661"] = 639,["662"] = 640,["663"] = 640,["665"] = 641,["666"] = 642,["667"] = 639,["668"] = 644,["669"] = 645,["670"] = 645,["672"] = 646,["673"] = 646,["675"] = 647,["676"] = 644,["677"] = 649,["678"] = 650,["679"] = 650,["681"] = 651,["682"] = 649,["683"] = 659,["684"] = 660,["685"] = 661,["688"] = 662,["691"] = 663,["692"] = 659,["693"] = 666,["694"] = 667,["695"] = 666,["696"] = 669,["697"] = 670,["700"] = 671,["701"] = 672,["702"] = 673,["704"] = 675,["705"] = 676,["707"] = 669,["708"] = 679,["709"] = 680,["712"] = 681,["713"] = 683,["714"] = 684,["715"] = 685,["716"] = 686,["717"] = 687,["718"] = 687,["719"] = 687,["720"] = 687,["721"] = 687,["722"] = 687,["725"] = 691,["726"] = 692,["728"] = 694,["729"] = 694,["731"] = 697,["732"] = 698,["734"] = 700,["735"] = 701,["738"] = 704,["739"] = 704,["741"] = 705,["742"] = 706,["743"] = 707,["745"] = 709,["746"] = 710,["748"] = 712,["749"] = 713,["750"] = 713,["751"] = 714,["755"] = 704,["758"] = 679,["759"] = 719,["760"] = 720,["763"] = 721,["764"] = 722,["765"] = 719,["766"] = 724,["767"] = 725,["770"] = 726,["771"] = 727,["772"] = 724,["773"] = 729,["774"] = 730,["777"] = 731,["778"] = 732,["779"] = 732,["780"] = 729,["781"] = 734,["782"] = 735,["783"] = 735,["785"] = 736,["786"] = 737,["787"] = 737,["788"] = 737,["789"] = 737,["790"] = 734,["791"] = 739,["792"] = 740,["795"] = 741,["796"] = 742,["797"] = 743,["798"] = 744,["799"] = 745,["802"] = 748,["803"] = 739,["804"] = 750,["805"] = 751,["808"] = 752,["809"] = 753,["810"] = 753,["811"] = 753,["813"] = 754,["814"] = 754,["815"] = 754,["817"] = 755,["818"] = 755,["819"] = 755,["821"] = 756,["822"] = 750,["823"] = 758,["824"] = 759,["827"] = 760,["828"] = 761,["829"] = 762,["831"] = 758,["832"] = 766,["833"] = 767,["834"] = 768,["835"] = 769,["836"] = 770,["837"] = 770,["838"] = 770,["840"] = 770,["842"] = 769,["843"] = 769,["844"] = 769,["845"] = 769,["846"] = 769,["847"] = 769,["848"] = 769,["849"] = 769,["850"] = 769,["851"] = 769,["852"] = 769,["853"] = 769,["854"] = 769,["855"] = 766,["856"] = 785,["857"] = 786,["858"] = 787,["861"] = 789,["862"] = 790,["863"] = 791,["864"] = 792,["866"] = 794,["867"] = 785,["868"] = 797,["869"] = 798,["870"] = 799,["873"] = 801,["874"] = 802,["875"] = 803,["878"] = 806,["879"] = 807,["880"] = 807,["881"] = 807,["882"] = 807,["883"] = 807,["884"] = 807,["885"] = 807,["886"] = 807,["887"] = 807,["888"] = 807,["889"] = 807,["891"] = 821,["892"] = 822,["893"] = 824,["894"] = 825,["895"] = 827,["896"] = 828,["897"] = 830,["898"] = 831,["899"] = 832,["901"] = 834,["902"] = 835,["903"] = 836,["904"] = 837,["905"] = 838,["908"] = 841,["909"] = 842,["910"] = 843,["913"] = 846,["914"] = 847,["915"] = 848,["916"] = 849,["917"] = 850,["918"] = 851,["922"] = 855,["925"] = 859,["926"] = 860,["927"] = 861,["929"] = 863,["930"] = 864,["932"] = 865,["933"] = 866,["936"] = 869,["937"] = 870,["938"] = 871,["939"] = 872,["941"] = 874,["942"] = 875,["943"] = 876,["944"] = 877,["945"] = 878,["946"] = 879,["950"] = 883,["955"] = 886,["956"] = 797,["957"] = 889,["958"] = 890,["959"] = 891,["962"] = 893,["963"] = 894,["964"] = 895,["967"] = 898,["968"] = 899,["969"] = 900,["972"] = 903,["973"] = 904,["976"] = 907,["977"] = 908,["980"] = 911,["981"] = 912,["982"] = 913,["983"] = 914,["984"] = 915,["986"] = 889,["987"] = 919,["988"] = 920,["989"] = 919,["994"] = 121,["1002"] = 620,["1010"] = 623,["1018"] = 626});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____global = include("framework.global")
local global = ____global.global
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local ____BattlepassRewardConfig = include("logic.configs.BattlepassRewardConfig")
local battlepassRewardConfigMap_battlepassRewardGroup = ____BattlepassRewardConfig.battlepassRewardConfigMap_battlepassRewardGroup
local ____BattlepassSeasonConfig = include("logic.configs.BattlepassSeasonConfig")
local battlepassSeasonConfigList = ____BattlepassSeasonConfig.battlepassSeasonConfigList
local battlepassSeasonConfigMap = ____BattlepassSeasonConfig.battlepassSeasonConfigMap
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____DropConfig = include("logic.configs.DropConfig")
local dropConfigMap_dropId = ____DropConfig.dropConfigMap_dropId
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____HeroExpConfig = include("logic.configs.HeroExpConfig")
local heroExpConfigList = ____HeroExpConfig.heroExpConfigList
local ____HeroExpDefaultConfig = include("logic.configs.HeroExpDefaultConfig")
local heroExpDefaultConfig = ____HeroExpDefaultConfig.heroExpDefaultConfig
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigList = ____LevelConfig.levelConfigList
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigList = ____PropConfig.propConfigList
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigList = ____SkinConfig.skinConfigList
local skinConfigMap_hero = ____SkinConfig.skinConfigMap_hero
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS = ____SafeTableUtils.LoopS
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipType = ____VipEnum.VipType
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____HallBgConfig = include("logic.configs.HallBgConfig")
local hallBgConfigList = ____HallBgConfig.hallBgConfigList
____exports.ResourceType = ResourceType or ({})
____exports.ResourceType.Gold = "1"
____exports.ResourceType.Diamond = "2"
____exports.ResourceType.RefreshCard = "5"
____exports.ResourceType.Score = "102"
____exports.ResourceValue = ResourceValue or ({})
____exports.ResourceValue.Gold = 1
____exports.ResourceValue[____exports.ResourceValue.Gold] = "Gold"
____exports.ResourceValue.Diamond = 2
____exports.ResourceValue[____exports.ResourceValue.Diamond] = "Diamond"
____exports.ResourceValue.RefreshCard = 5
____exports.ResourceValue[____exports.ResourceValue.RefreshCard] = "RefreshCard"
____exports.ResourceValue.Score = 102
____exports.ResourceValue[____exports.ResourceValue.Score] = "Score"
--- 玩家信息存档
____exports.ArchivePlayerInfo = __TS__Class()
local ArchivePlayerInfo = ____exports.ArchivePlayerInfo
ArchivePlayerInfo.name = "ArchivePlayerInfo"
__TS__ClassExtends(ArchivePlayerInfo, ArchiveBaseProto)
function ArchivePlayerInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchivePlayerInfo"
    self.slot = 2
    self.result = {gold = 0, exp = 0, diamond = 0}
end
function ArchivePlayerInfo.prototype.default(self)
    local data = {
        version = 1,
        totalProficiency = 0,
        resource = {},
        heroes = {},
        battlePass = {},
        singleModeUnlockLevel = 0,
        singleModePassLevel = {},
        singleModeChooseLevel = 0,
        isGotSteamDefaultProps = false,
        cur_hall_bg = 0,
        hall_bg = {}
    }
    do
        local index = 0
        while index < #propConfigList do
            do
                local element = propConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue3
                end
                if element.propTag == 1 then
                    data.resource["" .. tostring(element.id)] = 0
                end
            end
            ::__continue3::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #heroConfigList do
            local element = heroConfigList[index + 1]
            data.heroes["" .. tostring(element.id)] = self:createHeroData(element.id)
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #battlepassSeasonConfigList do
            local element = battlepassSeasonConfigList[index + 1]
            local date = __TS__New(Date):getTime()
            if date > element.startTime and date < element.endTime and data.battlePass["" .. tostring(element.id)] == nil then
                data.battlePass["" .. tostring(element.id)] = {
                    id = element.id,
                    exp = 0,
                    level = 0,
                    get_level = 0,
                    get_level2 = 0,
                    ["repeat"] = false,
                    repeat_count = 0,
                    group_level = 0,
                    total_score = 0
                }
            end
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #hallBgConfigList do
            local element = hallBgConfigList[index + 1]
            data.hall_bg["" .. tostring(element.id)] = element.isDefault == 1 or not steamUtils:isSteam()
            index = index + 1
        end
    end
    return data
end
function ArchivePlayerInfo.prototype.startGame(self)
    self:preLoad()
    do
        local index = 0
        while index < #heroConfigList do
            do
                local element = heroConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue11
                end
                local key = "" .. tostring(element.id)
                if self.data.heroes[key] == nil then
                    self.data.heroes[key] = self:createHeroData(element.id)
                end
                self.data.heroes[key].enable = true
                if steamUtils:isSteam() and element.steamDefaultHero and self.data.heroes[key].isHave == false then
                    self.data.heroes[key].isHave = true
                elseif not steamUtils:isSteam() and element.defaultHero == 1 and self.data.heroes[key].isHave == false then
                    self.data.heroes[key].isHave = true
                end
                if self.data.heroes[key].cur_skin == nil or self.data.heroes[key].cur_skin == 0 then
                    self.data.heroes[key].cur_skin = 0
                    local skins = skinConfigMap_hero[element.id]
                    if skins == nil or #skins == 0 then
                        goto __continue11
                    end
                    local default_skin = __TS__ArrayFind(
                        skins,
                        function(____, a) return a.isDefault end
                    )
                    if default_skin == nil then
                        goto __continue11
                    end
                    self.data.heroes[key].unlock_skin = {default_skin.id}
                    self.data.heroes[key].cur_skin = default_skin.id
                    self.data.heroes[key].cur_skill = LoopS({0, 0, 0})
                end
            end
            ::__continue11::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #propConfigList do
            do
                local element = propConfigList[index + 1]
                if element.ban == 1 or element.propTag ~= 1 and element.propTag ~= 15 then
                    goto __continue20
                end
                local key = "" .. tostring(element.id)
                if self.data.resource[key] == nil then
                    self.data.resource[key] = 0
                end
            end
            ::__continue20::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #battlepassSeasonConfigList do
            local element = battlepassSeasonConfigList[index + 1]
            local date = __TS__New(Date):getTime()
            if date > element.startTime and date < element.endTime and self.data.battlePass["" .. tostring(element.id)] == nil then
                self.data.battlePass["" .. tostring(element.id)] = LoopS({
                    id = element.id,
                    exp = 0,
                    level = 0,
                    get_level = 0,
                    get_level2 = 0,
                    ["repeat"] = false,
                    repeat_count = 0,
                    group_level = 0,
                    total_score = 0
                })
            end
            index = index + 1
        end
    end
    local total = 0
    for key in pairs(self.data.heroes) do
        local element = self.data.heroes[key]
        if element.exp ~= math.floor(element.exp) then
            element.exp = math.floor(element.exp)
        end
        total = total + element.exp
    end
    self.data.totalProficiency = math.floor(total)
    self.archive.expRankInfo:setRank(self.data.totalProficiency)
    self.archive.goldRank:setRank(self:getResource(1))
    self.archive.diamondRank:setRank(self:getResource(2))
    local ____require_result_0 = include("logic.archive.manager.ShopManager")
    local shopManager = ____require_result_0.shopManager
    local decorateCount = shopManager:getCurrentDecorateCount()
    console:log("装饰度", decorateCount)
    self.archive.decorationRank:setRank(decorateCount)
    if steamUtils:isSteam() and not self.data.isGotSteamDefaultProps then
        console:log("发放steam奖励")
        local ____require_result_1 = include("logic.archive.manager.RewardManager")
        local rewardManager = ____require_result_1.rewardManager
        for ____, prop in ipairs(defaultConfig.steamDefaultProps) do
            rewardManager:rewardItem(prop.id, 1)
        end
        self.data.isGotSteamDefaultProps = true
    end
    do
        local index = 0
        while index < #hallBgConfigList do
            local element = hallBgConfigList[index + 1]
            if element.isDefault == 1 or not steamUtils:isSteam() then
                self.data.hall_bg["" .. tostring(element.id)] = true
            end
            index = index + 1
        end
    end
end
function ArchivePlayerInfo.prototype.escape(self)
end
function ArchivePlayerInfo.prototype.endGame(self)
end
function ArchivePlayerInfo.prototype.afterEndGame(self)
    self:handlerDrop()
    self:handleScore()
    self:handlerExp()
    archiveController.syncResult:execute(LOCAL.PLAYER_ID, self.result.gold, self.result.exp, self.result.diamond)
end
function ArchivePlayerInfo.prototype.init(self)
end
function ArchivePlayerInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncPlayerInfo:execute(
                y3.player.LOCAL_PLAYER.id,
                self:pbEncode()
            ))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function ArchivePlayerInfo.prototype.replaceSkin(self, heroId, skinId)
    local hero = self:getHeroInfo(heroId)
    local ____opt_2 = hero
    if (____opt_2 and __TS__ArrayIndexOf(hero and hero.unlock_skin, skinId)) == -1 then
        return
    end
    hero.cur_skin = skinId
end
function ArchivePlayerInfo.prototype.replaceSkillSkin(self, heroId, idx, skinId)
    local hero = self:getHeroInfo(heroId)
    if skinId == 0 then
        hero.cur_skill[idx + 1] = skinId
        return
    end
    if idx == 0 and __TS__ArrayIndexOf(hero.unlock_skill_1, skinId) == -1 then
        console:error("替换失败，找不到。。。")
        return
    end
    if idx == 1 and __TS__ArrayIndexOf(hero.unlock_skill_2, skinId) == -1 then
        console:error("替换失败，找不到。。。")
        return
    end
    if idx == 2 and __TS__ArrayIndexOf(hero.unlock_skill_3, skinId) == -1 then
        console:error("替换失败，找不到。。。")
        return
    end
    hero.cur_skill[idx + 1] = skinId
end
function ArchivePlayerInfo.prototype.handlerExp(self)
    local runTime = global.frameCount / 30
    local minutes = math.min(
        math.ceil(runTime / 60),
        heroExpDefaultConfig["单局时长上限"]
    )
    local rate = 0
    local id = y3.player.get_local().id
    local playerData = datas.players[id]:getSingle(PlayerData)
    local statData = datas.players[id]:getSingle(PlayerStatisticsData)
    if #playerIdList <= 3 then
        if playerData.isWin then
            rate = heroExpDefaultConfig["胜利场次每分钟积分1v1"]
        else
            rate = heroExpDefaultConfig["失败场次每分钟积分1v1"]
        end
    elseif #playerIdList <= 5 then
        if playerData.isWin then
            rate = heroExpDefaultConfig["胜利场次每分钟积分2v2"]
        else
            rate = heroExpDefaultConfig["失败场次每分钟积分2v2"]
        end
    else
        if playerData.isWin then
            rate = heroExpDefaultConfig["胜利场次每分钟积分3v3"]
        else
            rate = heroExpDefaultConfig["失败场次每分钟积分3v3"]
        end
    end
    local exp = rate * minutes
    if statData.isMvp then
        exp = exp * heroExpDefaultConfig["MVP积分倍率"]
    elseif statData.isSMvp then
        exp = exp * heroExpDefaultConfig["sMVP积分倍率"]
    end
    exp = math.floor(exp)
    local data = self:getHeroInfo(playerData.hero.id)
    if data == nil then
        return
    end
    data.exp = math.floor(data.exp + exp)
    local ____self_data_6, ____totalProficiency_7 = self.data, "totalProficiency"
    ____self_data_6[____totalProficiency_7] = ____self_data_6[____totalProficiency_7] + exp
    self.archive.expRankInfo:setRank(self.data.totalProficiency)
    self.result.exp = exp
    local cfg = __TS__ArrayFind(
        heroExpConfigList,
        function(____, a) return a.score > data.exp end
    )
    if cfg == nil then
        return
    end
    data.lv = cfg.id - 1
end
function ArchivePlayerInfo.prototype.handlerDrop(self)
    local id = y3.player.get_local().id
    local data = datas.global:getSingle(GameData)
    local level = data.level
    local levelCfg = levelConfigList[level]
    local rewardId = 0
    local playerData = datas.players[id]:getSingle(PlayerData)
    if steamUtils:isSteam() then
        if #playerIdList <= 3 then
            if playerData.isWin then
                rewardId = levelCfg.steamwin1v1
            else
                rewardId = levelCfg.steamlose1v1
            end
        elseif #playerIdList <= 5 then
            if playerData.isWin then
                rewardId = levelCfg.steamwin2v2
            else
                rewardId = levelCfg.steamlose2v2
            end
        else
            if playerData.isWin then
                rewardId = levelCfg.steamwin3v3
            else
                rewardId = levelCfg.steamlose3v3
            end
        end
    else
        if #playerIdList <= 3 then
            if playerData.isWin then
                rewardId = levelCfg.win1v1
            else
                rewardId = levelCfg.lose1v1
            end
        elseif #playerIdList <= 5 then
            if playerData.isWin then
                rewardId = levelCfg.win2v2
            else
                rewardId = levelCfg.lose2v2
            end
        else
            if playerData.isWin then
                rewardId = levelCfg.win3v3
            else
                rewardId = levelCfg.lose3v3
            end
        end
    end
    local cfgs = dropConfigMap_dropId[rewardId]
    local goldAdd = self.archive.vipInfo:getValue(VipType["每局结算获得金币"])
    local goldAddPct = self.archive.vipInfo:getValue(VipType["每局结算获得金币百分比"])
    local diamondAdd = self.archive.vipInfo:getValue(VipType["每局结算获得钻石"])
    local diamondAddPct = self.archive.vipInfo:getValue(VipType["每局结算获得钻石百分比"])
    local goldAdd_Ext = self.archive.vipInfo:getValue(VipType["每局结算额外获得金币"])
    local goldAddPct_Ext = self.archive.vipInfo:getValue(VipType["每局结算额外获得金币百分比"])
    local diamondAdd_Ext = self.archive.vipInfo:getValue(VipType["每局结算额外获得钻石"])
    local diamondAddPct_Ext = self.archive.vipInfo:getValue(VipType["每局结算额外获得钻石百分比"])
    local first_gold = 0
    local first_diamond = 0
    if self.archive.statInfo:isFirstWin() then
        first_gold = first_gold + self.archive.vipInfo:getValue(VipType["每日首胜获得金币"])
        if first_gold > 0 then
            local pct = self.archive.vipInfo:getValue(VipType["每日首胜获得金币百分比"])
            first_gold = first_gold + first_gold * pct
        end
        first_diamond = first_diamond + self.archive.vipInfo:getValue(VipType["每日首胜获得钻石"])
        if first_diamond > 0 then
            local pct = self.archive.vipInfo:getValue(VipType["每日首胜获得钻石百分比"])
            first_diamond = first_diamond + first_diamond * pct
        end
    end
    local diamond_limit = self.archive.vipInfo:getValue(VipType["每周获得钻石上限提高"])
    local limit = defaultConfig["每周战斗获得钻石上限"] + diamond_limit
    console:log("【结算】: 每局结算获得金币", goldAdd)
    console:log("【结算】: 每局结算获得金币百分比", goldAddPct)
    console:log("【结算】: 每局结算获得钻石", diamondAdd)
    console:log("【结算】: 每局结算获得钻石百分比", diamondAddPct)
    console:log("【结算】: 每局结算额外获得金币", goldAdd_Ext)
    console:log("【结算】: 每局结算额外获得钻石", diamondAdd_Ext)
    console:log("【结算】: 每日首胜获得金币", first_gold)
    console:log("【结算】: 每日首胜获得钻石", first_diamond)
    console:log(
        "【结算】: 每日首胜",
        self.archive.statInfo:isFirstWin()
    )
    for ____, cfg in ipairs(cfgs) do
        do
            if cfg.rarity < 1 and localRandom:random() >= cfg.rarity then
                goto __continue86
            end
            local current = cfg.number
            local total = 0
            local base = 0
            local add = 0
            local ext_add = 0
            repeat
                local ____switch88 = cfg._propId
                local ____cond88 = ____switch88 == 1
                if ____cond88 then
                    add = math.floor(current * goldAddPct) + goldAdd
                    base = current + add
                    total = math.ceil(base + goldAdd_Ext + first_gold)
                    if self.archive.statData.last_game_idle > 0 then
                        total = 0
                    end
                    local ____localData_rewards_8 = localData.rewards
                    ____localData_rewards_8[#____localData_rewards_8 + 1] = {
                        id = cfg._propId,
                        total = total,
                        base = current,
                        add = add,
                        ext_add = goldAdd_Ext,
                        first_add = first_gold,
                        daily_limit = 0,
                        daily_get = 0,
                        weekly_get = 0,
                        weekly_limit = 0
                    }
                    break
                end
                ____cond88 = ____cond88 or ____switch88 == 2
                if ____cond88 then
                    add = math.floor(current * diamondAddPct) + diamondAdd
                    base = current + add
                    if base + self.archive.statInfo:getWeekDiamond() >= limit then
                        base = math.max(
                            0,
                            limit - self.archive.statInfo:getWeekDiamond()
                        )
                        if current > base then
                            current = base
                            add = 0
                        else
                            add = base - current
                        end
                    end
                    total = math.ceil(base + diamondAdd_Ext + first_diamond)
                    if self.archive.statData.last_game_idle > 0 then
                        total = 0
                    end
                    local ____localData_rewards_9 = localData.rewards
                    ____localData_rewards_9[#____localData_rewards_9 + 1] = {
                        id = cfg._propId,
                        total = total,
                        base = current,
                        add = add,
                        ext_add = diamondAdd_Ext,
                        first_add = first_diamond,
                        daily_limit = 0,
                        daily_get = 0,
                        weekly_get = self.archive.statInfo:getWeekDiamond(),
                        weekly_limit = limit
                    }
                    self.archive.statInfo:addWeekDiamond(base)
                    break
                end
            until true
            if self.archive.statData.last_game_idle > 0 then
                total = 0
            end
            self:addResource(cfg._propId, total)
            self.result[cfg._propId] = total
            repeat
                local ____switch95 = cfg._propId
                local ____cond95 = ____switch95 == 1
                if ____cond95 then
                    self.result.gold = total
                    break
                end
                ____cond95 = ____cond95 or ____switch95 == 2
                if ____cond95 then
                    self.result.diamond = total
                    break
                end
            until true
        end
        ::__continue86::
    end
    self.archive.vipInfo:use(VipType["每局结算获得金币"])
    self.archive.vipInfo:use(VipType["每局结算获得金币百分比"])
    self.archive.vipInfo:use(VipType["每局结算获得钻石"])
    self.archive.vipInfo:use(VipType["每局结算获得钻石百分比"])
    self.archive.vipInfo:use(VipType["每局结算额外获得金币"])
    self.archive.vipInfo:use(VipType["每局结算额外获得金币百分比"])
    self.archive.vipInfo:use(VipType["每局结算额外获得钻石"])
    self.archive.vipInfo:use(VipType["每局结算额外获得钻石百分比"])
    self.archive.vipInfo:use(VipType["每日首胜获得金币"])
    self.archive.vipInfo:use(VipType["每日首胜获得金币百分比"])
    self.archive.vipInfo:use(VipType["每日首胜获得钻石"])
    self.archive.vipInfo:use(VipType["每日首胜获得钻石百分比"])
    self.archive.vipInfo:use(VipType["每周获得钻石上限提高"])
end
function ArchivePlayerInfo.prototype.handleScore(self)
    local runTime = global.frameCount / 30
    local minutes = math.ceil(runTime / 60)
    local id = y3.player.get_local().id
    local playerData = datas.players[id]:getSingle(PlayerData)
    do
        local index = 0
        while index < #battlepassSeasonConfigList do
            do
                local element = battlepassSeasonConfigList[index + 1]
                if not self:isBattlePassOpen(element.id) then
                    goto __continue98
                end
                local exp = 0
                if playerData.isWin then
                    exp = math.ceil(element.winDrop * minutes)
                else
                    exp = math.ceil(element.loseDrop * minutes)
                end
                console:log("获得的经验为：", exp)
                self:addResource(element.expId, exp)
                if element.scoreId ~= 0 then
                    local score = math.ceil(element.scoreDrop * minutes)
                    self:addResource(element.scoreId, score)
                    local ____localData_rewards_10 = localData.rewards
                    ____localData_rewards_10[#____localData_rewards_10 + 1] = {
                        id = element.scoreId,
                        total = score,
                        base = score,
                        add = 0,
                        ext_add = 0,
                        first_add = 0,
                        daily_limit = 0,
                        daily_get = 0,
                        weekly_get = 0,
                        weekly_limit = 0
                    }
                end
            end
            ::__continue98::
            index = index + 1
        end
    end
end
function ArchivePlayerInfo.prototype.dailyReward(self)
    local diamond = self.archive.vipInfo:getValue(VipType["每日登录获取钻石"])
    if diamond > 0 then
        if self.archive.statInfo.data.dailySateInfo.login_reward_diamond >= diamond then
            return true
        end
        local left = diamond - self.archive.statInfo.data.dailySateInfo.login_reward_diamond
        if left <= 0 then
            return true
        end
        self:addResource(2, left)
        self.archive.vipInfo:use(VipType["每日登录获取钻石"])
        local ____self_archive_statInfo_data_dailySateInfo_11, ____login_reward_diamond_12 = self.archive.statInfo.data.dailySateInfo, "login_reward_diamond"
        ____self_archive_statInfo_data_dailySateInfo_11[____login_reward_diamond_12] = ____self_archive_statInfo_data_dailySateInfo_11[____login_reward_diamond_12] + left
        DTips:show(i18n["local"](i18n, "每日登录获得钻石") .. tostring(left))
        return true
    end
    return false
end
function ArchivePlayerInfo.prototype.consumeGold(self, gold)
    if self.data.resource[____exports.ResourceType.Gold] < gold then
        return false
    end
    self:costResource(____exports.ResourceValue.Gold, gold)
    return true
end
function ArchivePlayerInfo.prototype.consumeScore(self, gold)
    if self.data.resource[____exports.ResourceType.Score] < gold then
        return false
    end
    self:costResource(____exports.ResourceValue.Score, gold)
    return true
end
function ArchivePlayerInfo.prototype.consumeDiamond(self, diamond)
    if self.data.resource[____exports.ResourceType.Diamond] < diamond then
        return false
    end
    self:costResource(____exports.ResourceValue.Diamond, diamond)
    return true
end
function ArchivePlayerInfo.prototype.isEnough(self, id, gold)
    if self.data.resource["" .. tostring(id)] == nil then
        return false
    end
    if self.data.resource["" .. tostring(id)] < gold then
        return false
    end
    return true
end
function ArchivePlayerInfo.prototype.isDiamondEnough(self, diamond)
    if self.data.resource[____exports.ResourceType.Diamond] < diamond then
        return false
    end
    return true
end
function ArchivePlayerInfo.prototype.getLevelReward(self, id, level)
    local data = self:getHeroInfo(id)
    if data == nil then
        return
    end
    if level < data.cur_lv or data.lv < level then
        return
    end
    data.cur_lv = level
end
function ArchivePlayerInfo.prototype.getResource(self, id)
    return 0 + (self.data.resource["" .. tostring(id)] or 0)
end
function ArchivePlayerInfo.prototype.costResource(self, id, count)
    if self.data.resource["" .. tostring(id)] == nil or self.data.resource["" .. tostring(id)] < count then
        return
    end
    self.data.resource["" .. tostring(id)] = math.floor(self.data.resource["" .. tostring(id)] - count)
    if id == 1 then
        self.archive.goldRank:setRank(self.data.resource["" .. tostring(id)])
    end
    if id == 2 then
        self.archive.diamondRank:setRank(self.data.resource["" .. tostring(id)])
    end
end
function ArchivePlayerInfo.prototype.addResource(self, id, count)
    if count <= 0 then
        return
    end
    local id_str = "" .. tostring(id)
    if id == 1 or id == 2 then
        if id == 1 and count > 8000 or id == 2 and count > 2000 then
            local oldValue = self.data.resource[id_str] or 0
            local traceLogUtils = include("logic.utils.TraceLogUtils").traceLogUtils
            traceLogUtils:onCheat(
                y3.player.get_local():get_platform_name(),
                id == 1 and "金币" or "钻石",
                "" .. tostring(oldValue),
                "" .. tostring(count)
            )
        end
    end
    if self.data.resource[id_str] == nil then
        self.data.resource[id_str] = count
    else
        local ____self_data_resource_13, ____id_str_14 = self.data.resource, id_str
        ____self_data_resource_13[____id_str_14] = ____self_data_resource_13[____id_str_14] + count
    end
    if id == 1 then
        self.archive.goldRank:setRank(self.data.resource[id_str])
    end
    if id == 2 then
        self.archive.diamondRank:setRank(self.data.resource[id_str])
    end
    do
        local index = 0
        while index < #battlepassSeasonConfigList do
            do
                local element = battlepassSeasonConfigList[index + 1]
                if not self:isBattlePassOpen(element.id) then
                    goto __continue134
                end
                if element.expId == id then
                    self:addBattlePassExp(element.id, count)
                end
                if element.scoreId == id then
                    local ____self_data_battlePass_index_15, ____total_score_16 = self.data.battlePass["" .. tostring(element.id)], "total_score"
                    ____self_data_battlePass_index_15[____total_score_16] = ____self_data_battlePass_index_15[____total_score_16] + count
                    self.archive.scoreRankInfo:setRank(self.data.battlePass["" .. tostring(element.id)].total_score)
                end
            end
            ::__continue134::
            index = index + 1
        end
    end
end
function ArchivePlayerInfo.prototype.getHeroInfo(self, id)
    if heroConfigMap[id] == nil then
        return
    end
    self:tryCreateHero(id)
    return self.data.heroes["" .. tostring(id)]
end
function ArchivePlayerInfo.prototype.unlockHero(self, id)
    if heroConfigMap[id] == nil then
        return
    end
    self:tryCreateHero(id)
    self.data.heroes["" .. tostring(id)].isHave = true
end
function ArchivePlayerInfo.prototype.unlockSkin(self, heroId, id)
    if heroConfigMap[heroId] == nil then
        return
    end
    self:tryCreateHero(heroId)
    local ____self_data_heroes_index_unlock_skin_17 = self.data.heroes["" .. tostring(heroId)].unlock_skin
    ____self_data_heroes_index_unlock_skin_17[#____self_data_heroes_index_unlock_skin_17 + 1] = id
end
function ArchivePlayerInfo.prototype.hasSkin(self, heroId, id)
    if heroConfigMap[heroId] == nil then
        return false
    end
    self:tryCreateHero(heroId)
    return __TS__ArrayIndexOf(
        self.data.heroes["" .. tostring(heroId)].unlock_skin,
        id
    ) ~= -1
end
function ArchivePlayerInfo.prototype.disableSkin(self, heroId, id)
    if heroConfigMap[heroId] == nil then
        return
    end
    self:tryCreateHero(heroId)
    local data = self.data.heroes["" .. tostring(heroId)]
    local idx = __TS__ArrayIndexOf(data.unlock_skin, id)
    if idx == -1 then
        console:log("未拥有")
        return
    end
    __TS__ArraySplice(data.unlock_skin, idx, 1)
end
function ArchivePlayerInfo.prototype.unlockSkillSkin(self, heroId, id, seat)
    if heroConfigMap[heroId] == nil then
        return
    end
    self:tryCreateHero(heroId)
    if seat == 1 then
        local ____self_data_heroes_index_unlock_skill_1_18 = self.data.heroes["" .. tostring(heroId)].unlock_skill_1
        ____self_data_heroes_index_unlock_skill_1_18[#____self_data_heroes_index_unlock_skill_1_18 + 1] = id
    end
    if seat == 2 then
        local ____self_data_heroes_index_unlock_skill_2_19 = self.data.heroes["" .. tostring(heroId)].unlock_skill_2
        ____self_data_heroes_index_unlock_skill_2_19[#____self_data_heroes_index_unlock_skill_2_19 + 1] = id
    end
    if seat == 3 then
        local ____self_data_heroes_index_unlock_skill_3_20 = self.data.heroes["" .. tostring(heroId)].unlock_skill_3
        ____self_data_heroes_index_unlock_skill_3_20[#____self_data_heroes_index_unlock_skill_3_20 + 1] = id
    end
    console:log("解锁英雄技能皮肤：", heroId, id, seat)
end
function ArchivePlayerInfo.prototype.tryCreateHero(self, id)
    if heroConfigMap[id] == nil then
        return
    end
    local id_str = "" .. tostring(id)
    if self.data.heroes[id_str] == nil then
        self.data.heroes[id_str] = self:createHeroData(id)
    end
end
function ArchivePlayerInfo.prototype.createHeroData(self, id)
    local cfg = heroConfigMap[id]
    local skinCfg = skinConfigList
    local ____LoopS_22 = LoopS
    local ____steamUtils_isSteam_result_21
    if steamUtils:isSteam() then
        ____steamUtils_isSteam_result_21 = cfg.steamDefaultHero
    else
        ____steamUtils_isSteam_result_21 = cfg.defaultHero == 1
    end
    return ____LoopS_22({
        isHave = ____steamUtils_isSteam_result_21,
        enable = cfg.ban == 0,
        exp = 0,
        lv = 0,
        cur_lv = 0,
        cur_skin = 0,
        cur_skill = {},
        unlock_skill_1 = {},
        unlock_skill_2 = {},
        unlock_skill_3 = {},
        unlock_skin = {}
    })
end
function ArchivePlayerInfo.prototype.isBattlePassOpen(self, id)
    local element = battlepassSeasonConfigMap[id]
    if element == nil then
        return
    end
    local date = __TS__New(Date):getTime()
    if date < element.startTime or date > element.endTime then
        console:log("战令已过期或未开启", element.id)
        return false
    end
    return true
end
function ArchivePlayerInfo.prototype.addBattlePassExp(self, id, exp)
    local element = battlepassSeasonConfigMap[id]
    if element == nil then
        return
    end
    local date = __TS__New(Date):getTime()
    if date < element.startTime or date > element.endTime then
        console:log("战令已过期或未开启")
        return
    end
    if date > element.startTime and date < element.endTime and self.data.battlePass["" .. tostring(element.id)] == nil then
        self.data.battlePass["" .. tostring(element.id)] = LoopS({
            id = element.id,
            exp = 0,
            level = 0,
            get_level = 0,
            get_level2 = 0,
            ["repeat"] = false,
            repeat_count = 0,
            group_level = 0,
            total_score = 0
        })
    end
    local data = self.data.battlePass["" .. tostring(element.id)]
    data.exp = data.exp + exp
    local group1 = battlepassRewardConfigMap_battlepassRewardGroup[element.battlepassRewardGroup1]
    local group2 = battlepassRewardConfigMap_battlepassRewardGroup[element.battlepassRewardGroup2]
    local max = group1[#group1]
    local max2 = group2[#group2]
    console:log((((((((("战令升级前等级：" .. tostring(data.level)) .. ",") .. tostring(data.group_level)) .. ",") .. tostring(data.repeat_count)) .. ",") .. tostring(data.exp)) .. ",") .. tostring(max.level))
    if not data["repeat"] and max.level == data.group_level then
        data["repeat"] = true
    end
    if not data["repeat"] then
        local count = 0
        while true do
            if count > 100 then
                console:error("什么死循环？？？")
                break
            end
            if not data["repeat"] and max.level == data.group_level then
                data["repeat"] = true
                data.group_level = 0
                break
            end
            local cfg = group1[data.group_level + 1]
            if cfg.exp <= data.exp then
                data.exp = data.exp - cfg.exp
                self:costResource(element.expId, cfg.exp)
                data.group_level = data.group_level + 1
                data.level = data.group_level
            else
                break
            end
            count = count + 1
        end
    end
    if data["repeat"] then
        if data.group_level > max2.level then
            data.group_level = 0
        end
        local count = 0
        while true do
            do
                if count > 100 then
                    console:error("什么死循环？？？")
                    break
                end
                if max2.level <= data.group_level then
                    data.repeat_count = data.repeat_count + 1
                    data.group_level = 0
                    goto __continue174
                end
                local cfg = group1[data.group_level + 1]
                if cfg.exp <= data.exp then
                    data.exp = data.exp - cfg.exp
                    self:costResource(element.expId, cfg.exp)
                    data.level = data.level + 1
                    data.group_level = data.group_level + 1
                else
                    break
                end
                count = count + 1
            end
            ::__continue174::
        end
    end
    console:log((((((("战令升级后等级：" .. tostring(data.level)) .. ",") .. tostring(data.group_level)) .. ",") .. tostring(data.repeat_count)) .. ",") .. tostring(data.exp))
end
function ArchivePlayerInfo.prototype.battlePassLevelUp(self, id, level)
    local element = battlepassSeasonConfigMap[id]
    if element == nil then
        return
    end
    local date = __TS__New(Date):getTime()
    if date < element.startTime or date > element.endTime then
        console:log("战令已过期或未开启")
        return
    end
    local data = self.data.battlePass["" .. tostring(element.id)]
    if data == nil then
        console:log("战令已过期或未开启")
        return
    end
    if data.level < level then
        console:log("战令无法升级")
        return
    end
    if data.get_level >= level and data.get_level2 >= level then
        console:log("战令无法升级")
        return
    end
    data.get_level = level
    console:log("当前的战令等级更新：", data.get_level)
    if self.archive.playerInfo:getResource(element.battlePassPayedItem) > 0 then
        data.get_level2 = level
        console:log("当前的豪华战令等级更新：", data.get_level2)
    end
end
function ArchivePlayerInfo.prototype.unlockHallBg(self, id)
    self.data.hall_bg["" .. tostring(id)] = true
end
__TS__SetDescriptor(
    ArchivePlayerInfo.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
__TS__SetDescriptor(
    ArchivePlayerInfo.prototype,
    "gold",
    {get = function(self)
        return 0 + self.data.resource[____exports.ResourceType.Gold]
    end},
    true
)
__TS__SetDescriptor(
    ArchivePlayerInfo.prototype,
    "diamond",
    {get = function(self)
        return 0 + self.data.resource[____exports.ResourceType.Diamond]
    end},
    true
)
__TS__SetDescriptor(
    ArchivePlayerInfo.prototype,
    "refreshCard",
    {get = function(self)
        return 0 + self.data.resource[____exports.ResourceType.RefreshCard]
    end},
    true
)
return ____exports
