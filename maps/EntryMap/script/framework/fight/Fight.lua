local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["14"] = 1,["15"] = 1,["16"] = 2,["17"] = 2,["18"] = 3,["19"] = 3,["20"] = 4,["21"] = 4,["22"] = 5,["23"] = 5,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["30"] = 10,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 107,["35"] = 107,["36"] = 107,["38"] = 109,["39"] = 114,["40"] = 119,["41"] = 124,["42"] = 129,["43"] = 136,["44"] = 242,["45"] = 253,["46"] = 258,["47"] = 263,["48"] = 280,["49"] = 282,["50"] = 287,["51"] = 291,["52"] = 304,["53"] = 508,["54"] = 509,["55"] = 511,["56"] = 512,["57"] = 513,["58"] = 319,["59"] = 319,["60"] = 319,["61"] = 320,["64"] = 323,["65"] = 324,["66"] = 325,["69"] = 328,["72"] = 332,["73"] = 333,["74"] = 337,["75"] = 338,["77"] = 319,["78"] = 319,["79"] = 342,["80"] = 342,["81"] = 342,["82"] = 343,["85"] = 346,["86"] = 347,["87"] = 348,["90"] = 351,["93"] = 355,["94"] = 356,["95"] = 360,["96"] = 361,["98"] = 342,["99"] = 342,["100"] = 366,["101"] = 366,["102"] = 366,["103"] = 367,["104"] = 369,["105"] = 370,["106"] = 371,["107"] = 372,["108"] = 374,["109"] = 375,["112"] = 385,["115"] = 377,["116"] = 378,["118"] = 378,["120"] = 379,["122"] = 381,["124"] = 381,["126"] = 382,["134"] = 390,["135"] = 391,["136"] = 393,["137"] = 394,["138"] = 394,["139"] = 394,["140"] = 394,["141"] = 394,["142"] = 394,["143"] = 394,["144"] = 394,["145"] = 394,["146"] = 394,["147"] = 394,["148"] = 394,["149"] = 394,["150"] = 394,["151"] = 394,["152"] = 394,["155"] = 366,["156"] = 366,["157"] = 417,["158"] = 305,["159"] = 443,["160"] = 444,["161"] = 443,["162"] = 452,["163"] = 453,["164"] = 452,["165"] = 459,["166"] = 460,["167"] = 459,["168"] = 466,["169"] = 467,["170"] = 466,["171"] = 473,["172"] = 474,["173"] = 473,["174"] = 515,["175"] = 516,["177"] = 516,["178"] = 516,["179"] = 517,["180"] = 517,["181"] = 518,["182"] = 518,["183"] = 518,["184"] = 518,["185"] = 518,["186"] = 518,["187"] = 518,["188"] = 518,["189"] = 518,["190"] = 518,["191"] = 518,["192"] = 518,["193"] = 518,["194"] = 518,["195"] = 516,["199"] = 531,["201"] = 531,["202"] = 531,["203"] = 532,["204"] = 532,["205"] = 533,["206"] = 533,["207"] = 533,["208"] = 533,["209"] = 533,["210"] = 533,["211"] = 533,["212"] = 533,["213"] = 533,["214"] = 533,["215"] = 533,["216"] = 531,["220"] = 547,["222"] = 547,["223"] = 547,["224"] = 548,["225"] = 548,["226"] = 549,["227"] = 549,["228"] = 549,["229"] = 549,["230"] = 549,["231"] = 549,["232"] = 549,["233"] = 549,["234"] = 549,["235"] = 549,["236"] = 549,["237"] = 549,["238"] = 549,["239"] = 549,["240"] = 549,["241"] = 549,["242"] = 549,["243"] = 547,["247"] = 515,["248"] = 572,["249"] = 573,["250"] = 574,["251"] = 575,["253"] = 577,["255"] = 579,["256"] = 580,["258"] = 582,["260"] = 572,["261"] = 586,["262"] = 588,["264"] = 589,["265"] = 589,["266"] = 590,["267"] = 590,["268"] = 591,["269"] = 591,["270"] = 591,["271"] = 591,["272"] = 591,["273"] = 591,["274"] = 591,["275"] = 591,["276"] = 591,["277"] = 591,["278"] = 591,["279"] = 591,["280"] = 591,["281"] = 591,["282"] = 591,["283"] = 591,["284"] = 591,["285"] = 589,["289"] = 613,["290"] = 586,["291"] = 616,["292"] = 644,["293"] = 646,["294"] = 647,["296"] = 650,["297"] = 651,["298"] = 651,["299"] = 651,["300"] = 651,["301"] = 652,["302"] = 652,["303"] = 652,["304"] = 652,["305"] = 653,["306"] = 653,["307"] = 653,["308"] = 653,["310"] = 655,["311"] = 656,["312"] = 657,["314"] = 660,["315"] = 661,["316"] = 662,["317"] = 663,["318"] = 664,["319"] = 665,["320"] = 666,["321"] = 668,["322"] = 669,["323"] = 670,["324"] = 671,["325"] = 672,["326"] = 674,["327"] = 677,["328"] = 678,["329"] = 679,["330"] = 680,["331"] = 681,["332"] = 682,["333"] = 684,["334"] = 688,["335"] = 690,["336"] = 693,["337"] = 696,["338"] = 699,["339"] = 700,["340"] = 701,["341"] = 704,["342"] = 706,["343"] = 706,["344"] = 706,["346"] = 660,["347"] = 660,["348"] = 660,["349"] = 660,["350"] = 660,["351"] = 660,["352"] = 660,["353"] = 660,["354"] = 660,["355"] = 660,["356"] = 660,["357"] = 660,["358"] = 660,["359"] = 660,["360"] = 660,["361"] = 660,["362"] = 660,["363"] = 660,["364"] = 660,["365"] = 660,["366"] = 660,["367"] = 660,["368"] = 660,["369"] = 660,["370"] = 660,["371"] = 660,["372"] = 660,["373"] = 660,["374"] = 660,["375"] = 660,["376"] = 660,["377"] = 660,["378"] = 660,["379"] = 660,["380"] = 660,["381"] = 660,["382"] = 717,["383"] = 616,["384"] = 725,["385"] = 726,["386"] = 728,["387"] = 729,["388"] = 730,["389"] = 731,["390"] = 732,["391"] = 733,["394"] = 736,["395"] = 737,["396"] = 738,["397"] = 739,["400"] = 743,["401"] = 744,["403"] = 747,["405"] = 749,["406"] = 749,["408"] = 750,["409"] = 751,["410"] = 752,["411"] = 753,["413"] = 754,["414"] = 755,["415"] = 756,["418"] = 749,["421"] = 759,["422"] = 760,["423"] = 760,["424"] = 760,["425"] = 760,["426"] = 760,["428"] = 957,["430"] = 958,["431"] = 958,["432"] = 958,["433"] = 958,["434"] = 958,["435"] = 958,["436"] = 959,["437"] = 959,["438"] = 959,["439"] = 959,["440"] = 960,["441"] = 960,["442"] = 960,["443"] = 960,["445"] = 961,["446"] = 961,["447"] = 961,["449"] = 961,["450"] = 957,["451"] = 957,["452"] = 957,["453"] = 957,["454"] = 965,["455"] = 966,["456"] = 966,["457"] = 966,["458"] = 968,["459"] = 970,["460"] = 971,["461"] = 972,["462"] = 973,["463"] = 977,["464"] = 978,["466"] = 981,["467"] = 982,["470"] = 986,["471"] = 987,["472"] = 988,["473"] = 989,["474"] = 990,["476"] = 992,["477"] = 993,["478"] = 997,["479"] = 998,["482"] = 1002,["483"] = 966,["484"] = 966,["485"] = 966,["486"] = 1006,["487"] = 1007,["488"] = 1008,["489"] = 1009,["490"] = 1010,["491"] = 1010,["492"] = 1010,["493"] = 1011,["494"] = 1013,["495"] = 1013,["496"] = 1013,["497"] = 1013,["498"] = 1013,["499"] = 1013,["500"] = 1013,["501"] = 1013,["502"] = 1013,["503"] = 1013,["504"] = 1013,["505"] = 1013,["506"] = 1013,["507"] = 1024,["508"] = 1025,["509"] = 1025,["510"] = 1026,["512"] = 1026,["516"] = 1030,["518"] = 1032,["519"] = 1033,["520"] = 1034,["521"] = 1035,["524"] = 1010,["525"] = 1010,["526"] = 1010,["527"] = 1039,["530"] = 1044,["531"] = 1045,["532"] = 1046,["533"] = 1046,["534"] = 1046,["535"] = 1047,["536"] = 1048,["537"] = 1048,["539"] = 1049,["542"] = 1052,["545"] = 1056,["546"] = 1046,["547"] = 1046,["549"] = 1061,["550"] = 1064,["551"] = 1064,["552"] = 1067,["553"] = 1068,["555"] = 1069,["556"] = 1069,["557"] = 1070,["558"] = 1071,["559"] = 1069,["563"] = 1076,["564"] = 1077,["565"] = 1078,["566"] = 1079,["569"] = 1083,["570"] = 1084,["571"] = 1086,["572"] = 1087,["573"] = 1088,["575"] = 1091,["576"] = 1092,["577"] = 1093,["579"] = 1095,["580"] = 1097,["581"] = 1098,["583"] = 1101,["584"] = 1101,["586"] = 1103,["587"] = 1064,["588"] = 1107,["589"] = 1108,["590"] = 1109,["591"] = 1109,["593"] = 1114,["594"] = 1116,["595"] = 1117,["596"] = 1117,["597"] = 1117,["598"] = 1117,["599"] = 1116,["600"] = 1121,["601"] = 1122,["602"] = 1123,["605"] = 1126,["606"] = 1127,["607"] = 1128,["610"] = 1131,["611"] = 1132,["612"] = 1133,["615"] = 1136,["616"] = 1137,["617"] = 1138,["620"] = 1141,["621"] = 1142,["622"] = 1143,["625"] = 1148,["626"] = 1149,["627"] = 1150,["630"] = 1155,["631"] = 1156,["632"] = 1157,["635"] = 1161,["637"] = 1161,["639"] = 1163,["640"] = 725,["641"] = 1166,["642"] = 1167,["643"] = 1166,["644"] = 1170,["645"] = 1171,["646"] = 1170,["647"] = 1178,["648"] = 1179,["649"] = 1178,["650"] = 1185,["651"] = 1186,["652"] = 1185,["653"] = 1190,["654"] = 1192,["655"] = 1193,["657"] = 1196,["660"] = 1200,["661"] = 1201,["662"] = 1203,["663"] = 1204,["664"] = 1205,["666"] = 1211,["667"] = 1211,["668"] = 1212,["669"] = 1211,["670"] = 1213,["671"] = 1214,["672"] = 1211,["673"] = 1211,["674"] = 1211,["675"] = 1217,["676"] = 1217,["677"] = 1218,["678"] = 1217,["679"] = 1219,["680"] = 1220,["681"] = 1217,["682"] = 1217,["683"] = 1217,["684"] = 1224,["685"] = 1224,["686"] = 1225,["687"] = 1224,["688"] = 1226,["689"] = 1227,["690"] = 1224,["691"] = 1224,["692"] = 1224,["693"] = 1231,["694"] = 1231,["695"] = 1232,["696"] = 1231,["697"] = 1233,["698"] = 1234,["699"] = 1231,["700"] = 1231,["701"] = 1231,["702"] = 1238,["703"] = 1238,["704"] = 1239,["705"] = 1238,["706"] = 1240,["707"] = 1241,["708"] = 1238,["709"] = 1238,["710"] = 1238,["711"] = 1245,["712"] = 1245,["713"] = 1246,["714"] = 1245,["715"] = 1247,["716"] = 1248,["717"] = 1245,["718"] = 1245,["719"] = 1245,["720"] = 1255,["721"] = 1255,["722"] = 1256,["723"] = 1257,["725"] = 1259,["727"] = 1255,["728"] = 1261,["729"] = 1262,["730"] = 1263,["732"] = 1265,["733"] = 1266,["735"] = 1268,["736"] = 1269,["737"] = 1270,["738"] = 1276,["739"] = 1277,["741"] = 1279,["742"] = 1280,["744"] = 1255,["745"] = 1255,["746"] = 1255,["747"] = 1299,["748"] = 1300,["750"] = 1302,["751"] = 1302,["752"] = 1304,["753"] = 1305,["754"] = 1305,["755"] = 1305,["756"] = 1305,["757"] = 1302,["758"] = 1306,["759"] = 1307,["760"] = 1302,["761"] = 1302,["762"] = 1302,["763"] = 1311,["764"] = 1311,["765"] = 1311,["766"] = 1311,["767"] = 1312,["768"] = 1311,["769"] = 1311,["770"] = 1314,["771"] = 1314,["772"] = 1314,["773"] = 1314,["774"] = 1315,["775"] = 1316,["777"] = 1316,["779"] = 1317,["780"] = 1314,["781"] = 1314,["782"] = 1320,["783"] = 1320,["784"] = 1320,["785"] = 1321,["786"] = 1322,["787"] = 1324,["788"] = 1324,["789"] = 1324,["790"] = 1324,["792"] = 1320,["793"] = 1320,["794"] = 1328,["795"] = 1328,["796"] = 1328,["797"] = 1329,["798"] = 1330,["799"] = 1332,["800"] = 1332,["801"] = 1332,["802"] = 1332,["804"] = 1328,["805"] = 1328,["806"] = 1342,["807"] = 1342,["808"] = 1342,["809"] = 1343,["810"] = 1343,["811"] = 1343,["812"] = 1344,["813"] = 1346,["814"] = 1347,["815"] = 1347,["816"] = 1347,["817"] = 1347,["818"] = 1347,["819"] = 1347,["820"] = 1347,["821"] = 1347,["822"] = 1348,["823"] = 1348,["824"] = 1348,["825"] = 1348,["826"] = 1348,["827"] = 1348,["828"] = 1348,["829"] = 1348,["831"] = 1342,["832"] = 1342,["833"] = 1352,["834"] = 1352,["835"] = 1352,["836"] = 1355,["837"] = 1356,["838"] = 1358,["839"] = 1358,["840"] = 1358,["841"] = 1359,["843"] = 1359,["845"] = 1361,["846"] = 1363,["847"] = 1364,["848"] = 1365,["849"] = 1366,["850"] = 1367,["854"] = 1373,["855"] = 1374,["857"] = 1352,["858"] = 1352,["859"] = 1377,["860"] = 1377,["861"] = 1377,["862"] = 1378,["863"] = 1377,["864"] = 1377,["865"] = 1380,["866"] = 1380,["867"] = 1380,["868"] = 1381,["869"] = 1382,["870"] = 1380,["871"] = 1380,["872"] = 1398,["873"] = 1398,["874"] = 1398,["875"] = 1399,["877"] = 1399,["879"] = 1400,["880"] = 1398,["881"] = 1398,["882"] = 1406,["883"] = 1406,["884"] = 1406,["885"] = 1406,["886"] = 1409,["887"] = 1412,["888"] = 1413,["889"] = 1416,["890"] = 1420,["891"] = 1421,["892"] = 1422,["894"] = 1426,["895"] = 1427,["897"] = 1430,["898"] = 1432,["899"] = 1435,["900"] = 1438,["901"] = 1439,["902"] = 1440,["903"] = 1441,["904"] = 1442,["905"] = 1443,["906"] = 1444,["907"] = 1445,["908"] = 1448,["909"] = 1449,["910"] = 1450,["911"] = 1451,["912"] = 1454,["913"] = 1455,["914"] = 1456,["915"] = 1457,["916"] = 1461,["917"] = 1489,["918"] = 1491,["919"] = 1492,["920"] = 1494,["921"] = 1495,["922"] = 1496,["923"] = 1497,["924"] = 1499,["927"] = 1505,["928"] = 1432,["929"] = 1190,["930"] = 1515,["931"] = 1516,["932"] = 1517,["934"] = 1515,["935"] = 1521,["936"] = 1522,["939"] = 1526,["940"] = 1527,["941"] = 1528,["943"] = 1531,["944"] = 1532,["946"] = 1534,["947"] = 1521,["949"] = 1541,["950"] = 1543,["951"] = 1544,["952"] = 1544,["953"] = 1544,["954"] = 1545,["955"] = 1546,["956"] = 1547,["957"] = 1544,["958"] = 1544});
local ____exports = {}
local ____QuickStrategy = include("framework.encrypt.QuickStrategy")
local quickStrategy = ____QuickStrategy.quickStrategy
local ____SafeTable = include("framework.encrypt.SafeTable")
local createSafeTable = ____SafeTable.createSafeTable
local ____global = include("framework.global")
local global = ____global.global
local ____ObjectHelper = include("framework.fight.ObjectHelper")
local ObjectHelper = ____ObjectHelper.ObjectHelper
local ____Report = include("framework.fight.Report")
local Report = ____Report.Report
local ____UnitEntity = include("framework.fight.UnitEntity")
local UnitMetaTable = ____UnitEntity.UnitMetaTable
local ____utils = include("framework.fight.utils")
local diffArray = ____utils.diffArray
local isNullMap = ____utils.isNullMap
local runEvent = ____utils.runEvent
local VUE_SYNC_IMMEDIATE_CONFIG = {flush = "sync", immediate = true}
local function EMPTY_SAFE_TABLE(a)
    return a
