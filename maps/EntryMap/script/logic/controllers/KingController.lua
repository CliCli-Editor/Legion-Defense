local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayPushArray = ____lualib.__TS__ArrayPushArray
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 11,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 14,["38"] = 14,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 19,["51"] = 19,["52"] = 20,["53"] = 20,["54"] = 21,["55"] = 21,["56"] = 22,["57"] = 22,["58"] = 23,["59"] = 23,["60"] = 24,["61"] = 24,["62"] = 25,["63"] = 25,["64"] = 26,["65"] = 26,["66"] = 29,["67"] = 29,["68"] = 29,["70"] = 29,["71"] = 31,["72"] = 32,["73"] = 33,["74"] = 31,["75"] = 36,["76"] = 37,["77"] = 38,["78"] = 36,["79"] = 41,["80"] = 42,["81"] = 44,["82"] = 46,["83"] = 47,["84"] = 47,["85"] = 47,["86"] = 47,["87"] = 47,["88"] = 47,["89"] = 47,["90"] = 49,["91"] = 49,["92"] = 49,["93"] = 50,["94"] = 52,["95"] = 52,["96"] = 52,["97"] = 53,["98"] = 54,["99"] = 56,["100"] = 57,["101"] = 59,["102"] = 60,["103"] = 61,["104"] = 62,["105"] = 63,["107"] = 65,["109"] = 67,["110"] = 68,["111"] = 69,["113"] = 71,["114"] = 72,["118"] = 76,["119"] = 77,["120"] = 78,["121"] = 79,["123"] = 81,["125"] = 83,["126"] = 84,["127"] = 85,["129"] = 87,["130"] = 88,["134"] = 93,["135"] = 52,["136"] = 52,["137"] = 95,["138"] = 95,["139"] = 95,["140"] = 95,["141"] = 95,["142"] = 95,["143"] = 95,["144"] = 95,["145"] = 95,["146"] = 95,["147"] = 96,["148"] = 97,["150"] = 99,["151"] = 99,["152"] = 49,["153"] = 49,["154"] = 103,["155"] = 104,["156"] = 105,["158"] = 106,["162"] = 109,["163"] = 109,["164"] = 109,["165"] = 110,["166"] = 111,["169"] = 114,["170"] = 115,["171"] = 116,["172"] = 117,["173"] = 118,["174"] = 119,["175"] = 120,["176"] = 121,["177"] = 121,["178"] = 121,["179"] = 121,["181"] = 123,["182"] = 124,["183"] = 125,["184"] = 126,["185"] = 126,["186"] = 126,["187"] = 126,["189"] = 129,["190"] = 130,["192"] = 133,["193"] = 134,["194"] = 138,["195"] = 138,["196"] = 139,["197"] = 140,["198"] = 145,["199"] = 146,["201"] = 138,["202"] = 149,["203"] = 150,["204"] = 151,["206"] = 109,["207"] = 109,["208"] = 156,["209"] = 41,["210"] = 159,["211"] = 160,["212"] = 161,["213"] = 159,["214"] = 167,["215"] = 169,["216"] = 171,["217"] = 172,["218"] = 173,["219"] = 179,["220"] = 179,["221"] = 179,["222"] = 179,["223"] = 179,["224"] = 179,["225"] = 180,["228"] = 183,["229"] = 185,["230"] = 185,["231"] = 190,["232"] = 191,["233"] = 193,["234"] = 194,["235"] = 196,["236"] = 196,["237"] = 196,["238"] = 196,["239"] = 196,["240"] = 196,["241"] = 196,["242"] = 196,["243"] = 198,["244"] = 200,["245"] = 202,["246"] = 203,["249"] = 206,["250"] = 206,["251"] = 206,["252"] = 206,["253"] = 206,["254"] = 206,["255"] = 216,["256"] = 216,["257"] = 216,["258"] = 216,["259"] = 216,["260"] = 216,["261"] = 217,["262"] = 217,["263"] = 217,["264"] = 217,["265"] = 217,["266"] = 217,["267"] = 219,["268"] = 220,["270"] = 226,["271"] = 227,["272"] = 228,["275"] = 232,["276"] = 167,["277"] = 235,["278"] = 236,["279"] = 237,["280"] = 238,["281"] = 239,["282"] = 240,["283"] = 241,["284"] = 242,["285"] = 242,["286"] = 243,["287"] = 244,["288"] = 245,["289"] = 246,["290"] = 247,["293"] = 250,["294"] = 251,["295"] = 252,["296"] = 253,["300"] = 236,["301"] = 259,["302"] = 260,["303"] = 235,["304"] = 267,["305"] = 268,["306"] = 269,["307"] = 270,["308"] = 271,["309"] = 272,["311"] = 268,["312"] = 276,["313"] = 277,["314"] = 267,["315"] = 283,["316"] = 284,["317"] = 285,["318"] = 286,["319"] = 287,["322"] = 290,["323"] = 292,["324"] = 292,["325"] = 292,["326"] = 293,["327"] = 292,["328"] = 292,["329"] = 296,["330"] = 298,["331"] = 298,["332"] = 298,["333"] = 298,["334"] = 299,["335"] = 300,["337"] = 303,["338"] = 283,["339"] = 306,["340"] = 307,["341"] = 308,["342"] = 309,["343"] = 310,["344"] = 311,["347"] = 306,["348"] = 316,["349"] = 317,["350"] = 318,["351"] = 319,["352"] = 320,["353"] = 320,["354"] = 320,["355"] = 320,["357"] = 322,["358"] = 323,["359"] = 324,["360"] = 324,["361"] = 324,["362"] = 324,["364"] = 316,["365"] = 330});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
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
local ____GameStatisticsData = include("logic.models.GameStatisticsData")
local GameStatisticsData = ____GameStatisticsData.GameStatisticsData
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____Property = include("logic.models.Property")
local _____6218_573AID = ____Property["战场ID"]
local ____Status = include("logic.models.Status")
local _____53EA_8DD1_8DEF = ____Status["只跑路"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____EffectUtils = include("logic.utils.EffectUtils")
local EffectUtils = ____EffectUtils.EffectUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local player2battleGround = ____PlayerUtils.player2battleGround
local playerIdList = ____PlayerUtils.playerIdList
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____GameEndController = include("logic.controllers.game.GameEndController")
local gameStatusController = ____GameEndController.gameStatusController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
local ____FowController = include("logic.controllers.ui.FowController")
local fowController = ____FowController.fowController
local ____GridController = include("logic.controllers.ui.GridController")
local gridController = ____GridController.gridController
____exports.KingController = __TS__Class()
local KingController = ____exports.KingController
KingController.name = "KingController"
function KingController.prototype.____constructor(self)
end
function KingController.prototype.init(self)
    gridController:initGrid(PlayerId.LEFT_KING)
    gridController:initGrid(PlayerId.RIGHT_KING)
end
function KingController.prototype.create(self)
    self:createData(PlayerId.LEFT_KING)
    self:createData(PlayerId.RIGHT_KING)
end
function KingController.prototype.createData(self, playerId)
    local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    kingData.viewUnit = y3.unit.get_by_res_id(playerId == PlayerId.LEFT_KING and 51 or 56)
    local unitDatas = writeableDatas.players[playerId]:getAll(UnitData)
    __TS__ArrayPushArray(
        kingData.aliveList,
        __TS__ArrayMap(
            unitDatas,
            function(____, a) return a.id end
        )
    )
    __TS__ArrayForEach(
        unitDatas,
        function(____, a)
            a:toNpc()
            a.entity:on(
                "单位-死亡",
                function()
                    self:removeUnit(a)
                    ____exports.kingController:loseALife(playerId)
                    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
                    local gameStatisticsData = writeableDatas.global:getOrCreateSingle(GameStatisticsData)
                    if playerId == PlayerId.LEFT_KING then
                        if #kingData.aliveList == 2 then
                            gameStatisticsData.KillTower1LevelLeft = gameData.level
                        elseif #kingData.aliveList == 1 then
                            gameStatisticsData.KillTower2LevelLeft = gameData.level
                        else
                            gameStatisticsData.KillTower3LevelLeft = gameData.level
                        end
                        for ____, pId in ipairs(playerIdList) do
                            if pId < 5 then
                                SoundManager:play(SoundType["己方防御塔破坏VC"], pId)
                            end
                            if pId > 4 then
                                SoundManager:play(SoundType["敌方防御塔破坏VC"], pId)
                            end
                        end
                    else
                        if #kingData.aliveList == 2 then
                            gameStatisticsData.KillTower1LevelRight = gameData.level
                        elseif #kingData.aliveList == 1 then
                            gameStatisticsData.KillTower2LevelRight = gameData.level
                        else
                            gameStatisticsData.KillTower3LevelRight = gameData.level
                        end
                        for ____, pId in ipairs(playerIdList) do
                            if pId < 5 then
                                SoundManager:play(SoundType["敌方防御塔破坏VC"], pId)
                            end
                            if pId > 4 then
                                SoundManager:play(SoundType["己方防御塔破坏VC"], pId)
                            end
                        end
                    end
                    traceLogUtils:onTowerDrop(playerId)
                end
            )
            local particle = EffectUtils:add(
                100596,
                a:getWritableEntity(),
                0,
                nil,
                nil,
                nil,
                "",
                1
            )
            if kingData.effect[a.id] == nil then
                kingData.effect[a.id] = {}
            end
            local ____kingData_effect_a_id_0 = kingData.effect[a.id]
            ____kingData_effect_a_id_0[#____kingData_effect_a_id_0 + 1] = particle
        end
    )
    local areaId = mapConfig["国王区域"][(playerId == PlayerId.LEFT_KING and 0 or 1) + 1]
    local area = y3.area.get_rectangle_by_res_id(areaId)
    if not area then
        error(
            "无法找到国王区域 " .. tostring(areaId),
            0
        )
    end
    area:event(
        "区域-进入",
        function(trg, data)
            local entity = fight.allY3UnitMap[data.unit.id]
            if not entity then
                return
            end
            if not entity.customData then
                local id = player2battleGround[playerId]
                local oldTag = "战场" .. tostring(entity.activeData.values[_____6218_573AID])
                local newTag = "战场" .. tostring(id)
                entity:removeTag(entity, oldTag)
                entity.activeData.values[_____6218_573AID] = id
                entity:addTag(entity, newTag)
                console:log(
                    entity:getY3Name(),
                    "召唤物进入国王区域"
                )
            else
                local unitData = entity.customData
                unitData:setBattleGroundId(player2battleGround[playerId], true)
                unitData.moveState = "none"
                console:log(
                    entity:getY3Name(),
                    "进入国王区域"
                )
            end
            if player2King[entity.playerId] ~= playerId then
                fowController:hide_king_fog(playerId)
            end
            entity:setBaseState(entity, _____53EA_8DD1_8DEF, false)
            entity:removeEffect(entity, {7})
            local childrenFight
            childrenFight = function(____, entity, enemy)
                entity:setBaseState(entity, _____53EA_8DD1_8DEF, false)
                entity:removeEffect(entity, {7})
                for ____, child in ipairs(entity.children) do
                    childrenFight(nil, child, enemy)
                end
            end
            local enemy = entity:findTarget({"敌人"}, nil, 1, 8000)
            if enemy ~= nil then
                childrenFight(nil, entity, enemy)
            end
        end
    )
    self:activeNext(playerId)
end
function KingController.prototype.removeUnit(self, unit)
    unit.entity.y3Unit:set_scale(0)
    unit.entity.y3Unit:move_to_pos(y3.point.create(-30000, -30000, 0))
end
function KingController.prototype.loseALife(self, playerId)
    local name = playerId == PlayerId.LEFT_KING and i18n["local"](i18n, "光明女神") or i18n["local"](i18n, "天灾国王")
    local kingdata = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    if #kingdata.aliveList == 0 then
        console:log("存活的国王单位为0，游戏结束 1 ")
        chatController:sysMsg(
            i18n:format("${name}死亡，游戏结束", {name = ("#ff0000" .. name) .. "#ffffff"}),
            ChatInputType["所有人聊天消息"],
            playerId,
            playerId
        )
        self:activeNext(playerId)
        return
    end
    local unitId = table.remove(kingdata.aliveList, 1)
    local ____kingdata_deathList_1 = kingdata.deathList
    ____kingdata_deathList_1[#____kingdata_deathList_1 + 1] = unitId
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local gold = levelConfigMap[gameData.level].towerBoom
    for ____, id in ipairs(playerIdList) do
        local units = writeableDatas.players[id]:getOrCreateSingle(PetData)
        units.y3Unit:play_animation(
            "die",
            1,
            0,
            -1,
            false,
            true
        )
        if player2King[id] ~= playerId then
            playerDataController:addGold(id, gold)
            local hero = writeableDatas.players[id]:getOrCreateSingle(UnitData)
            effectController:showGold(id, hero.entity.y3Unit, gold)
        end
    end
    chatController:notifyMsg(
        i18n:format("#ff0000国王【${name}】#ffffff水晶防守失败，损失一条生命", {name = name}),
        ChatInputType["所有人聊天消息"],
        playerId,
        playerId
    )
    chatController:notifyMsg(
        i18n:format("#ff0000恭喜，攻破敌方水晶，所有我方玩家获得【${gold}】金币", {gold = gold}),
        ChatInputType["敌方消息"],
        playerId,
        playerId
    )
    chatController:notifyMsg(
        i18n:format("#ff0000警告，我方水晶被攻破，所有敌方玩家获得【${gold}】金币", {gold = gold}),
        ChatInputType["盟友聊天消息"],
        playerId,
        playerId
    )
    for ____, id in ipairs(playerIdList) do
        triggerManager:trigger(TriggerType["当前塔的个数小于等于时触发"], {playerId = id, count = #kingdata.aliveList})
    end
    if #kingdata.aliveList == 0 then
        gameStatusController:endGame()
        console:log("存活的国王单位为0，游戏结束")
        return
    end
    kingdata.needNextKing = true
end
function KingController.prototype.setLoseToEndKing(self)
    local function next(____, playerId)
        local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        local gameStatisticsData = writeableDatas.global:getOrCreateSingle(GameStatisticsData)
        local gameData = writeableDatas.global:getOrCreateSingle(GameData)
        while #kingData.aliveList > 1 do
            local a = table.remove(kingData.aliveList, 1)
            local ____kingData_deathList_2 = kingData.deathList
            ____kingData_deathList_2[#____kingData_deathList_2 + 1] = a
            if playerId == PlayerId.LEFT_KING then
                if #kingData.aliveList == 2 then
                    gameStatisticsData.KillTower1LevelLeft = gameData.level
                elseif #kingData.aliveList == 1 then
                    gameStatisticsData.KillTower2LevelLeft = gameData.level
                end
            else
                if #kingData.aliveList == 2 then
                    gameStatisticsData.KillTower1LevelRight = gameData.level
                elseif #kingData.aliveList == 1 then
                    gameStatisticsData.KillTower2LevelRight = gameData.level
                end
            end
        end
    end
    next(nil, PlayerId.LEFT_KING)
    next(nil, PlayerId.RIGHT_KING)
end
function KingController.prototype.checkNextKing(self)
    local function next(____, playerId)
        local data = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        if data.needNextKing then
            self:activeNext(playerId)
            data.needNextKing = false
        end
    end
    next(nil, PlayerId.LEFT_KING)
    next(nil, PlayerId.RIGHT_KING)
end
function KingController.prototype.activeNext(self, playerId)
    local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    if #kingData.aliveList == 0 then
        gameStatusController:endGame()
        console:log("存活的国王单位为0，游戏结束")
        return
    end
    local activeUnit = kingData.aliveList[1]
    __TS__ArrayForEach(
        kingData.effect[activeUnit],
        function(____, a)
            EffectUtils:remove(a)
        end
    )
    kingData.currentUnit = activeUnit
    local unit = __TS__ArrayFind(
        writeableDatas.players[playerId]:getAll(UnitData),
        function(____, a) return a.id == activeUnit end
    )
    if unit == nil then
        console:log("存活的国王单位找不到")
    end
    unit:toHero()
end
function KingController.prototype.clearEffect(self, playerId)
    local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
    for k in pairs(kingData.effect) do
        local v = kingData.effect[k]
        for ____, e in ipairs(v) do
            EffectUtils:remove(e)
        end
    end
end
function KingController.prototype.clearCrazy(self)
    console:log("清除狂暴")
    local leftUnits = writeableDatas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    for ____, unit in ipairs(leftUnits) do
        unit:getWritableEntity():removeEffectByGroup(
            unit:getWritableEntity(),
            {100}
        )
    end
    local rightUnits = writeableDatas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    for ____, unit in ipairs(rightUnits) do
        unit:getWritableEntity():removeEffectByGroup(
            unit:getWritableEntity(),
            {100}
        )
    end
end
____exports.kingController = make(nil, ____exports.KingController)
return ____exports
