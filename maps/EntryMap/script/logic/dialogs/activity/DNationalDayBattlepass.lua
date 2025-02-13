local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 14,["40"] = 14,["41"] = 15,["42"] = 15,["43"] = 16,["44"] = 16,["45"] = 17,["46"] = 17,["47"] = 83,["48"] = 83,["49"] = 83,["50"] = 83,["52"] = 83,["53"] = 84,["54"] = 93,["55"] = 95,["56"] = 591,["57"] = 83,["58"] = 97,["59"] = 98,["60"] = 97,["61"] = 101,["62"] = 119,["64"] = 121,["65"] = 121,["66"] = 122,["67"] = 123,["68"] = 124,["69"] = 125,["70"] = 125,["71"] = 125,["72"] = 125,["73"] = 126,["74"] = 126,["75"] = 126,["76"] = 126,["77"] = 127,["78"] = 127,["79"] = 127,["80"] = 127,["81"] = 128,["82"] = 128,["83"] = 128,["84"] = 128,["85"] = 129,["86"] = 129,["87"] = 129,["88"] = 130,["89"] = 129,["90"] = 129,["91"] = 121,["94"] = 134,["95"] = 134,["96"] = 134,["97"] = 135,["98"] = 134,["99"] = 134,["100"] = 137,["101"] = 137,["102"] = 137,["103"] = 138,["104"] = 137,["105"] = 137,["106"] = 140,["107"] = 140,["108"] = 140,["109"] = 141,["110"] = 140,["111"] = 140,["112"] = 144,["113"] = 144,["114"] = 144,["115"] = 145,["116"] = 144,["117"] = 144,["118"] = 148,["119"] = 149,["120"] = 150,["121"] = 101,["122"] = 154,["123"] = 155,["124"] = 155,["125"] = 155,["126"] = 156,["127"] = 155,["128"] = 155,["129"] = 158,["130"] = 158,["131"] = 158,["132"] = 159,["133"] = 158,["134"] = 158,["135"] = 161,["136"] = 161,["137"] = 161,["138"] = 162,["139"] = 161,["140"] = 161,["141"] = 164,["142"] = 164,["143"] = 164,["144"] = 165,["145"] = 166,["146"] = 164,["147"] = 164,["148"] = 154,["149"] = 170,["150"] = 172,["151"] = 173,["152"] = 174,["153"] = 175,["154"] = 176,["155"] = 177,["156"] = 178,["157"] = 179,["158"] = 179,["159"] = 179,["160"] = 179,["161"] = 179,["162"] = 179,["163"] = 179,["164"] = 179,["165"] = 190,["166"] = 172,["167"] = 193,["168"] = 193,["169"] = 193,["170"] = 194,["171"] = 193,["172"] = 193,["173"] = 196,["174"] = 196,["175"] = 196,["176"] = 197,["177"] = 198,["179"] = 200,["180"] = 196,["181"] = 196,["182"] = 202,["183"] = 202,["184"] = 202,["185"] = 203,["186"] = 202,["187"] = 202,["188"] = 206,["189"] = 206,["190"] = 206,["192"] = 211,["193"] = 212,["194"] = 212,["195"] = 212,["196"] = 212,["197"] = 213,["198"] = 214,["199"] = 212,["200"] = 212,["202"] = 217,["205"] = 206,["206"] = 206,["207"] = 221,["208"] = 221,["209"] = 221,["210"] = 222,["211"] = 223,["212"] = 224,["213"] = 225,["214"] = 225,["215"] = 225,["216"] = 225,["217"] = 225,["218"] = 225,["219"] = 225,["220"] = 225,["221"] = 225,["222"] = 221,["223"] = 231,["224"] = 232,["225"] = 221,["226"] = 221,["227"] = 236,["228"] = 237,["229"] = 239,["230"] = 240,["231"] = 241,["232"] = 242,["233"] = 243,["234"] = 244,["235"] = 245,["236"] = 246,["237"] = 247,["238"] = 248,["239"] = 249,["240"] = 250,["243"] = 254,["244"] = 255,["245"] = 255,["246"] = 255,["247"] = 256,["248"] = 256,["249"] = 256,["250"] = 257,["251"] = 258,["252"] = 259,["253"] = 260,["254"] = 261,["255"] = 262,["256"] = 263,["257"] = 264,["258"] = 265,["259"] = 266,["260"] = 267,["261"] = 267,["262"] = 267,["263"] = 267,["264"] = 267,["265"] = 267,["266"] = 267,["267"] = 267,["268"] = 267,["269"] = 267,["270"] = 267,["271"] = 267,["272"] = 267,["273"] = 267,["274"] = 267,["275"] = 267,["276"] = 267,["277"] = 242,["278"] = 285,["280"] = 286,["281"] = 286,["282"] = 287,["283"] = 286,["286"] = 289,["287"] = 241,["289"] = 291,["290"] = 291,["292"] = 292,["293"] = 293,["294"] = 294,["295"] = 295,["297"] = 297,["298"] = 298,["299"] = 298,["300"] = 298,["301"] = 299,["302"] = 300,["304"] = 302,["305"] = 298,["306"] = 298,["307"] = 304,["308"] = 304,["309"] = 304,["310"] = 305,["311"] = 306,["313"] = 308,["314"] = 304,["315"] = 304,["316"] = 310,["317"] = 310,["318"] = 310,["319"] = 311,["320"] = 310,["321"] = 310,["322"] = 313,["323"] = 313,["324"] = 313,["325"] = 313,["326"] = 314,["327"] = 314,["328"] = 314,["329"] = 314,["330"] = 315,["331"] = 315,["332"] = 315,["333"] = 315,["334"] = 316,["335"] = 316,["336"] = 316,["337"] = 316,["338"] = 317,["339"] = 317,["340"] = 317,["341"] = 317,["342"] = 318,["343"] = 318,["344"] = 318,["345"] = 318,["346"] = 319,["347"] = 319,["348"] = 319,["349"] = 319,["350"] = 320,["351"] = 320,["352"] = 320,["353"] = 320,["354"] = 321,["355"] = 321,["356"] = 321,["357"] = 321,["358"] = 323,["359"] = 323,["360"] = 323,["361"] = 323,["362"] = 324,["363"] = 324,["364"] = 324,["365"] = 324,["366"] = 326,["367"] = 326,["368"] = 326,["369"] = 327,["370"] = 328,["371"] = 329,["372"] = 330,["373"] = 330,["374"] = 330,["375"] = 330,["376"] = 330,["377"] = 330,["378"] = 330,["379"] = 330,["380"] = 330,["381"] = 326,["382"] = 336,["383"] = 337,["384"] = 326,["385"] = 326,["386"] = 340,["387"] = 340,["388"] = 340,["389"] = 341,["390"] = 342,["391"] = 343,["392"] = 344,["393"] = 344,["394"] = 344,["395"] = 344,["396"] = 344,["397"] = 344,["398"] = 344,["399"] = 344,["400"] = 344,["401"] = 340,["402"] = 350,["403"] = 351,["404"] = 340,["405"] = 340,["406"] = 354,["407"] = 354,["408"] = 354,["409"] = 355,["410"] = 354,["411"] = 354,["414"] = 291,["417"] = 360,["418"] = 361,["419"] = 362,["420"] = 363,["421"] = 365,["422"] = 366,["423"] = 367,["424"] = 367,["425"] = 367,["426"] = 368,["427"] = 368,["428"] = 364,["429"] = 364,["430"] = 364,["431"] = 364,["432"] = 364,["433"] = 364,["434"] = 364,["435"] = 364,["436"] = 364,["437"] = 364,["438"] = 364,["439"] = 364,["440"] = 364,["441"] = 364,["442"] = 364,["443"] = 364,["444"] = 364,["445"] = 381,["446"] = 360,["447"] = 383,["448"] = 384,["449"] = 384,["450"] = 384,["451"] = 385,["452"] = 384,["453"] = 384,["454"] = 388,["455"] = 388,["456"] = 388,["457"] = 389,["458"] = 388,["459"] = 388,["460"] = 391,["461"] = 391,["462"] = 391,["463"] = 392,["464"] = 391,["465"] = 391,["466"] = 395,["467"] = 395,["468"] = 395,["469"] = 396,["470"] = 395,["471"] = 395,["472"] = 398,["473"] = 398,["474"] = 398,["475"] = 399,["476"] = 398,["477"] = 398,["478"] = 402,["479"] = 402,["480"] = 402,["481"] = 403,["482"] = 402,["483"] = 402,["484"] = 406,["485"] = 406,["486"] = 406,["487"] = 407,["488"] = 406,["489"] = 406,["490"] = 410,["491"] = 410,["492"] = 410,["493"] = 411,["494"] = 412,["495"] = 413,["496"] = 414,["497"] = 414,["498"] = 414,["499"] = 414,["500"] = 414,["501"] = 414,["502"] = 414,["503"] = 414,["504"] = 414,["505"] = 410,["506"] = 420,["507"] = 421,["508"] = 410,["509"] = 410,["510"] = 424,["511"] = 424,["512"] = 424,["513"] = 425,["514"] = 426,["515"] = 427,["516"] = 428,["517"] = 428,["518"] = 428,["519"] = 428,["520"] = 428,["521"] = 428,["522"] = 428,["523"] = 428,["524"] = 428,["525"] = 424,["526"] = 434,["527"] = 435,["528"] = 424,["529"] = 424,["530"] = 170,["531"] = 439,["532"] = 440,["533"] = 441,["534"] = 442,["535"] = 444,["536"] = 445,["537"] = 445,["538"] = 445,["539"] = 447,["540"] = 445,["541"] = 445,["542"] = 450,["543"] = 451,["544"] = 452,["545"] = 453,["546"] = 455,["547"] = 457,["548"] = 458,["549"] = 459,["550"] = 460,["551"] = 461,["552"] = 462,["553"] = 463,["555"] = 465,["556"] = 467,["557"] = 467,["558"] = 467,["559"] = 467,["560"] = 467,["561"] = 467,["562"] = 467,["563"] = 467,["564"] = 467,["565"] = 467,["566"] = 467,["567"] = 467,["568"] = 467,["569"] = 467,["570"] = 467,["571"] = 467,["572"] = 467,["573"] = 450,["574"] = 486,["575"] = 487,["576"] = 487,["577"] = 487,["578"] = 488,["579"] = 487,["580"] = 487,["581"] = 491,["582"] = 491,["583"] = 491,["584"] = 492,["585"] = 493,["586"] = 493,["588"] = 494,["589"] = 494,["592"] = 496,["593"] = 491,["594"] = 491,["595"] = 499,["596"] = 444,["598"] = 502,["599"] = 502,["600"] = 503,["601"] = 504,["602"] = 505,["603"] = 506,["604"] = 507,["605"] = 507,["606"] = 507,["607"] = 508,["608"] = 507,["609"] = 507,["611"] = 511,["612"] = 511,["613"] = 512,["614"] = 513,["615"] = 514,["616"] = 516,["617"] = 516,["618"] = 516,["619"] = 516,["620"] = 518,["621"] = 518,["622"] = 518,["623"] = 518,["624"] = 518,["625"] = 518,["626"] = 518,["627"] = 520,["628"] = 520,["629"] = 520,["630"] = 520,["631"] = 520,["632"] = 520,["633"] = 520,["634"] = 521,["635"] = 521,["636"] = 521,["637"] = 521,["638"] = 521,["639"] = 521,["640"] = 521,["641"] = 523,["642"] = 523,["643"] = 523,["644"] = 523,["645"] = 523,["646"] = 523,["647"] = 523,["649"] = 523,["650"] = 523,["651"] = 523,["652"] = 525,["653"] = 525,["654"] = 525,["655"] = 525,["656"] = 525,["657"] = 525,["658"] = 525,["660"] = 525,["661"] = 525,["662"] = 525,["663"] = 527,["664"] = 527,["665"] = 527,["666"] = 527,["667"] = 527,["668"] = 527,["669"] = 527,["670"] = 529,["671"] = 529,["672"] = 529,["673"] = 529,["674"] = 529,["675"] = 529,["676"] = 529,["677"] = 529,["678"] = 529,["679"] = 529,["680"] = 529,["681"] = 529,["682"] = 529,["683"] = 530,["684"] = 530,["685"] = 530,["686"] = 530,["687"] = 530,["688"] = 530,["689"] = 530,["691"] = 530,["692"] = 530,["693"] = 530,["694"] = 532,["695"] = 532,["696"] = 532,["697"] = 532,["698"] = 532,["699"] = 532,["700"] = 532,["701"] = 533,["702"] = 533,["703"] = 533,["704"] = 533,["705"] = 533,["706"] = 533,["707"] = 533,["708"] = 534,["709"] = 534,["710"] = 534,["711"] = 534,["712"] = 534,["713"] = 534,["714"] = 534,["715"] = 535,["716"] = 535,["717"] = 535,["718"] = 536,["719"] = 536,["720"] = 536,["721"] = 535,["722"] = 535,["723"] = 539,["724"] = 539,["725"] = 539,["726"] = 539,["727"] = 539,["728"] = 539,["729"] = 539,["730"] = 541,["731"] = 541,["732"] = 541,["733"] = 542,["734"] = 542,["735"] = 542,["737"] = 543,["738"] = 543,["739"] = 543,["741"] = 544,["742"] = 544,["743"] = 544,["745"] = 545,["746"] = 545,["747"] = 545,["749"] = 546,["750"] = 546,["751"] = 546,["753"] = 547,["754"] = 541,["755"] = 541,["756"] = 550,["757"] = 550,["758"] = 550,["759"] = 550,["760"] = 551,["763"] = 552,["764"] = 554,["765"] = 555,["766"] = 556,["767"] = 557,["768"] = 558,["769"] = 559,["770"] = 560,["772"] = 562,["775"] = 565,["777"] = 550,["778"] = 550,["779"] = 569,["780"] = 569,["781"] = 569,["782"] = 570,["785"] = 571,["786"] = 572,["787"] = 573,["788"] = 573,["789"] = 573,["790"] = 573,["791"] = 573,["792"] = 573,["793"] = 573,["794"] = 573,["795"] = 569,["796"] = 578,["797"] = 579,["798"] = 569,["799"] = 569,["800"] = 582,["801"] = 511,["804"] = 502,["807"] = 586,["808"] = 586,["809"] = 586,["810"] = 587,["811"] = 586,["812"] = 586,["813"] = 439,["814"] = 592,["815"] = 593,["816"] = 594,["817"] = 595,["818"] = 596,["819"] = 597,["821"] = 599,["823"] = 601,["824"] = 601,["825"] = 601,["826"] = 601,["827"] = 601,["828"] = 592,["829"] = 604,["830"] = 605,["831"] = 606,["832"] = 604,["833"] = 609,["834"] = 610,["835"] = 609});
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
local ____BattlepassManager = include("logic.archive.manager.BattlepassManager")
local battlepassManager = ____BattlepassManager.battlepassManager
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigList = ____GoodsConfig.goodsConfigList
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local getPropQuality = ____PropUtils.getPropQuality
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DMatch = include("logic.dialogs.DMatch")
local DMatch = ____DMatch.DMatch
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
local ____DInfoSevenSign = include("logic.dialogs.infos.DInfoSevenSign")
local DInfoSevenSign = ____DInfoSevenSign.DInfoSevenSign
local ____DAlert = include("logic.dialogs.tips.DAlert")
local DAlert = ____DAlert.DAlert
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DNationalDayBattlepass = __TS__Class()
local DNationalDayBattlepass = ____exports.DNationalDayBattlepass
DNationalDayBattlepass.name = "DNationalDayBattlepass"
__TS__ClassExtends(DNationalDayBattlepass, Dialog)
function DNationalDayBattlepass.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 1, battlePassId = 1}
    self.battlePassId = 1
    self.isBuyedExp = false
    self.eventId = 0