end
____exports.Fight = __TS__Class()
local Fight = ____exports.Fight
Fight.name = "Fight"
function Fight.prototype.____constructor(self)
    self.isStop = false
    self.idIndex = 0
    self.fightingTime = 60
    self.report = __TS__New(Report, self)
    self.objectHelper = __TS__New(ObjectHelper)
    self.targetPosMap = {}
    self.checkInFighting = function() return false end
    self.hpValueId = -1
    self.mpValueId = -1
    self.dynamicTags = {}
    self.allUnitMap = vue.reactive({})
    self.allY3UnitMap = vue.reactive({})
    self.unitGroup = vue.reactive({})
    self.formula = vue.reactive({})
    self.destroyed = false
    self.MAX_CACHE_ST = 50
    self.MAX_CACHE = 1000
    self.ACTIVE_CACHE = {}
    self.ACTIVE_CACHE_ST = {}
    self.HURT_TOTAL = {}
    local onGetEffect = y3.game:event(
        "效果-获得",
        function(trg, data)
            if data.from_unit == nil or data.owner_unit == nil then
                return
            end
            local unitEntity = self.allY3UnitMap[data.owner_unit.id]
            local fromEntity = self.allY3UnitMap[data.from_unit.id]
            if unitEntity == nil or fromEntity == nil then
                return
            end
            if not data.buff:kv_has("effectId") then
                return
            end
            local effectId = data.buff:kv_load("effectId", "integer")
            local quantity = data.buff:kv_load("quantity", "integer")
            if effectId ~= nil and effectId ~= 0 then
                unitEntity:addEffect(fromEntity, effectId, quantity == 0 and 1 or quantity)
            end
        end
    )
    local onRemoveEffect = y3.game:event(
        "效果-失去",
        function(trg, data)
            if data.from_unit == nil or data.owner_unit == nil then
                return
            end
            local unitEntity = self.allY3UnitMap[data.owner_unit.id]
            local fromEntity = self.allY3UnitMap[data.from_unit.id]
            if unitEntity == nil or fromEntity == nil then
                return
            end
            if not data.buff:kv_has("effectId") then
                return
            end
            local effectId = data.buff:kv_load("effectId", "integer")
            local quantity = data.buff:kv_load("quantity", "integer")
            if effectId ~= nil and effectId ~= 0 then
                unitEntity:modifyEffectQuantity(fromEntity, effectId, -(quantity == 0 and 1 or quantity))
            end
        end
    )
    local onLoop = y3.ltimer.loop_frame(
        1,
        function()
            local now = global.frameCount
            for _, unit in pairs(self.allUnitMap) do
                local activeData = unit.activeData
                local isFighting = activeData.isFighting
                local newFighting = not activeData.died and (now - unit._fightingTime < self.fightingTime or self:checkInFighting(unit))
                if isFighting ~= newFighting then
                    activeData.isFighting = newFighting
                    do
                        local function ____catch(e)
                            console:error(e)
                        end
                        local ____try, ____hasReturned = pcall(function()
                            if newFighting then
                                local ____opt_0 = self.callbacks
                                if ____opt_0 ~= nil then
                                    ____opt_0:onEnterFight(unit)
                                end
                                unit:trigger("单位-进入战斗")
                            else
                                local ____opt_2 = self.callbacks
                                if ____opt_2 ~= nil then
                                    ____opt_2:onLeaveFight(unit)
                                end
                                unit:trigger("单位-脱离战斗")
                            end
                        end)
                        if not ____try then
                            ____catch(____hasReturned)
                        end
                    end
                end
                local y3Unit = unit.y3Unit
                if activeData.isFighting and y3Unit ~= nil and not y3Unit:is_in_battle() then
                    local handle = y3Unit.handle
                    GameAPI.apply_damage(
                        handle,
                        nil,
                        handle,
                        2,
                        0,
                        false,
                        nil,
                        false,
                        false,
                        true,
                        nil,
                        "",
                        "",
                        0
                    )
                end
            end
        end
    )
    self.initEvents = {onGetEffect, onRemoveEffect, onLoop}
