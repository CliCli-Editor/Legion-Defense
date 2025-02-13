local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 11,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 16,["36"] = 16,["37"] = 16,["39"] = 17,["40"] = 19,["41"] = 16,["42"] = 25,["43"] = 26,["44"] = 27,["45"] = 29,["46"] = 30,["47"] = 31,["48"] = 32,["49"] = 33,["50"] = 35,["51"] = 37,["52"] = 40,["53"] = 41,["54"] = 42,["55"] = 43,["56"] = 45,["57"] = 47,["58"] = 48,["59"] = 49,["60"] = 50,["61"] = 51,["62"] = 53,["64"] = 53,["66"] = 55,["67"] = 56,["68"] = 58,["69"] = 60,["70"] = 61,["71"] = 62,["72"] = 63,["73"] = 65,["75"] = 68,["76"] = 69,["77"] = 70,["78"] = 72,["81"] = 77,["82"] = 78,["83"] = 79,["84"] = 80,["85"] = 83,["86"] = 84,["87"] = 85,["88"] = 86,["90"] = 88,["92"] = 90,["93"] = 91,["94"] = 92,["95"] = 92,["97"] = 95,["98"] = 96,["99"] = 97,["100"] = 98,["101"] = 99,["102"] = 100,["103"] = 102,["104"] = 103,["105"] = 105,["106"] = 106,["107"] = 108,["108"] = 109,["109"] = 110,["110"] = 110,["111"] = 110,["112"] = 110,["113"] = 111,["114"] = 111,["115"] = 111,["116"] = 111,["117"] = 114,["118"] = 115,["119"] = 117,["120"] = 25,["121"] = 122,["122"] = 123,["123"] = 124,["124"] = 126,["125"] = 127,["126"] = 128,["128"] = 131,["129"] = 132,["130"] = 133,["131"] = 134,["132"] = 135,["133"] = 136,["134"] = 136,["135"] = 136,["136"] = 136,["138"] = 138,["139"] = 138,["140"] = 138,["141"] = 138,["144"] = 141,["145"] = 142,["146"] = 143,["147"] = 144,["148"] = 146,["149"] = 147,["150"] = 148,["151"] = 149,["152"] = 151,["153"] = 152,["154"] = 153,["155"] = 153,["156"] = 153,["157"] = 153,["158"] = 154,["159"] = 154,["160"] = 154,["161"] = 154,["162"] = 157,["163"] = 158,["164"] = 159,["165"] = 160,["166"] = 161,["167"] = 162,["168"] = 163,["169"] = 163,["170"] = 163,["171"] = 163,["173"] = 165,["174"] = 165,["175"] = 165,["176"] = 165,["180"] = 122,["181"] = 174,["182"] = 174,["183"] = 180});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Y3State = include("framework.fight.Y3State")
local Y3UnitState = ____Y3State.Y3UnitState
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
local ____KingController = include("logic.controllers.KingController")
local kingController = ____KingController.kingController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____AreaController = include("logic.controllers.ui.AreaController")
local areaController = ____AreaController.areaController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
____exports.LastBattleController = __TS__Class()
local LastBattleController = ____exports.LastBattleController
LastBattleController.name = "LastBattleController"
function LastBattleController.prototype.____constructor(self)
    self.isEnd = false
    self.effectList = {}
