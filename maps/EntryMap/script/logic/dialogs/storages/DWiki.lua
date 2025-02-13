local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 17,["38"] = 17,["39"] = 18,["40"] = 18,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 22,["45"] = 22,["46"] = 23,["47"] = 23,["48"] = 24,["49"] = 24,["50"] = 25,["51"] = 25,["52"] = 26,["53"] = 26,["54"] = 28,["55"] = 28,["56"] = 28,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 28,["61"] = 28,["62"] = 36,["64"] = 37,["65"] = 38,["67"] = 39,["69"] = 40,["71"] = 41,["73"] = 42,["75"] = 43,["77"] = 44,["79"] = 45,["81"] = 46,["83"] = 47,["85"] = 48,["87"] = 49,["90"] = 51,["93"] = 36,["94"] = 55,["95"] = 55,["96"] = 55,["97"] = 55,["99"] = 55,["100"] = 56,["101"] = 214,["102"] = 55,["103"] = 63,["104"] = 64,["105"] = 63,["106"] = 67,["107"] = 69,["109"] = 71,["110"] = 71,["111"] = 72,["112"] = 73,["113"] = 74,["114"] = 74,["115"] = 74,["116"] = 74,["117"] = 75,["118"] = 74,["119"] = 74,["120"] = 77,["121"] = 77,["122"] = 77,["123"] = 78,["124"] = 77,["125"] = 77,["126"] = 81,["127"] = 81,["128"] = 81,["129"] = 82,["130"] = 81,["131"] = 81,["132"] = 84,["133"] = 84,["134"] = 84,["135"] = 85,["136"] = 84,["137"] = 84,["138"] = 71,["141"] = 89,["142"] = 89,["143"] = 89,["144"] = 89,["145"] = 91,["146"] = 91,["147"] = 91,["148"] = 92,["149"] = 93,["150"] = 94,["151"] = 95,["152"] = 96,["153"] = 97,["155"] = 99,["157"] = 91,["158"] = 91,["159"] = 102,["160"] = 102,["161"] = 102,["162"] = 103,["163"] = 104,["164"] = 105,["165"] = 106,["166"] = 107,["167"] = 108,["169"] = 110,["171"] = 102,["172"] = 102,["173"] = 113,["174"] = 113,["175"] = 113,["176"] = 114,["177"] = 115,["178"] = 116,["179"] = 117,["180"] = 118,["181"] = 119,["183"] = 121,["185"] = 113,["186"] = 113,["187"] = 125,["188"] = 126,["189"] = 127,["190"] = 128,["191"] = 129,["192"] = 67,["193"] = 131,["194"] = 132,["195"] = 132,["196"] = 132,["197"] = 132,["198"] = 134,["199"] = 135,["200"] = 136,["201"] = 137,["202"] = 138,["203"] = 139,["204"] = 141,["205"] = 141,["206"] = 141,["207"] = 142,["208"] = 143,["209"] = 144,["210"] = 145,["212"] = 147,["214"] = 141,["215"] = 141,["217"] = 152,["218"] = 152,["219"] = 153,["220"] = 154,["221"] = 155,["222"] = 157,["223"] = 159,["224"] = 159,["225"] = 159,["226"] = 160,["227"] = 159,["228"] = 159,["230"] = 163,["231"] = 163,["232"] = 164,["233"] = 165,["234"] = 166,["235"] = 167,["236"] = 169,["237"] = 169,["238"] = 169,["239"] = 169,["240"] = 171,["241"] = 171,["242"] = 171,["243"] = 172,["244"] = 172,["246"] = 173,["247"] = 173,["249"] = 174,["250"] = 174,["252"] = 175,["253"] = 175,["255"] = 176,["256"] = 171,["257"] = 171,["258"] = 178,["259"] = 178,["260"] = 178,["261"] = 179,["262"] = 178,["263"] = 178,["264"] = 181,["265"] = 181,["266"] = 181,["267"] = 182,["268"] = 182,["270"] = 183,["271"] = 181,["272"] = 181,["273"] = 186,["274"] = 186,["275"] = 186,["276"] = 187,["277"] = 187,["279"] = 188,["280"] = 186,["281"] = 186,["282"] = 190,["283"] = 190,["284"] = 190,["285"] = 191,["286"] = 191,["288"] = 192,["289"] = 190,["290"] = 190,["291"] = 195,["292"] = 195,["293"] = 195,["294"] = 196,["295"] = 197,["296"] = 197,["297"] = 197,["298"] = 197,["299"] = 197,["300"] = 197,["301"] = 197,["302"] = 197,["303"] = 195,["304"] = 202,["305"] = 203,["306"] = 195,["307"] = 195,["308"] = 163,["311"] = 152,["314"] = 134,["316"] = 209,["317"] = 209,["318"] = 210,["319"] = 209,["322"] = 131,["323"] = 215,["324"] = 216,["325"] = 217,["326"] = 219,["327"] = 219,["328"] = 220,["329"] = 219,["330"] = 221,["331"] = 222,["332"] = 223,["334"] = 219,["335"] = 219,["336"] = 215,["337"] = 227,["338"] = 228,["339"] = 229,["340"] = 227,["341"] = 231,["342"] = 232,["343"] = 233,["344"] = 231,["345"] = 237,["346"] = 238,["347"] = 238,["348"] = 238,["349"] = 238,["350"] = 303,["351"] = 304,["352"] = 304,["353"] = 304,["354"] = 304,["355"] = 304,["356"] = 304,["357"] = 305,["358"] = 306,["360"] = 308,["361"] = 304,["362"] = 304,["363"] = 310,["364"] = 311,["365"] = 312,["366"] = 313,["367"] = 315,["368"] = 315,["369"] = 315,["370"] = 316,["371"] = 317,["372"] = 318,["373"] = 319,["374"] = 320,["375"] = 321,["376"] = 322,["377"] = 323,["378"] = 324,["379"] = 325,["381"] = 327,["382"] = 315,["383"] = 315,["385"] = 331,["386"] = 331,["387"] = 332,["388"] = 333,["389"] = 334,["390"] = 336,["391"] = 338,["392"] = 338,["393"] = 338,["394"] = 339,["395"] = 338,["396"] = 338,["398"] = 342,["399"] = 342,["400"] = 343,["401"] = 344,["402"] = 345,["403"] = 346,["404"] = 348,["405"] = 348,["406"] = 348,["407"] = 348,["408"] = 350,["409"] = 350,["410"] = 350,["411"] = 351,["412"] = 351,["414"] = 352,["415"] = 350,["416"] = 350,["417"] = 355,["418"] = 355,["419"] = 355,["420"] = 356,["421"] = 356,["423"] = 357,["424"] = 355,["425"] = 355,["426"] = 359,["427"] = 359,["428"] = 359,["429"] = 360,["430"] = 360,["432"] = 361,["433"] = 359,["434"] = 359,["435"] = 363,["436"] = 363,["437"] = 363,["438"] = 364,["439"] = 364,["441"] = 365,["442"] = 363,["443"] = 363,["444"] = 367,["445"] = 367,["446"] = 367,["447"] = 368,["448"] = 368,["450"] = 369,["451"] = 369,["453"] = 370,["454"] = 370,["456"] = 371,["457"] = 371,["459"] = 372,["460"] = 372,["462"] = 373,["463"] = 373,["465"] = 374,["466"] = 367,["467"] = 367,["468"] = 376,["469"] = 376,["470"] = 376,["471"] = 377,["472"] = 376,["473"] = 376,["475"] = 380,["476"] = 380,["477"] = 381,["478"] = 382,["479"] = 383,["480"] = 383,["481"] = 383,["482"] = 384,["483"] = 385,["484"] = 386,["485"] = 386,["488"] = 388,["489"] = 383,["490"] = 383,["491"] = 390,["492"] = 390,["493"] = 390,["494"] = 391,["495"] = 392,["496"] = 393,["497"] = 393,["500"] = 395,["501"] = 390,["502"] = 390,["503"] = 397,["504"] = 397,["505"] = 397,["506"] = 398,["507"] = 399,["508"] = 400,["509"] = 401,["510"] = 402,["511"] = 402,["512"] = 402,["513"] = 402,["514"] = 402,["515"] = 407,["518"] = 397,["519"] = 410,["520"] = 411,["521"] = 397,["522"] = 397,["523"] = 380,["526"] = 342,["529"] = 331,["532"] = 303,["534"] = 418,["535"] = 418,["536"] = 419,["537"] = 418,["540"] = 237,["541"] = 424,["542"] = 425,["543"] = 425,["544"] = 425,["545"] = 425,["546"] = 427,["547"] = 428,["548"] = 428,["549"] = 428,["550"] = 428,["551"] = 429,["552"] = 430,["553"] = 431,["554"] = 432,["555"] = 434,["556"] = 434,["557"] = 434,["558"] = 435,["559"] = 436,["561"] = 438,["563"] = 434,["564"] = 434,["566"] = 442,["567"] = 442,["568"] = 443,["569"] = 444,["570"] = 445,["571"] = 447,["572"] = 449,["573"] = 449,["574"] = 449,["575"] = 450,["576"] = 449,["577"] = 449,["579"] = 453,["580"] = 453,["581"] = 454,["582"] = 455,["583"] = 456,["584"] = 457,["585"] = 459,["586"] = 459,["587"] = 459,["588"] = 459,["589"] = 461,["590"] = 461,["591"] = 461,["592"] = 462,["593"] = 462,["595"] = 463,["596"] = 461,["597"] = 461,["598"] = 466,["599"] = 466,["600"] = 466,["601"] = 467,["602"] = 467,["604"] = 468,["605"] = 466,["606"] = 466,["607"] = 470,["608"] = 470,["609"] = 470,["610"] = 471,["611"] = 471,["613"] = 472,["614"] = 470,["615"] = 470,["616"] = 474,["617"] = 474,["618"] = 474,["619"] = 475,["620"] = 475,["622"] = 476,["623"] = 474,["624"] = 474,["625"] = 478,["626"] = 478,["627"] = 478,["628"] = 479,["629"] = 479,["631"] = 480,["632"] = 480,["634"] = 481,["635"] = 478,["636"] = 478,["637"] = 483,["638"] = 483,["639"] = 483,["640"] = 484,["641"] = 483,["642"] = 483,["644"] = 487,["645"] = 487,["646"] = 488,["647"] = 489,["648"] = 490,["649"] = 490,["650"] = 490,["651"] = 491,["652"] = 492,["653"] = 493,["654"] = 493,["657"] = 495,["658"] = 490,["659"] = 490,["660"] = 497,["661"] = 497,["662"] = 497,["663"] = 498,["664"] = 499,["665"] = 500,["666"] = 500,["669"] = 502,["670"] = 497,["671"] = 497,["672"] = 504,["673"] = 504,["674"] = 504,["675"] = 505,["676"] = 506,["677"] = 507,["678"] = 508,["679"] = 509,["680"] = 509,["681"] = 509,["682"] = 509,["683"] = 509,["684"] = 514,["687"] = 504,["688"] = 517,["689"] = 518,["690"] = 504,["691"] = 504,["692"] = 487,["695"] = 453,["698"] = 442,["701"] = 427,["703"] = 525,["704"] = 525,["705"] = 526,["706"] = 525,["709"] = 424,["710"] = 530,["711"] = 531,["712"] = 531,["713"] = 531,["714"] = 531,["715"] = 533,["716"] = 534,["717"] = 534,["718"] = 534,["719"] = 534,["720"] = 535,["721"] = 536,["722"] = 537,["723"] = 538,["724"] = 540,["725"] = 540,["726"] = 540,["727"] = 541,["728"] = 542,["729"] = 543,["730"] = 544,["732"] = 546,["734"] = 540,["735"] = 540,["737"] = 551,["738"] = 551,["739"] = 552,["740"] = 553,["741"] = 554,["742"] = 556,["743"] = 558,["744"] = 558,["745"] = 558,["746"] = 559,["747"] = 558,["748"] = 558,["750"] = 562,["751"] = 562,["752"] = 563,["753"] = 564,["754"] = 565,["755"] = 566,["756"] = 568,["757"] = 568,["758"] = 568,["759"] = 568,["760"] = 570,["761"] = 570,["762"] = 570,["763"] = 571,["764"] = 571,["766"] = 572,["767"] = 572,["769"] = 573,["770"] = 573,["772"] = 574,["773"] = 574,["775"] = 575,["776"] = 570,["777"] = 570,["778"] = 577,["779"] = 577,["780"] = 577,["781"] = 578,["782"] = 578,["784"] = 579,["785"] = 577,["786"] = 577,["787"] = 582,["788"] = 582,["789"] = 582,["790"] = 583,["791"] = 583,["793"] = 584,["794"] = 582,["795"] = 582,["796"] = 586,["797"] = 586,["798"] = 586,["799"] = 587,["800"] = 587,["802"] = 588,["803"] = 586,["804"] = 586,["805"] = 591,["806"] = 591,["807"] = 591,["808"] = 592,["809"] = 593,["810"] = 593,["811"] = 593,["812"] = 593,["813"] = 593,["814"] = 593,["815"] = 593,["816"] = 593,["817"] = 591,["818"] = 598,["819"] = 599,["820"] = 591,["821"] = 591,["822"] = 562,["825"] = 551,["828"] = 533,["830"] = 605,["831"] = 605,["832"] = 606,["833"] = 605,["836"] = 530,["837"] = 656,["838"] = 657,["839"] = 657,["840"] = 657,["841"] = 657,["842"] = 659,["843"] = 660,["844"] = 662,["845"] = 664,["846"] = 664,["847"] = 664,["848"] = 665,["849"] = 666,["850"] = 664,["851"] = 664,["852"] = 668,["853"] = 668,["854"] = 668,["855"] = 669,["856"] = 670,["857"] = 668,["858"] = 668,["859"] = 672,["860"] = 672,["861"] = 672,["862"] = 673,["863"] = 674,["864"] = 675,["865"] = 676,["866"] = 676,["867"] = 676,["868"] = 677,["869"] = 677,["871"] = 678,["872"] = 676,["873"] = 676,["874"] = 680,["875"] = 672,["876"] = 672,["877"] = 683,["878"] = 684,["879"] = 685,["880"] = 686,["882"] = 688,["883"] = 688,["884"] = 689,["885"] = 690,["886"] = 691,["887"] = 693,["888"] = 695,["889"] = 695,["890"] = 695,["891"] = 696,["892"] = 695,["893"] = 695,["895"] = 699,["896"] = 699,["897"] = 700,["898"] = 701,["899"] = 702,["900"] = 703,["901"] = 705,["902"] = 705,["903"] = 705,["904"] = 705,["905"] = 707,["906"] = 707,["907"] = 707,["908"] = 708,["909"] = 708,["911"] = 709,["912"] = 707,["913"] = 707,["914"] = 712,["915"] = 712,["916"] = 712,["917"] = 713,["918"] = 713,["920"] = 714,["921"] = 712,["922"] = 712,["923"] = 716,["924"] = 716,["925"] = 716,["926"] = 717,["927"] = 717,["929"] = 718,["930"] = 718,["932"] = 719,["933"] = 719,["935"] = 720,["936"] = 720,["938"] = 725,["939"] = 716,["940"] = 716,["941"] = 728,["942"] = 728,["943"] = 728,["944"] = 729,["947"] = 730,["948"] = 731,["949"] = 731,["950"] = 731,["951"] = 731,["952"] = 731,["953"] = 731,["954"] = 731,["955"] = 731,["956"] = 728,["957"] = 736,["958"] = 737,["959"] = 728,["960"] = 728,["961"] = 699,["964"] = 688,["967"] = 659,["969"] = 743,["970"] = 743,["971"] = 744,["972"] = 743,["975"] = 656});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigList = ____BlessConfig.blessConfigList
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap_quality = ____EquipConfig.equipConfigMap_quality
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap_genre = ____GenreConfig.genreConfigMap_genre
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigList = ____GenreLevelConfig.genreLevelConfigList
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigList = ____MonsterConfig.monsterConfigList
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local SettingType = ____LocalData.SettingType
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____DSkillInfo = include("logic.dialogs.infos.DSkillInfo")
local DSkillInfo = ____DSkillInfo.DSkillInfo
local ____DWikiBlessInfo = include("logic.dialogs.storages.DWikiBlessInfo")
local DWikiBlessInfo = ____DWikiBlessInfo.DWikiBlessInfo
local ____DWikiEquipInfo = include("logic.dialogs.storages.DWikiEquipInfo")
local DWikiEquipInfo = ____DWikiEquipInfo.DWikiEquipInfo
local ____DWikiSkillInfo = include("logic.dialogs.storages.DWikiSkillInfo")
local DWikiSkillInfo = ____DWikiSkillInfo.DWikiSkillInfo
____exports.DWikiType = DWikiType or ({})
____exports.DWikiType.Skill = 1
____exports.DWikiType[____exports.DWikiType.Skill] = "Skill"
____exports.DWikiType.Bless = 2
____exports.DWikiType[____exports.DWikiType.Bless] = "Bless"
____exports.DWikiType.Mercenary = 3
____exports.DWikiType[____exports.DWikiType.Mercenary] = "Mercenary"
____exports.DWikiType.Monster = 4
____exports.DWikiType[____exports.DWikiType.Monster] = "Monster"
____exports.DWikiType.Wiki = 5
____exports.DWikiType[____exports.DWikiType.Wiki] = "Wiki"
____exports.DWikiType.Equip = 6
____exports.DWikiType[____exports.DWikiType.Equip] = "Equip"
local TypeList = {
    ____exports.DWikiType.Skill,
    ____exports.DWikiType.Bless,
    ____exports.DWikiType.Equip,
    ____exports.DWikiType.Mercenary,
    ____exports.DWikiType.Monster,
    ____exports.DWikiType.Wiki
}
local function getTypeName(self, ____type)
    repeat
        local ____switch3 = ____type
        local ____cond3 = ____switch3 == ____exports.DWikiType.Skill
        if ____cond3 then
            return i18n["local"](i18n, "技能")
        end
        ____cond3 = ____cond3 or ____switch3 == ____exports.DWikiType.Bless
        if ____cond3 then
            return i18n["local"](i18n, "祝福")
        end
        ____cond3 = ____cond3 or ____switch3 == ____exports.DWikiType.Mercenary
        if ____cond3 then
            return i18n["local"](i18n, "佣兵")
        end
        ____cond3 = ____cond3 or ____switch3 == ____exports.DWikiType.Monster
        if ____cond3 then
            return i18n["local"](i18n, "野怪")
        end
        ____cond3 = ____cond3 or ____switch3 == ____exports.DWikiType.Wiki
        if ____cond3 then
            return i18n["local"](i18n, "新手必看")
        end
        ____cond3 = ____cond3 or ____switch3 == ____exports.DWikiType.Equip
        if ____cond3 then
            return i18n["local"](i18n, "装备")
        end
        do
            return "??"
        end
    until true