end
function Fight.prototype.registerEffectConfig(self, getConfig)
    self.getConfig = getConfig
end
function Fight.prototype.registerFormula(self, id, cb)
    self.formula[id] = cb
end
function Fight.prototype.registerCallbacks(self, callbacks)
    self.callbacks = callbacks
end
function Fight.prototype.registerLoadSkill(self, callback)
    self.loadSkillCallback = callback
end
function Fight.prototype.registerLoadSimpleSkill(self, callback)
    self.loadSimpleSkillCallback = callback
end
function Fight.prototype.createCacheTick(self)
    if #self.ACTIVE_CACHE_ST < self.MAX_CACHE_ST then
        do
            local i = 0
            while i < 10 do
                local ____self_ACTIVE_CACHE_ST_4 = self.ACTIVE_CACHE_ST
                ____self_ACTIVE_CACHE_ST_4[#____self_ACTIVE_CACHE_ST_4 + 1] = createSafeTable(
                    vue.reactive({
                        level = 1,
                        died = false,
                        isFighting = false,
                        pauseTimer = false,
                        angle = 0,
                        tags = {},
                        tagsMap = {},
                        statusMap = {},
                        statistics = {},
                        effectMap = {}
                    }),
                    quickStrategy
                )
                i = i + 1
            end
        end
    end
    if #self.ACTIVE_CACHE < self.MAX_CACHE then
        do
            local i = 0
            while i < 10 do
                local ____self_ACTIVE_CACHE_5 = self.ACTIVE_CACHE
                ____self_ACTIVE_CACHE_5[#____self_ACTIVE_CACHE_5 + 1] = vue.reactive({
                    level = 1,
                    died = false,
                    isFighting = false,
                    pauseTimer = false,
                    angle = 0,
                    tags = {},
                    tagsMap = {},
                    statusMap = {},
                    statistics = {},
                    effectMap = {}
                })
                i = i + 1
            end
        end
    end
    if #self.HURT_TOTAL < self.MAX_CACHE_ST + self.MAX_CACHE then
        do
            local i = 0
            while i < 10 do
                local ____self_HURT_TOTAL_6 = self.HURT_TOTAL
                ____self_HURT_TOTAL_6[#____self_HURT_TOTAL_6 + 1] = vue.reactive({
                    hurtTotal = {},
                    hurtTotalAll = {},
                    injuredTotal = {},
                    injuredTotalAll = {},
                    cureTotal = {},
                    cureTotalAll = {},
                    treatedTotal = {},
                    treatedTotalAll = {},
                    mpTotal = 0,
                    mpTotalAll = 0,
                    shieldTotal = {},
                    shieldTotalAll = {},
                    deathTotal = {},
                    killTotal = {},
                    fightingTime = 0,
                    allFightingTime = 0
                })
                i = i + 1
            end
        end
    end
