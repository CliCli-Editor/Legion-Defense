local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 13,["37"] = 13,["38"] = 15,["39"] = 15,["40"] = 15,["42"] = 17,["43"] = 15,["44"] = 23,["45"] = 24,["46"] = 25,["47"] = 27,["48"] = 28,["49"] = 29,["50"] = 30,["51"] = 31,["52"] = 33,["53"] = 35,["54"] = 37,["55"] = 38,["56"] = 39,["57"] = 40,["58"] = 41,["59"] = 42,["60"] = 43,["62"] = 45,["63"] = 46,["65"] = 48,["66"] = 49,["67"] = 49,["68"] = 49,["69"] = 49,["70"] = 50,["71"] = 52,["73"] = 52,["75"] = 54,["76"] = 55,["77"] = 56,["79"] = 58,["80"] = 59,["83"] = 64,["84"] = 67,["85"] = 68,["86"] = 69,["87"] = 70,["88"] = 71,["90"] = 23,["91"] = 97,["92"] = 98,["93"] = 99,["94"] = 101,["95"] = 102,["96"] = 103,["97"] = 104,["98"] = 104,["99"] = 105,["102"] = 108,["103"] = 110,["104"] = 111,["106"] = 112,["107"] = 112,["108"] = 113,["109"] = 114,["110"] = 115,["111"] = 116,["114"] = 112,["117"] = 121,["118"] = 123,["119"] = 124,["120"] = 124,["121"] = 124,["122"] = 124,["123"] = 124,["124"] = 124,["125"] = 124,["126"] = 130,["127"] = 133,["128"] = 134,["129"] = 136,["131"] = 144,["132"] = 144,["133"] = 144,["134"] = 146,["135"] = 147,["136"] = 148,["137"] = 149,["138"] = 150,["140"] = 153,["141"] = 144,["142"] = 144,["143"] = 156,["144"] = 157,["145"] = 158,["146"] = 159,["147"] = 160,["150"] = 104,["151"] = 165,["152"] = 166,["153"] = 97,["154"] = 172,["155"] = 173,["156"] = 175,["157"] = 177,["158"] = 178,["159"] = 181,["160"] = 182,["161"] = 184,["162"] = 185,["163"] = 187,["165"] = 190,["167"] = 192,["169"] = 195,["170"] = 196,["171"] = 197,["172"] = 197,["173"] = 197,["174"] = 197,["175"] = 197,["176"] = 195,["177"] = 201,["178"] = 202,["179"] = 203,["180"] = 204,["182"] = 206,["184"] = 208,["185"] = 209,["186"] = 210,["188"] = 212,["192"] = 218,["193"] = 219,["194"] = 220,["195"] = 221,["196"] = 222,["197"] = 223,["199"] = 226,["200"] = 226,["201"] = 226,["202"] = 226,["203"] = 227,["204"] = 227,["205"] = 227,["206"] = 228,["207"] = 229,["208"] = 229,["209"] = 229,["210"] = 229,["211"] = 227,["212"] = 227,["213"] = 172,["214"] = 237,["215"] = 263,["216"] = 264,["217"] = 237,["218"] = 268});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____global = include("framework.global")
local global = ____global.global
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____RabbitVsSheepConfig = include("logic.configs.RabbitVsSheepConfig")
local rabbitVsSheepConfigList = ____RabbitVsSheepConfig.rabbitVsSheepConfigList
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
local factions = ____PlayerUtils.factions
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
____exports.RabbitVsSheepController = __TS__Class()
local RabbitVsSheepController = ____exports.RabbitVsSheepController
RabbitVsSheepController.name = "RabbitVsSheepController"
function RabbitVsSheepController.prototype.____constructor(self)
    self.isEnd = false
