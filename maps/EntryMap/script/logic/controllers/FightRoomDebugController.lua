local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__ParseFloat = ____lualib.__TS__ParseFloat
local __TS__Number = ____lualib.__TS__Number
local __TS__NumberIsNaN = ____lualib.__TS__NumberIsNaN
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__New = ____lualib.__TS__New
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSlice = ____lualib.__TS__StringSlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["24"] = 531,["25"] = 1,["26"] = 1,["27"] = 2,["28"] = 2,["29"] = 3,["30"] = 3,["31"] = 4,["32"] = 4,["33"] = 5,["34"] = 5,["35"] = 6,["36"] = 6,["37"] = 6,["38"] = 7,["39"] = 7,["40"] = 8,["41"] = 8,["42"] = 9,["43"] = 9,["44"] = 10,["45"] = 10,["46"] = 12,["47"] = 12,["48"] = 13,["49"] = 13,["50"] = 15,["56"] = 24,["57"] = 24,["58"] = 24,["60"] = 483,["61"] = 519,["62"] = 24,["63"] = 28,["64"] = 29,["65"] = 31,["68"] = 35,["69"] = 36,["70"] = 38,["71"] = 39,["72"] = 40,["73"] = 40,["76"] = 28,["77"] = 44,["78"] = 45,["79"] = 46,["80"] = 47,["81"] = 48,["83"] = 50,["84"] = 51,["85"] = 52,["87"] = 55,["88"] = 55,["89"] = 55,["90"] = 55,["91"] = 55,["92"] = 57,["94"] = 44,["95"] = 61,["96"] = 62,["97"] = 63,["98"] = 63,["99"] = 63,["100"] = 63,["101"] = 64,["104"] = 67,["105"] = 68,["106"] = 69,["107"] = 71,["110"] = 72,["111"] = 72,["113"] = 74,["114"] = 75,["118"] = 79,["119"] = 79,["120"] = 80,["121"] = 81,["122"] = 82,["123"] = 84,["124"] = 85,["125"] = 87,["126"] = 88,["127"] = 90,["128"] = 91,["129"] = 93,["132"] = 96,["133"] = 97,["135"] = 100,["136"] = 100,["137"] = 100,["138"] = 100,["139"] = 100,["142"] = 79,["145"] = 61,["146"] = 107,["147"] = 108,["148"] = 109,["149"] = 110,["150"] = 111,["152"] = 107,["153"] = 115,["154"] = 116,["155"] = 117,["156"] = 118,["158"] = 115,["159"] = 122,["160"] = 123,["161"] = 124,["162"] = 124,["163"] = 124,["164"] = 124,["165"] = 125,["166"] = 126,["169"] = 129,["170"] = 130,["171"] = 131,["172"] = 132,["173"] = 133,["176"] = 136,["177"] = 137,["180"] = 141,["181"] = 142,["182"] = 143,["183"] = 144,["184"] = 144,["185"] = 144,["186"] = 144,["187"] = 145,["188"] = 146,["191"] = 149,["192"] = 150,["193"] = 150,["194"] = 150,["195"] = 150,["196"] = 151,["197"] = 152,["200"] = 155,["201"] = 156,["202"] = 157,["203"] = 158,["204"] = 159,["205"] = 160,["207"] = 162,["208"] = 163,["211"] = 166,["212"] = 167,["213"] = 168,["214"] = 169,["215"] = 170,["216"] = 171,["217"] = 172,["220"] = 174,["221"] = 174,["222"] = 175,["223"] = 176,["224"] = 177,["225"] = 174,["228"] = 183,["229"] = 184,["231"] = 186,["232"] = 186,["233"] = 186,["234"] = 186,["235"] = 186,["236"] = 186,["237"] = 186,["238"] = 187,["239"] = 187,["240"] = 187,["241"] = 188,["242"] = 187,["243"] = 187,["245"] = 190,["246"] = 190,["247"] = 191,["248"] = 190,["251"] = 193,["252"] = 194,["254"] = 197,["255"] = 197,["256"] = 197,["257"] = 197,["258"] = 197,["262"] = 201,["263"] = 122,["264"] = 204,["265"] = 205,["266"] = 207,["269"] = 211,["270"] = 212,["271"] = 213,["272"] = 214,["273"] = 215,["276"] = 220,["277"] = 222,["278"] = 223,["279"] = 224,["280"] = 225,["281"] = 226,["282"] = 227,["283"] = 228,["284"] = 230,["285"] = 230,["286"] = 230,["287"] = 230,["288"] = 230,["289"] = 232,["290"] = 233,["291"] = 235,["292"] = 236,["293"] = 237,["296"] = 240,["297"] = 241,["298"] = 242,["299"] = 242,["300"] = 242,["301"] = 242,["302"] = 242,["304"] = 244,["305"] = 244,["306"] = 244,["307"] = 244,["308"] = 244,["310"] = 247,["311"] = 250,["312"] = 250,["313"] = 250,["314"] = 250,["315"] = 250,["316"] = 250,["317"] = 250,["318"] = 250,["319"] = 250,["320"] = 250,["321"] = 250,["322"] = 250,["323"] = 250,["324"] = 264,["325"] = 265,["326"] = 266,["328"] = 269,["329"] = 269,["330"] = 269,["331"] = 270,["332"] = 271,["333"] = 272,["335"] = 275,["336"] = 275,["337"] = 275,["338"] = 275,["339"] = 275,["340"] = 275,["341"] = 275,["342"] = 276,["343"] = 269,["344"] = 269,["345"] = 279,["346"] = 281,["347"] = 283,["348"] = 284,["349"] = 285,["350"] = 286,["351"] = 288,["352"] = 289,["353"] = 290,["354"] = 291,["357"] = 295,["358"] = 296,["359"] = 297,["361"] = 301,["362"] = 302,["363"] = 305,["364"] = 307,["365"] = 308,["366"] = 308,["367"] = 308,["368"] = 308,["369"] = 309,["370"] = 309,["371"] = 309,["372"] = 309,["373"] = 310,["374"] = 310,["375"] = 310,["376"] = 310,["377"] = 312,["378"] = 313,["379"] = 314,["380"] = 315,["381"] = 316,["382"] = 317,["383"] = 318,["385"] = 320,["388"] = 324,["389"] = 327,["390"] = 328,["391"] = 330,["392"] = 331,["393"] = 333,["394"] = 334,["395"] = 336,["398"] = 339,["399"] = 340,["401"] = 312,["403"] = 345,["404"] = 345,["406"] = 346,["407"] = 347,["408"] = 348,["409"] = 348,["410"] = 348,["411"] = 348,["412"] = 348,["413"] = 349,["414"] = 350,["416"] = 352,["419"] = 345,["423"] = 354,["424"] = 354,["426"] = 356,["427"] = 357,["428"] = 358,["429"] = 358,["430"] = 358,["431"] = 358,["432"] = 358,["433"] = 359,["434"] = 360,["436"] = 362,["439"] = 354,["443"] = 364,["444"] = 364,["446"] = 366,["447"] = 367,["448"] = 368,["449"] = 368,["450"] = 368,["451"] = 368,["452"] = 368,["453"] = 369,["454"] = 370,["456"] = 372,["459"] = 364,["462"] = 305,["463"] = 377,["464"] = 378,["465"] = 379,["467"] = 382,["468"] = 383,["469"] = 384,["470"] = 384,["471"] = 384,["472"] = 384,["474"] = 386,["475"] = 386,["476"] = 386,["477"] = 386,["478"] = 388,["479"] = 388,["480"] = 388,["481"] = 388,["482"] = 388,["483"] = 388,["484"] = 388,["485"] = 286,["486"] = 283,["487"] = 393,["488"] = 393,["489"] = 393,["490"] = 394,["491"] = 393,["492"] = 393,["493"] = 396,["495"] = 204,["496"] = 400,["497"] = 401,["498"] = 402,["499"] = 402,["500"] = 402,["501"] = 402,["502"] = 403,["503"] = 404,["506"] = 407,["507"] = 408,["508"] = 409,["509"] = 410,["512"] = 413,["513"] = 414,["516"] = 418,["517"] = 419,["518"] = 420,["519"] = 421,["520"] = 423,["521"] = 424,["523"] = 425,["524"] = 425,["525"] = 426,["526"] = 427,["527"] = 428,["529"] = 425,["534"] = 400,["535"] = 435,["536"] = 436,["537"] = 437,["538"] = 437,["539"] = 437,["540"] = 437,["541"] = 438,["542"] = 439,["545"] = 442,["546"] = 443,["547"] = 444,["548"] = 445,["551"] = 448,["552"] = 449,["555"] = 453,["556"] = 454,["557"] = 455,["558"] = 456,["559"] = 458,["560"] = 459,["562"] = 460,["563"] = 460,["564"] = 461,["565"] = 462,["566"] = 463,["568"] = 460,["573"] = 435,["574"] = 471,["575"] = 472,["576"] = 472,["577"] = 472,["578"] = 473,["579"] = 474,["580"] = 475,["581"] = 476,["582"] = 477,["585"] = 472,["586"] = 472,["587"] = 471,["588"] = 484,["589"] = 486,["590"] = 487,["591"] = 488,["592"] = 490,["593"] = 491,["594"] = 492,["595"] = 493,["597"] = 495,["598"] = 496,["599"] = 497,["601"] = 486,["602"] = 500,["603"] = 501,["604"] = 503,["605"] = 504,["606"] = 505,["610"] = 510,["611"] = 510,["612"] = 510,["613"] = 512,["614"] = 513,["615"] = 514,["617"] = 510,["618"] = 510,["619"] = 484,["620"] = 520,["621"] = 521,["622"] = 522,["624"] = 524,["626"] = 526,["627"] = 520,["628"] = 531,["629"] = 531,["630"] = 531,["631"] = 531,["632"] = 531,["633"] = 531,["634"] = 531,["635"] = 531,["636"] = 531,["637"] = 531,["638"] = 531,["639"] = 531,["640"] = 531,["641"] = 531,["642"] = 531,["643"] = 531,["644"] = 531,["645"] = 531,["646"] = 531,["647"] = 531,["648"] = 531,["649"] = 531,["650"] = 531,["651"] = 531,["652"] = 531,["653"] = 557,["654"] = 558,["655"] = 559,["656"] = 559,["657"] = 559,["658"] = 560,["659"] = 561,["662"] = 565,["663"] = 566,["664"] = 567,["665"] = 569,["666"] = 570,["667"] = 571,["669"] = 573,["671"] = 577,["673"] = 578,["675"] = 559,["676"] = 559});
local ____exports = {}
local stateMap
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DebugRoomClient = include("framework.debug.DebugRoomClient")
local debugRoomClient = ____DebugRoomClient.debugRoomClient
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local genreConfigMap_genre = ____GenreConfig.genreConfigMap_genre
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____TalentConfig = include("logic.configs.TalentConfig")
local talentConfigList = ____TalentConfig.talentConfigList
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____Status = include("logic.models.Status")
local StateList = ____Status.StateList
local ____EffectUtils = include("logic.utils.EffectUtils")
local EffectUtils = ____EffectUtils.EffectUtils
local originRandom = math.random
--- !st name count 所有单位增加统计
-- !random 0.1 设置随机数，不传参可还原
-- !genre name id num 添加流派
-- !test 5 每5秒记录一次统计
-- !test 记录间隔 是否自动加流派卡 重启间隔 流派1 流派2 蓝卡数量 紫卡数量 金卡数量
____exports.FightRoomDebugController = __TS__Class()
local FightRoomDebugController = ____exports.FightRoomDebugController
FightRoomDebugController.name = "FightRoomDebugController"
function FightRoomDebugController.prototype.____constructor(self)
    self.randomAddStateTimer = nil
    self.isPause = true
