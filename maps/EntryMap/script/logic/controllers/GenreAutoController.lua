local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ObjectKeys = ____lualib.__TS__ObjectKeys
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayPush = ____lualib.__TS__ArrayPush
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 2,["20"] = 3,["21"] = 3,["22"] = 4,["23"] = 4,["24"] = 5,["25"] = 5,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 7,["30"] = 7,["31"] = 8,["32"] = 8,["33"] = 9,["34"] = 9,["35"] = 10,["36"] = 10,["37"] = 11,["38"] = 11,["39"] = 12,["40"] = 12,["41"] = 13,["42"] = 13,["43"] = 15,["44"] = 15,["45"] = 15,["47"] = 17,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 37,["56"] = 40,["57"] = 43,["58"] = 46,["59"] = 15,["60"] = 50,["61"] = 51,["63"] = 53,["64"] = 53,["65"] = 54,["66"] = 53,["70"] = 56,["71"] = 56,["72"] = 57,["73"] = 56,["76"] = 59,["77"] = 60,["78"] = 61,["79"] = 62,["80"] = 63,["82"] = 65,["83"] = 65,["84"] = 65,["85"] = 65,["86"] = 66,["87"] = 66,["88"] = 66,["89"] = 67,["90"] = 67,["91"] = 66,["92"] = 66,["93"] = 69,["94"] = 69,["95"] = 70,["96"] = 71,["97"] = 72,["99"] = 74,["100"] = 74,["103"] = 78,["104"] = 50,["105"] = 85,["106"] = 87,["107"] = 87,["108"] = 87,["109"] = 88,["110"] = 87,["111"] = 87,["112"] = 90,["114"] = 90,["118"] = 93,["119"] = 93,["120"] = 93,["121"] = 93,["122"] = 93,["123"] = 93,["124"] = 93,["125"] = 93,["126"] = 102,["127"] = 103,["128"] = 104,["129"] = 107,["130"] = 107,["131"] = 107,["132"] = 108,["133"] = 109,["134"] = 110,["135"] = 110,["137"] = 111,["138"] = 111,["140"] = 107,["141"] = 107,["142"] = 115,["143"] = 117,["144"] = 118,["145"] = 119,["147"] = 125,["149"] = 127,["151"] = 128,["152"] = 128,["154"] = 129,["155"] = 130,["156"] = 131,["157"] = 132,["158"] = 133,["159"] = 133,["162"] = 135,["163"] = 135,["164"] = 136,["165"] = 137,["166"] = 138,["167"] = 135,["170"] = 140,["173"] = 128,["176"] = 142,["177"] = 143,["178"] = 144,["179"] = 145,["180"] = 146,["182"] = 149,["184"] = 155,["185"] = 85,["186"] = 158,["187"] = 160,["188"] = 162,["189"] = 163,["190"] = 164,["191"] = 165,["192"] = 166,["193"] = 166,["194"] = 166,["195"] = 167,["196"] = 167,["198"] = 168,["199"] = 166,["200"] = 166,["202"] = 173,["203"] = 174,["204"] = 175,["205"] = 176,["206"] = 177,["207"] = 178,["209"] = 181,["210"] = 158,["211"] = 186,["212"] = 200,["213"] = 201,["214"] = 203,["215"] = 204,["216"] = 204,["217"] = 204,["218"] = 204,["219"] = 206,["220"] = 207,["222"] = 208,["223"] = 208,["224"] = 209,["225"] = 210,["226"] = 211,["228"] = 213,["230"] = 208,["234"] = 217,["235"] = 218,["237"] = 219,["239"] = 220,["241"] = 221,["242"] = 221,["243"] = 221,["244"] = 221,["246"] = 222,["248"] = 223,["249"] = 223,["250"] = 223,["251"] = 223,["253"] = 224,["255"] = 225,["256"] = 225,["257"] = 225,["258"] = 225,["260"] = 226,["262"] = 227,["263"] = 227,["264"] = 227,["265"] = 227,["267"] = 228,["269"] = 229,["270"] = 229,["271"] = 229,["272"] = 229,["274"] = 230,["276"] = 231,["277"] = 231,["278"] = 231,["279"] = 231,["281"] = 232,["283"] = 233,["284"] = 233,["285"] = 233,["286"] = 233,["288"] = 234,["290"] = 235,["291"] = 235,["292"] = 235,["293"] = 235,["295"] = 236,["297"] = 237,["298"] = 237,["299"] = 237,["300"] = 237,["306"] = 242,["307"] = 186,["308"] = 245,["309"] = 246,["310"] = 247,["311"] = 248,["312"] = 249,["313"] = 250,["314"] = 251,["315"] = 251,["316"] = 251,["317"] = 251,["318"] = 252,["319"] = 253,["321"] = 255,["322"] = 257,["324"] = 260,["326"] = 262,["327"] = 262,["328"] = 263,["329"] = 264,["330"] = 265,["331"] = 266,["332"] = 266,["333"] = 266,["334"] = 267,["337"] = 268,["338"] = 268,["340"] = 269,["341"] = 266,["342"] = 266,["343"] = 262,["346"] = 272,["347"] = 273,["348"] = 274,["350"] = 275,["351"] = 276,["352"] = 278,["353"] = 279,["355"] = 281,["356"] = 282,["357"] = 283,["362"] = 287,["363"] = 288,["364"] = 289,["365"] = 289,["366"] = 289,["367"] = 289,["368"] = 290,["369"] = 291,["371"] = 293,["372"] = 295,["374"] = 299,["375"] = 245,["376"] = 302,["377"] = 303,["378"] = 309,["379"] = 311,["380"] = 312,["381"] = 315,["382"] = 316,["383"] = 316,["384"] = 316,["385"] = 317,["386"] = 318,["388"] = 320,["389"] = 320,["390"] = 316,["391"] = 316,["392"] = 323,["394"] = 324,["395"] = 325,["396"] = 326,["397"] = 326,["398"] = 326,["399"] = 326,["400"] = 327,["401"] = 327,["403"] = 329,["404"] = 331,["405"] = 332,["407"] = 334,["408"] = 334,["409"] = 335,["410"] = 336,["411"] = 336,["412"] = 336,["413"] = 337,["414"] = 338,["416"] = 340,["417"] = 341,["419"] = 343,["420"] = 343,["421"] = 344,["422"] = 336,["423"] = 336,["424"] = 347,["425"] = 348,["426"] = 349,["427"] = 350,["428"] = 350,["430"] = 353,["436"] = 302,["437"] = 360,["439"] = 361,["440"] = 361,["441"] = 362,["442"] = 363,["443"] = 364,["445"] = 361,["448"] = 367,["449"] = 360,["450"] = 370,["452"] = 371,["453"] = 371,["454"] = 372,["455"] = 373,["456"] = 374,["458"] = 371,["461"] = 377,["462"] = 370,["463"] = 380,["464"] = 381,["465"] = 382,["466"] = 383,["467"] = 385,["468"] = 386,["469"] = 391,["470"] = 398,["472"] = 399,["473"] = 399,["475"] = 400,["476"] = 401,["477"] = 402,["478"] = 402,["480"] = 404,["483"] = 399,["486"] = 406,["487"] = 380,["488"] = 412,["489"] = 413,["490"] = 414,["491"] = 415,["492"] = 417,["493"] = 417,["494"] = 417,["495"] = 419,["496"] = 419,["498"] = 424,["499"] = 424,["501"] = 427,["502"] = 427,["504"] = 430,["505"] = 430,["507"] = 432,["508"] = 417,["509"] = 417,["510"] = 434,["511"] = 435,["513"] = 438,["514"] = 440,["515"] = 412,["516"] = 444,["517"] = 446,["518"] = 459,["519"] = 460,["520"] = 461,["522"] = 462,["526"] = 465,["527"] = 472,["528"] = 473,["529"] = 475,["531"] = 479,["532"] = 444,["533"] = 482,["534"] = 482,["535"] = 482,["537"] = 483,["538"] = 484,["539"] = 485,["540"] = 485,["542"] = 486,["544"] = 489,["545"] = 490,["547"] = 492,["548"] = 493,["550"] = 495,["551"] = 496,["552"] = 497,["553"] = 498,["554"] = 498,["555"] = 498,["556"] = 498,["558"] = 501,["559"] = 482,["560"] = 509,["561"] = 510,["562"] = 511,["563"] = 513,["565"] = 514,["566"] = 514,["567"] = 515,["568"] = 516,["569"] = 518,["571"] = 514,["575"] = 522,["576"] = 522,["577"] = 522,["578"] = 522,["579"] = 523,["580"] = 525,["582"] = 528,["583"] = 529,["584"] = 531,["585"] = 531,["587"] = 532,["589"] = 535,["590"] = 509,["591"] = 539,["592"] = 540,["593"] = 541,["594"] = 542,["595"] = 542,["596"] = 542,["597"] = 544,["598"] = 544,["600"] = 547,["601"] = 547,["603"] = 549,["604"] = 542,["605"] = 542,["606"] = 553,["607"] = 553,["609"] = 555,["610"] = 556,["611"] = 539,["612"] = 560,["613"] = 561,["614"] = 563,["615"] = 564,["616"] = 566,["617"] = 567,["619"] = 568,["620"] = 568,["622"] = 569,["623"] = 574,["624"] = 574,["625"] = 574,["626"] = 575,["627"] = 576,["629"] = 578,["630"] = 579,["632"] = 581,["633"] = 582,["635"] = 584,["636"] = 586,["638"] = 589,["639"] = 589,["641"] = 591,["642"] = 574,["643"] = 574,["644"] = 593,["645"] = 593,["647"] = 595,["648"] = 596,["649"] = 597,["650"] = 598,["652"] = 600,["653"] = 602,["654"] = 610,["655"] = 611,["656"] = 612,["658"] = 614,["660"] = 615,["661"] = 615,["662"] = 616,["663"] = 617,["664"] = 618,["665"] = 619,["666"] = 620,["669"] = 623,["670"] = 624,["671"] = 615,["674"] = 628,["675"] = 629,["676"] = 630,["679"] = 568,["682"] = 634,["683"] = 637,["684"] = 638,["686"] = 640,["687"] = 641,["689"] = 643,["690"] = 644,["692"] = 646,["693"] = 647,["695"] = 649,["696"] = 650,["698"] = 654,["699"] = 655,["700"] = 657,["702"] = 658,["703"] = 659,["704"] = 660,["705"] = 661,["706"] = 663,["708"] = 667,["712"] = 670,["713"] = 560,["714"] = 674,["715"] = 675,["716"] = 676,["717"] = 677,["718"] = 679,["719"] = 686,["720"] = 687,["721"] = 688,["722"] = 691,["723"] = 693,["724"] = 694,["725"] = 695,["726"] = 697,["727"] = 698,["729"] = 700,["730"] = 701,["732"] = 703,["733"] = 704,["735"] = 708,["736"] = 709,["737"] = 709,["738"] = 711,["740"] = 714,["741"] = 719,["742"] = 722,["744"] = 723,["745"] = 723,["747"] = 724,["748"] = 725,["749"] = 726,["750"] = 726,["752"] = 728,["755"] = 723,["758"] = 730,["759"] = 674,["760"] = 742,["761"] = 742,["762"] = 742,["764"] = 744,["765"] = 745,["766"] = 747,["767"] = 747,["768"] = 747,["769"] = 749,["770"] = 749,["772"] = 752,["773"] = 752,["775"] = 757,["776"] = 757,["778"] = 760,["779"] = 760,["781"] = 763,["782"] = 763,["784"] = 765,["785"] = 747,["786"] = 747,["787"] = 769,["788"] = 770,["789"] = 770,["790"] = 770,["791"] = 770,["792"] = 770,["793"] = 770,["794"] = 770,["795"] = 773,["796"] = 776,["797"] = 777,["798"] = 780,["801"] = 782,["802"] = 782,["804"] = 783,["805"] = 783,["807"] = 784,["811"] = 782,["814"] = 788,["817"] = 791,["818"] = 793,["819"] = 742,["820"] = 797,["821"] = 799,["822"] = 797,["823"] = 802,["824"] = 803,["825"] = 802,["826"] = 808});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____AutomaticSelectionRuleConfig = include("logic.configs.AutomaticSelectionRuleConfig")
local automaticSelectionRuleConfigList = ____AutomaticSelectionRuleConfig.automaticSelectionRuleConfigList
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local genreConfigList = ____GenreConfig.genreConfigList
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____GenreRandomRuleConfig = include("logic.configs.GenreRandomRuleConfig")
local genreRandomRuleConfigList = ____GenreRandomRuleConfig.genreRandomRuleConfigList
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____GenreUtils = include("logic.utils.GenreUtils")
local genreUtils = ____GenreUtils.genreUtils
____exports.GenreAutoController = __TS__Class()
local GenreAutoController = ____exports.GenreAutoController
GenreAutoController.name = "GenreAutoController"
function GenreAutoController.prototype.____constructor(self)
    self.tempData = {
        currentLevel = 0,
        maxLevel = 0,
        excludes = {},
        genreTags = {},
        genreLevels = {},
        skillList = {}
    }
    self.genreConfigMap = {}
    self.genreConfigMap_genre = {}
    self.genreConfigMap_rarity = {}
    self.genreConfigMap_label = {}
