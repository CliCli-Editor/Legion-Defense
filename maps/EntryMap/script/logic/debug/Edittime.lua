local ____lualib = include("lualib_bundle")
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ObjectKeys = ____lualib.__TS__ObjectKeys
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFlat = ____lualib.__TS__ArrayFlat
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["14"] = 59,["15"] = 1,["16"] = 1,["17"] = 1,["18"] = 2,["19"] = 2,["20"] = 2,["21"] = 3,["22"] = 3,["23"] = 3,["24"] = 4,["25"] = 4,["26"] = 4,["27"] = 5,["28"] = 5,["29"] = 5,["30"] = 6,["31"] = 6,["32"] = 7,["33"] = 7,["34"] = 7,["35"] = 8,["36"] = 8,["37"] = 8,["38"] = 9,["39"] = 9,["40"] = 9,["41"] = 9,["42"] = 9,["43"] = 9,["44"] = 9,["45"] = 9,["46"] = 10,["47"] = 10,["48"] = 12,["49"] = 12,["50"] = 14,["51"] = 14,["52"] = 15,["53"] = 15,["54"] = 15,["55"] = 59,["56"] = 60,["57"] = 73,["59"] = 76,["60"] = 77,["61"] = 77,["62"] = 79,["63"] = 79,["64"] = 79,["65"] = 79,["66"] = 77,["67"] = 88,["68"] = 88,["69"] = 88,["70"] = 88,["71"] = 88,["72"] = 88,["73"] = 88,["74"] = 88,["75"] = 77,["76"] = 97,["77"] = 97,["78"] = 97,["79"] = 97,["80"] = 97,["81"] = 97,["82"] = 77,["83"] = 77,["84"] = 106,["86"] = 109,["87"] = 110,["88"] = 111,["89"] = 111,["90"] = 111,["91"] = 111,["92"] = 122,["94"] = 125,["95"] = 126,["96"] = 127,["97"] = 127,["98"] = 127,["99"] = 130,["100"] = 130,["101"] = 130,["102"] = 131,["103"] = 131,["104"] = 133,["105"] = 134,["106"] = 134,["107"] = 135,["108"] = 135,["109"] = 135,["110"] = 136,["111"] = 136,["112"] = 136,["113"] = 139,["114"] = 139,["115"] = 139,["116"] = 139,["117"] = 136,["118"] = 135,["119"] = 134,["120"] = 131,["121"] = 131,["122"] = 145,["123"] = 130,["124"] = 127,["125"] = 127,["126"] = 127,["127"] = 150,["129"] = 153,["130"] = 154,["131"] = 155,["132"] = 155,["133"] = 155,["134"] = 158,["135"] = 158,["136"] = 158,["137"] = 159,["138"] = 159,["139"] = 161,["140"] = 162,["141"] = 162,["142"] = 163,["143"] = 163,["144"] = 163,["145"] = 164,["146"] = 164,["147"] = 164,["148"] = 167,["149"] = 167,["150"] = 167,["151"] = 167,["152"] = 164,["153"] = 163,["154"] = 162,["155"] = 159,["156"] = 159,["157"] = 173,["158"] = 174,["159"] = 174,["160"] = 174,["161"] = 174,["162"] = 175,["163"] = 175,["164"] = 175,["165"] = 176,["166"] = 176,["167"] = 176,["168"] = 179,["169"] = 179,["170"] = 179,["171"] = 179,["172"] = 176,["173"] = 175,["174"] = 174,["175"] = 174,["176"] = 183,["177"] = 184,["178"] = 184,["179"] = 184,["180"] = 184,["181"] = 185,["182"] = 185,["183"] = 185,["184"] = 186,["185"] = 186,["186"] = 186,["187"] = 189,["188"] = 189,["189"] = 189,["190"] = 189,["191"] = 186,["192"] = 185,["193"] = 184,["194"] = 184,["196"] = 194,["197"] = 158,["198"] = 155,["199"] = 155,["200"] = 155,["201"] = 199,["203"] = 202,["204"] = 203,["205"] = 204,["206"] = 205,["207"] = 206,["208"] = 207,["209"] = 209,["210"] = 209,["211"] = 209,["212"] = 212,["213"] = 213,["214"] = 213,["215"] = 214,["216"] = 214,["217"] = 214,["218"] = 215,["219"] = 218,["220"] = 214,["221"] = 213,["222"] = 220,["223"] = 221,["224"] = 221,["225"] = 221,["226"] = 213,["227"] = 212,["228"] = 227,["229"] = 227,["230"] = 228,["231"] = 228,["232"] = 228,["233"] = 229,["234"] = 232,["235"] = 228,["236"] = 227,["237"] = 234,["238"] = 235,["239"] = 235,["240"] = 235,["241"] = 227,["242"] = 212,["243"] = 241,["244"] = 241,["245"] = 242,["246"] = 242,["247"] = 242,["248"] = 243,["249"] = 246,["250"] = 242,["251"] = 241,["252"] = 248,["253"] = 249,["254"] = 249,["255"] = 249,["256"] = 241,["257"] = 212,["258"] = 255,["259"] = 255,["260"] = 256,["261"] = 256,["262"] = 256,["263"] = 257,["264"] = 260,["265"] = 256,["266"] = 255,["267"] = 262,["268"] = 263,["269"] = 263,["270"] = 263,["271"] = 255,["272"] = 212,["273"] = 270,["274"] = 270,["275"] = 271,["276"] = 271,["277"] = 271,["278"] = 272,["279"] = 275,["280"] = 271,["281"] = 270,["282"] = 277,["283"] = 278,["284"] = 278,["285"] = 280,["286"] = 280,["287"] = 280,["288"] = 278,["289"] = 270,["290"] = 212,["291"] = 209,["292"] = 209,["293"] = 209,["294"] = 288,["296"] = 291,["297"] = 294,["298"] = 296,["299"] = 297,["300"] = 298,["301"] = 300,["302"] = 300,["303"] = 302,["304"] = 302,["305"] = 302,["306"] = 300,["307"] = 300,["309"] = 316,["310"] = 316,["311"] = 316,["312"] = 316,["313"] = 316,["314"] = 316,["315"] = 330,["317"] = 333,["318"] = 334,["319"] = 336,["320"] = 337,["321"] = 337,["322"] = 337,["323"] = 337,["324"] = 337,["325"] = 338,["326"] = 338,["327"] = 338,["328"] = 338,["330"] = 349,["331"] = 349,["332"] = 349,["333"] = 349,["334"] = 349,["335"] = 349,["336"] = 362,["338"] = 365,["339"] = 366,["341"] = 368,["342"] = 368,["343"] = 369,["344"] = 370,["345"] = 370,["346"] = 370,["347"] = 370,["348"] = 368,["351"] = 381,["352"] = 381,["353"] = 381,["354"] = 381,["355"] = 381,["356"] = 381,["357"] = 393,["359"] = 398,["360"] = 399,["361"] = 400,["362"] = 401,["363"] = 401,["364"] = 401,["365"] = 401,["367"] = 403,["368"] = 404,["369"] = 404,["370"] = 404,["371"] = 404,["373"] = 406,["374"] = 407,["375"] = 407,["376"] = 407,["377"] = 407,["379"] = 409,["380"] = 410,["381"] = 410,["382"] = 410,["383"] = 410,["385"] = 412,["386"] = 429,["388"] = 432,["389"] = 433,["390"] = 434,["392"] = 436,["393"] = 437,["395"] = 439,["396"] = 439,["398"] = 440,["400"] = 442,["401"] = 442,["403"] = 443,["405"] = 445,["406"] = 445,["408"] = 446,["410"] = 448,["413"] = 450,["417"] = 626,["418"] = 627,["419"] = 629,["420"] = 630,["421"] = 630,["422"] = 630,["423"] = 630,["424"] = 632,["425"] = 633,["426"] = 634,["427"] = 635,["428"] = 636,["429"] = 637,["430"] = 638,["431"] = 639,["433"] = 642,["435"] = 645,["436"] = 646,["437"] = 648,["438"] = 649,["439"] = 649,["440"] = 649,["441"] = 649,["442"] = 651,["443"] = 653,["444"] = 653,["445"] = 653,["446"] = 654,["447"] = 655,["449"] = 657,["450"] = 657,["452"] = 653,["453"] = 653,["454"] = 661,["456"] = 18,["457"] = 19,["458"] = 21,["459"] = 22,["460"] = 22,["461"] = 24,["462"] = 24,["463"] = 24,["464"] = 22,["465"] = 22,["466"] = 28,["467"] = 29,["468"] = 29,["469"] = 29,["470"] = 30,["471"] = 30,["472"] = 30,["473"] = 30,["474"] = 29,["475"] = 28,["476"] = 35,["477"] = 35,["478"] = 35,["479"] = 36,["480"] = 36,["481"] = 36,["482"] = 36,["483"] = 35,["484"] = 28,["485"] = 41,["486"] = 41,["487"] = 41,["488"] = 42,["489"] = 42,["490"] = 42,["491"] = 42,["492"] = 41,["493"] = 28,["494"] = 22,["495"] = 22,["496"] = 50,["497"] = 50,["498"] = 50,["499"] = 50,["500"] = 56,["501"] = 18,["502"] = 455,["503"] = 456,["504"] = 457,["505"] = 458,["506"] = 459,["508"] = 461,["510"] = 455,["511"] = 465,["512"] = 466,["513"] = 467,["514"] = 468,["515"] = 465,["516"] = 471,["517"] = 472,["518"] = 473,["519"] = 474,["520"] = 475,["521"] = 477,["522"] = 479,["523"] = 479,["524"] = 479,["525"] = 479,["526"] = 481,["527"] = 482,["528"] = 482,["529"] = 482,["530"] = 482,["531"] = 482,["532"] = 482,["533"] = 482,["534"] = 482,["535"] = 482,["536"] = 482,["537"] = 482,["538"] = 482,["539"] = 482,["540"] = 482,["541"] = 482,["542"] = 497,["543"] = 497,["544"] = 497,["545"] = 482,["546"] = 482,["547"] = 482,["548"] = 482,["549"] = 502,["551"] = 504,["552"] = 507,["553"] = 505,["555"] = 507,["556"] = 508,["557"] = 509,["558"] = 510,["559"] = 511,["560"] = 511,["563"] = 513,["565"] = 515,["566"] = 516,["567"] = 517,["568"] = 518,["569"] = 519,["570"] = 519,["573"] = 521,["575"] = 523,["576"] = 524,["577"] = 525,["578"] = 526,["579"] = 527,["580"] = 527,["583"] = 529,["585"] = 531,["586"] = 532,["587"] = 533,["588"] = 534,["589"] = 535,["590"] = 535,["594"] = 540,["595"] = 540,["596"] = 540,["597"] = 540,["598"] = 540,["599"] = 540,["600"] = 540,["601"] = 541,["602"] = 541,["603"] = 541,["604"] = 541,["605"] = 541,["606"] = 541,["607"] = 541,["608"] = 542,["609"] = 543,["610"] = 543,["611"] = 543,["612"] = 543,["613"] = 543,["614"] = 543,["615"] = 543,["616"] = 543,["617"] = 543,["618"] = 543,["619"] = 545,["620"] = 545,["621"] = 545,["622"] = 545,["623"] = 545,["624"] = 545,["625"] = 545,["626"] = 545,["627"] = 545,["628"] = 545,["629"] = 547,["630"] = 548,["631"] = 549,["632"] = 549,["633"] = 550,["634"] = 551,["635"] = 551,["637"] = 553,["638"] = 553,["640"] = 556,["641"] = 557,["642"] = 559,["643"] = 559,["644"] = 560,["645"] = 471,["646"] = 563,["647"] = 564,["648"] = 565,["649"] = 567,["650"] = 563,["651"] = 570,["652"] = 571,["653"] = 572,["654"] = 573,["656"] = 574,["657"] = 574,["658"] = 575,["659"] = 576,["660"] = 577,["662"] = 579,["663"] = 580,["664"] = 582,["665"] = 582,["666"] = 583,["667"] = 585,["668"] = 585,["669"] = 586,["670"] = 588,["671"] = 589,["674"] = 574,["677"] = 594,["678"] = 570,["679"] = 597,["680"] = 598,["681"] = 599,["682"] = 600,["683"] = 601,["684"] = 602,["685"] = 603,["686"] = 597,["687"] = 606,["688"] = 607,["689"] = 606,["690"] = 610,["691"] = 611,["692"] = 610,["693"] = 614,["694"] = 615,["695"] = 614,["696"] = 618,["697"] = 619,["698"] = 618,["699"] = 622,["700"] = 623,["701"] = 622,["702"] = 664,["703"] = 665,["704"] = 666,["705"] = 667,["706"] = 668,["707"] = 664,["708"] = 671,["709"] = 672,["710"] = 673,["711"] = 674,["712"] = 675,["713"] = 671,["714"] = 678,["715"] = 679,["716"] = 680,["717"] = 681,["718"] = 682,["719"] = 678,["720"] = 685,["721"] = 686,["722"] = 687,["723"] = 689,["724"] = 691,["727"] = 694,["728"] = 695,["729"] = 697,["730"] = 698,["731"] = 699,["732"] = 700,["733"] = 701,["734"] = 702,["736"] = 705,["739"] = 708,["740"] = 709,["741"] = 710,["743"] = 712,["744"] = 713,["746"] = 716,["747"] = 717,["749"] = 721,["750"] = 685,["751"] = 725,["752"] = 726,["753"] = 727,["754"] = 729,["755"] = 731,["758"] = 734,["759"] = 734,["760"] = 734,["761"] = 734,["762"] = 735,["765"] = 739,["766"] = 740,["767"] = 741,["769"] = 743,["770"] = 744,["772"] = 747,["773"] = 748,["775"] = 751,["776"] = 725,["777"] = 755,["778"] = 756,["779"] = 757,["780"] = 759,["781"] = 761,["782"] = 755,["783"] = 764,["784"] = 765,["785"] = 766,["786"] = 768,["787"] = 770,["788"] = 764,["789"] = 773,["790"] = 774,["791"] = 775,["792"] = 777,["793"] = 779,["794"] = 773,["795"] = 782,["796"] = 783,["797"] = 784,["798"] = 786,["799"] = 788,["800"] = 782,["801"] = 791,["802"] = 792,["803"] = 793,["804"] = 795,["805"] = 797,["806"] = 791,["807"] = 800,["808"] = 801,["809"] = 802,["810"] = 804,["811"] = 800,["812"] = 807,["813"] = 808,["814"] = 809,["815"] = 811,["816"] = 811,["817"] = 807,["818"] = 814,["819"] = 815,["820"] = 816,["821"] = 818,["822"] = 819,["823"] = 821,["824"] = 822,["825"] = 822,["827"] = 814});
local ____exports = {}
local getSeedButton, genUnitView, genUnitLevel, genUnitBaseProperties, genUnitDefaultValues, genUnitSkill, genUnitEffects, genUnitStatus, genUnitTag, getAddUnitButton, getName, refreshSkill, refreshSimpleSkill
local ____DebugRoom = include("framework.debug.DebugRoom")
local genButton = ____DebugRoom.genButton
local getSimpleButton = ____DebugRoom.getSimpleButton
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local getFactions = ____PlayerUtils.getFactions
local player2Color = ____PlayerUtils.player2Color
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigList = ____EffectConfig.effectConfigList
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____KingConfig = include("logic.configs.KingConfig")
local kingConfigList = ____KingConfig.kingConfigList
local kingConfigMap = ____KingConfig.kingConfigMap
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigList = ____MonsterConfig.monsterConfigList
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local ____Property = include("logic.models.Property")
local PropertiesList = ____Property.PropertiesList
local ValuesList = ____Property.ValuesList
local propertyConfig2PropertyMap = ____Property.propertyConfig2PropertyMap
local _____84DD = ____Property["蓝"]
local _____84DD_91CF_4E0A_9650 = ____Property["蓝量上限"]
local _____8840 = ____Property["血"]
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local ____Status = include("logic.models.Status")
local StateList = ____Status.StateList
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____utils = include("framework.fight.utils")
local optimizePrecision = ____utils.optimizePrecision
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigList = ____GenreConfig.genreConfigList
local genreConfigMap = ____GenreConfig.genreConfigMap
function getSeedButton(self, seed)
    local createUnitBtn = {name = "随机数种子", action = "setSeedInEdittime", form = {title = "随机数种子", tips = "随机数种子", fields = {{name = "种子", type = "number", defaultValue = seed}}}}
    return createUnitBtn