end
____exports.DWiki = __TS__Class()
local DWiki = ____exports.DWiki
DWiki.name = "DWiki"
__TS__ClassExtends(DWiki, Dialog)
function DWiki.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {type = 0}
    self.eventId = 0
end
function DWiki.prototype.onCreate(self)
    self:initView()
end
function DWiki.prototype.initView(self)
    self.data.type = ____exports.DWikiType.Wiki
    do
        local i = 0
        while i < #TypeList do
            local index = i + 1
            local ____type = TypeList[i + 1]
            self:bindAction(
                "root.btns.btns.btn_" .. tostring(index),
                "左键-点击",
                function()
                    self.data.type = ____type
                end
            )
            self:bindVisible(
                ("root.btns.btns.btn_" .. tostring(index)) .. ".select",
                function()
                    return self.data.type == ____type
                end
            )
            self:bindText(
                ("root.btns.btns.btn_" .. tostring(index)) .. ".normal.title",
                function()
                    return getTypeName(nil, ____type)
                end
            )
            self:bindText(
                ("root.btns.btns.btn_" .. tostring(index)) .. ".select.title",
                function()
                    return getTypeName(nil, ____type)
                end
            )
            i = i + 1
        end
    end
    self:bindVisible(
        "root.content.guide",
        function() return self.data.type == ____exports.DWikiType.Wiki end
    )
    self:bindImage(
        "root.content.guide.list.1",
        function()
            if i18n.currentLang == "zh" then
                return 134248240
            elseif i18n.currentLang == "tw" then
                return 134248240
            elseif i18n.currentLang == "en" then
                return 134243967
            else
                return 134243967
            end
        end
    )
    self:bindImage(
        "root.content.guide.list.2",
        function()
            if i18n.currentLang == "zh" then
                return 134263413
            elseif i18n.currentLang == "tw" then
                return 134263413
            elseif i18n.currentLang == "en" then
                return 134257849
            else
                return 134257849
            end
        end
    )
    self:bindImage(
        "root.content.guide.list.3",
        function()
            if i18n.currentLang == "zh" then
                return 134266049
            elseif i18n.currentLang == "tw" then
                return 134266049
            elseif i18n.currentLang == "en" then
                return 134275942
            else
                return 134275942
            end
        end
    )
    self:initBless()
    self:initSkills()
    self:initMonster()
    self:initMercenary()
    self:initEquip()