end
function GenreAutoController.prototype.initConfig(self)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    do
        local index = 0
        while index <= 12 do
            self.genreConfigMap_genre[index] = {}
            index = index + 1
        end
    end
    do
        local index = 1
        while index <= 4 do
            self.genreConfigMap_rarity[index] = {}
            index = index + 1
        end
    end
    for ____, cfg in ipairs(genreConfigList) do
        local g1 = cfg.genre[1]
        local g2 = -1
        if #cfg.genre == 2 then
            g2 = cfg.genre[2]
        end
        if __TS__ArrayFindIndex(
            genreData.disableList,
            function(____, a) return a == g1 or a == g2 end
        ) == -1 then
            __TS__ArrayForEach(
                cfg.genre,
                function(____, a)
                    local ____self_genreConfigMap_genre_a_0 = self.genreConfigMap_genre[a]
                    ____self_genreConfigMap_genre_a_0[#____self_genreConfigMap_genre_a_0 + 1] = cfg
                end
            )
            local ____self_genreConfigMap_rarity_cfg_rarity_1 = self.genreConfigMap_rarity[cfg.rarity]
            ____self_genreConfigMap_rarity_cfg_rarity_1[#____self_genreConfigMap_rarity_cfg_rarity_1 + 1] = cfg
            self.genreConfigMap[cfg.id] = cfg
            if self.genreConfigMap_label[cfg.label] == nil then
                self.genreConfigMap_label[cfg.label] = {}
            end
            local ____self_genreConfigMap_label_cfg_label_2 = self.genreConfigMap_label[cfg.label]
            ____self_genreConfigMap_label_cfg_label_2[#____self_genreConfigMap_label_cfg_label_2 + 1] = cfg
        end
    end
    genreUtils:init()
end
function GenreAutoController.prototype.getGenreByMonster(self, level)
    local cfg = __TS__ArrayFind(
        automaticSelectionRuleConfigList,
        function(____, a)
            return a.levelRange[1] <= level and a.levelRange[2] >= level
        end
    )
    if cfg == nil then
        error(
            "automaticSelectionRuleConfig对应的随机规则配置信息没有找到: " .. tostring(level),
            0
        )
    end
    self.tempData = {
        currentLevel = 0,
        maxLevel = level,
        excludes = {},
        genreTags = {},
        genreLevels = {},
        skillList = {}
    }
    if cfg.rule == 1 then
        local list = self:selectRandom(level)
        local map = {}
        __TS__ArrayForEach(
            list,
            function(____, a)
                map[a.id] = 1
                for ____, g in ipairs(a.genre) do
                    if self.tempData.genreTags[g] == nil then
                        self.tempData.genreTags[g] = 0
                    end
                    local ____self_tempData_genreTags_3, ____g_4 = self.tempData.genreTags, g
                    ____self_tempData_genreTags_3[____g_4] = ____self_tempData_genreTags_3[____g_4] + a.rarity
                end
            end
        )
        self.tempData.skillList = map
        for q in pairs(self.tempData.genreTags) do
            local t = self.tempData.genreTags[q]
            self.tempData.genreLevels[q] = self:getLevel(t)
        end
        return self.tempData
    end
    local nextLv = 0
    do
        local index = #defaultConfig.genreLevel
        while index > 0 do
            do
                local element = defaultConfig.genreLevel[index]
                local lv = index
                local needCount = element
                local value = cfg["level" .. tostring(lv)]
                if value == 0 or value == nil then
                    goto __continue23
                end
                do
                    local k = 0
                    while k < value do
                        local data = self:chooseAGenre(needCount)
                        self:getGenreBy(needCount - data.tag, data.genre)
                        self.tempData.excludes[data.genre] = true
                        k = k + 1
                    end
                end
                nextLv = lv
            end
            ::__continue23::
            index = index - 1
        end
    end
    while self.tempData.currentLevel < self.tempData.maxLevel and #__TS__ObjectKeys(self.tempData.excludes) < 8 do
        local needCount = defaultConfig.genreLevel[nextLv]
        local data = self:chooseAGenre(needCount)
        self:getGenreBy(needCount - data.tag, data.genre)
        self.tempData.excludes[data.genre] = true
    end
    if self.tempData.currentLevel < self.tempData.maxLevel then
    end
    return self.tempData
end
function GenreAutoController.prototype.printAll(self)
    local str = ""
    local tags = {}
    for key in pairs(self.tempData.skillList) do
        local element = self.tempData.skillList[__TS__ParseInt(key)]
        local cfg = genreConfigMap[__TS__ParseInt(key)]
        __TS__ArrayForEach(
            cfg.genre,
            function(____, a)
                if tags[a] == nil then
                    tags[a] = 0
                end
                tags[a] = tags[a] + cfg.rarity * element
            end
        )
    end
    local totalLevel = 0
    for key in pairs(tags) do
        local element = tags[__TS__ParseInt(key)]
        local cfg = genreLevelConfigMap_genre[__TS__ParseInt(key)][1]
        totalLevel = totalLevel + self:getLevel(element)
        str = str .. ((((("流派【" .. tostring(cfg.name)) .. "】 tags: ") .. tostring(element)) .. " level: ") .. tostring(self:getLevel(element))) .. "\n"
    end
    str = (("总等级：" .. tostring(totalLevel)) .. "\n") .. str
end
function GenreAutoController.prototype.selectRandom(self, level)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local genre = random:randomList(genreData.enableList)
    local list = self.genreConfigMap_genre[genre]
    list = __TS__ArrayFilter(
        list,
        function(____, a) return a.rarity == 1 end
    )
    local single = {}
    local double = {}
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            if #element.genre == 1 then
                single[#single + 1] = element
            else
                double[#double + 1] = element
            end
            index = index + 1
        end
    end
    repeat
        local ____switch40 = level
        local ____cond40 = ____switch40 == 1
        if ____cond40 then
            return {random:randomList(single)}
        end
        ____cond40 = ____cond40 or ____switch40 == 2
        if ____cond40 then
            return {
                random:randomList(single),
                random:randomList(double)
            }
        end
        ____cond40 = ____cond40 or ____switch40 == 3
        if ____cond40 then
            return __TS__ArrayConcat(
                {random:randomList(single)},
                random:randomListNum(double, 2)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 4
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 2),
                random:randomListNum(double, 2)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 5
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 2),
                random:randomListNum(double, 3)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 6
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 2),
                random:randomListNum(double, 4)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 7
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 2),
                random:randomListNum(double, 5)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 8
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 3),
                random:randomListNum(double, 5)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 9
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 3),
                random:randomListNum(double, 6)
            )
        end
        ____cond40 = ____cond40 or ____switch40 == 10
        if ____cond40 then
            return __TS__ArrayConcat(
                random:randomListNum(single, 3),
                random:randomListNum(double, 7)
            )
        end
        do
            break
        end
    until true
    return {}