end
function genUnitView(self, unit, index)
    local view = {
        name = getName(nil, unit.sourceId),
        buttons = {
            getSimpleButton(nil, "复制", "copyUnitInEdittime", index),
            genButton(nil, "流派", "addGenreInEdittime"):filed("单位", "readonly", index):filed("效果", "list", genreConfigList[1].id, "GenreConfig"):filed("数量", "number", 1):get(),
            getSimpleButton(nil, "删除", "delUnitInEdittime", index)
        },
        children = {
            genUnitLevel(nil, unit, index),
            genUnitBaseProperties(nil, unit, index),
            genUnitDefaultValues(nil, unit, index),
            genUnitSkill(nil, unit, index),
            genUnitEffects(nil, unit, index),
            genUnitStatus(nil, unit, index),
            genUnitTag(nil, unit, index)
        },
        draw = {
            name = getName(nil, unit.sourceId),
            pos = {x = unit.position.x, y = unit.position.y},
            color = player2Color[unit.playerId],
            moveId = index,
            moveAction = "moveUnitInEdittime"
        }
    }
    return view
end
function genUnitLevel(self, unit, index)
    local level = unit.level
    local view = {
        name = ("等级" .. "：") .. tostring(level),
        buttons = {{name = "等级", action = "modifyLevelInEdittime", form = {title = "修改等级", tips = "请输入正整数", fields = {{name = "索引", type = "readonly", defaultValue = index}, {name = "等级", type = "number", defaultValue = level}}}}}
    }
    return view
