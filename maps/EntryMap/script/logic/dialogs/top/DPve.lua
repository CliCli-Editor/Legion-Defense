local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 14,["40"] = 14,["41"] = 15,["42"] = 15,["43"] = 16,["44"] = 16,["45"] = 16,["46"] = 17,["47"] = 17,["48"] = 17,["49"] = 17,["50"] = 19,["51"] = 19,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["57"] = 22,["58"] = 23,["59"] = 22,["60"] = 25,["61"] = 26,["62"] = 25,["63"] = 28,["64"] = 29,["65"] = 30,["66"] = 30,["67"] = 30,["68"] = 31,["69"] = 30,["70"] = 30,["72"] = 34,["73"] = 34,["74"] = 35,["75"] = 36,["76"] = 36,["77"] = 36,["78"] = 37,["79"] = 38,["80"] = 36,["81"] = 36,["82"] = 40,["83"] = 40,["84"] = 40,["85"] = 41,["86"] = 42,["87"] = 40,["88"] = 40,["89"] = 49,["90"] = 49,["91"] = 49,["92"] = 50,["93"] = 50,["95"] = 51,["96"] = 49,["97"] = 49,["98"] = 53,["99"] = 53,["100"] = 53,["101"] = 54,["102"] = 54,["104"] = 55,["105"] = 53,["106"] = 53,["107"] = 58,["108"] = 58,["109"] = 58,["110"] = 59,["111"] = 59,["112"] = 59,["113"] = 59,["114"] = 60,["115"] = 60,["117"] = 61,["118"] = 58,["119"] = 58,["120"] = 64,["121"] = 64,["122"] = 64,["123"] = 65,["124"] = 65,["125"] = 65,["126"] = 65,["127"] = 66,["128"] = 66,["130"] = 67,["131"] = 64,["132"] = 64,["133"] = 70,["134"] = 70,["135"] = 70,["136"] = 71,["137"] = 71,["139"] = 72,["140"] = 70,["141"] = 70,["142"] = 75,["143"] = 75,["144"] = 75,["145"] = 76,["146"] = 76,["148"] = 77,["149"] = 75,["150"] = 75,["151"] = 34,["154"] = 120,["155"] = 120,["156"] = 120,["157"] = 121,["158"] = 122,["159"] = 122,["161"] = 123,["162"] = 123,["164"] = 124,["165"] = 124,["167"] = 125,["168"] = 120,["169"] = 120,["170"] = 127,["171"] = 127,["172"] = 127,["173"] = 128,["174"] = 127,["175"] = 127,["176"] = 130,["177"] = 130,["178"] = 130,["179"] = 131,["180"] = 130,["181"] = 130,["182"] = 133,["183"] = 133,["184"] = 133,["185"] = 134,["186"] = 133,["187"] = 133,["188"] = 136,["189"] = 136,["190"] = 136,["191"] = 137,["192"] = 136,["193"] = 136,["194"] = 139,["195"] = 141,["196"] = 28,["197"] = 144,["198"] = 146,["199"] = 147,["200"] = 149,["201"] = 152,["202"] = 153,["203"] = 153,["205"] = 154,["206"] = 156,["207"] = 157,["208"] = 158,["209"] = 159,["210"] = 160,["211"] = 161,["212"] = 162,["214"] = 167,["215"] = 168,["217"] = 173,["218"] = 174,["220"] = 179,["221"] = 180,["222"] = 181,["223"] = 182,["225"] = 189,["226"] = 191,["227"] = 192,["228"] = 193,["229"] = 193,["230"] = 193,["231"] = 193,["232"] = 194,["233"] = 195,["234"] = 195,["235"] = 195,["236"] = 195,["237"] = 196,["238"] = 197,["239"] = 197,["240"] = 197,["241"] = 197,["242"] = 198,["243"] = 199,["244"] = 199,["245"] = 199,["246"] = 199,["248"] = 202,["249"] = 203,["250"] = 203,["251"] = 203,["252"] = 204,["253"] = 205,["255"] = 210,["256"] = 211,["258"] = 216,["259"] = 217,["261"] = 203,["262"] = 203,["264"] = 224,["265"] = 225,["266"] = 225,["267"] = 225,["268"] = 225,["269"] = 225,["270"] = 225,["271"] = 225,["272"] = 225,["275"] = 228,["276"] = 229,["277"] = 229,["278"] = 229,["279"] = 230,["280"] = 229,["281"] = 229,["282"] = 238,["283"] = 239,["284"] = 239,["285"] = 239,["286"] = 240,["287"] = 241,["288"] = 241,["289"] = 241,["290"] = 242,["291"] = 242,["292"] = 242,["294"] = 243,["295"] = 244,["296"] = 244,["297"] = 244,["298"] = 244,["301"] = 239,["302"] = 239,["303"] = 247,["304"] = 247,["305"] = 247,["306"] = 248,["307"] = 249,["309"] = 247,["310"] = 247,["313"] = 254,["314"] = 149,["316"] = 257,["317"] = 257,["318"] = 258,["319"] = 259,["320"] = 260,["321"] = 261,["322"] = 261,["323"] = 261,["324"] = 261,["325"] = 262,["326"] = 262,["327"] = 262,["328"] = 263,["329"] = 263,["331"] = 264,["332"] = 264,["334"] = 265,["335"] = 266,["336"] = 267,["337"] = 268,["339"] = 270,["340"] = 262,["341"] = 262,["342"] = 272,["343"] = 272,["344"] = 272,["345"] = 273,["346"] = 273,["348"] = 274,["349"] = 272,["350"] = 272,["351"] = 257,["354"] = 144,["355"] = 279,["356"] = 281,["357"] = 281,["358"] = 281,["359"] = 281,["360"] = 283,["361"] = 283,["362"] = 283,["363"] = 284,["364"] = 283,["365"] = 283,["366"] = 286,["367"] = 286,["368"] = 286,["369"] = 287,["370"] = 286,["371"] = 286,["372"] = 289,["373"] = 289,["374"] = 289,["375"] = 290,["376"] = 291,["377"] = 291,["379"] = 292,["380"] = 289,["381"] = 289,["382"] = 294,["383"] = 294,["384"] = 294,["385"] = 295,["386"] = 296,["387"] = 296,["389"] = 297,["390"] = 294,["391"] = 294,["392"] = 300,["393"] = 300,["394"] = 300,["395"] = 301,["396"] = 302,["397"] = 300,["398"] = 300,["399"] = 304,["400"] = 304,["401"] = 304,["402"] = 305,["403"] = 306,["404"] = 304,["405"] = 304,["406"] = 309,["407"] = 309,["408"] = 309,["409"] = 310,["410"] = 311,["411"] = 311,["413"] = 312,["414"] = 309,["415"] = 309,["416"] = 314,["417"] = 314,["418"] = 314,["419"] = 315,["420"] = 316,["421"] = 316,["423"] = 317,["424"] = 314,["425"] = 314,["426"] = 320,["427"] = 320,["428"] = 320,["429"] = 321,["430"] = 322,["431"] = 322,["433"] = 323,["434"] = 320,["435"] = 320,["436"] = 325,["437"] = 325,["438"] = 325,["439"] = 326,["440"] = 327,["441"] = 327,["443"] = 328,["444"] = 325,["445"] = 325,["446"] = 331,["447"] = 331,["448"] = 331,["449"] = 332,["450"] = 331,["451"] = 331,["452"] = 335,["453"] = 335,["454"] = 335,["455"] = 336,["456"] = 335,["457"] = 335,["458"] = 340,["459"] = 340,["460"] = 340,["461"] = 341,["462"] = 340,["463"] = 340,["464"] = 279,["465"] = 345,["466"] = 346,["467"] = 346,["468"] = 347,["469"] = 348,["470"] = 346,["471"] = 349,["472"] = 350,["473"] = 352,["474"] = 353,["476"] = 353,["478"] = 354,["479"] = 354,["480"] = 354,["481"] = 355,["482"] = 356,["483"] = 358,["484"] = 359,["485"] = 359,["486"] = 359,["487"] = 359,["488"] = 359,["489"] = 359,["490"] = 359,["491"] = 361,["492"] = 362,["493"] = 363,["494"] = 364,["496"] = 354,["497"] = 354,["499"] = 346,["500"] = 346,["501"] = 345});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____MonsterPoolConfig = include("logic.configs.MonsterPoolConfig")
local monsterPoolConfigMap = ____MonsterPoolConfig.monsterPoolConfigMap
local ____SpecialMonsterConfig = include("logic.configs.SpecialMonsterConfig")
local specialMonsterConfigList = ____SpecialMonsterConfig.specialMonsterConfigList
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameRandomEventType = ____GameData.GameRandomEventType
local GameStatus = ____GameData.GameStatus
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____LevelData = include("logic.models.LevelData")
local LevelData = ____LevelData.LevelData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.DPve = __TS__Class()
local DPve = ____exports.DPve
DPve.name = "DPve"
__TS__ClassExtends(DPve, Dialog)
function DPve.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {showImage = false, showStartText = false}
end
function DPve.prototype.onCreate(self)
    self:initTop()