end
function DWiki.prototype.initEquip(self)
    self:bindVisible(
        "root.content.equip",
        function() return self.data.type == ____exports.DWikiType.Equip end
    )
    local function func(____, ____type)
        local list = equipConfigMap_quality[____type + 1]
        local root = ("root.content.equip.list.box_" .. tostring(____type + 1)) .. ".list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        local idx = 0
        self:bindText(
            ("root.content.equip.list.box_" .. tostring(____type + 1)) .. ".title.title",
            function()
                if ____type == 0 then
                    return i18n["local"](i18n, "蓝色品质")
                elseif ____type == 1 then
                    return i18n["local"](i18n, "紫色品质")
                else
                    return i18n["local"](i18n, "橙色品质")
                end
            end
        )
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local sec_childs = element:get_childs()
                local path1 = (root .. ".") .. element:get_name()
                local temp_i = idx
                self:bindVisible(
                    path1,
                    function()
                        return #list > temp_i
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
                            function() return #list > temp_j end
                        )
                        self:bindImage(
                            path .. ".quality",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                if list[temp_j + 1].quality == 1 then
                                    return 134253578
                                end
                                if list[temp_j + 1].quality == 2 then
                                    return 134262991
                                end
                                if list[temp_j + 1].quality == 3 then
                                    return 134231740
                                end
                                return 0
                            end
                        )
                        self:bindImage(
                            path .. ".quality.hover",
                            function()
                                return 134262592
                            end
                        )
                        self:bindImage(
                            path .. ".quality.icon",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                return list[temp_j + 1].icon
                            end
                        )
                        self:bindText(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].name.value
                            end
                        )
                        self:bindVisible(
                            path,
                            function()
                                if #list <= temp_j then
                                    return false
                                end
                                return true
                            end
                        )
                        self:bindMouse(
                            path,
                            function()
                                local ui = self:getUI(path)
                                dialogs:showRepeat(
                                    DWikiEquipInfo,
                                    {
                                        x = ui:get_absolute_x(),
                                        y = ui:get_absolute_y() + 180 * y3.ui.get_window_width() / y3.ui.get_screen_width(),
                                        equipId = list[temp_j + 1].id
                                    }
                                )
                            end,
                            function()
                                dialogs:hide(DWikiEquipInfo)
                            end
                        )
                        j = j + 1
                    end
                end
                i = i + 1
            end
        end
    end
    do
        local index = 0
        while index < 3 do
            func(nil, index)
            index = index + 1
        end
    end