end
function genUnitBaseProperties(self, unit, index)
    local baseProperties = unit.baseProperties
    local view = {
        name = "基础属性",
        buttons = {},
        children = __TS__ArrayMap(
            PropertiesList,
            function(____, a)
                local v = {
                    name = (a.name .. "：") .. tostring(baseProperties[a.key] or 0),
                    buttons = {{
                        name = "修改",
                        action = "modifyPropertyInEdittime",
                        form = {
                            title = "修改属性",
                            tips = "请输入正整数",
                            fields = {
                                {name = "索引", type = "readonly", defaultValue = index},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, baseProperties[a.key])
                                }
                            }
                        }
                    }}
                }
                return v
            end
        ),
        isFolded = true
    }
    return view
end
function genUnitDefaultValues(self, unit, index)
    local values = unit.defaultValues
    local view = {
        name = "初始值",
        buttons = {},
        children = __TS__ArrayMap(
            ValuesList,
            function(____, a)
                local v = {
                    name = (a.name .. "：") .. tostring(values[a.key] or 0),
                    buttons = {{
                        name = "修改",
                        action = "modifyValueInEdittime",
                        form = {
                            title = "修改值",
                            tips = "请输入正整数",
                            fields = {
                                {name = "索引", type = "readonly", defaultValue = index},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, values[a.key])
                                }
                            }
                        }
                    }}
                }
                if a.name == "天赋_1" or a.name == "天赋_2" or a.name == "天赋_3" then
                    local ____v_buttons_0 = v.buttons
                    ____v_buttons_0[#____v_buttons_0 + 1] = {
                        name = "设置天赋",
                        action = "modifyTalentValueInEdittime",
                        form = {
                            title = "设置天赋",
                            tips = "请输入正整数",
                            fields = {
                                {name = "索引", type = "readonly", defaultValue = index},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, values[a.key])
                                }
                            }
                        }
                    }
                elseif a.name == "天赋_4" then
                    local ____v_buttons_1 = v.buttons
                    ____v_buttons_1[#____v_buttons_1 + 1] = {
                        name = "设置天赋",
                        action = "modifyTalent4ValueInEdittime",
                        form = {
                            title = "设置天赋4，请输入天赋ID",
                            tips = "请输入天赋id",
                            fields = {
                                {name = "索引", type = "readonly", defaultValue = index},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, values[a.key])
                                }
                            }
                        }
                    }
                end
                return v
            end
        ),
        isFolded = true
    }
    return view
