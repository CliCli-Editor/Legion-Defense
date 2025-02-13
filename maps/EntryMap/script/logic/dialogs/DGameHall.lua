local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__Number = ____lualib.__TS__Number
local __TS__NumberIsNaN = ____lualib.__TS__NumberIsNaN
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 15,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 17,["43"] = 17,["44"] = 18,["45"] = 18,["46"] = 20,["47"] = 20,["48"] = 22,["49"] = 22,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 24,["54"] = 24,["55"] = 25,["56"] = 25,["57"] = 26,["58"] = 26,["59"] = 27,["60"] = 27,["61"] = 29,["62"] = 29,["63"] = 30,["64"] = 30,["65"] = 31,["66"] = 31,["67"] = 32,["68"] = 32,["69"] = 33,["70"] = 33,["71"] = 34,["72"] = 34,["73"] = 35,["74"] = 35,["75"] = 36,["76"] = 36,["77"] = 37,["78"] = 37,["79"] = 40,["80"] = 40,["81"] = 40,["82"] = 40,["84"] = 40,["85"] = 41,["86"] = 40,["87"] = 67,["88"] = 69,["89"] = 70,["90"] = 71,["93"] = 76,["96"] = 74,["102"] = 79,["103"] = 82,["104"] = 85,["105"] = 86,["107"] = 90,["108"] = 91,["109"] = 92,["110"] = 92,["111"] = 92,["112"] = 93,["113"] = 94,["114"] = 95,["115"] = 95,["116"] = 95,["117"] = 95,["118"] = 95,["119"] = 95,["120"] = 95,["121"] = 95,["122"] = 92,["123"] = 92,["125"] = 100,["126"] = 101,["127"] = 102,["128"] = 103,["129"] = 104,["131"] = 106,["132"] = 107,["134"] = 100,["135"] = 110,["136"] = 111,["137"] = 67,["138"] = 115,["139"] = 116,["140"] = 117,["141"] = 119,["142"] = 119,["143"] = 119,["144"] = 119,["145"] = 120,["146"] = 119,["147"] = 119,["148"] = 123,["149"] = 123,["150"] = 123,["151"] = 123,["152"] = 124,["153"] = 123,["154"] = 123,["155"] = 127,["156"] = 127,["157"] = 127,["158"] = 128,["159"] = 127,["160"] = 127,["161"] = 131,["162"] = 131,["163"] = 131,["164"] = 132,["165"] = 131,["166"] = 131,["167"] = 134,["168"] = 134,["169"] = 134,["170"] = 135,["171"] = 134,["172"] = 134,["173"] = 137,["174"] = 137,["175"] = 137,["176"] = 138,["177"] = 137,["178"] = 137,["179"] = 140,["180"] = 140,["181"] = 140,["182"] = 141,["183"] = 140,["184"] = 140,["185"] = 115,["186"] = 161,["187"] = 163,["188"] = 163,["189"] = 163,["190"] = 164,["191"] = 163,["192"] = 163,["193"] = 167,["194"] = 167,["195"] = 167,["196"] = 168,["197"] = 168,["198"] = 168,["199"] = 167,["200"] = 167,["201"] = 171,["202"] = 171,["203"] = 171,["204"] = 172,["205"] = 172,["206"] = 171,["207"] = 171,["208"] = 175,["209"] = 175,["210"] = 175,["211"] = 176,["212"] = 176,["213"] = 177,["215"] = 179,["217"] = 175,["218"] = 175,["220"] = 184,["221"] = 184,["222"] = 185,["223"] = 186,["224"] = 186,["225"] = 186,["226"] = 187,["227"] = 187,["228"] = 188,["229"] = 186,["230"] = 186,["231"] = 190,["232"] = 190,["233"] = 190,["234"] = 191,["235"] = 191,["236"] = 192,["237"] = 193,["239"] = 195,["241"] = 190,["242"] = 190,["243"] = 198,["244"] = 198,["245"] = 198,["246"] = 199,["247"] = 199,["248"] = 200,["249"] = 201,["251"] = 203,["253"] = 198,["254"] = 198,["255"] = 206,["256"] = 206,["257"] = 206,["258"] = 207,["259"] = 207,["260"] = 208,["261"] = 209,["262"] = 209,["263"] = 209,["265"] = 209,["267"] = 209,["269"] = 211,["271"] = 206,["272"] = 206,["273"] = 214,["274"] = 214,["275"] = 214,["276"] = 215,["277"] = 215,["278"] = 216,["279"] = 217,["280"] = 217,["281"] = 217,["283"] = 219,["285"] = 214,["286"] = 214,["287"] = 223,["288"] = 223,["289"] = 223,["290"] = 224,["291"] = 224,["292"] = 225,["293"] = 226,["294"] = 226,["295"] = 226,["297"] = 228,["299"] = 223,["300"] = 223,["301"] = 232,["302"] = 232,["303"] = 232,["304"] = 233,["305"] = 233,["306"] = 234,["307"] = 235,["308"] = 235,["309"] = 235,["311"] = 237,["313"] = 232,["314"] = 232,["315"] = 241,["316"] = 241,["317"] = 241,["318"] = 241,["319"] = 242,["320"] = 243,["323"] = 246,["324"] = 246,["325"] = 247,["326"] = 248,["328"] = 241,["329"] = 241,["330"] = 252,["331"] = 252,["332"] = 252,["333"] = 252,["334"] = 253,["335"] = 254,["338"] = 257,["339"] = 257,["340"] = 258,["341"] = 259,["343"] = 252,["344"] = 252,["345"] = 184,["348"] = 265,["349"] = 265,["350"] = 265,["351"] = 265,["352"] = 266,["353"] = 267,["356"] = 270,["357"] = 271,["359"] = 265,["360"] = 265,["361"] = 275,["362"] = 275,["363"] = 275,["364"] = 276,["365"] = 275,["366"] = 275,["367"] = 279,["368"] = 279,["369"] = 279,["370"] = 279,["371"] = 280,["372"] = 281,["375"] = 284,["376"] = 279,["377"] = 279,["378"] = 161,["379"] = 288,["380"] = 289,["381"] = 289,["382"] = 289,["383"] = 289,["384"] = 290,["385"] = 291,["387"] = 293,["388"] = 294,["391"] = 297,["392"] = 289,["393"] = 289,["394"] = 289,["395"] = 288,["396"] = 302,["397"] = 304,["398"] = 305,["399"] = 304,["400"] = 308,["401"] = 310,["403"] = 317,["404"] = 317,["405"] = 317,["406"] = 317,["407"] = 318,["408"] = 317,["409"] = 317,["410"] = 321,["411"] = 321,["412"] = 321,["413"] = 321,["414"] = 322,["415"] = 322,["416"] = 323,["417"] = 324,["419"] = 326,["420"] = 327,["422"] = 321,["423"] = 321,["424"] = 331,["425"] = 331,["426"] = 331,["427"] = 331,["428"] = 332,["429"] = 333,["431"] = 335,["432"] = 336,["433"] = 337,["435"] = 331,["436"] = 331,["437"] = 341,["438"] = 341,["439"] = 341,["440"] = 342,["441"] = 343,["443"] = 345,["445"] = 341,["446"] = 341,["447"] = 349,["448"] = 349,["449"] = 349,["450"] = 350,["451"] = 349,["452"] = 349,["453"] = 353,["454"] = 353,["455"] = 353,["456"] = 353,["457"] = 354,["458"] = 355,["459"] = 356,["460"] = 357,["462"] = 359,["463"] = 359,["464"] = 360,["465"] = 361,["466"] = 362,["467"] = 364,["468"] = 365,["469"] = 366,["470"] = 367,["473"] = 371,["474"] = 372,["476"] = 353,["477"] = 353,["478"] = 376,["479"] = 376,["480"] = 376,["481"] = 376,["482"] = 377,["483"] = 376,["484"] = 376,["485"] = 379,["486"] = 380,["487"] = 380,["488"] = 380,["489"] = 381,["490"] = 382,["491"] = 383,["492"] = 384,["493"] = 385,["494"] = 386,["495"] = 387,["496"] = 388,["497"] = 389,["499"] = 391,["501"] = 380,["502"] = 380,["503"] = 395,["504"] = 395,["505"] = 395,["506"] = 395,["507"] = 396,["508"] = 395,["509"] = 395,["510"] = 398,["511"] = 398,["512"] = 398,["513"] = 398,["514"] = 399,["515"] = 398,["516"] = 398,["517"] = 401,["518"] = 401,["519"] = 401,["520"] = 402,["521"] = 401,["522"] = 401,["523"] = 404,["524"] = 404,["525"] = 404,["526"] = 404,["527"] = 405,["528"] = 404,["529"] = 404,["530"] = 408,["531"] = 408,["532"] = 408,["533"] = 408,["534"] = 409,["535"] = 408,["536"] = 408,["537"] = 412,["538"] = 412,["539"] = 412,["540"] = 412,["541"] = 413,["542"] = 412,["543"] = 412,["544"] = 416,["545"] = 416,["546"] = 416,["547"] = 417,["548"] = 416,["549"] = 416,["550"] = 419,["551"] = 419,["552"] = 419,["553"] = 420,["554"] = 419,["555"] = 419,["556"] = 422,["557"] = 422,["558"] = 422,["559"] = 423,["560"] = 422,["561"] = 422,["562"] = 425,["563"] = 425,["564"] = 425,["565"] = 426,["566"] = 425,["567"] = 425,["568"] = 428,["569"] = 428,["570"] = 428,["571"] = 429,["572"] = 428,["573"] = 428,["574"] = 431,["575"] = 431,["576"] = 431,["577"] = 432,["578"] = 431,["579"] = 431,["580"] = 435,["581"] = 435,["582"] = 435,["583"] = 436,["584"] = 437,["585"] = 435,["586"] = 435,["587"] = 439,["588"] = 439,["589"] = 439,["590"] = 440,["591"] = 441,["592"] = 439,["593"] = 439,["594"] = 444,["595"] = 444,["596"] = 444,["597"] = 444,["598"] = 445,["599"] = 444,["600"] = 444,["601"] = 447,["602"] = 447,["603"] = 447,["604"] = 447,["605"] = 448,["606"] = 447,["607"] = 447,["608"] = 452,["609"] = 452,["610"] = 452,["611"] = 453,["612"] = 452,["613"] = 452,["614"] = 456,["615"] = 456,["616"] = 456,["617"] = 457,["618"] = 458,["619"] = 458,["620"] = 458,["621"] = 458,["622"] = 458,["623"] = 458,["624"] = 458,["625"] = 456,["626"] = 462,["627"] = 463,["628"] = 456,["629"] = 456,["630"] = 302,["631"] = 468,["632"] = 469,["633"] = 469,["634"] = 469,["635"] = 470,["636"] = 469,["637"] = 469,["638"] = 472,["639"] = 472,["640"] = 472,["641"] = 473,["642"] = 472,["643"] = 472,["644"] = 477,["645"] = 477,["646"] = 477,["647"] = 478,["648"] = 477,["649"] = 477,["650"] = 481,["651"] = 482,["652"] = 482,["653"] = 482,["654"] = 482,["655"] = 482,["656"] = 481,["657"] = 483,["658"] = 483,["659"] = 483,["660"] = 483,["661"] = 483,["662"] = 481,["663"] = 484,["664"] = 484,["665"] = 484,["666"] = 484,["667"] = 484,["668"] = 481,["669"] = 485,["670"] = 485,["671"] = 485,["672"] = 485,["673"] = 485,["674"] = 481,["675"] = 481,["677"] = 488,["678"] = 488,["679"] = 489,["680"] = 490,["681"] = 491,["682"] = 491,["683"] = 491,["684"] = 492,["685"] = 491,["686"] = 491,["687"] = 494,["688"] = 494,["689"] = 494,["690"] = 495,["691"] = 494,["692"] = 494,["693"] = 488,["696"] = 499,["697"] = 500,["698"] = 500,["699"] = 500,["700"] = 500,["701"] = 500,["702"] = 499,["703"] = 501,["704"] = 501,["705"] = 501,["706"] = 501,["707"] = 501,["708"] = 499,["709"] = 502,["710"] = 502,["711"] = 502,["712"] = 502,["713"] = 502,["714"] = 499,["715"] = 503,["716"] = 503,["717"] = 503,["718"] = 503,["719"] = 503,["720"] = 499,["721"] = 499,["723"] = 505,["724"] = 505,["725"] = 506,["726"] = 507,["727"] = 508,["728"] = 508,["729"] = 508,["730"] = 509,["731"] = 508,["732"] = 508,["733"] = 511,["734"] = 511,["735"] = 511,["736"] = 512,["737"] = 511,["738"] = 511,["739"] = 505,["742"] = 516,["743"] = 516,["744"] = 516,["745"] = 517,["746"] = 518,["747"] = 516,["748"] = 516,["749"] = 520,["750"] = 520,["751"] = 520,["752"] = 521,["753"] = 522,["754"] = 520,["755"] = 520,["756"] = 525,["757"] = 525,["758"] = 525,["759"] = 526,["760"] = 525,["761"] = 525,["762"] = 468,["763"] = 530,["764"] = 531,["765"] = 531,["766"] = 531,["767"] = 531,["768"] = 532,["769"] = 531,["770"] = 531,["771"] = 530,["772"] = 536,["773"] = 537,["774"] = 540,["775"] = 541,["776"] = 541,["777"] = 542,["778"] = 542,["779"] = 542,["780"] = 542,["781"] = 543,["782"] = 543,["783"] = 543,["784"] = 544,["785"] = 543,["786"] = 543,["787"] = 548,["788"] = 548,["789"] = 548,["790"] = 549,["791"] = 548,["792"] = 548,["793"] = 552,["794"] = 552,["795"] = 552,["796"] = 553,["797"] = 552,["798"] = 552,["799"] = 556,["800"] = 556,["801"] = 556,["802"] = 557,["803"] = 556,["804"] = 556,["805"] = 559,["806"] = 559,["807"] = 559,["808"] = 560,["809"] = 559,["810"] = 559,["811"] = 562,["812"] = 562,["813"] = 562,["814"] = 563,["815"] = 562,["816"] = 562,["817"] = 536,["818"] = 575,["819"] = 576,["820"] = 577,["821"] = 577,["822"] = 577,["823"] = 577,["824"] = 578,["825"] = 579,["826"] = 580,["827"] = 580,["828"] = 580,["829"] = 580,["830"] = 580,["831"] = 580,["832"] = 580,["833"] = 577,["834"] = 577,["835"] = 586,["836"] = 586,["837"] = 586,["838"] = 586,["839"] = 587,["840"] = 586,["841"] = 586,["842"] = 590,["843"] = 590,["844"] = 590,["845"] = 591,["846"] = 591,["847"] = 591,["848"] = 591,["849"] = 592,["850"] = 590,["851"] = 590,["852"] = 575,["853"] = 595,["854"] = 596,["855"] = 597,["856"] = 598,["857"] = 598,["858"] = 598,["859"] = 599,["860"] = 598,["861"] = 598,["862"] = 602,["863"] = 602,["864"] = 602,["865"] = 603,["866"] = 604,["867"] = 605,["868"] = 602,["869"] = 602,["870"] = 595,["871"] = 609,["872"] = 610,["873"] = 610,["874"] = 610,["875"] = 611,["876"] = 610,["877"] = 610,["878"] = 609,["879"] = 616,["880"] = 617,["881"] = 617,["882"] = 617,["883"] = 618,["884"] = 618,["885"] = 618,["886"] = 618,["887"] = 618,["888"] = 618,["889"] = 618,["890"] = 617,["891"] = 617,["892"] = 620,["893"] = 620,["894"] = 620,["895"] = 621,["896"] = 620,["897"] = 620,["898"] = 623,["899"] = 623,["900"] = 623,["901"] = 624,["902"] = 623,["903"] = 623,["904"] = 616,["905"] = 628,["906"] = 629,["907"] = 629,["908"] = 629,["909"] = 630,["910"] = 631,["911"] = 632,["913"] = 634,["914"] = 635,["916"] = 637,["918"] = 629,["919"] = 629,["920"] = 640,["921"] = 640,["922"] = 640,["923"] = 641,["924"] = 642,["925"] = 643,["927"] = 645,["928"] = 647,["929"] = 648,["930"] = 649,["931"] = 651,["932"] = 652,["934"] = 655,["935"] = 656,["937"] = 658,["938"] = 640,["939"] = 640,["940"] = 660,["941"] = 660,["942"] = 660,["943"] = 661,["944"] = 660,["945"] = 660,["946"] = 663,["947"] = 663,["948"] = 663,["949"] = 664,["950"] = 665,["951"] = 666,["953"] = 668,["954"] = 663,["955"] = 663,["956"] = 670,["957"] = 670,["958"] = 670,["959"] = 671,["960"] = 670,["961"] = 670,["962"] = 674,["963"] = 674,["964"] = 674,["965"] = 675,["966"] = 676,["968"] = 678,["970"] = 674,["971"] = 674,["972"] = 628,["973"] = 683,["974"] = 683,["975"] = 687,["976"] = 688,["977"] = 689,["978"] = 690,["979"] = 687,["980"] = 693,["981"] = 694,["982"] = 693,["983"] = 699,["984"] = 701,["985"] = 703,["986"] = 704,["987"] = 705,["988"] = 706,["989"] = 707,["990"] = 708,["991"] = 709,["992"] = 710,["993"] = 711,["994"] = 712,["995"] = 713,["996"] = 699});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
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
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
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
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____BobInfo = include("logic.match.BobInfo")
local BobInfo = ____BobInfo.BobInfo
local isPvpMode = ____BobInfo.isPvpMode
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DLadderInfo = include("logic.dialogs.DLadderInfo")
local DLadderInfo = ____DLadderInfo.DLadderInfo
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DS1Battlepass = include("logic.dialogs.activity.DS1Battlepass")
local DS1Battlepass = ____DS1Battlepass.DS1Battlepass
local ____DSevenSign = include("logic.dialogs.activity.DSevenSign")
local DSevenSign = ____DSevenSign.DSevenSign
local ____DHelpEscape = include("logic.dialogs.help.DHelpEscape")
local DHelpEscape = ____DHelpEscape.DHelpEscape
local ____DInfoIdleReward = include("logic.dialogs.infos.DInfoIdleReward")
local DInfoIdleReward = ____DInfoIdleReward.DInfoIdleReward
local ____DAlert = include("logic.dialogs.tips.DAlert")
local DAlert = ____DAlert.DAlert
local ____NewbieTaskManager = include("logic.archive.manager.NewbieTaskManager")
local newbieTaskManager = ____NewbieTaskManager.newbieTaskManager
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
local ____IBob = include("logic.match.IBob")
local PlayerState = ____IBob.PlayerState
____exports.DGameHall = __TS__Class()
local DGameHall = ____exports.DGameHall
DGameHall.name = "DGameHall"
__TS__ClassExtends(DGameHall, Dialog)
function DGameHall.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 0, log = {logTab = 0, updateLog = "", balanceLog = ""}}
end
function DGameHall.prototype.onCreate(self)
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
                        title = "提示",
                        tips = (((("由于你在排位比赛中逃跑，您的段位从\n #00ff00" .. tostring(from.rankName)) .. tostring(score.oldScore - from.totalScore)) .. " #c2d1eb降为 #00ff00") .. tostring(to.rankName)) .. tostring(score.resultScore - to.totalScore),
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
end
function DGameHall.prototype.initLog(self)
    self.data.log.updateLog = defaultConfig["公告"]
    self.data.log.balanceLog = ""
    self:bindAction(
        "left.notice.tabs.update_log",
        "左键-点击",
        function()
            self.data.log.logTab = 0
        end
    )
    self:bindAction(
        "left.notice.tabs.game_log",
        "左键-点击",
        function()
            self.data.log.logTab = 1
        end
    )
    self:bindText(
        "left.notice.list.content",
        function()
            return self.data.log.logTab == 0 and self.data.log.updateLog or self.data.log.balanceLog
        end
    )
    self:bindVisible(
        "left.notice.tabs.update_log.sel",
        function()
            return self.data.log.logTab == 0
        end
    )
    self:bindVisible(
        "left.notice.tabs.update_log.unsel",
        function()
            return self.data.log.logTab ~= 0
        end
    )
    self:bindVisible(
        "left.notice.tabs.game_log.sel",
        function()
            return self.data.log.logTab == 1
        end
    )
    self:bindVisible(
        "left.notice.tabs.game_log.unsel",
        function()
            return self.data.log.logTab ~= 1
        end
    )