end
function DWiki.prototype.onShow(self)
    localData.setting.tabIndex = SettingType["Wiki_图鉴"]
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    self:watch(
        function()
            return localData.setting.tabIndex == SettingType["Wiki_图鉴"]
        end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DWiki.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DWiki.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
function DWiki.prototype.initMercenary(self)
    self:bindVisible(
        "root.content.mercenary",
        function() return self.data.type == ____exports.DWikiType.Mercenary end
    )
    local function func(____, ____type)
        local list = __TS__ArraySort(
            __TS__ArrayFilter(
                mercenaryConfigList,
                function(____, a) return a.rarity == ____type + 1 end
            ),
            function(____, a, b)
                if a.showId == b.showId then
                    return a.id - b.id
                end
                return a.showId - b.showId
            end
        )
        local root = ("root.content.mercenary.list.box_" .. tostring(____type + 1)) .. ".list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        local idx = 0
        self:bindText(
            ("root.content.mercenary.list.box_" .. tostring(____type + 1)) .. ".title.title",
            function()
                if ____type == 0 then
                    return i18n:format("第${wave}波解锁", {wave = 1})
                elseif ____type == 1 then
                    return i18n:format("第${wave}波解锁", {wave = 7})
                elseif ____type == 2 then
                    return i18n:format("第${wave}波解锁", {wave = 13})
                elseif ____type == 3 then
                    return i18n:format("第${wave}波解锁", {wave = 19})
                elseif ____type == 4 then
                    return i18n:format("第${wave}波解锁", {wave = 25})
                end
                return i18n:format("第${wave}波解锁", {wave = "?"})
            end
        )
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local sec_childs = element:get_childs()
                local path1 = (root .. ".") .. element:get_name()
                local temp_i = idx
                self:bindVisible(
                    path1,
                    function()
                        return #list > temp_i
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
                            function() return #list > temp_j end
                        )
                        self:bindImage(
                            path .. ".rect.icon",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                return list[temp_j + 1].pic
                            end
                        )
                        self:bindText(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].showName.value
                            end
                        )
                        self:bindText(
                            path .. ".des",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].des.value
                            end
                        )
                        self:bindText(
                            path .. ".spec",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].special.value
                            end
                        )
                        self:bindText(
                            path .. ".type",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                if list[temp_j + 1].label == 1 then
                                    return "#fb412e" .. i18n["local"](i18n, "坦克")
                                end
                                if list[temp_j + 1].label == 2 then
                                    return "#fb832f" .. i18n["local"](i18n, "战士")
                                end
                                if list[temp_j + 1].label == 3 then
                                    return "#30c0f6" .. i18n["local"](i18n, "法师")
                                end
                                if list[temp_j + 1].label == 4 then
                                    return "#fbde2f" .. i18n["local"](i18n, "辅助")
                                end
                                if list[temp_j + 1].label == 5 then
                                    return "#de2ffb" .. i18n["local"](i18n, "射手")
                                end
                                return "#fb412e" .. i18n["local"](i18n, "坦克")
                            end
                        )
                        self:bindVisible(
                            path .. ".type",
                            function()
                                return false
                            end
                        )
                        do
                            local m = 0
                            while m < 3 do
                                local n = m
                                local path2 = (path .. ".skills.skill_") .. tostring(n + 1)
                                self:bindVisible(
                                    path2,
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                return true
                                            end
                                        end
                                        return false
                                    end
                                )
                                self:bindImage(
                                    path2 .. ".icon",
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                return cfg.showSkill[n + 1].icon
                                            end
                                        end
                                        return 0
                                    end
                                )
                                self:bindMouse(
                                    path2,
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                local ui = self:getUI(path2)
                                                local params = {
                                                    x = ui:get_absolute_x(),
                                                    y = ui:get_absolute_y() + 120 * y3.ui.get_window_width() / y3.ui.get_screen_width(),
                                                    skillId = cfg.showSkill[n + 1].id
                                                }
                                                dialogs:showRepeat(DSkillInfo, params)
                                            end
                                        end
                                    end,
                                    function()
                                        dialogs:hide(DSkillInfo)
                                    end
                                )
                                m = m + 1
                            end
                        end
                        j = j + 1
                    end
                end
                i = i + 1
            end
        end
    end
    do
        local ____type = 0
        while ____type < 5 do
            func(nil, ____type)
            ____type = ____type + 1
        end
    end