end
function genUnitSkill(self, unit, index)
    local hidden = unit.hiddenSkills
    local normal = unit.normalSkills
    local command = unit.commandSkills
    local hero = unit.heroSkills
    local simpleSkills = unit.simpleSkills
    local view = {
        name = "技能",
        buttons = {},
        children = {
            {
                name = "隐藏技能",
                children = __TS__ArrayMap(
                    hidden,
                    function(____, a)
                        local v = {name = a}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置隐藏技能", "setHiddenSkillsInEdittime"):filed("单位", "readonly", index):filed(
                    "技能列表",
                    "string",
                    table.concat(hidden, ",")
                ):get()}
            },
            {
                name = "普通技能",
                children = __TS__ArrayMap(
                    normal,
                    function(____, a)
                        local v = {name = a}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置普通技能", "setNormalSkillsInEdittime"):filed("单位", "readonly", index):filed(
                    "技能列表",
                    "string",
                    table.concat(normal, ",")
                ):get()}
            },
            {
                name = "命令技能",
                children = __TS__ArrayMap(
                    command,
                    function(____, a)
                        local v = {name = a}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置命令技能", "setCommandSkillsInEdittime"):filed("单位", "readonly", index):filed(
                    "技能列表",
                    "string",
                    table.concat(command, ",")
                ):get()}
            },
            {
                name = "英雄技能",
                children = __TS__ArrayMap(
                    hero,
                    function(____, a)
                        local v = {name = a}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置英雄技能", "setHeroSkillsInEdittime"):filed("单位", "readonly", index):filed(
                    "技能列表",
                    "string",
                    table.concat(hero, ",")
                ):get()}
            },
            {
                name = "简单技能",
                children = __TS__ArrayMap(
                    __TS__ObjectKeys(simpleSkills),
                    function(____, a)
                        local v = {name = a}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置简单技能", "setSimpleSkillsInEdittime"):filed("单位", "readonly", index):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ObjectKeys(simpleSkills),
                        ","
                    )
                ):get()}
            }
        },
        isFolded = true
    }
    return view