end
function DNationalDayBattlepass.prototype.onCreate(self)
    self:initView()
end
function DNationalDayBattlepass.prototype.initView(self)
    local list = {"国庆总览", "狂欢积分", "国庆通行证"}
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            local idx = index + 1
            local path = "root.center.left.list.btns_" .. tostring(idx)
            self:bindText(
                path .. ".normal.title",
                function() return element end
            )
            self:bindText(
                path .. ".select.title",
                function() return element end
            )
            self:bindText(
                path .. ".hover.title",
                function() return element end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.tab == idx end
            )
            self:bindClick(
                path,
                function()
                    self.data.tab = idx
                end
            )
            index = index + 1
        end
    end
    self:bindVisible(
        "root.center.overview",
        function()
            return self.data.tab == 1
        end
    )
    self:bindVisible(
        "root.center.score",
        function()
            return self.data.tab == 2
        end
    )
    self:bindVisible(
        "root.center.pass",
        function()
            return self.data.tab == 3
        end
    )
    self:bindClick(
        "root.center.close",
        function()
            self:hide()
        end
    )
    self:initOverview()
    self:initPass()
    self:initScore()
end
function DNationalDayBattlepass.prototype.initOverview(self)
    self:bindClick(
        "root.center.overview.jump",
        function()
            self.data.tab = 2
        end
    )
    self:bindClick(
        "root.center.overview.jump_1",
        function()
            self.data.tab = 3
        end
    )
    self:bindClick(
        "root.center.overview.jump_2",
        function()
            UIUtils:gotoQQ()
        end
    )
    self:bindClick(
        "root.center.overview.jump_3",
        function()
            self:hide()
            dialogs:show(DMatch, {})
        end
    )