end
function LastBattleController.prototype.prepare(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    uiController:focusLastBattle()
    gameData.leftMonster = 0
    gameData.teamALeftMonster = 0
    gameData.teamBLeftMonster = 0
    gameData.teamALeftPlayerCount = 0
    gameData.teamBLeftPlayerCount = 0
    kingController:setLoseToEndKing()
    self.isEnd = false
    for ____, playerId in ipairs(playerIdList) do
        local playerUnit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        local posIndex = playerId - 1
        local pos = y3.point.get_point_by_res_id(mapConfig["终极大战玩家坐标"][posIndex + 1])
        local playerUnitEntity = playerUnit:getWritableEntity()
        playerUnitEntity:reborn(playerUnitEntity)
        playerUnitEntity:setMp(playerUnitEntity, 0)
        playerUnitEntity:setPosition(pos, false)
        playerUnitEntity:stopAllAbility()
        playerUnit:setBattleGroundId(BattleGroundId.LAST_BATTLE, false)
        local ____opt_0 = playerUnitEntity.y3Unit
        if ____opt_0 ~= nil then
            ____opt_0:set_height(0, 0)
        end
        playerUnit:setReady(true)
        playerUnitEntity:addTag(playerUnitEntity, "KOF")
        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
        if playerId <= 4 then
            local area = areaController:get_rectangle_area(mapConfig["终极大战小宠物区域"][1])
            petData.y3Unit:stop()
            petData.y3Unit:blink(area:random_point())
            playerUnitEntity:setAngle(90, 0)
        else
            local area = areaController:get_rectangle_area(mapConfig["终极大战小宠物区域"][2])
            petData.y3Unit:stop()
            petData.y3Unit:blink(area:random_point())
            playerUnitEntity:setAngle(270, 0)
        end
    end
    local leftTowerList = datas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    local leftKing = leftTowerList[#leftTowerList]
    local rightTowerList = datas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    local rightKing = rightTowerList[#rightTowerList]
    local areaId
    for ____, playerId in ipairs({BattleGroundId.LEFT_KING, BattleGroundId.RIGHT_KING}) do
        if playerId == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        else
            areaId = mapConfig["终极大战左边阵营"]
        end
        local area = y3.area.get_rectangle_by_res_id(areaId)
        local pos = area:get_center_point()
        local ____self_effectList_2 = self.effectList
        ____self_effectList_2[#____self_effectList_2 + 1] = effectController:add(134274798, pos, 0, 1)
    end
    leftKing:toHero()
    rightKing:toHero()
    leftKing:setReady(true)
    rightKing:setReady(true)
    leftKing:getWritableEntity():setAngle(90, 0)
    rightKing:getWritableEntity():setAngle(-90, 0)
    leftKing:setBattleGroundId(BattleGroundId.LAST_BATTLE, false)
    rightKing:setBattleGroundId(BattleGroundId.LAST_BATTLE, false)
    local leftPos = y3.point.get_point_by_res_id(mapConfig["终极大战国王坐标"][1])
    local rightPos = y3.point.get_point_by_res_id(mapConfig["终极大战国王坐标"][2])
    leftKing:getWritableEntity():setPosition(leftPos, false)
    rightKing:getWritableEntity():setPosition(rightPos, false)
    leftKing:getWritableEntity():addTag(
        leftKing:getWritableEntity(),
        "KOF"
    )
    rightKing:getWritableEntity():addTag(
        rightKing:getWritableEntity(),
        "KOF"
    )
    kingController:clearEffect(PlayerId.LEFT_KING)
    kingController:clearEffect(PlayerId.RIGHT_KING)
    uiController:follow_once_by_all_player()
end
function LastBattleController.prototype.start(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    gameData.gameStatus = GameStatus["战斗中"]
    for ____, e in ipairs(self.effectList) do
        e:remove()
        self.effectList = {}
    end
    for ____, playerId in ipairs(playerIdList) do
        local playerUnit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        playerUnit:setReady(false)
        local pos = playerUnit.entity:getPosition()
        if playerId <= 4 then
            playerUnit:getWritableEntity().y3Unit:attack_move(
                y3.point.create(pos.x + 2000, pos.y),
                5000
            )
        else
            playerUnit:getWritableEntity().y3Unit:attack_move(
                y3.point.create(pos.x - 2000, pos.y),
                5000
            )
        end
    end
    local leftTowerList = datas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    local leftKing = leftTowerList[#leftTowerList]
    local rightTowerList = datas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    local rightKing = rightTowerList[#rightTowerList]
    leftKing:setReady(false)
    rightKing:setReady(false)
    leftKing.entity.y3Unit:remove_state(Y3UnitState["禁止移动"])
    rightKing.entity.y3Unit:remove_state(Y3UnitState["禁止移动"])
    local leftPos = leftKing:getWritableEntity():getPosition()
    local rightPos = rightKing:getWritableEntity():getPosition()
    leftKing:getWritableEntity().y3Unit:attack_move(
        y3.point.create(leftPos.x + 2000, leftPos.y),
        5000
    )
    rightKing:getWritableEntity().y3Unit:attack_move(
        y3.point.create(rightPos.x - 2000, rightPos.y),
        5000
    )
    for ____, playerId in ipairs(playerIdList) do
        local units = writeableDatas.players[playerId]:getListByIndex(UnitData, "type", UnitType.MERCENARY)
        for ____, u in ipairs(units) do
            u:setReady(false)
            local pos = u.entity:getPosition()
            if playerId <= 4 then
                u:getWritableEntity().y3Unit:attack_move(
                    y3.point.create(pos.x + 2000, pos.y),
                    5000
                )
            else
                u:getWritableEntity().y3Unit:attack_move(
                    y3.point.create(pos.x - 2000, pos.y),
                    5000
                )
            end
        end
    end
end
function LastBattleController.prototype.gameEnd(self)
end
____exports.lastBattleController = make(nil, ____exports.LastBattleController)
return ____exports