end
function genUnitEffects(self, unit, index)
    local effects = {}
    for effectId in pairs(unit.effects) do
        local quantity = unit.effects[effectId]
        local effectConfig = effectConfigMap[effectId]
        effects[#effects + 1] = {
            name = (((tostring(effectConfig.id) .. "-") .. effectConfig.name) .. "x") .. tostring(quantity),
            buttons = {
                genButton(nil, "修改数量", "modifyEffectQuantityInEdittime"):filed("index", "readonly", index):filed("effectId", "readonly", effectId):filed("数量", "number", quantity):get(),
                genButton(nil, "删除", "delEffectInEdittime"):filed("index", "readonly", index):filed("effectId", "readonly", effectId):get()
            }
        }
    end
    local view = {
        name = "效果",
        buttons = {genButton(nil, "添加", "addEffectInEdittime"):filed("index", "readonly", index):filed("效果", "list", effectConfigList[1].id, "EffectConfig"):filed("数量", "number", 1):get()},
        children = effects,
        isFolded = true
    }
    return view
end
function genUnitStatus(self, unit, index)
    local status = {}
    for stateId in pairs(unit.baseStatus) do
        local ____opt_2 = __TS__ArrayFind(
            StateList,
            function(____, a) return a.key == stateId end
        )
        local name = ____opt_2 and ____opt_2.name or "未知"
        status[#status + 1] = {
            name = name,
            buttons = {genButton(nil, "删除", "delStateInEdittime"):filed("index", "readonly", index):filed("stateId", "readonly", stateId):get()}
        }
    end
    local view = {
        name = "状态",
        buttons = {genButton(nil, "添加", "addStateInEdittime"):filed("index", "readonly", index):filed("状态", "list", nil, "StateList"):get()},
        children = status,
        isFolded = true
    }
    return view
end
function genUnitTag(self, unit, index)
    local tags = {}
    do
        local i = 0
        while i < #unit.tags do
            local name = unit.tags[i + 1]
            tags[#tags + 1] = {
                name = name,
                buttons = {genButton(nil, "删除", "delTagInEdittime"):filed("index", "readonly", index):filed("tagIndex", "readonly", i):get()}
            }
            i = i + 1
        end
    end
    local view = {
        name = "标签",
        buttons = {genButton(nil, "添加", "addTagInEdittime"):filed("index", "readonly", index):filed("标签", "string", ""):get()},
        children = tags,
        isFolded = true
    }
    return view