end
function Fight.prototype.createUnitActiveData(self, safeTable)
    if safeTable then
        if #self.ACTIVE_CACHE_ST == 0 then
            self:createCacheTick()
        end
        return table.remove(self.ACTIVE_CACHE_ST)
    else
        if #self.ACTIVE_CACHE == 0 then
            self:createCacheTick()
        end
        return table.remove(self.ACTIVE_CACHE)
    end
end
function Fight.prototype.createUnitHurtTotalData(self)
    if #self.HURT_TOTAL == 0 then
        do
            local i = 0
            while i < self.MAX_CACHE_ST + self.MAX_CACHE do
                local ____self_HURT_TOTAL_7 = self.HURT_TOTAL
                ____self_HURT_TOTAL_7[#____self_HURT_TOTAL_7 + 1] = vue.reactive({
                    hurtTotal = {},
                    hurtTotalAll = {},
                    injuredTotal = {},
                    injuredTotalAll = {},
                    cureTotal = {},
                    cureTotalAll = {},
                    treatedTotal = {},
                    treatedTotalAll = {},
                    mpTotal = 0,
                    mpTotalAll = 0,
                    shieldTotal = {},
                    shieldTotalAll = {},
                    deathTotal = {},
                    killTotal = {},
                    fightingTime = 0,
                    allFightingTime = 0
                })
                i = i + 1
            end
        end
    end
    return table.remove(self.HURT_TOTAL)