end
function RabbitVsSheepController.prototype.prepare(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    uiController:focusRabbitVsSheep()
    gameData.leftMonster = 0
    gameData.teamALeftMonster = 0
    gameData.teamBLeftMonster = 0
    gameData.teamALeftPlayerCount = 0
    gameData.teamBLeftPlayerCount = 0
    self.isEnd = false
    local playerMap = {}
    for ____, playerId in ipairs(playerIdList) do
        playerMap[playerId] = y3.player.get_by_id(playerId)
        local playerUnitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        local pos = nil
        if factions[playerId] == -1 then
            local posId = mapConfig["兔羊大战英雄出生区域A"]
            pos = y3.area.get_circle_by_res_id(posId):random_point()
        else
            local posId = mapConfig["兔羊大战英雄出生区域B"]
            pos = y3.area.get_circle_by_res_id(posId):random_point()
        end
        playerUnitData:getWritableEntity():reborn(playerUnitData:getWritableEntity())
        playerUnitData:getWritableEntity():setMp(
            playerUnitData:getWritableEntity(),
            0
        )
        playerUnitData:getWritableEntity():setPosition(pos, false)
        local ____opt_0 = playerUnitData.entity.y3Unit
        if ____opt_0 ~= nil then
            ____opt_0:set_height(0, 0)
        end
        if player2King[playerId] == BattleGroundId.LEFT_KING then
            gameData.teamALeftPlayerCount = gameData.teamALeftPlayerCount + 1
            playerUnitData:setBattleGroundId(BattleGroundId.LEFT_RABBIT_VS_SHEEP, false)
        else
            gameData.teamBLeftPlayerCount = gameData.teamBLeftPlayerCount + 1
            playerUnitData:setBattleGroundId(BattleGroundId.RIGHT_RABBIT_VS_SHEEP, false)
        end
    end
    uiController:follow_once_by_all_player()
    local area = y3.area.get_rectangle_by_res_id(mapConfig["兔羊大战宠物方形区域"])
    for ____, playerId in ipairs(playerIdList) do
        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
        petData.y3Unit:stop()
        petData.y3Unit:blink(area:random_point())
    end
end
function RabbitVsSheepController.prototype.start(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["战斗中"]
    gameData.startTime = global.frameCount / y3.config.logic_frame
    local leftKingPlayer = y3.player.get_by_id(PlayerId.LEFT_KING)
    local rightKingPlayer = y3.player.get_by_id(PlayerId.RIGHT_KING)
    local createMonster
    createMonster = function(____, pos)
        if self.isEnd then
            return
        end
        local points = __TS__ArraySlice(pos == "left" and mapConfig["兔羊大战怪物出生点A"] or mapConfig["兔羊大战怪物出生点B"])
        local time = global.frameCount / y3.config.logic_frame - gameData.startTime
        local config = nil
        do
            local i = 0
            while i < #rabbitVsSheepConfigList do
                config = rabbitVsSheepConfigList[i + 1]
                local next = rabbitVsSheepConfigList[i + 1 + 1]
                console:log(time, next and next.time)
                if next ~= nil and time < next.time then
                    break
                end
                i = i + 1
            end
        end
        for ____, monsterConfig in ipairs(config.monsterList) do
            local point = y3.point.get_point_by_res_id(random:randomPop(points))
            local monster = createUnitController:createMonsterByMonsterConfig(
                writeableDatas.players[PlayerId.JUDGE],
                pos == "left" and rightKingPlayer or leftKingPlayer,
                pos == "left" and BattleGroundId.LEFT_RABBIT_VS_SHEEP or BattleGroundId.RIGHT_RABBIT_VS_SHEEP,
                point,
                monsterConfig
            )
            console:log("创建怪物", monster.id)
            local enemy = monster.entity:findTarget({"敌人"}, nil, 1)
            if enemy ~= nil then
                monster:getWritableEntity():attackTarget(enemy, 5000)
            end
            monster.entity:on(
                "单位-死亡",
                function()
                    gameData.leftMonster = gameData.leftMonster - 1
                    if pos == "left" then
                        gameData.teamALeftMonster = gameData.teamALeftMonster - 1
                    elseif pos == "right" then
                        gameData.teamBLeftMonster = gameData.teamBLeftMonster - 1
                    end
                    createMonster(nil, pos == "left" and "right" or "left")
                end
            )
            gameData.leftMonster = gameData.leftMonster + 1
            if pos == "left" then
                gameData.teamALeftMonster = gameData.teamALeftMonster + 1
            elseif pos == "right" then
                gameData.teamBLeftMonster = gameData.teamBLeftMonster + 1
            end
        end
    end
    createMonster(nil, "left")
    createMonster(nil, "right")
end
function RabbitVsSheepController.prototype.gameEnd(self)
    self.isEnd = true
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local leftLose = gameData.teamALeftMonster >= 100 or gameData.teamALeftPlayerCount <= 0
    local rightLose = gameData.teamBLeftMonster >= 100 or gameData.teamBLeftPlayerCount <= 0
    if leftLose == rightLose then
        if gameData.teamALeftMonster ~= gameData.teamBLeftMonster then
            leftLose = gameData.teamALeftMonster > gameData.teamBLeftMonster
        elseif gameData.teamALeftPlayerCount ~= gameData.teamBLeftPlayerCount then
            leftLose = gameData.teamALeftPlayerCount < gameData.teamBLeftPlayerCount
        else
            leftLose = math.random() < 0.5
        end
        rightLose = not leftLose
    end
    local function addGold(____, playerId, isWin, gold)
        playerDataController:addGold(playerId, gold)
        y3.ui.display_message(
            y3.player.get_by_id(playerId),
            (("兔羊大战" .. (isWin and "胜利" or "失败")) .. "获得金币：#00ff00") .. tostring(gold),
            30
        )
    end
    for ____, playerId in ipairs(playerIdList) do
        if factions[playerId] == -1 then
            if leftLose then
                addGold(nil, playerId, false, 250)
            else
                addGold(nil, playerId, true, 300)
            end
        elseif factions[playerId] == 1 then
            if rightLose then
                addGold(nil, playerId, false, 250)
            else
                addGold(nil, playerId, true, 300)
            end
        end
    end
    local player = writeableDatas.players[PlayerId.JUDGE]
    local unitList = player:getAll(UnitData)
    for ____, unit in ipairs(unitList) do
        unit.entity:offAll("单位-死亡")
        console:log("主动删除怪物", unit.id)
        player:remove(UnitData, unit)
    end
    console:log(
        "剩余怪物",
        #player:getAll(UnitData)
    )
    y3.ltimer.wait(
        0.5,
        function(t)
            t:remove()
            console:log(
                "剩余怪物",
                #player:getAll(UnitData)
            )
        end
    )
end
function RabbitVsSheepController.prototype.goBack(self)
    uiController:allPlayerFocusMain()
    uiController:show_fog()
end
____exports.rabbitVsSheepController = make(nil, ____exports.RabbitVsSheepController)
return ____exports