end
function FightRoomDebugController.prototype.st(self, args)
    local list = __TS__StringSplit(args, " ")
    if #list < 2 then
        return
    end
    local name = __TS__StringTrim(list[1])
    local count = __TS__ParseInt(list[2])
    for id in pairs(fight.allUnitMap) do
        local unit = fight.allUnitMap[id]
        if unit ~= nil then
            unit:genStatistics(name, count)
        end
    end
end
function FightRoomDebugController.prototype.random(self, args)
    local random = __TS__StringTrim(args)
    if random == "" then
        math.random = originRandom
        y3.ui.display_message(y3.player.LOCAL_PLAYER, "随机数已还原", 30)
    else
        local v = __TS__ParseFloat(random)
        if v ~= v then
            v = 0
        end
        y3.ui.display_message(
            y3.player.LOCAL_PLAYER,
            "随机数已固定为" .. tostring(v),
            30
        )
        math.random = function() return v end
    end
end
function FightRoomDebugController.prototype.genre(self, args)
    console:log(args)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        return
    end
    local name = list[1]
    local id = __TS__ParseInt(list[2])
    local quantity = __TS__ParseInt(list[3] or "1")
    if not id then
        return
    end
    if not quantity or __TS__NumberIsNaN(__TS__Number(quantity)) then
        quantity = 1
    end
    local config = genreConfigMap[id]
    if not config then
        return
    end
    do
        local i = 0
        while i < quantity do
            for k in pairs(fight.allUnitMap) do
                local unit = fight.allUnitMap[k]
                if unit:getName() == name then
                    if config.skill ~= nil then
                        if config.skill.skillPos == 1 then
                            unit:addSkill(unit, config.skill.abilityName, "普通")
                        elseif config.skill.skillPos == 2 then
                            unit:addSkill(unit, config.skill.abilityName, "命令")
                        elseif config.skill.skillPos == 3 then
                            unit:addSimpleSkill(unit, config.skill.abilityName)
                        end
                    end
                    for ____, e in ipairs(config.effect) do
                        unit:addEffect(unit, e.id)
                    end
                    y3.ui.display_message(
                        y3.player.LOCAL_PLAYER,
                        (("单位 " .. unit:getName()) .. " #ffffff 成功添加流派卡 #00ff00 ") .. tostring(config.name),
                        30
                    )
                end
            end
            i = i + 1
        end
    end