end
function DGameHall.prototype.initTeam(self)
    self:bindVisible(
        "right.team",
        function()
            return bob.data.teamInfo ~= nil
        end
    )
    self:bindText(
        "right.team.bottom.roomId",
        function()
            local ____i18n_local_result_2 = i18n["local"](i18n, "队伍号：")
            local ____opt_0 = bob.data.teamInfo
            return ____i18n_local_result_2 .. tostring(____opt_0 and ____opt_0.team_id)
        end
    )
    self:bindText(
        "right.team.count",
        function()
            local ____opt_3 = bob.data.teamInfo
            return tostring(____opt_3 and #____opt_3.members or 0) .. "/3"
        end
    )
    self:bindTextColor(
        "right.team.count",
        function()
            local ____opt_5 = bob.data.teamInfo
            if (____opt_5 and #____opt_5.members or 0) > 3 then
                return UIUtils:toColor("#ff0000")
            else
                return UIUtils:toColor("#ffffff")
            end
        end
    )
    do
        local i = 0
        while i < 8 do
            local index = i
            self:bindVisible(
                "right.team.list.item_" .. tostring(index + 1),
                function()
                    local ____opt_7 = bob.data.teamInfo
                    local player = ____opt_7 and ____opt_7.members[index + 1]
                    return player ~= nil
                end
            )
            self:bindImageUrl(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.head",
                function()
                    local ____opt_9 = bob.data.teamInfo
                    local player = ____opt_9 and ____opt_9.members[index + 1]
                    if player ~= nil then
                        return player.head_icon
                    else
                        return nil
                    end
                end
            )
            self:bindText(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.name",
                function()
                    local ____opt_11 = bob.data.teamInfo
                    local player = ____opt_11 and ____opt_11.members[index + 1]
                    if player ~= nil then
                        return player.name
                    else
                        return ""
                    end
                end
            )
            self:bindText(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.state",
                function()
                    local ____opt_13 = bob.data.teamInfo
                    local player = ____opt_13 and ____opt_13.members[index + 1]
                    if player ~= nil then
                        local ____temp_15
                        if type(player.state) == "string" then
                            ____temp_15 = player.state
                        else
                            ____temp_15 = PlayerState[player.state] or "未知状态" .. tostring(player.state)
                        end
                        return ____temp_15
                    else
                        return ""
                    end
                end
            )
            self:bindVisible(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.isCaptain",
                function()
                    local ____opt_16 = bob.data.teamInfo
                    local player = ____opt_16 and ____opt_16.members[index + 1]
                    if player ~= nil then
                        local ____player_aid_20 = player.aid
                        local ____opt_18 = bob.data.teamInfo
                        return ____player_aid_20 == (____opt_18 and ____opt_18.captain)
                    else
                        return false
                    end
                end
            )
            self:bindVisible(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.toCaptainBtn",
                function()
                    local ____opt_21 = bob.data.teamInfo
                    local player = ____opt_21 and ____opt_21.members[index + 1]
                    if player ~= nil then
                        local ____player_aid_25 = player.aid
                        local ____opt_23 = bob.data.teamInfo
                        return ____player_aid_25 ~= (____opt_23 and ____opt_23.captain) and bob.data.isCaptain
                    else
                        return false
                    end
                end
            )
            self:bindVisible(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.leaveBtn",
                function()
                    local ____opt_26 = bob.data.teamInfo
                    local player = ____opt_26 and ____opt_26.members[index + 1]
                    if player ~= nil then
                        local ____player_aid_30 = player.aid
                        local ____opt_28 = bob.data.teamInfo
                        return ____player_aid_30 ~= (____opt_28 and ____opt_28.captain) and bob.data.isCaptain
                    else
                        return false
                    end
                end
            )
            self:bindNetworkAction(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.toCaptainBtn",
                "左键-点击",
                function()
                    if bob.data.isMatching then
                        DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                        return
                    end
                    local ____opt_31 = bob.data.teamInfo
                    local player = ____opt_31 and ____opt_31.members[index + 1]
                    if player ~= nil and bob.data.isCaptain then
                        bob:changeCaptain(player.aid)
                    end
                end
            )
            self:bindNetworkAction(
                ("right.team.list.item_" .. tostring(index + 1)) .. ".root.leaveBtn",
                "左键-点击",
                function()
                    if bob.data.isMatching then
                        DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                        return
                    end
                    local ____opt_33 = bob.data.teamInfo
                    local player = ____opt_33 and ____opt_33.members[index + 1]
                    if player ~= nil and bob.data.isCaptain then
                        bob:kick(player.aid)
                    end
                end
            )
            i = i + 1
        end
    end
    self:bindNetworkAction(
        "right.team.bottom.dissolveBtn",
        "左键-点击",
        function()
            if bob.data.isMatching then
                DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                return
            end
            if bob.data.isCaptain then
                bob:dismissTeam()
            end
        end
    )
    self:bindVisible(
        "right.team.bottom.dissolveBtn",
        function()
            return bob.data.isCaptain
        end
    )
    self:bindNetworkAction(
        "right.team.bottom.leaveBtn",
        "左键-点击",
        function()
            if bob.data.isMatching then
                DTips:show(i18n["local"](i18n, "正在匹配中，请勿操作"))
                return
            end
            bob:leaveTeam()
        end
    )
end
function DGameHall.prototype.bindNetworkAction(self, path, event, callback)
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
function DGameHall.prototype.initPages(self)
    bob.onMessage = function(____, msg)
        DTips:show(msg)
    end
    if isPvpMode(nil) then
        self.data.tab = 1
    end
    self:bindNetworkAction(
        "right.pages.mul.create",
        "左键-点击",
        function()
            bob:createTeam()
        end
    )
    self:bindNetworkAction(
        "right.pages.mul.join",
        "左键-点击",
        function()
            local ____opt_35 = self:getUI("right.pages.mul.input.roomId")
            local input = ____opt_35 and ____opt_35:get_input_field_content()
            if input == "" then
                DTips:show(i18n["local"](i18n, "请输入队伍号"))
            end
            if input then
                bob:joinTeam(__TS__ParseInt(input))
            end
        end
    )
    self:bindAction(
        "right.pages.single.single",
        "左键-点击",
        function()
            if isPvpMode(nil) then
                gameModeUtils:restartGame()
            else
                idleRewardManager:stop()
                battlepassManager:stopTimer()
                self:exit({})
            end
        end
    )
    self:bindText(
        "right.pages.single.single.title",
        function()
            if isPvpMode(nil) then
                return i18n["local"](i18n, "重载")
            else
                return i18n["local"](i18n, "人机对抗")
            end
        end
    )
    self:bindVisible(
        "right.pages.single.restart_tips",
        function()
            return isPvpMode(nil)
        end
    )
    self:bindNetworkAction(
        "right.pages.match",
        "左键-点击",
        function()
            if bob.data.isMatching then
                bob:cancel_match()
            elseif bob.data.teamInfo ~= nil and #bob.data.teamInfo.members > 3 then
                DTips:show(i18n["local"](i18n, "队伍成员数量必须≤3人"))
            else
                local ____opt_37 = archive.statData.seasonSateInfo
                local score = ____opt_37 and ____opt_37.score or 0
                local mode = score < 500 and BobInfo.gameModeLow or BobInfo.gameMode
                local isSingleMatch = bob.data.teamInfo == nil
                local isFake = nil
                if isSingleMatch then
                    local fightCount = archive.statData.match_complete_count + archive.statData.pvp_complete_count
                    if fightCount < defaultConfig["温暖局局数"] then
                        isFake = true
                    end
                end
                print((((("开始匹配：score=" .. tostring(score)) .. " mode=") .. tostring(mode)) .. " isSingleMatch=") .. tostring(isSingleMatch))
                bob:start_match(mode, score, nil, isFake)
            end
        end
    )
    self:bindButtonEnableHover(
        "right.pages.match",
        {"right.pages.match.hover", "right.pages.matchEffect"},
        function()
            return not bob.data.isLaunching and (bob.data.isCaptain or bob.data.teamInfo == nil)
        end
    )
    local scale = 0.9 + 0.2 * localRandom:random()
    self:bindText(
        "right.pages.match.title",
        function()
            if bob.data.isLaunching then
                return i18n["local"](i18n, "即将开始")
            elseif bob.data.isMatching then
                local time = math.floor((global.time.value - bob.data.startMatchingTime) * scale)
                local m = math.floor(time / 60)
                local s = time % 60
                return i18n:format("匹配中（${time}秒）", {time = time})
            elseif bob.data.teamInfo ~= nil and #bob.data.teamInfo.members > 3 then
                return i18n["local"](i18n, "队伍成员数量必须≤3人")
            else
                return i18n["local"](i18n, "天梯匹配")
            end
        end
    )
    self:bindButtonEnableHover(
        "right.pages.mul.create",
        {"right.pages.mul.create.hover", "right.pages.mul.createEffect"},
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindButtonEnableHover(
        "right.pages.mul.join",
        {"right.pages.mul.join.hover"},
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindButtonEnable(
        "right.pages.mul.input",
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindButtonEnableHover(
        "right.pages.single.single",
        {"right.pages.single.single.hover", "right.pages.single.createEffect"},
        function()
            return not bob.data.isLaunching and not bob.data.isMatching and bob.data.teamInfo == nil
        end
    )
    self:bindAction(
        "right.tabs.single",
        "左键-点击",
        function()
            self.data.tab = 0
        end
    )
    self:bindAction(
        "right.tabs.mul",
        "左键-点击",
        function()
            self.data.tab = 1
        end
    )
    self:bindVisible(
        "right.tabs.single.sel",
        function()
            return self.data.tab == 0
        end
    )
    self:bindVisible(
        "right.tabs.single.unsel",
        function()
            return self.data.tab ~= 0
        end
    )
    self:bindVisible(
        "right.tabs.mul.sel",
        function()
            return self.data.tab == 1
        end
    )
    self:bindVisible(
        "right.tabs.mul.unsel",
        function()
            return self.data.tab ~= 1
        end
    )
    self:bindVisible(
        "right.pages.single",
        function()
            return self.data.tab == 0
        end
    )
    self:bindVisible(
        "right.pages.mul",
        function()
            return self.data.tab == 1
        end
    )
    self:bindVisible(
        "right.pages.single.difficulty.easy.sel",
        function()
            local gameData = datas.global:getSingle(GameData)
            return (gameData and gameData.aiDifficulty) == "easy"
        end
    )
    self:bindVisible(
        "right.pages.single.difficulty.hard.sel",
        function()
            local gameData = datas.global:getSingle(GameData)
            return (gameData and gameData.aiDifficulty) == "hard"
        end
    )
    self:bindAction(
        "right.pages.single.difficulty.easy",
        "左键-按下",
        function()
            gameController.setAiDifficulty:execute("easy")
        end
    )
    self:bindAction(
        "right.pages.single.difficulty.hard",
        "左键-按下",
        function()
            gameController.setAiDifficulty:execute("hard")
        end
    )
    self:bindVisible(
        "right.pages.escape",
        function()
            return archive.statData.last_game_idle > 1
        end
    )
    self:bindMouse(
        "right.pages.escape",
        function()
            local ui = self:getUI("right.pages.escape")
            dialogs:showRepeat(
                DHelpEscape,
                {
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y()
                }
            )
        end,
        function()
            dialogs:hide(DHelpEscape)
        end
    )
end
function DGameHall.prototype.initCareer(self)
    self:bindText(
        "left.career.name",
        function()
            return LOCAL.PLAYER:get_name()
        end
    )
    self:bindImageUrl(
        "left.career.head_mask.head",
        function()
            return LOCAL.PLAYER:get_platform_icon_url()
        end
    )
    self:bindVisible(
        "left.career.head_frame",
        function()
            return archive.vipInfo:has(VipType["头像框换成会员"])
        end
    )
    local list = {
        {
            label = i18n["local"](i18n, "总场数："),
            text = function()
                return tostring(archive.statInfo.data.match_complete_count + archive.statInfo.data.pvp_complete_count)
            end
        },
        {
            label = i18n["local"](i18n, "胜场数："),
            text = function()
                return tostring(archive.statInfo.data.match_win_count + archive.statInfo.data.pvp_win_count)
            end
        },
        {
            label = "MVP：",
            text = function()
                return tostring(archive.statInfo.data.match_mvp + archive.statInfo.data.pvp_mvp)
            end
        },
        {
            label = "SMVP：",
            text = function()
                return tostring(archive.statInfo.data.match_smvp + archive.statInfo.data.pvp_smvp)
            end
        }
    }
    do
        local i = 0
        while i < 4 do
            local index = i
            local item = list[index + 1]
            self:bindText(
                ("left.career.normal.item" .. tostring(index + 1)) .. ".key",
                function()
                    return item and item.label or ""
                end
            )
            self:bindText(
                ("left.career.normal.item" .. tostring(index + 1)) .. ".value",
                function()
                    return (item and item.text) ~= nil and item:text() or ""
                end
            )
            i = i + 1
        end
    end
    local list2 = {
        {
            label = i18n["local"](i18n, "总场数："),
            text = function()
                return tostring(archive.statInfo.data.seasonSateInfo.season_complete_count)
            end
        },
        {
            label = i18n["local"](i18n, "胜场数："),
            text = function()
                return tostring(archive.statInfo.data.seasonSateInfo.season_win_count)
            end
        },
        {
            label = "MVP：",
            text = function()
                return tostring(archive.statInfo.data.seasonSateInfo.season_mvp)
            end
        },
        {
            label = "SMVP：",
            text = function()
                return tostring(archive.statInfo.data.seasonSateInfo.season_smvp)
            end
        }
    }
    do
        local i = 0
        while i < 4 do
            local index = i
            local item = list2[index + 1]
            self:bindText(
                ("left.career.ladder.item" .. tostring(index + 1)) .. ".key",
                function()
                    return item and item.label or ""
                end
            )
            self:bindText(
                ("left.career.ladder.item" .. tostring(index + 1)) .. ".value",
                function()
                    return (item and item.text) ~= nil and item:text() or ""
                end
            )
            i = i + 1
        end
    end
    self:bindImage(
        "left.career.ladder.item.icon",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return cfg.icon
        end
    )
    self:bindText(
        "left.career.ladder.item.value",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return (tostring(cfg.rankName) .. "  ") .. tostring(archive.statInfo.data.seasonSateInfo.score - cfg.totalScore)
        end
    )
    self:bindText(
        "left.career.ladder.title",
        function()
            return ladderTournamentManager:getCurrentSeason().rankSeasonName.value
        end
    )
end
function DGameHall.prototype.initQQ(self)
    self:bindAction(
        "left.QQ.QQ",
        "左键-点击",
        function()
            UIUtils:gotoQQ()
        end
    )
end
function DGameHall.prototype.initActivity(self)
    local path = "left.activity"
    local cfgLength = #sevenDaysConfigList
    local ____opt_51 = archive.statData.sevenDayInfo
    local rewardCount = ____opt_51 and ____opt_51.reward_count or 0
    self:bindVisible(
        path .. ".sevenSign",
        function() return rewardCount < cfgLength end
    )
    self:bindClick(
        path .. ".sevenSign",
        function()
            dialogs:show(DSevenSign, {})
        end
    )
    self:bindClick(
        path .. ".battlepass",
        function()
            dialogs:show(DLadderInfo, {})
        end
    )
    self:bindVisible(
        path .. ".battlepass",
        function()
            return true
        end
    )
    self:bindImage(
        "left.activity.battlepass",
        function()
            return ladderTournamentManager:getCurrentSeason().entryImg
        end
    )
    self:bindImage(
        "left.activity.battlepass.hover",
        function()
            return ladderTournamentManager:getCurrentSeason().entryImg
        end
    )
    self:bindPressImage(
        "left.activity.battlepass",
        function()
            return ladderTournamentManager:getCurrentSeason().entryImg
        end
    )
end
function DGameHall.prototype.initIdleReward(self)
    local path = "left.idleReward"
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
function DGameHall.prototype.initBattlePass(self)
    local id = 2
    local path = "left.battlepass"
    self:bindClick(
        path,
        function(____, ui, p)
            dialogs:show(DS1Battlepass, {})
        end
    )
    self:bindVisible(
        path,
        function()
            local config = battlepassSeasonConfigMap[id]
            local now = Date:now()
            return now > config.startTime and now < config.endTime
        end
    )
end
function DGameHall.prototype.initLiveActive(self)
    self:bindClick(
        "left.liveActive.img",
        function(____, ui, p)
            UIUtils:gotoUrl("https://www.wjx.cn/vm/tWc3Prr.aspx?utm_source=kkduizhan")
        end
    )
end
function DGameHall.prototype.initDailyTask(self)
    self:bindText(
        "right.dailyTask.des",
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
        "right.dailyTask.finish",
        function()
            return archive.statInfo:getDailyCompletePVPGameCount() >= 1
        end
    )
    self:bindVisible(
        "right.dailyTask",
        function()
            return newbieTaskManager:getCurrentTask() == nil
        end
    )
end
function DGameHall.prototype.initNewbieTask(self)
    self:bindText(
        "right.newbieTask.title",
        function()
            local task = newbieTaskManager:getCurrentTask()
            if task == nil then
                return ""
            end
            if newbieTaskManager:canGetReward() then
                return ((task.taskName.value .. "#8ffe34（") .. i18n["local"](i18n, "点击领取")) .. "）"
            else
                return task.taskName.value
            end
        end
    )
    self:bindText(
        "right.newbieTask.des",
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
        "right.newbieTask.finish",
        function()
            return false
        end
    )
    self:bindText(
        "right.newbieTask.reward",
        function()
            local task = newbieTaskManager:getCurrentTask()
            if task == nil then
                return ""
            end
            return task.rewardDes.value
        end
    )
    self:bindVisible(
        "right.newbieTask",
        function()
            return newbieTaskManager:getCurrentTask() ~= nil
        end
    )
    self:bindClick(
        "right.newbieTask",
        function()
            if newbieTaskManager:canGetReward() then
                newbieTaskManager:receiveReward()
            else
                DTips:show(i18n["local"](i18n, "任务未完成，不可领取"))
            end
        end
    )
end
function DGameHall.prototype.initBgm(self)
end
function DGameHall.prototype.onHide(self)
    localData.inGameHall = false
    idleRewardManager:stop()
    battlepassManager:stopTimer()
end
function DGameHall.prototype.onShow(self)
    localData.inGameHall = true
end
function DGameHall.prototype.initView(self)
    self:initLog()
    self:initTeam()
    self:initPages()
    self:initCareer()
    self:initQQ()
    self:initActivity()
    self:initIdleReward()
    self:initBattlePass()
    self:initDailyTask()
    self:initNewbieTask()
    self:initLiveActive()
    self:initBgm()
end
return ____exports