end
function GenreAutoController.prototype.chooseAGenre(self, needCount)
    local tempList = self.tempData.skillList
    local excludes = self.tempData.excludes
    local keys = __TS__ObjectKeys(tempList)
    if #keys == 0 then
        local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
        local newList = __TS__ArrayFilter(
            genreData.enableList,
            function(____, a) return not excludes[a] end
        )
        if not #newList then
            error("所有流派都随机空了!!!!!!", 0)
        end
        local genre = random:randomList(newList)
        return {genre = genre, tag = 0}
    end
    local genreMap = {}
    do
        local index = 0
        while index < #keys do
            local element = __TS__ParseInt(keys[index + 1])
            local cfg = genreConfigMap[element]
            local count = self.tempData.skillList[element]
            __TS__ArrayForEach(
                cfg.genre,
                function(____, a)
                    if excludes[a] then
                        return
                    end
                    if genreMap[a] == nil then
                        genreMap[a] = 0
                    end
                    genreMap[a] = genreMap[a] + cfg.rarity * count
                end
            )
            index = index + 1
        end
    end
    local max = -1
    local genre = 0
    for key in pairs(genreMap) do
        do
            local element = genreMap[key]
            if element >= needCount then
                excludes[__TS__ParseInt(key)] = true
                goto __continue49
            end
            if max < element then
                genre = __TS__ParseInt(key)
                max = element
            end
        end
        ::__continue49::
    end
    if genre == 0 then
        local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
        local newList = __TS__ArrayFilter(
            genreData.enableList,
            function(____, a) return not excludes[a] end
        )
        if not #newList then
            error("所有流派都随机空了!!!!!!", 0)
        end
        local genre = random:randomList(newList)
        return {genre = genre, tag = 0}
    end
    return {genre = genre, tag = max}