end
function Fight.prototype.createUnitStructure(self, id, name, level, values, properties, basePropertiesMap, baseStatus, playerId, roleId, pos, customData, killOnParentDied, limitExistTime, destroyParticle, destroyOnDied, safeTable)
    local activeData = self:createUnitActiveData(safeTable)
    if level ~= 1 then
        activeData.level = level
    end
    if safeTable then
        activeData.values = createSafeTable(
            vue.reactive(values),
            quickStrategy
        )
        activeData.properties = createSafeTable(
            vue.reactive(properties),
            quickStrategy
        )
        activeData.basePropertiesMap = createSafeTable(
            vue.reactive(basePropertiesMap),
            quickStrategy
        )
    else
        activeData.values = vue.reactive(values)
        activeData.properties = vue.reactive(properties)
        activeData.basePropertiesMap = vue.reactive(basePropertiesMap)
    end
    local ____setmetatable_36 = setmetatable
    local ____id_9 = id
    local ____name_10 = name
    local ____temp_11 = {}
    local ____activeData_12 = activeData
    local ____temp_13 = {}
    local ____temp_14 = {}
    local ____temp_15 = {}
    local ____baseStatus_16 = baseStatus
    local ____temp_17 = self:createUnitHurtTotalData()
    local ____playerId_18 = playerId
    local ____temp_19 = roleId or -1
    local ____pos_20 = pos
    local ____temp_21 = {}
    local ____temp_22 = {}
    local ____temp_23 = {}
    local ____temp_24 = {}
    local ____temp_25 = {}
    local ____temp_26 = {}
    local ____temp_27 = {}
    local ____temp_28 = {}
    local ____customData_29 = customData
    local ____temp_30 = {}
    local ____temp_31 = {}
    local ____killOnParentDied_32 = killOnParentDied
    local ____limitExistTime_33 = limitExistTime
    local ____temp_34 = global.frameCount / y3.config.logic_frame
    local ____destroyParticle_35 = destroyParticle
    local ____destroyOnDied_8 = destroyOnDied
    if ____destroyOnDied_8 == nil then
        ____destroyOnDied_8 = false
    end
    local unit = ____setmetatable_36({
        id = ____id_9,
        name = ____name_10,
        tempData = ____temp_11,
        activeData = ____activeData_12,
        effects = ____temp_13,
        effectsGroup = ____temp_14,
        _fightingTime = 0,
        _stateList = ____temp_15,
        baseStatus = ____baseStatus_16,
        hurtTotal = ____temp_17,
        playerId = ____playerId_18,
        roleId = ____temp_19,
        invalid = false,
        _pos = ____pos_20,
        eventMap = ____temp_21,
        interceptMap = ____temp_22,
        skills = ____temp_23,
        skillsMap = ____temp_24,
        simpleSkills = ____temp_25,
        simpleSkillsMap = ____temp_26,
        _stateIndex = 0,
        children = ____temp_27,
        _effectOrderId = 0,
        onDestroyCallback = ____temp_28,
        customData = ____customData_29,
        _eventMap = ____temp_30,
        fight = self,
        computedMap = ____temp_31,
        killOnParentDied = ____killOnParentDied_32,
        limitExistTime = ____limitExistTime_33,
        birthTime = ____temp_34,
        destroyParticle = ____destroyParticle_35,
        destroyOnDied = ____destroyOnDied_8,
        safeTable = safeTable
    }, UnitMetaTable)
    return unit