end
function DWiki.prototype.initMonster(self)
    self:bindVisible(
        "root.content.monster",
        function() return self.data.type == ____exports.DWikiType.Monster end
    )
    local function func(____, ____type)
        local list = __TS__ArrayFilter(
            monsterConfigList,
            function(____, a) return a.type == ____type + 1 and a.ban == 0 end
        )
        local root = ("root.content.monster.list.box_" .. tostring(____type + 1)) .. ".list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        local idx = 0
        self:bindText(
            ("root.content.monster.list.box_" .. tostring(____type + 1)) .. ".title.title",
            function()
                if ____type == 0 then
                    return i18n["local"](i18n, "普通怪")
                else
                    return i18n["local"](i18n, "精英怪")
                end
            end
        )
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local sec_childs = element:get_childs()
                local path1 = (root .. ".") .. element:get_name()
                local temp_i = idx
                self:bindVisible(
                    path1,
                    function()
                        return #list > temp_i
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
                            function() return #list > temp_j end
                        )
                        self:bindImage(
                            path .. ".rect.icon",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                return list[temp_j + 1].icon
                            end
                        )
                        self:bindText(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].showName.value
                            end
                        )
                        self:bindText(
                            path .. ".des",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].des.value
                            end
                        )
                        self:bindText(
                            path .. ".spec",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].special.value
                            end
                        )
                        self:bindText(
                            path .. ".type",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                if list[temp_j + 1].pos == 1 then
                                    return i18n["local"](i18n, "近战")
                                end
                                return i18n["local"](i18n, "远程")
                            end
                        )
                        self:bindVisible(
                            path .. ".type",
                            function()
                                return false
                            end
                        )
                        do
                            local m = 0
                            while m < 3 do
                                local n = m
                                local path2 = (path .. ".skills.skill_") .. tostring(n + 1)
                                self:bindVisible(
                                    path2,
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                return true
                                            end
                                        end
                                        return false
                                    end
                                )
                                self:bindImage(
                                    path2 .. ".icon",
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                return cfg.showSkill[n + 1].icon
                                            end
                                        end
                                        return 0
                                    end
                                )
                                self:bindMouse(
                                    path2,
                                    function()
                                        if #list > temp_j then
                                            local cfg = list[temp_j + 1]
                                            if #cfg.showSkill > n then
                                                local ui = self:getUI(path2)
                                                local params = {
                                                    x = ui:get_absolute_x(),
                                                    y = ui:get_absolute_y() + 120 * y3.ui.get_window_width() / y3.ui.get_screen_width(),
                                                    skillId = cfg.showSkill[n + 1].id
                                                }
                                                dialogs:showRepeat(DSkillInfo, params)
                                            end
                                        end
                                    end,
                                    function()
                                        dialogs:hide(DSkillInfo)
                                    end
                                )
                                m = m + 1
                            end
                        end
                        j = j + 1
                    end
                end
                i = i + 1
            end
        end
    end
    do
        local ____type = 0
        while ____type < 2 do
            func(nil, ____type)
            ____type = ____type + 1
        end
    end
