local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 12,["37"] = 12,["38"] = 13,["39"] = 13,["40"] = 14,["41"] = 14,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 16,["48"] = 16,["49"] = 17,["50"] = 17,["51"] = 18,["52"] = 18,["53"] = 19,["54"] = 19,["55"] = 20,["56"] = 20,["57"] = 21,["58"] = 21,["59"] = 22,["60"] = 22,["61"] = 23,["62"] = 24,["63"] = 26,["64"] = 26,["65"] = 26,["67"] = 26,["68"] = 29,["69"] = 31,["70"] = 34,["71"] = 35,["72"] = 37,["73"] = 38,["74"] = 40,["75"] = 40,["76"] = 40,["77"] = 40,["78"] = 40,["79"] = 40,["80"] = 42,["81"] = 42,["82"] = 42,["83"] = 46,["84"] = 47,["85"] = 48,["86"] = 49,["87"] = 51,["88"] = 52,["89"] = 53,["90"] = 54,["91"] = 55,["92"] = 56,["93"] = 57,["94"] = 58,["96"] = 60,["97"] = 61,["99"] = 63,["100"] = 65,["101"] = 67,["102"] = 68,["103"] = 69,["104"] = 70,["105"] = 71,["106"] = 74,["108"] = 74,["110"] = 76,["111"] = 77,["112"] = 79,["113"] = 81,["114"] = 82,["115"] = 83,["116"] = 84,["117"] = 86,["119"] = 89,["120"] = 90,["121"] = 91,["122"] = 93,["125"] = 96,["126"] = 97,["127"] = 97,["128"] = 97,["129"] = 98,["130"] = 99,["131"] = 100,["132"] = 101,["135"] = 102,["136"] = 97,["137"] = 97,["138"] = 42,["139"] = 42,["140"] = 29,["141"] = 111,["142"] = 112,["143"] = 114,["144"] = 115,["145"] = 116,["146"] = 117,["147"] = 119,["148"] = 120,["149"] = 123,["150"] = 124,["151"] = 111,["152"] = 128,["153"] = 129,["155"] = 130,["156"] = 130,["157"] = 131,["158"] = 132,["159"] = 133,["160"] = 134,["161"] = 135,["162"] = 137,["163"] = 142,["164"] = 143,["165"] = 144,["166"] = 145,["167"] = 146,["169"] = 148,["170"] = 149,["171"] = 150,["172"] = 151,["173"] = 152,["175"] = 154,["176"] = 155,["177"] = 156,["178"] = 157,["179"] = 158,["181"] = 161,["182"] = 161,["183"] = 161,["184"] = 161,["185"] = 162,["186"] = 164,["187"] = 165,["189"] = 167,["190"] = 168,["192"] = 170,["193"] = 171,["195"] = 174,["196"] = 175,["198"] = 177,["199"] = 178,["201"] = 180,["202"] = 181,["204"] = 184,["205"] = 185,["207"] = 130,["210"] = 128,["211"] = 191,["212"] = 192,["213"] = 193,["214"] = 194,["215"] = 195,["216"] = 195,["217"] = 195,["218"] = 195,["219"] = 196,["220"] = 197,["222"] = 199,["223"] = 199,["224"] = 199,["225"] = 199,["226"] = 200,["227"] = 201,["229"] = 203,["230"] = 203,["231"] = 203,["232"] = 203,["233"] = 204,["234"] = 205,["237"] = 208,["238"] = 208,["239"] = 208,["240"] = 208,["241"] = 209,["242"] = 210,["244"] = 212,["245"] = 212,["246"] = 212,["247"] = 212,["248"] = 213,["249"] = 214,["251"] = 216,["252"] = 216,["253"] = 216,["254"] = 216,["255"] = 217,["256"] = 218,["259"] = 221,["260"] = 222,["261"] = 222,["262"] = 222,["264"] = 223,["265"] = 223,["267"] = 224,["268"] = 225,["269"] = 225,["270"] = 225,["272"] = 226,["273"] = 226,["275"] = 227,["276"] = 228,["277"] = 228,["278"] = 228,["280"] = 229,["281"] = 229,["284"] = 191,["285"] = 237,["286"] = 310,["287"] = 238,["288"] = 239,["289"] = 241,["290"] = 242,["291"] = 243,["292"] = 244,["293"] = 245,["294"] = 246,["295"] = 247,["296"] = 247,["297"] = 247,["298"] = 247,["299"] = 248,["300"] = 248,["301"] = 248,["302"] = 248,["303"] = 249,["304"] = 249,["305"] = 249,["306"] = 249,["307"] = 250,["308"] = 250,["309"] = 250,["310"] = 250,["311"] = 251,["312"] = 252,["313"] = 254,["314"] = 255,["315"] = 256,["318"] = 259,["319"] = 260,["320"] = 261,["323"] = 265,["324"] = 265,["325"] = 265,["326"] = 266,["327"] = 268,["328"] = 268,["329"] = 268,["330"] = 268,["331"] = 268,["332"] = 269,["333"] = 269,["334"] = 269,["335"] = 269,["336"] = 269,["337"] = 270,["338"] = 265,["339"] = 265,["340"] = 273,["341"] = 274,["343"] = 275,["344"] = 275,["346"] = 276,["347"] = 276,["349"] = 277,["350"] = 278,["351"] = 279,["352"] = 280,["353"] = 280,["354"] = 280,["355"] = 280,["356"] = 280,["357"] = 280,["361"] = 273,["362"] = 284,["363"] = 284,["364"] = 285,["365"] = 286,["366"] = 287,["367"] = 288,["368"] = 288,["369"] = 288,["370"] = 288,["371"] = 289,["372"] = 289,["373"] = 289,["374"] = 289,["375"] = 290,["376"] = 291,["377"] = 292,["378"] = 292,["379"] = 293,["380"] = 294,["381"] = 295,["382"] = 305,["383"] = 305,["384"] = 305,["385"] = 305,["386"] = 305,["387"] = 307,["388"] = 284,["389"] = 310,["390"] = 311,["391"] = 312,["392"] = 313,["393"] = 314,["394"] = 314,["395"] = 314,["396"] = 314,["397"] = 315,["398"] = 315,["399"] = 315,["400"] = 315,["401"] = 316,["402"] = 317,["403"] = 318,["404"] = 318,["405"] = 319,["406"] = 320,["407"] = 321,["408"] = 330,["409"] = 330,["410"] = 330,["411"] = 330,["412"] = 330,["413"] = 332,["414"] = 310,["415"] = 335,["416"] = 336,["417"] = 337,["418"] = 237,["419"] = 340,["420"] = 341,["421"] = 342,["422"] = 343,["423"] = 344,["426"] = 347,["427"] = 340,["428"] = 349,["429"] = 350,["430"] = 351,["431"] = 354,["432"] = 355,["433"] = 356,["434"] = 357,["435"] = 358,["436"] = 359,["438"] = 349,["439"] = 363,["440"] = 364,["441"] = 366,["442"] = 367,["443"] = 369,["444"] = 370,["445"] = 372,["446"] = 373,["448"] = 375,["450"] = 363,["451"] = 397,["452"] = 398,["453"] = 399,["454"] = 401,["455"] = 403,["456"] = 405,["457"] = 418,["458"] = 419,["459"] = 420,["460"] = 421,["462"] = 426,["463"] = 427,["464"] = 429,["465"] = 430,["466"] = 432,["467"] = 433,["468"] = 435,["469"] = 436,["470"] = 438,["471"] = 441,["472"] = 442,["473"] = 444,["474"] = 397,["475"] = 449});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameStatus = ____GameData.GameStatus
local ____KofData = include("logic.models.KofData")
local KofData = ____KofData.KofData
local KofMode = ____KofData.KofMode
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____AreaController = include("logic.controllers.ui.AreaController")
local areaController = ____AreaController.areaController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
local _____72C2_66B4 = 12
local _____8FDE_80DC_60E9_7F5A = 18
____exports.KofController = __TS__Class()
local KofController = ____exports.KofController
KofController.name = "KofController"
function KofController.prototype.____constructor(self)
end
function KofController.prototype.start(self)
    uiController:focusKof()
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.mode = GameMode.KOF
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    data.mode = KofMode["准备阶段"]
    chatController:sysMsg(
        i18n["local"](i18n, "KOF回合，水晶停止生产"),
        ChatInputType["所有人聊天消息"],
        PlayerId.JUDGE,
        PlayerId.JUDGE
    )
    y3.ltimer.wait(
        1,
        function()
            data.teamAEliminated = 0
            data.teamBEliminated = 0
            data.teamAFightPos = 0
            data.teamBFightPos = 0
            local leftIdx = 0
            local rightIdx = 0
            for ____, playerId in ipairs(playerIdList) do
                local playerUnit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
                local posIndex = 0
                if playerId <= 4 then
                    posIndex = leftIdx
                    leftIdx = leftIdx + 1
                else
                    posIndex = rightIdx + 4
                    rightIdx = rightIdx + 1
                end
                local pos = y3.point.get_point_by_res_id(mapConfig.kofTeam[posIndex + 1])
                local playerUnitEntity = playerUnit:getWritableEntity()
                playerUnitEntity:reborn(playerUnitEntity)
                playerUnitEntity:setMp(playerUnitEntity, 0)
                playerUnitEntity:setPosition(pos, false)
                playerUnitEntity:stopAllAbility()
                playerUnit:setBattleGroundId(BattleGroundId.KOF, false)
                local ____opt_0 = playerUnitEntity.y3Unit
                if ____opt_0 ~= nil then
                    ____opt_0:set_height(0, 0)
                end
                playerUnit:toNpc()
                playerUnitEntity:addTag(playerUnitEntity, "KOF")
                local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
                if playerId <= 4 then
                    local area = areaController:get_rectangle_area(mapConfig["Kof小宠物区域"][1])
                    petData.y3Unit:stop()
                    petData.y3Unit:blink(area:random_point())
                    playerUnitEntity:setAngle(90, 0)
                else
                    local area = areaController:get_rectangle_area(mapConfig["Kof小宠物区域"][2])
                    petData.y3Unit:stop()
                    petData.y3Unit:blink(area:random_point())
                    playerUnitEntity:setAngle(270, 0)
                end
            end
            data.mode = KofMode["选人阶段"]
            y3.ltimer.wait(
                15,
                function(t)
                    t:remove()
                    data.mode = KofMode["准备阶段"]
                    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
                    if gameData.gameStatus ~= GameStatus["准备回合"] then
                        return
                    end
                    self:matchSeat()
                end
            )
        end
    )