end
function getAddUnitButton(self)
    local unitList = {}
    for ____, a in ipairs(heroConfigList) do
        unitList[#unitList + 1] = {
            label = (tostring(a.id) .. "英雄:") .. a.name,
            value = 1000000000 + a.id
        }
    end
    for ____, a in ipairs(monsterConfigList) do
        unitList[#unitList + 1] = {
            label = (tostring(a.id) .. "怪物:") .. a.name,
            value = 2000000000 + a.id
        }
    end
    for ____, a in ipairs(mercenaryConfigList) do
        unitList[#unitList + 1] = {
            label = (tostring(a.id) .. "佣兵:") .. a.name,
            value = 3000000000 + a.id
        }
    end
    for ____, a in ipairs(kingConfigList) do
        unitList[#unitList + 1] = {
            label = ((a.type == 1 and "国王" or "水晶") .. tostring(a.level)) .. "级",
            value = 4000000000 + a.id
        }
    end
    local createUnitBtn = {name = "创建单位", action = "addUnitInEdittime", form = {title = "创建单位", tips = "请选择单位并创建\n玩家id：31 为中立敌对，32为中立友好", fields = {{name = "玩家id", type = "number", defaultValue = 1}, {name = "单位", type = "list", list = unitList}}}}
    return createUnitBtn
end
function getName(self, id)
    local unitType = math.floor(id / 1000000000)
    id = id % 1000000000
    repeat
        local ____switch41 = unitType
        local ____cond41 = ____switch41 == 1
        if ____cond41 then
            local ____opt_4 = heroConfigMap[id]
            return ____opt_4 and ____opt_4.showName.value or "英雄异常ID = " .. tostring(id)
        end
        ____cond41 = ____cond41 or ____switch41 == 2
        if ____cond41 then
            local ____opt_6 = monsterConfigMap[id]
            return ____opt_6 and ____opt_6.showName.value or "怪物异常ID = " .. tostring(id)
        end
        ____cond41 = ____cond41 or ____switch41 == 3
        if ____cond41 then
            local ____opt_8 = mercenaryConfigMap[id]
            return ____opt_8 and ____opt_8.showName.value or "佣兵异常ID = " .. tostring(id)
        end
        ____cond41 = ____cond41 or ____switch41 == 4
        if ____cond41 then
            return "国王" .. tostring(id)
        end
        do
            return "未知"
        end
    until true
end
function refreshSkill(self, index, skills, ____type)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local newSkills = __TS__ArrayMap(
        __TS__StringSplit(skills, ","),
        function(____, a) return __TS__StringTrim(a) end
    )
    if ____type == "隐藏" then
        unit.hiddenSkills = newSkills
    elseif ____type == "命令" then
        unit.commandSkills = newSkills
    elseif ____type == "普通" then
        unit.normalSkills = newSkills
    elseif ____type == "英雄" then
        unit.heroSkills = newSkills
    end
    self:reload()
end
function refreshSimpleSkill(self, index, skills)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local newSkills = __TS__ArrayMap(
        __TS__StringSplit(skills, ","),
        function(____, a) return __TS__StringTrim(a) end
    )
    unit.simpleSkills = {}
    __TS__ArrayForEach(
        newSkills,
        function(____, element)
            if unit.simpleSkills[element] == nil then
                unit.simpleSkills[element] = 1
            else
                local ____unit_simpleSkills_20, ____element_21 = unit.simpleSkills, element
                ____unit_simpleSkills_20[____element_21] = ____unit_simpleSkills_20[____element_21] + 1
            end
        end
    )
    self:reload()
end
function ____exports.genEdittimeView(self, debugRoom)
    local data = debugRoom.battlegroundData
    local units = data.units
    local view = {
        name = "单位列表",
        children = __TS__ArrayMap(
            units,
            function(____, a, i) return genUnitView(nil, a, i) end
        ),
        buttons = {getAddUnitButton(nil)},
        listRefs = {
            GenreConfig = __TS__ArrayMap(
                genreConfigList,
                function(____, a)
                    return {
                        label = (tostring(a.id) .. "-") .. tostring(a.name),
                        value = a.id
                    }
                end
            ),
            StateList = __TS__ArrayMap(
                StateList,
                function(____, a)
                    return {
                        label = (tostring(a.key) .. "-") .. a.name,
                        value = a.key
                    }
                end
            ),
            EffectConfig = __TS__ArrayMap(
                effectConfigList,
                function(____, a)
                    return {
                        label = (tostring(a.id) .. "-") .. a.name,
                        value = a.id
                    }
                end
            )
        }
    }
    local seed = {
        name = "随机数种子",
        buttons = {getSeedButton(nil, data.seed)}
    }
    return {seed, view}
end
local function getHeroConfig(self, id)
    local unitType = math.floor(id / 1000000000)
    id = id % 1000000000
    if unitType == 1 then
        return heroConfigMap[id]
    else
        return nil
    end
end
function ____exports.setSeedInEdittime(self, seed)
    local battleground = self._battlegroundData
    battleground.seed = seed
    self._seed = seed