end
function DNationalDayBattlepass.prototype.initPass(self)
    local data = self:compute(function()
        local cfg = battlepassManager:getCfg(self.data.battlePassId)
        local isPayed = battlepassManager:isPayed(self.data.battlePassId)
        local level = battlepassManager:getLevel(self.data.battlePassId)
        local exp = battlepassManager:getExp(self.data.battlePassId)
        local needExp = battlepassManager:getNeedExp(self.data.battlePassId)
        local alreadyGetLevel = battlepassManager:getAlreadyGetFreeLevel(self.data.battlePassId)
        local temp = {
            id = self.data.battlePassId,
            level = level,
            exp = exp,
            needExp = needExp,
            alreadyGetLevel = alreadyGetLevel,
            isPayed = isPayed
        }
        return temp
    end)
    self:bindText(
        "root.center.pass.level.level",
        function()
            return "" .. tostring(data.value.level)
        end
    )
    self:bindText(
        "root.center.pass.exp_label",
        function()
            if data.value.exp >= data.value.needExp then
                return (("#00ff00" .. tostring(data.value.exp)) .. "/") .. tostring(data.value.needExp)
            end
            return (tostring(data.value.exp) .. "/") .. tostring(data.value.needExp)
        end
    )
    self:bindProgress(
        "root.center.pass.exp",
        function()
            return data.value.exp / data.value.needExp * 100
        end
    )
    self:bindClick(
        "root.center.pass.levelUp",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if not self.isBuyedExp then
                    DAlert:accessBuy(
                        "100钻石",
                        "100点经验",
                        function()
                            battlepassManager:buyExp(self.data.battlePassId)
                            self.isBuyedExp = true
                        end
                    )
                else
                    battlepassManager:buyExp(self.data.battlePassId)
                end
            end)
        end
    )
    self:bindMouse(
        "root.center.pass.levelUp",
        function()
            local ui = self:getUI("root.center.pass.levelUp")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:show(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = "购买战令经验",
                    des = "100钻石兑换100点战令经验"
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
    local ui = self:getUI("root.center.pass.list")
    local childrens = ui:get_childs()
    local level2 = battlepassManager:getUncycleMaxRewardLevel(self.data.battlePassId)
    local ____repeat = 5
    local dataList = self:compute(function()
        local function func(____, idx)
            local alreadyGetFreeLevel = battlepassManager:getAlreadyGetFreeLevel(self.data.battlePassId)
            local alreadyGetPayLevel = battlepassManager:getAlreadyGetPayLevel(self.data.battlePassId)
            local nowLevel = battlepassManager:getLevel(self.data.battlePassId)
            local isPayed = battlepassManager:isPayed(self.data.battlePassId)
            local level = idx + 1
            if level2 < level then
                if nowLevel > level2 then
                    level = (level - 1) % ____repeat + 1 + (nowLevel - ((nowLevel - 1) % ____repeat + 1))
                end
            end
            local rewardCfg = battlepassManager:getRewardCfg(self.data.battlePassId, level)
            local ____getPropIcon_4 = getPropIcon
            local ____opt_0 = rewardCfg and rewardCfg.propId[1]
            local freeIcon = ____getPropIcon_4(nil, ____opt_0 and ____opt_0.id or 0)
            local ____getPropIcon_9 = getPropIcon
            local ____opt_5 = rewardCfg and rewardCfg.payPropId[1]
            local payIcon = ____getPropIcon_9(nil, ____opt_5 and ____opt_5.id or 0)
            local freeCount = rewardCfg and rewardCfg.num[1] or 0
            local payCount = rewardCfg and rewardCfg.payNum[1] or 0
            local freeCanGet = alreadyGetFreeLevel < level and level <= nowLevel
            local payCanGet = isPayed and alreadyGetPayLevel < level and level <= nowLevel
            local freeIsGet = alreadyGetFreeLevel >= level
            local payIsGet = isPayed and alreadyGetPayLevel >= level
            local freeName = rewardCfg and rewardCfg.name.value or ""
            local freeDesc = rewardCfg and rewardCfg.des.value or ""
            local payName = rewardCfg and rewardCfg.payName.value or ""
            local payDesc = rewardCfg and rewardCfg.payDes.value or ""
            return {
                level = level,
                name = tostring(level) .. "级",
                freeIcon = freeIcon,
                payIcon = payIcon,
                freeCount = freeCount,
                payCount = payCount,
                freeIsGet = freeIsGet,
                payIsGet = payIsGet,
                freeCanGet = freeCanGet,
                payCanGet = payCanGet,
                freeName = freeName,
                freeDesc = freeDesc,
                payName = payName,
                payDesc = payDesc,
                isPayed = isPayed
            }
        end
        local result = {}
        do
            local i = 0
            while i < #childrens do
                result[#result + 1] = func(nil, i)
                i = i + 1
            end
        end
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            do
                local element = childrens[i + 1]
                local idx = i
                if dataList.value[idx + 1] == nil or element == nil then
                    goto __continue36
                end
                local path = "root.center.pass.list." .. element:get_name()
                self:bindText(
                    path .. ".levelBg.normal",
                    function()
                        if dataList.value[idx + 1].level > level2 then
                            return i18n["local"](i18n, "循环") .. tostring((dataList.value[idx + 1].level - 1) % 5 + 1)
                        end
                        return "" .. tostring(dataList.value[idx + 1].level)
                    end
                )
                self:bindText(
                    path .. ".levelBg.select.select",
                    function()
                        if dataList.value[idx + 1].level > level2 then
                            return i18n["local"](i18n, "循环") .. tostring((dataList.value[idx + 1].level - 1) % 5 + 1)
                        end
                        return "" .. tostring(dataList.value[idx + 1].level)
                    end
                )
                self:bindVisible(
                    path .. ".levelBg.select",
                    function()
                        return dataList.value[idx + 1].level == data.value.level
                    end
                )
                self:bindImage(
                    path .. ".free.reward.icon",
                    function() return dataList.value[idx + 1].freeIcon end
                )
                self:bindImage(
                    path .. ".pay.reward.icon",
                    function() return dataList.value[idx + 1].payIcon end
                )
                self:bindText(
                    path .. ".free.reward.count",
                    function() return "x" .. tostring(dataList.value[idx + 1].freeCount) end
                )
                self:bindText(
                    path .. ".pay.reward.count",
                    function() return "x" .. tostring(dataList.value[idx + 1].payCount) end
                )
                self:bindVisible(
                    path .. ".free.canGet",
                    function() return dataList.value[idx + 1].freeCanGet end
                )
                self:bindVisible(
                    path .. ".free.reward.isGet",
                    function() return dataList.value[idx + 1].freeIsGet end
                )
                self:bindVisible(
                    path .. ".pay.canGet",
                    function() return dataList.value[idx + 1].payCanGet end
                )
                self:bindVisible(
                    path .. ".pay.reward.isGet",
                    function() return dataList.value[idx + 1].payIsGet end
                )
                self:bindVisible(
                    path .. ".pay.reward.locked",
                    function() return not dataList.value[idx + 1].isPayed end
                )
                self:bindVisible(
                    path .. ".free.disable",
                    function() return data.value.level < dataList.value[idx + 1].level end
                )
                self:bindVisible(
                    path .. ".pay.disable",
                    function() return data.value.level < dataList.value[idx + 1].level end
                )
                self:bindMouse(
                    path .. ".free",
                    function()
                        local ui = self:getUI(path .. ".free")
                        local x = ui:get_absolute_x()
                        local y = ui:get_absolute_y()
                        dialogs:show(
                            DInfoSevenSign,
                            {
                                x = x,
                                y = y + ui:get_real_height() / 2,
                                name = dataList.value[idx + 1].freeName,
                                des = dataList.value[idx + 1].freeDesc
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DInfoSevenSign)
                    end
                )
                self:bindMouse(
                    path .. ".pay",
                    function()
                        local ui = self:getUI(path .. ".pay")
                        local x = ui:get_absolute_x()
                        local y = ui:get_absolute_y()
                        dialogs:show(
                            DInfoSevenSign,
                            {
                                x = x,
                                y = y + ui:get_real_height() / 2,
                                name = dataList.value[idx + 1].payName,
                                des = dataList.value[idx + 1].payDesc
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DInfoSevenSign)
                    end
                )
                self:bindClick(
                    path,
                    function()
                        battlepassManager:reward(self.data.battlePassId)
                    end
                )
            end
            ::__continue36::
            i = i + 1
        end
    end
    local maxData = self:compute(function()
        local maxLevel = battlepassManager:getUncycleMaxRewardLevel(self.data.battlePassId)
        local maxLevelCfg = battlepassManager:getRewardCfg(self.data.battlePassId, maxLevel)
        local isPayed = battlepassManager:isPayed(self.data.battlePassId)
        local ____maxLevel_44 = maxLevel
        local ____temp_45 = tostring(maxLevel) .. "级"
        local ____getPropIcon_26 = getPropIcon
        local ____opt_22 = maxLevelCfg and maxLevelCfg.propId[1]
        local ____getPropIcon_26_result_46 = ____getPropIcon_26(nil, ____opt_22 and ____opt_22.id or 0)
        local ____getPropIcon_31 = getPropIcon
        local ____opt_27 = maxLevelCfg and maxLevelCfg.payPropId[1]
        local maxData = {
            level = ____maxLevel_44,
            name = ____temp_45,
            freeIcon = ____getPropIcon_26_result_46,
            payIcon = ____getPropIcon_31(nil, ____opt_27 and ____opt_27.id or 0),
            freeCount = maxLevelCfg and maxLevelCfg.num[1] or 0,
            payCount = maxLevelCfg and maxLevelCfg.payNum[1] or 0,
            freeCanGet = false,
            payCanGet = false,
            freeIsGet = false,
            payIsGet = false,
            freeName = maxLevelCfg and maxLevelCfg.name.value or "",
            freeDesc = maxLevelCfg and maxLevelCfg.des.value or "",
            payName = maxLevelCfg and maxLevelCfg.payName.value or "",
            payDesc = maxLevelCfg and maxLevelCfg.payDes.value or "",
            isPayed = isPayed
        }
        return maxData
    end)
    local maxPath = "root.center.pass.max"
    self:bindText(
        maxPath .. ".levelBg.normal",
        function()
            return maxData.value.name
        end
    )
    self:bindImage(
        maxPath .. ".free.reward.icon",
        function()
            return maxData.value.freeIcon
        end
    )
    self:bindText(
        maxPath .. ".free.reward.count",
        function()
            return "x" .. tostring(maxData.value.freeCount)
        end
    )
    self:bindImage(
        maxPath .. ".pay.reward.icon",
        function()
            return maxData.value.payIcon
        end
    )
    self:bindText(
        maxPath .. ".pay.reward.count",
        function()
            return "x" .. tostring(maxData.value.payCount)
        end
    )
    self:bindVisible(
        maxPath .. ".pay.reward.locked",
        function()
            return not maxData.value.isPayed
        end
    )
    self:bindVisible(
        maxPath,
        function()
            return data.value.level < maxData.value.level
        end
    )
    self:bindMouse(
        maxPath .. ".free",
        function()
            local ui = self:getUI(maxPath .. ".free")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:show(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = maxData.value.freeName,
                    des = maxData.value.freeDesc
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
    self:bindMouse(
        maxPath .. ".pay",
        function()
            local ui = self:getUI(maxPath .. ".pay")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:show(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = maxData.value.payName,
                    des = maxData.value.payDesc
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
end
function DNationalDayBattlepass.prototype.initScore(self)
    local ui = self:getUI("root.center.score.list")
    local idx = 0
    local childrens = ui:get_childs()
    local dataList = self:compute(function()
        local list = __TS__ArrayFilter(
            goodsConfigList,
            function(____, a)
                return (a.pos == 0 or not steamUtils:isSteam() and a.pos == 1 or steamUtils:isSteam() and a.pos == 2) and (a.type == 800 and a.unlockType == 5 and a.unlockValue[1] == self.data.battlePassId)
            end
        )
        local function func(____, idx)
            local cfg = list[idx + 1]
            local shopInfo = archive.shopData.shops["" .. tostring(cfg.id)]
            local cur_count = shopInfo ~= nil and shopInfo.buy_count or 0
            local name = cfg.name.value
            local icon = shopManager:getIcon(cfg.id)
            local quality = getPropQuality(nil, cfg.propId)
            local limit_count = cfg.limitCount
            local show_limit_label = true
            if limit_count == 0 then
                limit_count = 99999999
                show_limit_label = false
            end
            local costId = cfg.cost
            return {
                cfg = cfg,
                visible = true,
                show_limit_label = show_limit_label,
                cur_count = cur_count,
                limit_count = limit_count,
                icon = icon,
                price = cfg.price,
                lock = false,
                lock_tips = "",
                name = name,
                quality = quality,
                sell_out = cur_count >= limit_count,
                isLimit = cur_count >= limit_count,
                count = cfg.propCount,
                costId = costId
            }
        end
        local result = {}
        __TS__ArrayForEach(
            list,
            function(____, a, idx)
                result[#result + 1] = func(nil, idx)
            end
        )
        __TS__ArraySort(
            result,
            function(____, a, b)
                if a.sell_out ~= b.sell_out then
                    if b.sell_out then
                        return -1
                    end
                    if a.sell_out then
                        return 1
                    end
                end
                return a.cfg.id - b.cfg.id
            end
        )
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local childs = element:get_childs()
            local path1 = "root.center.score.list." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #dataList.value > temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = (path1 .. ".") .. cld:get_name()
                    local temp_idx = idx
                    self:bindVisible(
                        path,
                        function() return dataList.value[temp_idx + 1] ~= nil and dataList.value[temp_idx + 1].visible end
                    )
                    self:bindImage(
                        path .. ".info.icon",
                        function()
                            local ____opt_47 = dataList.value[temp_idx + 1]
                            return ____opt_47 and ____opt_47.icon or 0
                        end
                    )
                    self:bindText(
                        path .. ".info.name",
                        function()
                            local ____opt_49 = dataList.value[temp_idx + 1]
                            return ____opt_49 and ____opt_49.name or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.count",
                        function()
                            local ____opt_51 = dataList.value[temp_idx + 1]
                            return "x" .. tostring(____opt_51 and ____opt_51.count or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_53 = dataList.value[temp_idx + 1]
                            local ____temp_55 = ____opt_53 and ____opt_53.sell_out
                            if ____temp_55 == nil then
                                ____temp_55 = false
                            end
                            return ____temp_55
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_56 = dataList.value[temp_idx + 1]
                            local ____temp_58 = ____opt_56 and ____opt_56.lock
                            if ____temp_58 == nil then
                                ____temp_58 = false
                            end
                            return ____temp_58
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_59 = dataList.value[temp_idx + 1]
                            return ____opt_59 and ____opt_59.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".info.limit",
                        function()
                            local ____i18n_69 = i18n
                            local ____i18n_format_70 = i18n.format
                            local ____opt_61 = dataList.value[temp_idx + 1]
                            local ____temp_65 = ____opt_61 and ____opt_61.limit_count or 0
                            local ____opt_63 = dataList.value[temp_idx + 1]
                            local ____temp_68 = ____temp_65 - (____opt_63 and ____opt_63.cur_count or 0)
                            local ____opt_66 = dataList.value[temp_idx + 1]
                            return ____i18n_format_70(____i18n_69, "限购${count}/${limit}", {limit = ____temp_68, count = ____opt_66 and ____opt_66.limit_count or 0})
                        end
                    )
                    self:bindVisible(
                        path .. ".info.limit",
                        function()
                            local ____opt_71 = dataList.value[temp_idx + 1]
                            local ____temp_73 = ____opt_71 and ____opt_71.show_limit_label
                            if ____temp_73 == nil then
                                ____temp_73 = false
                            end
                            return ____temp_73
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_74 = dataList.value[temp_idx + 1]
                            return "" .. tostring(____opt_74 and ____opt_74.price or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_76 = dataList.value[temp_idx + 1]
                            return (____opt_76 and ____opt_76.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_78 = dataList.value[temp_idx + 1]
                            return (____opt_78 and ____opt_78.price or 0) == 0
                        end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function()
                            local ____getPropIcon_82 = getPropIcon
                            local ____opt_80 = dataList.value[temp_idx + 1]
                            return ____getPropIcon_82(nil, ____opt_80 and ____opt_80.costId or 0)
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.disable",
                        function()
                            local ____opt_83 = dataList.value[temp_idx + 1]
                            return ____opt_83 and ____opt_83.isLimit
                        end
                    )
                    self:bindImage(
                        path .. ".info.bg",
                        function()
                            local ____opt_85 = dataList.value[temp_idx + 1]
                            if (____opt_85 and ____opt_85.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_87 = dataList.value[temp_idx + 1]
                            if (____opt_87 and ____opt_87.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_89 = dataList.value[temp_idx + 1]
                            if (____opt_89 and ____opt_89.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_91 = dataList.value[temp_idx + 1]
                            if (____opt_91 and ____opt_91.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_93 = dataList.value[temp_idx + 1]
                            if (____opt_93 and ____opt_93.quality) == 4 then
                                return 134248468
                            end
                            return 134237313
                        end
                    )
                    self:bindAction(
                        path .. ".buy",
                        "左键-点击",
                        function()
                            if dataList.value[temp_idx + 1] == nil then
                                return
                            end
                            local cfg = dataList.value[temp_idx + 1].cfg
                            if shopManager:isLimit(cfg.id) then
                                DTips:show(i18n["local"](i18n, "无法购买"))
                            elseif not shopManager:isEnough(cfg.id) then
                                if cfg.cost == 1 or cfg.cost == 0 then
                                    DTips:show(i18n["local"](i18n, "金币不足"))
                                elseif cfg.cost == 2 then
                                    DTips:show(i18n["local"](i18n, "钻石不足"))
                                else
                                    DTips:show(i18n["local"](i18n, "道具不足"))
                                end
                            else
                                shopManager:buy(cfg.id)
                            end
                        end
                    )
                    self:bindMouse(
                        path .. ".info",
                        function()
                            if dataList.value[temp_idx + 1] == nil then
                                return
                            end
                            local cfg = dataList.value[temp_idx + 1].cfg
                            local ui = self:getUI(path)
                            dialogs:showRepeat(
                                DHelpItem,
                                {
                                    x = ui:get_absolute_x(),
                                    y = ui:get_absolute_y() + 20,
                                    des = cfg.des.value
                                }
                            )
                        end,
                        function()
                            dialogs:hide(DHelpItem)
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
    self:bindText(
        "root.center.score.score.value",
        function()
            return "" .. tostring(archive.playerInfo:getResource(102))
        end
    )
end
function DNationalDayBattlepass.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    local nowLevel = battlepassManager:getLevel(self.data.battlePassId)
    local progress = 0
    if nowLevel >= 30 then
        progress = 100
    else
        progress = nowLevel / (36 - 6) * 100
    end
    GameAPI.set_list_view_percent(
        LOCAL.PLAYER.handle,
        self:getUI("root.center.pass.list").handle,
        progress
    )
end
function DNationalDayBattlepass.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DNationalDayBattlepass.prototype.escHide(self)
    self:hide()
end
return ____exports