end
function FightRoomDebugController.prototype.showBuild(self)
    if self._buildEffect == nil then
        local posId = mapConfig.playerPoints[LOCAL.PLAYER_ID]
        local pos = y3.point.get_point_by_res_id(posId)
        self._buildEffect = EffectUtils:add(134278181, pos, 0, 1)
    end
end
function FightRoomDebugController.prototype.hideBuild(self)
    if self._buildEffect ~= nil then
        self._buildEffect:remove()
        self._buildEffect = nil
    end
end
function FightRoomDebugController.prototype.talent(self, args)
    console:log(args)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 3 then
        console:log("参数不足 1 2 3")
        return
    end
    local name = list[1]
    local talentType = __TS__ParseInt(list[2])
    local value = __TS__ParseInt(list[3])
    if not talentType then
        console:log("type 不能为空")
        return
    end
    if not value then
        console:log("value 不能为空")
        return
    end
    for k in pairs(fight.allUnitMap) do
        local unit = fight.allUnitMap[k]
        if unit:getName() == name then
            local heroConfig = __TS__ArrayFind(
                heroConfigList,
                function(____, a) return a.name == name end
            )
            if not heroConfig then
                console:log("单位不存在")
                return
            end
            local skillId = math.floor(heroConfig.skill[1].id / 10) * 10 + talentType
            local talentConfigs = __TS__ArrayFilter(
                talentConfigList,
                function(____, a) return a.skillAbility ~= nil and a.skillAbility.id == skillId end
            )
            if #talentConfigs < 2 then
                console:log("天赋配置不足")
                return
            end
            local config
            local x = 0
            if value == 1 then
                config = talentConfigs[1]
            elseif value == 2 then
                config = talentConfigs[2]
            end
            if not config then
                console:log("天赋配置不存在")
                return
            end
            local ____type = talentType + 200
            unit:setValue(____type, value)
            local quantities = {}
            local replacedEffectIds = {}
            local addIds = {}
            if #config.replaceEffectQuantity % 2 ~= 0 then
                console:error("天赋配置错误,替换effect不成对")
            end
            do
                local i = 0
                while i < #config.replaceEffectQuantity do
                    replacedEffectIds[#replacedEffectIds + 1] = config.replaceEffectQuantity[i + 1].id
                    quantities[#quantities + 1] = unit:getEffectQuantity(config.replaceEffectQuantity[i + 1].id)
                    addIds[#addIds + 1] = config.replaceEffectQuantity[i + 1 + 1].id
                    i = i + 2
                end
            end
            if #replacedEffectIds > 0 then
                unit:removeEffect(unit, replacedEffectIds)
            end
            unit:removeEffect(
                unit,
                __TS__ArrayMap(
                    config.removeEffects,
                    function(____, a) return a.id end
                )
            )
            __TS__ArrayForEach(
                config.newEffects,
                function(____, a)
                    unit:addEffect(unit, a.id)
                end
            )
            do
                local i = 0
                while i < #addIds do
                    unit:addEffect(unit, addIds[i + 1], quantities[i + 1])
                    i = i + 1
                end
            end
            if config.addSimpleSkill ~= nil then
                unit:addSimpleSkill(unit, config.addSimpleSkill.abilityName)
            end
            y3.ui.display_message(
                y3.player.LOCAL_PLAYER,
                (("单位 " .. unit:getName()) .. " #ffffff 成功添加天赋 #00ff00 ") .. tostring(config.describe),
                30
            )
            return
        end
    end
    console:log("单位不存在")
end
function FightRoomDebugController.prototype.test(self, args)
    local list = __TS__StringSplit(args, " ")
    if #list < 1 then
        return
    end
    local selectedUnit
    for id in pairs(fight.allUnitMap) do
        local unit = fight.allUnitMap[id]
        if (unit and unit.playerId) == 1 then
            selectedUnit = unit
        end
    end
    local seconds = __TS__ParseInt(list[1])
    local autoGetGenre = list[2] == "1"
    local time = __TS__ParseInt(list[3] or "1")
    local genre1 = __TS__ParseInt(list[4] or "1")
    local genre2 = __TS__ParseInt(list[5] or "0")
    local blue = __TS__ParseInt(list[6] or "0")
    local purple = __TS__ParseInt(list[7] or "0")
    local gold = __TS__ParseInt(list[8] or "0")
    local filename = (((selectedUnit:getName() .. " ") .. tostring(seconds)) .. "秒 ") .. __TS__StringReplaceAll(
        __TS__New(Date):toLocaleString(),
        ":",
        "："
    )
    local root = string.match(_G.script_path, "^(.-)%?")
    local filepath = root .. ("/.log/" .. filename) .. ".csv"
    local outfile = io.open(filepath, "w+")
    if outfile == nil then
        y3.ui.display_message(y3.player.LOCAL_PLAYER, "无法创建文件 " .. filepath, 60)
        return
    end
    outfile:setvbuf("no")
    if autoGetGenre then
        y3.ui.display_message(
            y3.player.LOCAL_PLAYER,
            ((((((((((((((("开始每隔" .. tostring(seconds)) .. "秒自动统计战斗数据，间隔") .. tostring(time)) .. "秒重启游戏，") .. tostring(genre1)) .. ",") .. tostring(genre2)) .. ",") .. tostring(blue)) .. ",") .. tostring(purple)) .. ",") .. tostring(gold)) .. "，日志将保存到.log/") .. filename) .. ".csv",
            60
        )
    else
        y3.ui.display_message(
            y3.player.LOCAL_PLAYER,
            ((("开始每隔" .. tostring(seconds)) .. "秒自动统计战斗数据，日志将保存到.log/") .. filename) .. ".csv",
            60
        )
    end
    outfile:write("物理(输出),法术(输出),固定(输出),真实(输出),物理(受到),法术(受到),固定(受到),真实(受到),血量恢复,获得护盾,召唤物伤害\n")
    local stList = {
        "累计产生物理伤害值",
        "累计产生法术伤害值",
        "累计产生固定伤害值",
        "累计产生真实伤害值",
        "累计被物理伤害值",
        "累计被法术伤害值",
        "累计被固定伤害值",
        "累计被真实伤害值",
        "累计被恢复血量值",
        "通用护盾累计数值",
        "我的召唤物造成伤害"
    }
    local recordData = {}
    for ____, k in ipairs(stList) do
        recordData[k] = selectedUnit.activeData.statistics[k] or 0
    end
    y3.ltimer.loop(
        seconds,
        function()
            local data = {}
            for ____, k in ipairs(stList) do
                data[k] = selectedUnit.activeData.statistics[k] or 0
            end
            outfile:write(table.concat(
                __TS__ArrayMap(
                    stList,
                    function(____, k) return data[k] - recordData[k] end
                ),
                ","
            ) .. "\n")
            recordData = data
        end
    )
    GameAPI.api_set_time_scale(2)
    if autoGetGenre then
        local function reload()
            local room = debugRoomClient.room
            room._seed = math.random(0, 1000000)
            room:reload(function()
                for id in pairs(fight.allUnitMap) do
                    local unit = fight.allUnitMap[id]
                    if (unit and unit.playerId) == 1 then
                        selectedUnit = unit
                    end
                end
                recordData = {}
                for ____, k in ipairs(stList) do
                    recordData[k] = selectedUnit.activeData.statistics[k] or 0
                end
                local blueGenreMap = {}
                local cardMap = {}
                local function get(____, g)
                    local genre = __TS__ArraySlice(genreConfigMap_genre[g])
                    local blueCards = __TS__ArrayFilter(
                        genre,
                        function(____, a) return a.rarity == 1 end
                    )
                    local purpleCards = __TS__ArrayFilter(
                        genre,
                        function(____, a) return a.rarity == 2 end
                    )
                    local goldCards = __TS__ArrayFilter(
                        genre,
                        function(____, a) return a.rarity == 3 end
                    )
                    local function put(____, card)
                        if card.rarity == 1 then
                            for ____, g in ipairs(card.genre) do
                                local count = blueGenreMap[g]
                                if count == nil then
                                    count = 0
                                    blueGenreMap[g] = count
                                end
                                blueGenreMap[g] = count + 1
                            end
                        end
                        cardMap[card.id] = (cardMap[card.id] or 0) + 1
                        if card.skill ~= nil then
                            if card.skill.skillPos == 1 then
                                selectedUnit:addSkill(selectedUnit, card.skill.abilityName, "普通")
                            elseif card.skill.skillPos == 2 then
                                selectedUnit:addSkill(selectedUnit, card.skill.abilityName, "命令")
                            elseif card.skill.skillPos == 3 then
                                selectedUnit:addSimpleSkill(selectedUnit, card.skill.abilityName)
                            end
                        end
                        for ____, e in ipairs(card.effect) do
                            selectedUnit:addEffect(selectedUnit, e.id)
                        end
                    end
                    do
                        local i = 0
                        while i < blue - (blueGenreMap[g] or 0) do
                            do
                                local card = random:randomList(blueCards)
                                if (cardMap[card.id] or 0) >= card.maxLevel then
                                    __TS__ArraySplice(
                                        blueCards,
                                        __TS__ArrayIndexOf(blueCards, card),
                                        1
                                    )
                                    i = i - 1
                                    goto __continue89
                                end
                                put(nil, card)
                            end
                            ::__continue89::
                            i = i + 1
                        end
                    end
                    do
                        local i = 0
                        while i < purple do
                            do
                                local card = random:randomList(purpleCards)
                                if (cardMap[card.id] or 0) >= card.maxLevel then
                                    __TS__ArraySplice(
                                        purpleCards,
                                        __TS__ArrayIndexOf(purpleCards, card),
                                        1
                                    )
                                    i = i - 1
                                    goto __continue91
                                end
                                put(nil, card)
                            end
                            ::__continue91::
                            i = i + 1
                        end
                    end
                    do
                        local i = 0
                        while i < gold do
                            do
                                local card = random:randomList(goldCards)
                                if (cardMap[card.id] or 0) >= card.maxLevel then
                                    __TS__ArraySplice(
                                        goldCards,
                                        __TS__ArrayIndexOf(goldCards, card),
                                        1
                                    )
                                    i = i - 1
                                    goto __continue93
                                end
                                put(nil, card)
                            end
                            ::__continue93::
                            i = i + 1
                        end
                    end
                end
                get(nil, genre1)
                if genre2 ~= 0 then
                    get(nil, genre2)
                end
                local cardRecord = {}
                for k in pairs(cardMap) do
                    cardRecord[#cardRecord + 1] = {
                        id = k,
                        v = (tostring(genreConfigMap[k].name) .. "x") .. tostring(cardMap[k])
                    }
                end
                __TS__ArraySort(
                    cardRecord,
                    function(____, a, b) return a.id - b.id end
                )
                outfile:write(("流派卡：" .. table.concat(
                    __TS__ArrayMap(
                        cardRecord,
                        function(____, a) return a.v end
                    ),
                    ";"
                )) .. "\n")
            end)
        end
        y3.ltimer.loop(
            time,
            function()
                reload(nil)
            end
        )
        reload(nil)
    end
end
function FightRoomDebugController.prototype.addState(self, args)
    console:log(args)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        console:log("参数不足 1 2")
        return
    end
    local name = list[1]
    local stateId = __TS__ParseInt(list[2])
    if not name then
        console:log("name 不能为空")
        return
    end
    if not stateId then
        console:log("stateId 不能为空")
        return
    end
    for j in pairs(fight.allUnitMap) do
        local unitEntity = fight.allUnitMap[j]
        if unitEntity:getName() == name then
            local key = unitEntity:addTemporaryState(unitEntity, stateId)
            console:log((((("向" .. unitEntity.y3Unit:get_name()) .. "添加非Y3状态") .. tostring(stateId)) .. ",key:") .. tostring(key))
            local k = 1
            do
                local i = 0
                while i < 23 do
                    k = k << 1
                    if unitEntity.y3Unit:has_state(k) then
                        console:log((((unitEntity.y3Unit:get_name() .. " 持有y3状态 ") .. tostring(k)) .. ",") .. stateMap[k])
                    end
                    i = i + 1
                end
            end
        end
    end
end
function FightRoomDebugController.prototype.removeState(self, args)
    console:log(args)
    local list = __TS__StringSplit(
        string.lower(__TS__StringTrim(args)),
        " "
    )
    if #list < 2 then
        console:log("参数不足 1 2")
        return
    end
    local name = list[1]
    local key = __TS__ParseInt(list[2])
    if not name then
        console:log("name 不能为空")
        return
    end
    if not key then
        console:log("stateId 不能为空")
        return
    end
    for j in pairs(fight.allUnitMap) do
        local unitEntity = fight.allUnitMap[j]
        if unitEntity:getName() == name then
            unitEntity:removeTemporaryState(unitEntity, key)
            console:log((("从" .. unitEntity.y3Unit:get_name()) .. "移除非Y3状态,key:") .. tostring(key))
            local k = 1
            do
                local i = 0
                while i < 23 do
                    k = k << 1
                    if unitEntity.y3Unit:has_state(k) then
                        console:log((((unitEntity.y3Unit:get_name() .. " 持有y3状态 ") .. tostring(k)) .. ",") .. stateMap[k])
                    end
                    i = i + 1
                end
            end
        end
    end
end
function FightRoomDebugController.prototype.autoReborn(self)
    y3.ltimer.loop(
        1,
        function()
            for j in pairs(fight.allUnitMap) do
                local unitEntity = fight.allUnitMap[j]
                if not unitEntity:isAlive() then
                    unitEntity:reborn(unitEntity)
                    unitEntity.y3Unit:set_height(0, 0)
                end
            end
        end
    )
end
function FightRoomDebugController.prototype.randomAddState(self)
    local function add(____, unitData, add)
        local randoms = random:randomList(StateList)
        local key = randoms and randoms.key
        local oldKey = unitData:getValue(-99999)
        if oldKey ~= nil and oldKey ~= 0 then
            unitData:removeTemporaryState(unitData, oldKey)
            unitData:setValue(-99999, 0)
        end
        if key ~= nil and add then
            local id = unitData:addTemporaryState(unitData, key)
            unitData:setValue(-99999, id)
        end
    end
    if self.randomAddStateTimer ~= nil then
        self.randomAddStateTimer:remove()
        for j in pairs(fight.allUnitMap) do
            local unitEntity = fight.allUnitMap[j]
            add(nil, unitEntity, false)
        end
        return
    end
    self.randomAddStateTimer = y3.ltimer.loop(
        0.2,
        function()
            for j in pairs(fight.allUnitMap) do
                local unitEntity = fight.allUnitMap[j]
                add(nil, unitEntity, true)
            end
        end
    )
end
function FightRoomDebugController.prototype.pause(self)
    if self.isPause then
        y3.game.resume_soft_pause()
    else
        y3.game.enable_soft_pause()
    end
    self.isPause = not self.isPause
end
stateMap = {
    [2] = "禁止普攻",
    [4] = "禁止施法",
    [8] = "禁止移动",
    [16] = "禁止转向",
    [32] = "动画定帧",
    [64] = "无法施加运动",
    [128] = "无法被技能指示器锁定",
    [256] = "无法被选中",
    [512] = "隐身",
    [1024] = "无视静态碰撞",
    [2048] = "无视动态碰撞",
    [4096] = "不会死亡",
    [8192] = "无敌",
    [16384] = "无法控制",
    [32768] = "无法被攻击",
    [65536] = "AI无视",
    [131072] = "物理伤害免疫",
    [262144] = "魔法伤害免疫",
    [524288] = "负面效果免疫",
    [1048576] = "隐藏",
    [2097152] = "无法被筛选器选中",
    [4194304] = "真实伤害免疫",
    [8388608] = "禁止使用道具"
}
____exports.fightRoomDebugController = make(nil, ____exports.FightRoomDebugController)
if debugEnv.enabled then
    y3.game:event(
        "玩家-发送消息",
        function(tr, data)
            local command = data.str1
            if not __TS__StringStartsWith(command, "!") then
                return
            end
            local firstSpaceIndex = (string.find(command, " ", nil, true) or 0) - 1
            local cmd = ""
            local args = ""
            if firstSpaceIndex ~= -1 then
                cmd = __TS__StringSlice(command, 1, firstSpaceIndex)
                args = __TS__StringSlice(command, firstSpaceIndex + 1)
            else
                cmd = __TS__StringSlice(command, 1, #command)
            end
            if ____exports.fightRoomDebugController[cmd] ~= nil then
                local ____self_8 = ____exports.fightRoomDebugController
                ____self_8[cmd](____self_8, args)
            end
        end
    )
end
return ____exports