end
function ____exports.addUnitInEdittime(self, playerId, unitId)
    local sourceId = unitId
    local battleground = self._battlegroundData
    local unitType = math.floor(unitId / 1000000000)
    local configId = unitId % 1000000000
    local pos = y3.camera.get_camera_center_raycast(y3.player.get_by_id(1))
    console:log(
        pos:get_x(),
        pos:get_y()
    )
    local v = unitId % 100 / 50 - 1
    local unit = {
        sourceId = sourceId,
        scale = 1,
        mpRecover = 10,
        baseProperties = {},
        baseStatus = {},
        defaultValues = {},
        effects = {},
        tags = {},
        commandSkills = {},
        heroSkills = {},
        hiddenSkills = {},
        normalSkills = {},
        simpleSkills = {},
        playerId = playerId,
        position = {
            x = pos:get_x() + v * 400,
            y = pos:get_y()
        },
        roleId = 0,
        level = 1
    }
    local skills = {}
    repeat
        local ____switch47 = unitType
        local heroConfig, monsterConfig, mercenary, king
        local ____cond47 = ____switch47 == 1
        if ____cond47 then
            heroConfig = heroConfigMap[configId]
            skills = heroConfig.skill
            unit.baseProperties = propertyConfig2PropertyMap(nil, heroConfig.property, 1)
            unit.roleId = heroConfig.role
            local ____unit_tags_10 = unit.tags
            ____unit_tags_10[#____unit_tags_10 + 1] = UnitTag["玩家英雄"]
            break
        end
        ____cond47 = ____cond47 or ____switch47 == 2
        if ____cond47 then
            monsterConfig = monsterConfigMap[configId]
            unit.baseProperties = propertyConfig2PropertyMap(nil, monsterConfig.property, 1)
            skills = monsterConfig.skill
            unit.roleId = monsterConfig.role
            local ____unit_tags_11 = unit.tags
            ____unit_tags_11[#____unit_tags_11 + 1] = UnitTag["怪物"]
            break
        end
        ____cond47 = ____cond47 or ____switch47 == 3
        if ____cond47 then
            mercenary = mercenaryConfigMap[configId]
            unit.baseProperties = propertyConfig2PropertyMap(nil, mercenary.property, 1)
            skills = mercenary.skill
            unit.roleId = mercenary.role
            local ____unit_tags_12 = unit.tags
            ____unit_tags_12[#____unit_tags_12 + 1] = UnitTag["佣兵"]
            break
        end
        ____cond47 = ____cond47 or ____switch47 == 4
        if ____cond47 then
            king = kingConfigMap[configId]
            unit.baseProperties = propertyConfig2PropertyMap(nil, king.property, 1)
            skills = king.skill
            unit.roleId = king.type == 1 and mapConfig.kingRoles[1] or mapConfig["A国王对应水晶形象"][1]
            local ____unit_tags_13 = unit.tags
            ____unit_tags_13[#____unit_tags_13 + 1] = UnitTag["国王"]
            break
        end
    until true
    unit.normalSkills = __TS__ArrayMap(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 1 and a.abilityName ~= "" end
        ),
        function(____, a) return a.abilityName end
    )
    unit.commandSkills = __TS__ArrayMap(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 2 and a.abilityName ~= "" end
        ),
        function(____, a) return a.abilityName end
    )
    unit.simpleSkills = {}
    __TS__ArrayForEach(
        __TS__ArrayFilter(
            skills,
            function(____, a) return a.skillPos == 3 and a.abilityName ~= "" end
        ),
        function(____, a)
            unit.simpleSkills[a.abilityName] = 1
            return 1
        end
    )
    __TS__ArrayForEach(
        __TS__ArrayFlat(__TS__ArrayMap(
            skills,
            function(____, a) return a.effects end
        )),
        function(____, a)
            unit.effects[a.id] = 1
            return 1
        end
    )
    local f = getFactions(nil, playerId)
    if f == -1 then
        local ____unit_tags_14 = unit.tags
        ____unit_tags_14[#____unit_tags_14 + 1] = UnitTag["派系A"]
    elseif f == 1 then
        local ____unit_tags_15 = unit.tags
        ____unit_tags_15[#____unit_tags_15 + 1] = UnitTag["派系B"]
    else
        local ____unit_tags_16 = unit.tags
        ____unit_tags_16[#____unit_tags_16 + 1] = UnitTag["中立敌对"]
    end
    unit.defaultValues[_____8840] = unit.baseProperties[_____57FA_7840_8840_91CF_4E0A_9650]
    unit.defaultValues[_____84DD] = unit.baseProperties[_____84DD_91CF_4E0A_9650]
    local ____battleground_units_17 = battleground.units
    ____battleground_units_17[#____battleground_units_17 + 1] = unit
    self:reload()
end
function ____exports.delUnitInEdittime(self, index)
    local battleground = self._battlegroundData
    __TS__ArraySplice(battleground.units, index, 1)
    self:reload()
end
function ____exports.addGenreInEdittime(self, index, genreId, quantity)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local config = genreConfigMap[genreId]
    do
        local i = 0
        while i < quantity do
            for ____, e in ipairs(config.effect) do
                local count = unit.effects[e.id] or 0
                unit.effects[e.id] = count + 1
            end
            if config.skill ~= nil then
                if config.skill.skillPos == 1 then
                    local ____unit_normalSkills_18 = unit.normalSkills
                    ____unit_normalSkills_18[#____unit_normalSkills_18 + 1] = config.skill.abilityName
                elseif config.skill.skillPos == 2 then
                    local ____unit_commandSkills_19 = unit.commandSkills
                    ____unit_commandSkills_19[#____unit_commandSkills_19 + 1] = config.skill.abilityName
                elseif config.skill.skillPos == 3 then
                    local count = unit.simpleSkills[config.skill.abilityName] or 0
                    unit.simpleSkills[config.skill.abilityName] = count + 1
                end
            end
            i = i + 1
        end
    end
    self:reload()
end
function ____exports.copyUnitInEdittime(self, index)
    local data = self:save()
    local units = data.units
    local unit = units[index + 1]
    units[#units + 1] = JSON:parse(JSON:stringify(unit))
    self:clear()
    self:load(data)
end
function ____exports.setHiddenSkillsInEdittime(self, index, skills)
    refreshSkill(self, index, skills, "隐藏")
end
function ____exports.setNormalSkillsInEdittime(self, index, skills)
    refreshSkill(self, index, skills, "普通")
end
function ____exports.setCommandSkillsInEdittime(self, index, skills)
    refreshSkill(self, index, skills, "命令")
end
function ____exports.setHeroSkillsInEdittime(self, index, skills)
    refreshSkill(self, index, skills, "英雄")
end
function ____exports.setSimpleSkillsInEdittime(self, index, skills)
    refreshSimpleSkill(self, index, skills)
end
function ____exports.modifyLevelInEdittime(self, index, level)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.level = level
    self:reload()
end
function ____exports.modifyPropertyInEdittime(self, index, key, value)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.baseProperties[key] = value
    self:reload()
end
function ____exports.modifyValueInEdittime(self, index, key, value)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.defaultValues[key] = value
    self:reload()
end
function ____exports.modifyTalentValueInEdittime(self, index, key, value)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local heroConfig = getHeroConfig(nil, unit.sourceId)
    if heroConfig == nil then
        return
    end
    local talents = heroConfig.talent
    local config
    if key == 201 then
        config = talents[0 + value]
    elseif key == 202 then
        config = talents[2 + value]
    elseif key == 203 then
        config = talents[4 + value]
    end
    if config == nil then
        return
    end
    unit.defaultValues[key] = value
    for ____, r in ipairs(config.removeEffects) do
        unit.effects[r.id] = nil
    end
    for ____, r in ipairs(config.newEffects) do
        unit.effects[r.id] = 1
    end
    if config.addSimpleSkill ~= nil then
        unit.simpleSkills[config.addSimpleSkill.abilityName] = 1
    end
    self:reload()
end
function ____exports.modifyTalent4ValueInEdittime(self, index, key, value)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local heroConfig = getHeroConfig(nil, unit.sourceId)
    if heroConfig == nil then
        return
    end
    local config = __TS__ArrayFind(
        heroConfig.lastTalent,
        function(____, a) return a.id == value end
    )
    if config == nil then
        return
    end
    unit.defaultValues[key] = value
    for ____, r in ipairs(config.removeEffects) do
        unit.effects[r.id] = nil
    end
    for ____, r in ipairs(config.newEffects) do
        unit.effects[r.id] = 1
    end
    if config.addSimpleSkill ~= nil then
        unit.simpleSkills[config.addSimpleSkill.abilityName] = 1
    end
    self:reload()
end
function ____exports.addEffectInEdittime(self, index, effectId, quantity)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.effects[effectId] = quantity
    self:reload()
end
function ____exports.delEffectInEdittime(self, index, effectId)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.effects[effectId] = nil
    self:reload()
end
function ____exports.modifyEffectQuantityInEdittime(self, index, effectId, quantity)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.effects[effectId] = quantity
    self:reload()
end
function ____exports.addStateInEdittime(self, index, stateId)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.baseStatus[stateId] = true
    self:reload()
end
function ____exports.delStateInEdittime(self, index, stateId)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.baseStatus[stateId] = nil
    self:reload()
end
function ____exports.delTagInEdittime(self, index, tagIndex)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    table.remove(unit.tags, tagIndex + 1)
end
function ____exports.addTagInEdittime(self, index, tag)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    local ____unit_tags_22 = unit.tags
    ____unit_tags_22[#____unit_tags_22 + 1] = tag
end
function ____exports.moveUnitInEdittime(self, index, x, y)
    local battleground = self._battlegroundData
    local unit = battleground.units[index + 1]
    unit.position.x = x
    unit.position.y = y
    local unitData = self.fight.allUnitMap[index]
    if unitData ~= nil then
        unitData:setPosition({x = x, y = y}, true)
    end
end
return ____exports