end
function DWiki.prototype.initBless(self)
    self:bindVisible(
        "root.content.bless",
        function() return self.data.type == ____exports.DWikiType.Bless end
    )
    local function func(____, ____type)
        local list = __TS__ArrayFilter(
            blessConfigList,
            function(____, a) return a.quality == ____type + 1 end
        )
        local root = ("root.content.bless.list.box_" .. tostring(____type + 1)) .. ".list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        local idx = 0
        self:bindText(
            ("root.content.bless.list.box_" .. tostring(____type + 1)) .. ".title.title",
            function()
                if ____type == 0 then
                    return i18n["local"](i18n, "银色品质")
                elseif ____type == 1 then
                    return i18n["local"](i18n, "金色品质")
                else
                    return i18n["local"](i18n, "彩色品质")
                end
            end
        )
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local sec_childs = element:get_childs()
                local path1 = (root .. ".") .. element:get_name()
                local temp_i = idx
                self:bindVisible(
                    path1,
                    function()
                        return #list > temp_i
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
                            function() return #list > temp_j end
                        )
                        self:bindImage(
                            path .. ".quality",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                if list[temp_j + 1].quality == 1 then
                                    return 134218174
                                end
                                if list[temp_j + 1].quality == 2 then
                                    return 134226168
                                end
                                if list[temp_j + 1].quality == 3 then
                                    return 134280850
                                end
                                return 0
                            end
                        )
                        self:bindImage(
                            path .. ".quality.icon",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                return list[temp_j + 1].icon
                            end
                        )
                        self:bindText(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].name.value
                            end
                        )
                        self:bindVisible(
                            path,
                            function()
                                if #list <= temp_j then
                                    return false
                                end
                                return true
                            end
                        )
                        self:bindMouse(
                            path,
                            function()
                                local ui = self:getUI(path)
                                dialogs:showRepeat(
                                    DWikiBlessInfo,
                                    {
                                        x = ui:get_absolute_x(),
                                        y = ui:get_absolute_y() + 180 * y3.ui.get_window_width() / y3.ui.get_screen_width(),
                                        skillId = list[temp_j + 1].id
                                    }
                                )
                            end,
                            function()
                                dialogs:hide(DWikiBlessInfo)
                            end
                        )
                        j = j + 1
                    end
                end
                i = i + 1
            end
        end
    end
    do
        local index = 0
        while index < 3 do
            func(nil, index)
            index = index + 1
        end
    end