end
function GenreAutoController.prototype.getGenreBy(self, needCount, genre)
    local tempList = self.tempData.skillList
    local tag = 0
    local list = self.genreConfigMap_genre[genre]
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local map = {}
    __TS__ArrayForEach(
        list,
        function(____, a)
            if not map[a.rarity] then
                map[a.rarity] = {}
            end
            local ____map_a_rarity_5 = map[a.rarity]
            ____map_a_rarity_5[#____map_a_rarity_5 + 1] = a
        end
    )
    while needCount > tag do
        do
            local quality = self:getQuality(tag)
            local pool = map[quality]
            pool = __TS__ArrayFilter(
                pool,
                function(____, a) return tempList[a.id] == nil or tempList[a.id] < a.maxLevel end
            )
            if pool == nil or #pool == 0 then
                goto __continue59
            end
            local cfg = random:randomList(pool)
            if tempList[cfg.id] == nil then
                tempList[cfg.id] = 0
            end
            local ____tempList_6, ____cfg_id_7 = tempList, cfg.id
            ____tempList_6[____cfg_id_7] = ____tempList_6[____cfg_id_7] + 1
            tag = tag + quality
            __TS__ArrayForEach(
                cfg.genre,
                function(____, a)
                    if self.tempData.genreTags[a] == nil then
                        self.tempData.genreTags[a] = 0
                    end
                    if self.tempData.genreLevels[a] == nil then
                        self.tempData.genreLevels[a] = 0
                    end
                    local ____self_tempData_genreTags_8, ____a_9 = self.tempData.genreTags, a
                    ____self_tempData_genreTags_8[____a_9] = ____self_tempData_genreTags_8[____a_9] + quality
                    self.tempData.genreLevels[a] = self:getLevel(self.tempData.genreTags[a])
                end
            )
            self.tempData.currentLevel = 0
            for key in pairs(self.tempData.genreLevels) do
                local element = self.tempData.genreLevels[key]
                local ____self_tempData_10, ____currentLevel_11 = self.tempData, "currentLevel"
                ____self_tempData_10[____currentLevel_11] = ____self_tempData_10[____currentLevel_11] + element
            end
            if self.tempData.currentLevel >= self.tempData.maxLevel then
                break
            end
        end
        ::__continue59::
    end
end
function GenreAutoController.prototype.getLevel(self, tags)
    do
        local index = 0
        while index < #defaultConfig.genreLevel do
            local element = defaultConfig.genreLevel[index + 1]
            if element > tags then
                return index
            end
            index = index + 1
        end
    end
    return #defaultConfig.genreLevel
end
function GenreAutoController.prototype.getRule(self, tag)
    do
        local index = 1
        while index < #genreRandomRuleConfigList do
            local element = genreRandomRuleConfigList[index + 1]
            if element.tagNumber > tag then
                return genreRandomRuleConfigList[index]
            end
            index = index + 1
        end
    end
    return genreRandomRuleConfigList[#genreRandomRuleConfigList]
end
function GenreAutoController.prototype.getQuality(self, tag)
    local totalWeight = 0
    local rate = random:random()
    local rateList = {}
    local item = self:getRule(tag)
    __TS__ArrayPush(rateList, item.rarity1, item.rarity2, item.rarity3)
    totalWeight = totalWeight + (item.rarity1 + item.rarity2 + item.rarity3)
    local cur = 0
    do
        local index = 0
        while index < #rateList do
            do
                local element = rateList[index + 1]
                cur = cur + element / totalWeight
                if cur < rate then
                    goto __continue76
                end
                return index + 1
            end
            ::__continue76::
            index = index + 1
        end
    end
    return 1
end
function GenreAutoController.prototype.getGenreByLabel(self, playerId, label)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local list = __TS__ArrayFilter(
        self.genreConfigMap_label[label],
        function(____, a)
            if genreData.skillCount[a.id] == nil then
                return false
            end
            if playerGenre.skillLevels[a.id] and playerGenre.skillLevels[a.id] >= a.maxLevel then
                return false
            end
            if genreData.skillCount[a.id] == 0 then
                return false
            end
            if __TS__ArrayIndexOf(playerGenre.tempList, a.id) ~= -1 then
                return false
            end
            return true
        end
    )
    if #list == 0 then
        return self:getGenreByPlayer(playerId)
    end
    local config = random:randomList(list)
    return config.id
end
function GenreAutoController.prototype.getGenreByPlayer(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local genre = self:getRandomGenre(playerId)
    if genre == -1 then
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        error(
            (((((((("玩家" .. tostring(playerId)) .. "的所有流派都空了！！！>>>>>>>>label-") .. tostring(playerData.card_refresh_get_label)) .. ",rate ") .. tostring(playerData.card1_rate)) .. ",") .. tostring(playerData.card2_rate)) .. ",") .. tostring(playerData.card3_rate),
            0
        )
    end
    local quality = self:getRandomQuality(playerId, genre)
    local id = self:getRandomSkill(playerId, genre, quality)
    if id == -1 then
        error("卡池空了", 0)
    end
    return id
end
function GenreAutoController.prototype.getGenreByBless(self, playerId, quality, genre)
    if quality == nil then
        quality = 0
    end
    if genre == 0 then
        local id = self:getColourGenre(playerId)
        if id ~= -1 then
            return id
        end
        genre = nil
    end
    if genre == nil then
        genre = self:getRandomGenre(playerId)
    end
    if quality == 0 then
        quality = self:getRandomQuality(playerId, genre)
    end
    local id = self:getRandomSkill(playerId, genre, quality)
    if id == -1 then
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        console:error(
            "卡池空了-2.0",
            vue.toRaw(playerData)
        )
    end
    return id
end
function GenreAutoController.prototype.getRandomCardType(self, playerId)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    if #playerGenre.tempList ~= 0 then
        do
            local index = 0
            while index < #playerGenre.tempList do
                local element = playerGenre.tempList[index + 1]
                if genreConfigMap[element].rarity == 4 then
                    return false
                end
                index = index + 1
            end
        end
    end
    local list = __TS__ArrayFilter(
        self.genreConfigMap_rarity[4],
        function(____, a) return genreData.skillCount[a.id] ~= 0 end
    )
    if #list == 0 then
        return false
    end
    local rate = random:random()
    local needRate = 0
    if playerGenre.refreshCount == 0 then
        needRate = self:firstRandomRate()
    else
        needRate = self:defaultRandomRate()
    end
    return rate < needRate
end
function GenreAutoController.prototype.getColourGenre(self, playerId)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local poolList = __TS__ArrayFilter(
        self.genreConfigMap_rarity[4],
        function(____, a)
            if genreData.skillCount[a.id] == 0 then
                return false
            end
            if __TS__ArrayIndexOf(playerGenre.tempList, a.id) ~= -1 then
                return false
            end
            return true
        end
    )
    if #poolList == 0 then
        return -1
    end
    local config = random:randomList(poolList)
    return config.id
end
function GenreAutoController.prototype.getRandomGenre(self, playerId)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    playerGenre.tempWeights = {}
    playerGenre.tempTotalWeight = 0
    do
        local index = 0
        while index < #genreData.enableList do
            do
                local element = genreData.enableList[index + 1]
                local list = __TS__ArrayFilter(
                    self.genreConfigMap_genre[element],
                    function(____, a)
                        if playerData.card1_rate == 0 and a.rarity == 1 then
                            return false
                        end
                        if playerData.card2_rate == 0 and a.rarity == 2 then
                            return false
                        end
                        if playerData.card3_rate == 0 and a.rarity == 3 then
                            return false
                        end
                        if #playerGenre.tempList > 0 and __TS__ArrayIndexOf(playerGenre.tempList, a.id) ~= -1 then
                            return false
                        end
                        if genreData.skillCount[a.id] == nil or genreData.skillCount[a.id] == 0 then
                            return false
                        end
                        return playerGenre.skillLevels[a.id] == nil or playerGenre.skillLevels[a.id] < a.maxLevel
                    end
                )
                if #list == 0 then
                    goto __continue108
                end
                local map = playerGenre.skillByQualitys[element]
                local totalTag = 0
                if map ~= nil then
                    totalTag = map[1] + map[2] * 2 + map[3] * 3
                end
                local cfg = genreLevelConfigMap_genre[element][1]
                local weight = cfg.weightBase
                local w = 0
                if playerData.behaveTree ~= nil and __TS__ArrayIndexOf(playerData.genre, cfg.genre) ~= -1 then
                    w = playerGenre.weightChange
                end
                weight = weight + math.max(0, w)
                do
                    local k = 1
                    while k < #cfg.weightInterval do
                        local element = cfg.weightInterval[k + 1]
                        local before = cfg.weightInterval[k]
                        if element > totalTag then
                            local step = math.max(0, totalTag - before - 1)
                            weight = weight + step * cfg.weightChange[k]
                            break
                        end
                        local step = math.max(0, element - before - 1)
                        weight = weight + step * cfg.weightChange[k]
                        k = k + 1
                    end
                end
                weight = math.min(cfg.weightMax, weight)
                playerGenre.tempWeights[element] = weight
                playerGenre.tempTotalWeight = playerGenre.tempTotalWeight + weight
            end
            ::__continue108::
            index = index + 1
        end
    end
    if playerGenre.tempTotalWeight == 0 then
        if playerData.card1_rate == 1 and playerData.card2_rate == 1 and playerData.card3_rate == 1 then
            console:warn("所有卡池都光了？？？？所有卡池都光了？？？？所有卡池都光了？？？？")
        end
        if playerData.card1_rate == 0 then
            playerData.card1_rate = 1
        end
        if playerData.card2_rate == 0 then
            playerData.card2_rate = 1
        end
        if playerData.card3_rate == 0 then
            playerData.card3_rate = 1
        end
        local genre = self:getRandomGenre(playerId)
        return genre
    end
    local rate = random:random()
    local curWeight = 0
    for key in pairs(playerGenre.tempWeights) do
        do
            local element = playerGenre.tempWeights[key]
            local weight = element / playerGenre.tempTotalWeight
            curWeight = curWeight + weight
            if curWeight < rate then
                goto __continue125
            end
            return __TS__ParseInt(key)
        end
        ::__continue125::
    end
    return playerGenre.genresSortedList[1]
end
function GenreAutoController.prototype.getRandomQuality(self, playerId, genreType)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local totalTag = playerGenre.genreTagCount[genreType]
    local totalWeight = 0
    local rate = random:random()
    local rateList = {}
    local item = self:getRule(totalTag)
    local q1 = item.rarity1
    local q2 = item.rarity2
    local q3 = item.rarity3
    if playerData.card1_rate >= 0 then
        q1 = item.rarity1 * playerData.card1_rate
    end
    if playerData.card2_rate >= 0 then
        q2 = item.rarity2 * playerData.card2_rate
    end
    if playerData.card3_rate >= 0 then
        q3 = item.rarity3 * playerData.card3_rate
    end
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_12 = bigBlessData and bigBlessData.bigBless
    if (____opt_12 and ____opt_12.id) == 11 then
        q3 = q3 * 2
    end
    __TS__ArrayPush(rateList, q1, q2, q3)
    totalWeight = totalWeight + (q1 + q2 + q3)
    local cur = 0
    do
        local index = 0
        while index < #rateList do
            do
                local element = rateList[index + 1]
                cur = cur + element / totalWeight
                if cur < rate then
                    goto __continue133
                end
                return index + 1
            end
            ::__continue133::
            index = index + 1
        end
    end
    return 1
end
function GenreAutoController.prototype.getRandomSkill(self, playerId, genreType, quality, filterList)
    if filterList == nil then
        filterList = {}
    end
    local playerGenre = writeableDatas.players[playerId]:getOrCreateSingle(PlayerGenreData)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local poolList = __TS__ArrayFilter(
        self.genreConfigMap_genre[genreType],
        function(____, a)
            if genreData.skillCount[a.id] == nil then
                return false
            end
            if a.rarity ~= quality then
                return false
            end
            if playerGenre.skillLevels[a.id] and playerGenre.skillLevels[a.id] >= a.maxLevel then
                return false
            end
            if genreData.skillCount[a.id] == 0 then
                return false
            end
            if __TS__ArrayIndexOf(playerGenre.tempList, a.id) ~= -1 then
                return false
            end
            return true
        end
    )
    local str = ""
    __TS__ArrayForEach(
        poolList,
        function(____, a)
            str = str .. tostring(a.name) .. ", "
            return str
        end
    )
    if #poolList == 0 then
        filterList[#filterList + 1] = quality
        if #filterList >= 3 then
            return -1
        else
            do
                local index = 0
                while index < 3 do
                    do
                        if __TS__ArrayIndexOf(filterList, index + 1) ~= -1 then
                            goto __continue146
                        end
                        quality = index + 1
                        break
                    end
                    ::__continue146::
                    index = index + 1
                end
            end
            return self:getRandomSkill(playerId, genreType, quality, filterList)
        end
    end
    local config = random:randomList(poolList)
    return config.id
end
function GenreAutoController.prototype.firstRandomRate(self)
    return 0
end
function GenreAutoController.prototype.defaultRandomRate(self)
    return defaultConfig["后续彩虹卡概率"]
end
____exports.genreAutoController = make(nil, ____exports.GenreAutoController)
return ____exports