end
function Fight.prototype.createUnitEntity(self, params)
    local factory = self
    local defaultValues = self.createDefaultValues and self:createDefaultValues() or ({})
    local defaultProperties = self.createDefaultProperties and self:createDefaultProperties() or ({})
    if params.defaultValues ~= nil then
        for k in pairs(params.defaultValues) do
            local oldVal = defaultValues[k] or 0
            defaultValues[k] = oldVal + params.defaultValues[k]
        end
    end
    if params.defaultProperties ~= nil then
        for k in pairs(params.defaultProperties) do
            local oldVal = defaultProperties[k] or 0
            defaultProperties[k] = oldVal + params.defaultProperties[k]
        end
    end
    if params.baseProperties == nil then
        params.baseProperties = {}
    end
    local basePropertiesMap = {}
    do
        local i = 0
        while i < #params.baseProperties do
            do
                local pid = params.baseProperties[i + 1]
                local v = params.baseProperties[i + 1 + 1]
                if v == nil then
                    goto __continue55
                end
                local oldV = defaultProperties[pid]
                defaultProperties[pid] = oldV + v
                basePropertiesMap[pid] = v
            end
            ::__continue55::
            i = i + 2
        end
    end
    if params.id == nil then
        local ____params_40 = params
        local ____self_37, ____idIndex_38 = self, "idIndex"
        local ____self_idIndex_39 = ____self_37[____idIndex_38] - 1
        ____self_37[____idIndex_38] = ____self_idIndex_39
        ____params_40.id = ____self_idIndex_39
    end
    local ____self_createUnitStructure_43 = self.createUnitStructure
    local ____array_42 = __TS__SparseArrayNew(
        params.id,
        params.name,
        params.level or 1,
        defaultValues,
        defaultProperties,
        basePropertiesMap,
        params.baseStatus or ({}),
        params.playerId,
        params.roleId or -1,
        params.pos and ({x = params.pos.x, y = params.pos.y}) or ({x = 0, y = 0}),
        params.customData,
        params.killOnParentDied,
        params.limitExistTime,
        params.destroyParticle
    )
    local ____params_destroyOnDied_41 = params.destroyOnDied
    if ____params_destroyOnDied_41 == nil then
        ____params_destroyOnDied_41 = false
    end
    __TS__SparseArrayPush(____array_42, ____params_destroyOnDied_41, params.safeTable)
    local obj = ____self_createUnitStructure_43(
        self,
        __TS__SparseArraySpread(____array_42)
    )
    local currentTags
    local watchTagsStop = vue.watch(
        function() return obj.activeData.tags end,
        function(____, newVal, oldVal)
            local diff = diffArray(nil, newVal, currentTags)
            for ____, tag in ipairs(diff.del) do
                local group = self.unitGroup[tag]
                group[obj.id] = nil
                obj.activeData.tagsMap[tag] = nil
                if isNullMap(nil, group) then
                    self.unitGroup[tag] = nil
                end
                if obj.y3Unit ~= nil then
                    obj.y3Unit:remove_tag(tostring(tag))
                end
            end
            for ____, tag in ipairs(diff.add) do
                local group = self.unitGroup[tag]
                if group == nil then
                    self.unitGroup[tag] = {}
                    group = self.unitGroup[tag]
                end
                group[obj.id] = obj
                obj.activeData.tagsMap[tag] = true
                if obj.y3Unit ~= nil then
                    obj.y3Unit:add_tag(tostring(tag))
                end
            end
            currentTags = newVal
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local effectMap = {}
    local watchStateEffects = {}
    if self.watchStateEffects ~= nil then
        for ____, e in ipairs(self.watchStateEffects) do
            local watcher = vue.watch(
                function() return obj:checkState(e.stateId) end,
                function(____, newVal, oldVal)
                    if newVal == true and obj.y3Unit ~= nil then
                        local particle = y3.particle.create({
                            type = e.particle.particleId,
                            angle = e.particle.angle or 0,
                            target = obj.y3Unit,
                            time = nil,
                            scale = e.particle.scale or 1,
                            socket = e.particle.slot,
                            follow_rotation = nil,
                            follow_scale = nil,
                            height = nil,
                            immediate = true,
                            detach = nil
                        })
                        if e.stopAnim then
                            local ____opt_44 = obj.y3Unit
                            if ____opt_44 and ____opt_44:is_alive() then
                                local ____opt_46 = obj.y3Unit
                                if ____opt_46 ~= nil then
                                    ____opt_46:stop_all_abilities()
                                end
                            end
                        end
                        effectMap[e.stateId] = particle
                    else
                        local particle = effectMap[e.stateId]
                        if particle ~= nil then
                            particle:remove()
                            effectMap[e.stateId] = nil
                        end
                    end
                end,
                VUE_SYNC_IMMEDIATE_CONFIG
            )
            watchStateEffects[#watchStateEffects + 1] = watcher
        end
    end
    local limitExistTimer
    if params.limitExistTime ~= nil and params.limitExistTime > 0 then
        limitExistTimer = y3.ltimer.wait(
            params.limitExistTime,
            function()
                if params.limitExistTime == nil then
                    if limitExistTimer ~= nil then
                        limitExistTimer:remove()
                    end
                    limitExistTimer = nil
                    return
                end
                if obj.activeData.died then
                    return
                end
                obj:kill(obj, nil, nil, true)
            end
        )
    end
    self.allUnitMap[obj.id] = obj
    local ____obj_onDestroyCallback_52 = obj.onDestroyCallback
    ____obj_onDestroyCallback_52[#____obj_onDestroyCallback_52 + 1] = function()
        if obj.children ~= nil and #obj.children > 0 then
            local l = #obj.children
            do
                local i = l - 1
                while i >= 0 do
                    local child = obj.children[i + 1]
                    child:destroy(obj)
                    i = i - 1
                end
            end
        end
        if obj.parent ~= nil then
            local index = __TS__ArrayIndexOf(obj.parent.children, obj)
            if index ~= -1 then
                table.remove(obj.parent.children, index + 1)
            end
        end
        factory.allUnitMap[obj.id] = nil
        watchTagsStop(nil)
        for k in pairs(obj.computedMap) do
            local computed = obj.computedMap[k]
            vue.stopComputed(computed)
        end
        for e in pairs(effectMap) do
            local f = effectMap[e]
            f:remove()
        end
        effectMap = {}
        for ____, w in ipairs(watchStateEffects) do
            w(nil)
        end
        if limitExistTimer ~= nil then
            limitExistTimer:remove()
        end
        obj.invalid = true
    end
    if params.parent ~= nil then
        obj.parent = params.parent
        local ____obj_parent_children_53 = obj.parent.children
        ____obj_parent_children_53[#____obj_parent_children_53 + 1] = obj
    end
    self:bindY3Object(obj)
    self.report:using(function(____, r)
        r:log(
            "创建单位：" .. tostring(obj.id),
            r:dumpUnit(obj)
        )
    end)
    if params.commandSkills ~= nil then
        for ____, skill in ipairs(params.commandSkills) do
            obj:addSkill(obj, skill, "命令")
        end
    end
    if params.hiddenSkills ~= nil then
        for ____, skill in ipairs(params.hiddenSkills) do
            obj:addSkill(obj, skill, "隐藏")
        end
    end
    if params.normalSkills ~= nil then
        for ____, skill in ipairs(params.normalSkills) do
            obj:addSkill(obj, skill, "普通")
        end
    end
    if params.heroSkills ~= nil then
        for ____, skill in ipairs(params.heroSkills) do
            obj:addSkill(obj, skill, "英雄")
        end
    end
    if params.simpleSKills ~= nil then
        for skill in pairs(params.simpleSKills) do
            obj:addSimpleSkill(obj, skill, params.simpleSKills[skill])
        end
    end
    if params.effects ~= nil then
        for ____, e in ipairs(params.effects) do
            obj:addEffect(obj, e.id, e.quantity)
        end
    end
    if params.tags ~= nil then
        for ____, tag in ipairs(params.tags) do
            obj:addTag(obj, tag)
        end
    end
    local ____opt_54 = self.callbacks
    if ____opt_54 ~= nil then
        ____opt_54:onCreate(obj)
    end
    return obj
end
function Fight.prototype.createEnvironmentUnit(self, params)
    return self:createUnitEntity(params)
end
function Fight.prototype.releaseUnitEntity(self, source, entity)
    entity:destroy(source)
end
function Fight.prototype.loadSkill(self, skillName)
    return self:loadSkillCallback(skillName)
end
function Fight.prototype.loadSimpleSkill(self, skillName)
    return self:loadSimpleSkillCallback(skillName)
end
function Fight.prototype.bindY3Object(self, unit)
    if unit._releaseY3Object ~= nil then
        self:unbindY3Object(unit)
    end
    if unit.roleId == -1 then
        return
    end
    local y3Unit = self.objectHelper:create(unit.playerId, unit.roleId)
    unit.y3Unit = y3Unit
    if self.getMoveAnimSpeed ~= nil then
        local moveAnimSpeed = self:getMoveAnimSpeed(unit.roleId)
        y3Unit:set_base_speed(moveAnimSpeed)
    end
    local stopMaxHpWatcher = vue.watch(
        function()
            return self:getHpMax(unit)
        end,
        function(____, newVal, oldVal)
            y3Unit:set_attr("hp_max", newVal, "ATTR_BASE")
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopMaxMpWatcher = vue.watch(
        function()
            return self:getMpMax(unit)
        end,
        function(____, newVal, oldVal)
            y3Unit:set_attr("mp_max", newVal, "ATTR_BASE")
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopSpeedWatcher = vue.watch(
        function()
            return self:getMoveSpeed(unit)
        end,
        function(____, newVal, oldVal)
            y3Unit:set_attr("ori_speed", newVal, "ATTR_BASE")
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopAtkSpeedWatcher = vue.watch(
        function()
            return self:getAttackSpeed(unit)
        end,
        function(____, newVal, oldVal)
            y3Unit:set_attr("attack_speed", newVal, "ATTR_BASE")
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopMpRecoverWatcher = vue.watch(
        function()
            return unit:isAlive() and self:getMpRecover(unit) or 0
        end,
        function(____, newVal, oldVal)
            y3Unit:set_attr("mp_rec", newVal, "ATTR_BASE")
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopScaleWatcher = vue.watch(
        function()
            return self:getScale(unit)
        end,
        function(____, newVal, oldVal)
            y3Unit:set_scale(newVal)
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local stopStateWatcher = vue.watch(
        function()
            if self.getY3State == nil then
                return 0
            else
                return self:getY3State(unit)
            end
        end,
        function(____, newVal, oldVal)
            if oldVal == nil then
                oldVal = 0
            end
            if newVal == nil then
                newVal = 0
            end
            local saved = newVal & oldVal
            local add = newVal ~ saved
            local remove = oldVal ~ saved
            if add > 0 then
                y3Unit:add_multi_state(add)
            end
            if remove > 0 then
                y3Unit:remove_multi_state(remove)
            end
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    if ____exports.fight.initShieldView ~= nil then
        ____exports.fight:initShieldView(unit)
    end
    local stopShieldWatcher = vue.watch(
        function()
            local shieldList = ____exports.fight:getShieldPropertyIdList()
            return __TS__ArrayMap(
                shieldList,
                function(____, pid) return unit:getProperty(pid) end
            )
        end,
        function(____, newVal, oldVal)
            ____exports.fight:refreshShieldView(unit, newVal)
        end,
        VUE_SYNC_IMMEDIATE_CONFIG
    )
    local hpChangeEvent = y3Unit:event(
        "单位-属性变化",
        "hp_cur",
        function(t, d)
            unit.activeData.values[self.hpValueId] = d.unit:get_hp()
        end
    )
    local mpChangeEvent = y3Unit:event(
        "单位-属性变化",
        "mp_cur",
        function(t, d)
            local newVal = d.unit:get_mp()
            local ____opt_56 = self.callbacks
            if ____opt_56 ~= nil then
                ____opt_56:onMpChange(unit, unit.activeData.values[self.mpValueId], newVal)
            end
            unit.activeData.values[self.mpValueId] = newVal
        end
    )
    local skillStartEvent = y3Unit:event(
        "施法-开始",
        function(trg, data)
            local skill = unit:getSkillEntityByAbility(data.ability)
            if skill ~= nil then
                unit:_triggerSkill(
                    skill,
                    data.ability:get_type() == 1
                )
            end
        end
    )
    local skillEndEvent = y3Unit:event(
        "施法-结束",
        function(trg, data)
            local skill = unit:getSkillEntityByAbility(data.ability)
            if skill ~= nil then
                unit:_triggerSkillEnd(
                    skill,
                    data.ability:get_type() == 1
                )
            end
        end
    )
    local toDieEvent = y3Unit:event(
        "单位-即将死亡",
        function(trg, data)
            local ____self_allY3UnitMap_60 = self.allY3UnitMap
            local ____opt_58 = data.source_unit
            local sourceUnit = ____self_allY3UnitMap_60[____opt_58 and ____opt_58.id] or unit.hurtSourceUnit
            unit:trigger("单位-即将死亡", {sourceUnit = sourceUnit})
            if sourceUnit ~= nil then
                runEvent(
                    nil,
                    unit.eventMap[1100000000 + 1],
                    0,
                    unit,
                    sourceUnit,
                    function() return "触发死亡打断" end
                )
                runEvent(
                    nil,
                    sourceUnit.eventMap[1100000000 + 11],
                    0,
                    unit,
                    sourceUnit,
                    function() return "触发击杀打断" end
                )
            end
        end
    )
    local dieEvent = y3Unit:event(
        "单位-死亡",
        function(trg, data)
            unit.activeData.pauseTimer = true
            unit.activeData.died = true
            local ____self_allY3UnitMap_63 = self.allY3UnitMap
            local ____opt_61 = data.source_unit
            local sourceUnit = ____self_allY3UnitMap_63[____opt_61 and ____opt_61.id] or unit.hurtSourceUnit
            local ____opt_64 = self.callbacks
            if ____opt_64 ~= nil then
                ____opt_64:onDied(unit, sourceUnit or unit)
            end
            unit:trigger("单位-死亡", {sourceUnit = sourceUnit})
            if unit.children ~= nil then
                local children = __TS__ArraySlice(unit.children)
                for ____, child in ipairs(children) do
                    if child.killOnParentDied == true then
                        child:kill(unit, nil, nil, true)
                    end
                end
            end
            if unit.destroyOnDied then
                unit:destroy(sourceUnit or unit)
            end
        end
    )
    local rebornEvent = y3Unit:event(
        "单位-复活",
        function()
            unit.activeData.died = false
        end
    )
    local changePosEvent = y3Unit:event(
        "单位-传送结束",
        function(trg, data)
            unit._posDirty = -1
            unit:getPosition()
        end
    )
    local moveAlongEndEvent = y3Unit:event(
        "单位-寻路结束",
        function()
            local ____opt_66 = self.callbacks
            if ____opt_66 ~= nil then
                ____opt_66:onMoveAlongEnd(unit)
            end
            unit:trigger("单位-寻路结束")
        end
    )
    y3Unit:set_point(
        y3.point.create(unit._pos.x, unit._pos.y),
        false
    )
    y3Unit:set_facing(unit.activeData.angle, 0)
    y3Unit:set_hp(unit.activeData.values[self.hpValueId])
    y3Unit:set_mp(unit.activeData.values[self.mpValueId])
    y3Unit:set_attr("hp_rec", 0, "ATTR_BASE")
    for key in pairs(unit.skills) do
        local skill = unit.skills[key]
        skill.ability = y3Unit:add_ability(skill.type, skill.key)
    end
    for ____, tag in ipairs(unit.activeData.tags) do
        y3Unit:add_tag(tostring(tag))
    end
    self.allY3UnitMap[y3Unit.id] = unit
    unit._releaseY3Object = function()
        unit:stopAllAbility()
        stopMaxHpWatcher(nil)
        stopMaxMpWatcher(nil)
        stopSpeedWatcher(nil)
        stopAtkSpeedWatcher(nil)
        stopStateWatcher(nil)
        stopMpRecoverWatcher(nil)
        stopScaleWatcher(nil)
        stopShieldWatcher(nil)
        hpChangeEvent:remove()
        mpChangeEvent:remove()
        skillStartEvent:remove()
        skillEndEvent:remove()
        toDieEvent:remove()
        dieEvent:remove()
        rebornEvent:remove()
        changePosEvent:remove()
        moveAlongEndEvent:remove()
        self.allY3UnitMap[y3Unit.id] = nil
        unit.y3Unit = nil
        unit._releaseY3Object = nil
        for k in pairs(unit.skills) do
            local skill = unit.skills[k]
            if skill.ability ~= nil then
                skill.ability:remove()
                skill.ability = nil
            end
        end
        self.objectHelper:remove(y3Unit)
    end
end
function Fight.prototype.unbindY3Object(self, unit)
    if unit._releaseY3Object ~= nil then
        unit:_releaseY3Object()
    end
end
function Fight.prototype.destroy(self)
    if self.destroyed then
        return
    end
    local units = __TS__ObjectValues(self.allUnitMap)
    for ____, unit in ipairs(units) do
        unit:destroy(unit)
    end
    for ____, e in ipairs(self.initEvents) do
        e:remove()
    end
    self.destroyed = true
end
--- 默认的战斗系统，大部分情况只需要用这个就行了
____exports.fight = __TS__New(____exports.Fight)
if y3.game.is_debug_mode() then
    y3.ltimer.wait_frame(
        1,
        function(t)
            t:remove()
            include("framework.fight.test.FightTest")
            include("framework.fight.test.EffectTest")
        end
    )
end
return ____exports