end
function KofController.prototype.jumpToKOFArena(self)
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    local heroAPlayerId = data.teamARandom[data.teamAFightPos + 1]
    local heroBPlayerId = data.teamBRandom[data.teamBFightPos + 1]
    local heroA = writeableDatas.players[heroAPlayerId]:getOrCreateSingle(UnitData)
    local heroB = writeableDatas.players[heroBPlayerId]:getOrCreateSingle(UnitData)
    local heroAPos = y3.point.get_point_by_res_id(mapConfig.kofVS[1])
    local heroBPos = y3.point.get_point_by_res_id(mapConfig.kofVS[2])
    heroA:getWritableEntity():setPosition(heroAPos, false)
    heroB:getWritableEntity():setPosition(heroBPos, false)
end
function KofController.prototype.matchSeat(self)
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    do
        local index = 0
        while index < 2 do
            local seat1 = index == 0 and __TS__ArrayConcat(data.seatLeft1) or __TS__ArrayConcat(data.seatRight1)
            local seat2 = index == 0 and __TS__ArrayConcat(data.seatLeft2) or __TS__ArrayConcat(data.seatRight2)
            local seat3 = index == 0 and __TS__ArrayConcat(data.seatLeft3) or __TS__ArrayConcat(data.seatRight3)
            local team = index == 0 and __TS__ArrayConcat(data.teamLeft) or __TS__ArrayConcat(data.teamRight)
            local teamRandom = index == 0 and data.teamARandom or data.teamBRandom
            local seat = {[1] = 0, [2] = 0, [3] = 0}
            if #seat1 == 1 then
                seat[1] = seat1[1]
            elseif #seat1 > 1 then
                local a = random:randomList(seat1)
                seat[1] = a
            end
            if #seat2 == 1 then
                seat[2] = seat2[1]
            elseif #seat2 > 1 then
                local a = random:randomList(seat2)
                seat[2] = a
            end
            if #seat3 == 1 then
                seat[3] = seat3[1]
            elseif #seat3 > 1 then
                local a = random:randomList(seat3)
                seat[3] = a
            end
            local left = __TS__ArrayFilter(
                __TS__ArrayConcat(team),
                function(____, a) return a ~= seat[1] and a ~= seat[2] and a ~= seat[3] end
            )
            left = random:randomListNum(left, #left)
            if seat[1] == 0 and #left > 0 then
                seat[1] = table.remove(left, 1)
            end
            if seat[2] == 0 and #left > 0 then
                seat[2] = table.remove(left, 1)
            end
            if seat[3] == 0 and #left > 0 then
                seat[3] = table.remove(left, 1)
            end
            if seat[1] ~= 0 then
                teamRandom[#teamRandom + 1] = seat[1]
            end
            if seat[2] ~= 0 then
                teamRandom[#teamRandom + 1] = seat[2]
            end
            if seat[3] ~= 0 then
                teamRandom[#teamRandom + 1] = seat[3]
            end
            if #teamRandom ~= #team or #teamRandom == 0 then
                error("随机规则出错，检查检查，，，，，，，，，，，，", 0)
            end
            index = index + 1
        end
    end
end
function KofController.prototype.selectSeat(self, playerId, seat)
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    local isLeft = player2King[playerId] == BattleGroundId.LEFT_KING
    if isLeft then
        local idx = __TS__ArrayFindIndex(
            data.seatLeft1,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatLeft1, idx, 1)
        end
        idx = __TS__ArrayFindIndex(
            data.seatLeft2,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatLeft2, idx, 1)
        end
        idx = __TS__ArrayFindIndex(
            data.seatLeft3,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatLeft3, idx, 1)
        end
    else
        local idx = __TS__ArrayFindIndex(
            data.seatRight1,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatRight1, idx, 1)
        end
        idx = __TS__ArrayFindIndex(
            data.seatRight2,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatRight2, idx, 1)
        end
        idx = __TS__ArrayFindIndex(
            data.seatRight3,
            function(____, a) return a == playerId end
        )
        if idx ~= -1 then
            __TS__ArraySplice(data.seatRight3, idx, 1)
        end
    end
    if seat == 1 then
        if isLeft then
            local ____data_seatLeft1_2 = data.seatLeft1
            ____data_seatLeft1_2[#____data_seatLeft1_2 + 1] = playerId
        else
            local ____data_seatRight1_3 = data.seatRight1
            ____data_seatRight1_3[#____data_seatRight1_3 + 1] = playerId
        end
    elseif seat == 2 then
        if isLeft then
            local ____data_seatLeft2_4 = data.seatLeft2
            ____data_seatLeft2_4[#____data_seatLeft2_4 + 1] = playerId
        else
            local ____data_seatRight2_5 = data.seatRight2
            ____data_seatRight2_5[#____data_seatRight2_5 + 1] = playerId
        end
    elseif seat == 3 then
        if isLeft then
            local ____data_seatLeft3_6 = data.seatLeft3
            ____data_seatLeft3_6[#____data_seatLeft3_6 + 1] = playerId
        else
            local ____data_seatRight3_7 = data.seatRight3
            ____data_seatRight3_7[#____data_seatRight3_7 + 1] = playerId
        end
    end
end
function KofController.prototype.startFight(self)
    local heroBDie
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    data.mode = KofMode["单挑阶段"]
    local heroAPlayerId = data.teamARandom[data.teamAFightPos + 1]
    local heroBPlayerId = data.teamBRandom[data.teamBFightPos + 1]
    local heroA = writeableDatas.players[heroAPlayerId]:getOrCreateSingle(UnitData)
    local heroB = writeableDatas.players[heroBPlayerId]:getOrCreateSingle(UnitData)
    heroA:toHero()
    heroB:toHero()
    heroA:getWritableEntity():removeTag(
        heroA:getWritableEntity(),
        "KOF"
    )
    heroB:getWritableEntity():removeTag(
        heroB:getWritableEntity(),
        "KOF"
    )
    heroA:getWritableEntity():attackTarget(
        heroB:getWritableEntity(),
        3000
    )
    heroB:getWritableEntity():attackTarget(
        heroA:getWritableEntity(),
        3000
    )
    data.teamAFightId = heroAPlayerId
    data.teamBFightId = heroBPlayerId
    if not heroA.entity:isAlive() then
        data.teamAFightPos = data.teamAFightPos + 1
        data.teamAEliminated = data.teamAEliminated + 1
        return
    end
    if not heroB.entity:isAlive() then
        data.teamBFightPos = data.teamBFightPos + 1
        data.teamBEliminated = data.teamBEliminated + 1
        return
    end
    local timer = y3.ltimer.wait(
        defaultConfig["KOF时间"],
        function(t)
            t:remove()
            heroA:getWritableEntity():addEffect(
                heroA:getWritableEntity(),
                _____72C2_66B4,
                nil
            )
            heroB:getWritableEntity():addEffect(
                heroB:getWritableEntity(),
                _____72C2_66B4,
                nil
            )
            console:log("触发狂暴")
        end
    )
    local function addGold(____, winTeam)
        for ____, playerId in ipairs(playerIdList) do
            do
                if playerId <= 4 and winTeam == "right" then
                    goto __continue59
                end
                if playerId > 4 and winTeam == "left" then
                    goto __continue59
                end
                playerDataController:addGold(playerId, 200)
                local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
                effectController:showGold(playerId, hero.entity.y3Unit, 200)
                chatController:sysMsg(
                    i18n:format("【KOF获胜】恭喜你获得${gold}金币", {gold = 200}),
                    ChatInputType["仅自己可见消息"],
                    playerId,
                    playerId
                )
            end
            ::__continue59::
        end
    end
    local heroADie
    heroADie = function()
        heroA.entity:off("单位-死亡", heroADie)
        heroB.entity:off("单位-死亡", heroBDie)
        timer:remove()
        heroA:getWritableEntity():removeEffect(
            heroA:getWritableEntity(),
            {_____72C2_66B4}
        )
        heroB:getWritableEntity():removeEffect(
            heroB:getWritableEntity(),
            {_____72C2_66B4}
        )
        heroA:toNpc()
        heroB:toNpc()
        local ____data_deathList_8 = data.deathList
        ____data_deathList_8[#____data_deathList_8 + 1] = heroAPlayerId
        data.winner = heroBPlayerId
        data.teamAFightPos = data.teamAFightPos + 1
        data.teamAEliminated = data.teamAEliminated + 1
        heroB:getWritableEntity():addEffect(
            heroA:getWritableEntity(),
            _____8FDE_80DC_60E9_7F5A,
            nil
        )
        addGold(nil, "right")
    end
    heroBDie = function()
        heroA.entity:off("单位-死亡", heroADie)
        heroB.entity:off("单位-死亡", heroBDie)
        timer:remove()
        heroA:getWritableEntity():removeEffect(
            heroA:getWritableEntity(),
            {_____72C2_66B4}
        )
        heroB:getWritableEntity():removeEffect(
            heroB:getWritableEntity(),
            {_____72C2_66B4}
        )
        heroA:toNpc()
        heroB:toNpc()
        local ____data_deathList_9 = data.deathList
        ____data_deathList_9[#____data_deathList_9 + 1] = heroBPlayerId
        data.winner = heroAPlayerId
        data.teamBFightPos = data.teamBFightPos + 1
        data.teamBEliminated = data.teamBEliminated + 1
        heroA:getWritableEntity():addEffect(
            heroB:getWritableEntity(),
            _____8FDE_80DC_60E9_7F5A,
            nil
        )
        addGold(nil, "left")
    end
    heroA.entity:on("单位-死亡", heroADie)
    heroB.entity:on("单位-死亡", heroBDie)
    SoundManager:play(SoundType.KOFVC)
end
function KofController.prototype.roundNext(self)
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    if data.kofRound == 0 then
        if #data.teamARandom == 0 or #data.teamBRandom == 0 then
            self:matchSeat()
        end
    end
    data.kofRound = data.kofRound + 1
end
function KofController.prototype.roundEnd(self)
    local data = writeableDatas.global:getOrCreateSingle(KofData)
    data.mode = KofMode["准备阶段"]
    for ____, playerId in ipairs(playerIdList) do
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        local entity = hero:getWritableEntity()
        entity:removeEffectByGroup(entity, {100, -1})
        entity:setMp(entity, 0)
        entity:stopAllAbility()
    end
end
function KofController.prototype.forceEndRound(self)
    local gameData = writeableDatas.global:getOrCreateSingle(KofData)
    local heroA = writeableDatas.players[gameData.teamAFightId]:getOrCreateSingle(UnitData)
    local heroB = writeableDatas.players[gameData.teamBFightId]:getOrCreateSingle(UnitData)
    local percentA = heroA.entity:v(_____8840) / heroA.entity:formula(Formula["展示面板_血量上限"])
    local percentB = heroB.entity:v(_____8840) / heroB.entity:formula(Formula["展示面板_血量上限"])
    if percentA > percentB then
        heroB:getWritableEntity():kill(heroA:getWritableEntity())
    else
        heroA:getWritableEntity():kill(heroB:getWritableEntity())
    end
end
function KofController.prototype.endKOF(self)
    local kofData = writeableDatas.global:getOrCreateSingle(KofData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local cfg = levelConfigMap[gameData.level]
    local leftGold = kofData.teamBEliminated >= #kofData.teamRight
    local rightGold = kofData.teamAEliminated >= #kofData.teamLeft
    for ____, playerId in ipairs(playerIdList) do
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        local entity = hero:getWritableEntity()
        entity:removeEffect(entity, {_____8FDE_80DC_60E9_7F5A})
    end
    kofData.teamAEliminated = 0
    kofData.teamBEliminated = 0
    kofData.teamAFightPos = 0
    kofData.teamBFightPos = 0
    kofData.teamAFightId = 0
    kofData.teamBFightId = 0
    kofData.teamARandom = {}
    kofData.teamBRandom = {}
    playerController:resetHeroToDefensivePoint()
    uiController:hide_fog()
    uiController:allPlayerFocusMain()
    kofData.kofRound = 0
end
____exports.kofController = make(nil, ____exports.KofController)
return ____exports