end
function DPve.prototype.initTop(self)
    local gameData = datas.global:getSingle(GameData)
    self:bindVisible(
        "NormalLevelInfo",
        function()
            return gameData.mode == GameMode.NORMAL or gameData.mode == GameMode.ELITE or gameData.mode == GameMode["镜像"]
        end
    )
    do
        local i = 0
        while i < 3 do
            local k = i
            self:bindVisible(
                ("NormalLevelInfo.left.bg.boold" .. tostring(k + 1)) .. ".disable",
                function()
                    local kingData = datas.players[PlayerId.LEFT_KING]:getSingle(KingData)
                    return #kingData.deathList > k
                end
            )
            self:bindVisible(
                ("NormalLevelInfo.right.bg.boold" .. tostring(k + 1)) .. ".disable",
                function()
                    local kingData = datas.players[PlayerId.RIGHT_KING]:getSingle(KingData)
                    return #kingData.deathList > k
                end
            )
            self:bindImage(
                "NormalLevelInfo.left.bg.boold" .. tostring(k + 1),
                function()
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING then
                        return 134279915
                    end
                    return 134234913
                end
            )
            self:bindImage(
                "NormalLevelInfo.right.bg.boold" .. tostring(k + 1),
                function()
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING then
                        return 134279915
                    end
                    return 134234913
                end
            )
            self:bindProgress(
                "NormalLevelInfo.left.bg.hp_" .. tostring(k + 1),
                function()
                    local units = __TS__ArrayFilter(
                        datas.players[PlayerId.LEFT_KING]:getAll(UnitData),
                        function(____, a) return a.type == UnitType.KING end
                    )
                    if #units == 0 then
                        return 100
                    end
                    return units[k + 1].entity:v(1) / units[k + 1].entity:p(1) * 100
                end
            )
            self:bindProgress(
                "NormalLevelInfo.right.bg.hp_" .. tostring(k + 1),
                function()
                    local units = __TS__ArrayFilter(
                        datas.players[PlayerId.RIGHT_KING]:getAll(UnitData),
                        function(____, a) return a.type == UnitType.KING end
                    )
                    if #units == 0 then
                        return 100
                    end
                    return units[k + 1].entity:v(1) / units[k + 1].entity:p(1) * 100
                end
            )
            self:bindImage(
                ("NormalLevelInfo.left.bg.hp_" .. tostring(k + 1)) .. ".progress_bar_img",
                function()
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING then
                        return 134256950
                    end
                    return 134243148
                end
            )
            self:bindImage(
                ("NormalLevelInfo.right.bg.hp_" .. tostring(k + 1)) .. ".progress_bar_img",
                function()
                    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING then
                        return 134256950
                    end
                    return 134243148
                end
            )
            i = i + 1
        end
    end
    self:bindText(
        "NormalLevelInfo.center.type",
        function()
            local cfg = levelConfigMap[gameData.level]
            if GameUtils:getLevelType(cfg) == 1 then
                return i18n["local"](i18n, "小怪关卡")
            end
            if GameUtils:getLevelType(cfg) == 2 then
                return i18n["local"](i18n, "精英关卡")
            end
            if GameUtils:getLevelType(cfg) == 4 then
                return i18n["local"](i18n, "对抗关卡")
            end
            return i18n:format("第${level}回合", {level = gameData.level})
        end
    )
    self:bindText(
        "NormalLevelInfo.center.level",
        function()
            return i18n:format("第${level}回合", {level = gameData.level})
        end
    )
    self:bindText(
        "NormalLevelInfo.center.time",
        function()
            return tostring(gameLoop.timeLeft.value)
        end
    )
    self:bindVisible(
        "NormalLevelInfo.center.fight",
        function()
            return gameData.gameStatus ~= GameStatus["准备回合"]
        end
    )
    self:bindVisible(
        "NormalLevelInfo.center.ready",
        function()
            return gameData.gameStatus == GameStatus["准备回合"]
        end
    )
    self:initImage()
    self:initFightInfo()
