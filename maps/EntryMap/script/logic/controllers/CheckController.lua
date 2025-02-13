local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 11,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 14,["38"] = 14,["40"] = 19,["41"] = 19,["42"] = 19,["44"] = 19,["45"] = 25,["46"] = 27,["47"] = 28,["50"] = 30,["51"] = 31,["54"] = 35,["56"] = 36,["57"] = 37,["58"] = 38,["59"] = 38,["61"] = 39,["62"] = 43,["64"] = 44,["65"] = 44,["66"] = 45,["67"] = 44,["70"] = 49,["71"] = 52,["72"] = 53,["73"] = 54,["74"] = 55,["75"] = 56,["76"] = 57,["77"] = 58,["78"] = 59,["80"] = 61,["82"] = 65,["83"] = 67,["84"] = 68,["85"] = 69,["86"] = 70,["87"] = 72,["88"] = 73,["90"] = 76,["91"] = 77,["92"] = 79,["93"] = 81,["94"] = 82,["95"] = 83,["96"] = 85,["97"] = 86,["103"] = 25,["104"] = 93,["105"] = 94,["106"] = 95,["107"] = 96,["110"] = 99,["111"] = 100,["112"] = 101,["113"] = 103,["114"] = 105,["115"] = 106,["117"] = 108,["118"] = 93,["119"] = 111,["120"] = 112,["121"] = 113,["122"] = 114,["123"] = 118,["124"] = 119,["125"] = 119,["126"] = 119,["127"] = 119,["128"] = 119,["129"] = 119,["130"] = 120,["131"] = 120,["132"] = 120,["133"] = 120,["134"] = 121,["135"] = 122,["136"] = 122,["137"] = 122,["138"] = 122,["139"] = 123,["140"] = 124,["141"] = 124,["142"] = 125,["143"] = 125,["144"] = 125,["145"] = 125,["148"] = 111,["149"] = 130,["150"] = 131,["151"] = 132,["152"] = 133,["153"] = 130,["154"] = 140,["155"] = 142,["156"] = 143,["158"] = 144,["159"] = 145,["160"] = 145,["162"] = 146,["166"] = 148,["167"] = 150,["168"] = 151,["169"] = 152,["170"] = 153,["171"] = 154,["173"] = 140,["174"] = 160});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____SimplePlayerBehaveTree = include("logic.ai.SimplePlayerBehaveTree")
local SimplePlayerBehaveTree = ____SimplePlayerBehaveTree.SimplePlayerBehaveTree
local ____CheckManager = include("logic.archive.manager.CheckManager")
local checkManager = ____CheckManager.checkManager
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____PlayerInHookData = include("logic.models.PlayerInHookData")
local PlayerInHookData = ____PlayerInHookData.PlayerInHookData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
--- 检查挂机
____exports.CheckController = __TS__Class()
local CheckController = ____exports.CheckController
CheckController.name = "CheckController"
function CheckController.prototype.____constructor(self)
end
function CheckController.prototype.check(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if gameData.level < 3 then
        return
    end
    if GameUtils.isSingleGame or isPvpModeRobot(nil) then
        console:log("AI模式不处理")
        return
    end
    for ____, playerId in ipairs(playerIdList) do
        do
            local playerData = datas.players[playerId]:getSingle(PlayerData)
            local greneData = datas.players[playerId]:getSingle(PlayerGenreData)
            if playerData == nil or playerData.isAI then
                goto __continue6
            end
            local hookData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerInHookData)
            local card_count = 0
            do
                local index = 0
                while index < 12 do
                    card_count = card_count + greneData.genreTagCount[index + 1]
                    index = index + 1
                end
            end
            local mercenary_count = playerData.hireCount
            if hookData.inHook then
                console:log("玩家在挂机状态，跳过查询")
                hookData.level = playerData.level
                hookData.card_count = card_count
                hookData.mercenary_count = mercenary_count
                hookData.idle_count = hookData.idle_count + 1
                if hookData.idle_count >= 5 then
                    hookData.cancel_count = hookData.cancel_count + 1
                end
                goto __continue6
            end
            if playerData.level ~= hookData.level or card_count ~= hookData.card_count or mercenary_count ~= hookData.mercenary_count then
                console:log("玩家有数据变化，不算挂机")
                hookData.level = playerData.level
                hookData.card_count = card_count
                hookData.mercenary_count = mercenary_count
                hookData.idle_count = 0
                goto __continue6
            end
            hookData.idle_count = hookData.idle_count + 1
            console:log("玩家挂机检测次数+1，当前次数", hookData.idle_count)
            if hookData.idle_count >= 3 then
                hookData.inHook = true
                console:log("玩家进入挂机状态了。。。。。。", playerId)
                self:addAI(playerId)
                if playerId == y3.player.LOCAL_PLAYER.id then
                    checkManager:idle()
                end
            end
        end
        ::__continue6::
    end
end
function CheckController.prototype.cancelHook(self, playerId)
    local hookData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerInHookData)
    if hookData.inHook and (hookData.cancel_count >= 1 or hookData.idle_count >= 5) then
        console:log("取消挂机次数大于一次", playerId)
        return
    end
    hookData.cancel_count = hookData.cancel_count + 1
    hookData.idle_count = 0
    hookData.inHook = false
    self:removeAI(playerId)
    if playerId == y3.player.LOCAL_PLAYER.id then
        checkManager:removeIdle()
    end
    console:log("首次取消挂机", playerId)
end
function CheckController.prototype.addAI(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    playerData.behaveTree = __TS__New(SimplePlayerBehaveTree, playerId)
    console:log("玩家的行为树打开了吗：", playerData.behaveTree ~= nil)
    local genreData = writeableDatas.global:getOrCreateSingle(GenreData)
    local defaultGenreList = __TS__ArrayMap(
        playerData.hero.aiGenrePool,
        function(____, id, index)
            return {id = id, weight = playerData.hero.aiWeight[index + 1] or 100}
        end
    )
    local genreList = __TS__ArrayFilter(
        defaultGenreList,
        function(____, a) return __TS__ArrayIndexOf(genreData.disableList, a.id) == -1 end
    )
    while #playerData.genre < 2 and #genreList > 0 do
        local genre = random:randomWeight(
            genreList,
            function(____, a) return a.weight end
        )
        if genre ~= nil then
            local ____playerData_genre_0 = playerData.genre
            ____playerData_genre_0[#____playerData_genre_0 + 1] = genre.id
            console:log(
                ("[AI][" .. tostring(playerId)) .. "] 选择副流派",
                genre.id
            )
        end
    end
end
function CheckController.prototype.removeAI(self, playerId)
    playerController:removeBehaveTree(playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    console:log("玩家的行为树关闭了吗：", playerData.behaveTree ~= nil)
end
function CheckController.prototype.report(self, playerId, target)
    local avgLevel = 1
    for ____, playerId2 in ipairs(playerIdList) do
        do
            local playerData = datas.players[playerId2]:getSingle(PlayerData)
            if target == playerId2 then
                goto __continue26
            end
            avgLevel = avgLevel + playerData.level
        end
        ::__continue26::
    end
    avgLevel = avgLevel / 5
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local hookData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerInHookData)
    local dis = avgLevel - playerData.level
    if dis >= 10 then
        hookData.report_count = hookData.report_count + 1
    end
end
____exports.checkController = make(nil, ____exports.CheckController)
return ____exports