end
function DWiki.prototype.initSkills(self)
    self:bindVisible(
        "root.content.skill",
        function() return self.data.type == ____exports.DWikiType.Skill end
    )
    local function func(____, ____type)
        local list = genreConfigMap_genre[____type + 1]
        local title = ("root.content.skill.list.box_" .. tostring(____type + 1)) .. ".title"
        self:bindImage(
            title .. ".icon",
            function()
                local genre = genreLevelConfigList[____type + 1]
                return genre.icon
            end
        )
        self:bindText(
            title .. ".title",
            function()
                local genre = genreLevelConfigList[____type + 1]
                return genre.name.value
            end
        )
        self:bindText(
            title .. ".content",
            function()
                local genre = genreLevelConfigList[____type + 1]
                local effets = genre.effect
                local des = ""
                __TS__ArrayForEach(
                    effets,
                    function(____, a)
                        if des ~= "" then
                            des = des .. ";"
                        end
                        des = des .. tostring(a.describe)
                    end
                )
                return des
            end
        )
        local root = ("root.content.skill.list.box_" .. tostring(____type + 1)) .. ".list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        local idx = 0
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local sec_childs = element:get_childs()
                local path1 = (root .. ".") .. element:get_name()
                local temp_i = idx
                self:bindVisible(
                    path1,
                    function()
                        return #list > temp_i
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
                            function() return #list > temp_j end
                        )
                        self:bindImage(
                            path .. ".icon",
                            function()
                                if #list <= temp_j then
                                    return 0
                                end
                                return list[temp_j + 1].icon
                            end
                        )
                        self:bindText(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return ""
                                end
                                return list[temp_j + 1].name.value
                            end
                        )
                        self:bindTextColor(
                            path .. ".name",
                            function()
                                if #list <= temp_j then
                                    return {194, 209, 251, 255}
                                end
                                if list[temp_j + 1].rarity == 1 then
                                    return {194, 209, 251, 255}
                                end
                                if list[temp_j + 1].rarity == 2 then
                                    return {199, 24, 220, 255}
                                end
                                if list[temp_j + 1].rarity == 3 then
                                    return {241, 141, 24, 255}
                                end
                                return {194, 209, 251, 255}
                            end
                        )
                        self:bindMouse(
                            path,
                            function()
                                if #list <= temp_j then
                                    return
                                end
                                local ui = self:getUI(path)
                                dialogs:showRepeat(
                                    DWikiSkillInfo,
                                    {
                                        x = ui:get_absolute_x(),
                                        y = ui:get_absolute_y() + 120 * y3.ui.get_window_width() / y3.ui.get_screen_width(),
                                        skillId = list[temp_j + 1].id
                                    }
                                )
                            end,
                            function()
                                dialogs:hide(DWikiSkillInfo)
                            end
                        )
                        j = j + 1
                    end
                end
                i = i + 1
            end
        end
    end
    do
        local ____type = 0
        while ____type < 12 do
            func(nil, ____type)
            ____type = ____type + 1
        end
    end
end
return ____exports