end
function DPve.prototype.initFightInfo(self)
    local root = "NormalLevelInfo.info.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local gameData = datas.global:getSingle(GameData)
        if gameData.level <= 0 then
            return {}
        end
        local enemies = {}
        local cfg = levelConfigMap[gameData.level]
        if GameUtils:getLevelType(cfg) == 1 or GameUtils:getLevelType(cfg) == 2 then
            local levelData = datas.global:getSingle(LevelData)
            local pool = levelData.levels[gameData.level].monsterId
            local poolCfg = monsterPoolConfigMap[pool]
            if poolCfg.monster1Num > 0 then
                enemies[#enemies + 1] = {monsterId = poolCfg.monster1, maxNum = poolCfg.monster1Num}
            end
            if poolCfg.monster2Num > 0 then
                enemies[#enemies + 1] = {monsterId = poolCfg.monster2, maxNum = poolCfg.monster2Num}
            end
            if poolCfg.monster3Num > 0 then
                enemies[#enemies + 1] = {monsterId = poolCfg.monster3, maxNum = poolCfg.monster3Num}
            end
        elseif GameUtils:getLevelType(cfg) == 4 then
            local levelData = datas.global:getSingle(LevelData)
            local images = levelData and levelData.levels[gameData.level].image
            enemies[#enemies + 1] = {monsterId = nil, imageId = images[LOCAL.PLAYER_ID][1].imageId, maxNum = 1}
        end
        if gameData.randomEventType > 0 then
            local eventMonster = nil
            if gameData.randomEventType == GameRandomEventType["金币怪"] then
                eventMonster = __TS__ArrayFind(
                    specialMonsterConfigList,
                    function(____, a) return a.wave.id == gameData.level and a.rewardType == 1 end
                )
            elseif gameData.randomEventType == GameRandomEventType["木头怪"] then
                eventMonster = __TS__ArrayFind(
                    specialMonsterConfigList,
                    function(____, a) return a.wave.id == gameData.level and a.rewardType == 2 end
                )
            elseif gameData.randomEventType == GameRandomEventType["炮车怪"] then
                eventMonster = __TS__ArrayFind(
                    specialMonsterConfigList,
                    function(____, a) return a.wave.id == gameData.level and a.rewardType == 3 end
                )
            elseif gameData.randomEventType == GameRandomEventType["福利怪入侵"] then
                eventMonster = __TS__ArrayFind(
                    specialMonsterConfigList,
                    function(____, a) return a.wave.id == gameData.level and a.rewardType == 4 end
                )
            end
            if eventMonster ~= nil then
                __TS__ArrayForEach(
                    eventMonster.monster,
                    function(____, poolCfg)
                        if poolCfg.monster1Num > 0 then
                            enemies[#enemies + 1] = {monsterId = poolCfg.monster1, maxNum = poolCfg.monster1Num}
                        end
                        if poolCfg.monster2Num > 0 then
                            enemies[#enemies + 1] = {monsterId = poolCfg.monster2, maxNum = poolCfg.monster2Num}
                        end
                        if poolCfg.monster3Num > 0 then
                            enemies[#enemies + 1] = {monsterId = poolCfg.monster3, maxNum = poolCfg.monster3Num}
                        end
                    end
                )
            end
            if gameData.randomEventType == GameRandomEventType["双倍怪物"] then
                __TS__ArrayForEach(
                    enemies,
                    function(____, a)
                        local ____temp_2 = a.maxNum * 2
                        a.maxNum = ____temp_2
                        return ____temp_2
                    end
                )
            end
        end
        if gameData.gameStatus == GameStatus["战斗中"] then
            local units = __TS__ArrayFilter(
                LOCAL.PLAYER_DATA:getAll(UnitData),
                function(____, a)
                    return a.type == UnitType.Cannon_Monster or a.type == UnitType.Gold_Monster or a.type == UnitType.Wood_Monster or a.type == UnitType.Weal_Monster or a.type == UnitType.ELITE or a.type == UnitType.MONSTER
                end
            )
            local map = {}
            __TS__ArrayForEach(
                units,
                function(____, a)
                    if a.monster ~= nil then
                        local ____map_5 = map
                        local ____opt_3 = a.monster
                        if ____map_5[____opt_3 and ____opt_3.id] == nil then
                            local ____map_8 = map
                            local ____opt_6 = a.monster
                            ____map_8[____opt_6 and ____opt_6.id] = 0
                        end
                        if a.entity:isAlive() then
                            local ____map_11 = map
                            local ____opt_9 = a.monster
                            local ____map_11_12, ____temp_13 = ____map_11, ____opt_9 and ____opt_9.id
                            ____map_11_12[____temp_13] = ____map_11_12[____temp_13] + 1
                        end
                    end
                end
            )
            __TS__ArrayForEach(
                enemies,
                function(____, a)
                    if a.monsterId ~= nil and map[a.monsterId.id] ~= nil then
                        a.maxNum = map[a.monsterId.id]
                    end
                end
            )
        else
        end
        return enemies
    end)
    do
        local index = 0
        while index < #childrens do
            local element = childrens[index + 1]
            local path = (root .. ".") .. element:get_name()
            local idx = index
            self:bindVisible(
                path,
                function() return list.value[idx + 1] ~= nil end
            )
            self:bindImage(
                path .. ".icon",
                function()
                    if list.value[idx + 1] == nil then
                        return 0
                    end
                    if list.value[idx + 1].monsterId ~= nil then
                        return list.value[idx + 1].monsterId.icon
                    end
                    if list.value[idx + 1].imageId ~= nil then
                        local playerData = datas.players[list.value[idx + 1].imageId]:getSingle(PlayerData)
                        local role = heroSkinManager:getHeroIcon(playerData.hero.id, list.value[idx + 1].imageId)
                        return role
                    end
                    return 0
                end
            )
            self:bindText(
                path .. ".count",
                function()
                    if list.value[idx + 1] == nil then
                        return ""
                    end
                    return "x" .. tostring(list.value[idx + 1].maxNum)
                end
            )
            index = index + 1
        end
    end
end
function DPve.prototype.initImage(self)
    self:bindVisible(
        "image",
        function() return self.data.showImage end
    )
    self:bindImage(
        "image.left.icon",
        function()
            return heroSkinManager:getHeroIcon2(LOCAL.PLAYER_ID)
        end
    )
    self:bindText(
        "image.left.name",
        function()
            return y3.player.get_by_id(LOCAL.PLAYER_ID):get_name()
        end
    )
    self:bindText(
        "image.right.name",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId == 0 then
                return ""
            end
            return y3.player.get_by_id(playerData.imagePlayerId[1]):get_name()
        end
    )
    self:bindImage(
        "image.right.icon",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId == 0 then
                return 0
            end
            return heroSkinManager:getHeroIcon2(playerData.imagePlayerId[1])
        end
    )
    self:bindVisible(
        "image.right_2",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            return playerData.imagePlayerId ~= nil and #playerData.imagePlayerId >= 2
        end
    )
    self:bindVisible(
        "image.right_3",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            return playerData.imagePlayerId ~= nil and #playerData.imagePlayerId >= 3
        end
    )
    self:bindText(
        "image.right_2.name",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId < 2 then
                return ""
            end
            return y3.player.get_by_id(playerData.imagePlayerId[2]):get_name()
        end
    )
    self:bindImage(
        "image.right_2.icon",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId < 2 then
                return 0
            end
            return heroSkinManager:getHeroIcon2(playerData.imagePlayerId[2])
        end
    )
    self:bindText(
        "image.right_3.name",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId < 3 then
                return ""
            end
            return y3.player.get_by_id(playerData.imagePlayerId[3]):get_name()
        end
    )
    self:bindImage(
        "image.right_3.icon",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            if playerData.imagePlayerId == nil or #playerData.imagePlayerId < 3 then
                return 0
            end
            return heroSkinManager:getHeroIcon2(playerData.imagePlayerId[3])
        end
    )
    self:bindVisible(
        "startText",
        function()
            return self.data.showStartText
        end
    )
    self:bindVisible(
        "startText.start.zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "startText.start.en",
        function()
            return i18n.currentLang == "en"
        end
    )
end
function DPve.prototype.onShow(self)
    self:watch(
        function()
            local gameData = datas.global:getSingle(GameData)
            return gameData.mode == GameMode["镜像"] and gameData.gameStatus == GameStatus["准备回合"]
        end,
        function(____, v)
            if v and not gameLoop.isExit then
                self.data.showStartText = true
                local ____opt_14 = self:getUI("startText.anim")
                if ____opt_14 ~= nil then
                    ____opt_14:play_ui_sequence(false, 0.04)
                end
                y3.ltimer.wait(
                    1,
                    function(timer)
                        self.data.showStartText = false
                        timer:remove()
                        self.data.showImage = true
                        y3.ltimer.wait(
                            5,
                            function(timer)
                                self.data.showImage = false
                                timer:remove()
                            end
                        )
                        local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
                        for ____, imagePlayerId in ipairs(playerData.imagePlayerId) do
                            local pos = mapConfig.playerPoints[imagePlayerId]
                            uiController.send_signal:execute(LOCAL.PLAYER_ID, pos)
                        end
                    end
                )
            end
        end
    )
end
return ____exports
