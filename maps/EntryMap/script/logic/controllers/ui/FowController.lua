local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 8,["19"] = 8,["20"] = 8,["22"] = 8,["23"] = 10,["24"] = 11,["25"] = 12,["28"] = 15,["29"] = 16,["30"] = 17,["33"] = 10,["34"] = 22,["35"] = 23,["36"] = 24,["37"] = 25,["40"] = 28,["41"] = 29,["42"] = 30,["45"] = 22,["46"] = 35,["47"] = 36,["48"] = 37,["49"] = 38,["50"] = 39,["57"] = 48,["58"] = 49,["59"] = 48,["60"] = 52,["61"] = 53,["62"] = 54,["63"] = 54,["64"] = 54,["65"] = 54,["66"] = 54,["68"] = 61,["69"] = 61,["70"] = 61,["71"] = 61,["72"] = 61,["75"] = 69,["76"] = 70,["77"] = 71,["78"] = 35,["79"] = 86,["80"] = 87,["81"] = 88,["82"] = 89,["83"] = 90,["90"] = 99,["91"] = 100,["92"] = 99,["93"] = 103,["94"] = 104,["95"] = 105,["96"] = 105,["97"] = 105,["98"] = 105,["99"] = 105,["101"] = 112,["102"] = 112,["103"] = 112,["104"] = 112,["105"] = 112,["106"] = 113,["107"] = 113,["108"] = 113,["109"] = 113,["110"] = 113,["111"] = 116,["112"] = 116,["113"] = 116,["114"] = 116,["115"] = 116,["116"] = 116,["117"] = 116,["120"] = 86,["121"] = 134,["122"] = 135,["123"] = 134,["124"] = 141,["125"] = 142,["126"] = 144,["127"] = 144,["128"] = 144,["129"] = 144,["131"] = 141,["132"] = 150});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
____exports.FowController = __TS__Class()
local FowController = ____exports.FowController
FowController.name = "FowController"
function FowController.prototype.____constructor(self)
end
function FowController.prototype.hide_king_fog(self, kingId)
    local kingData = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
    if kingData.viewUnit == nil then
        return
    end
    for ____, playerId in ipairs(playerIdList) do
        if player2King[playerId] ~= kingId then
            y3.player.get_by_id(playerId).handle:share_source_unit_vision_to_target(kingData.viewUnit.handle)
        end
    end
end
function FowController.prototype.show_king_fog(self, kingId)
    local kingData = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
    if kingData.viewUnit == nil then
        console:log("国王信息没有初始化.......")
        return
    end
    for ____, playerId in ipairs(playerIdList) do
        if player2King[playerId] ~= kingId then
            y3.player.get_by_id(playerId).handle:close_source_unit_vision_to_target(kingData.viewUnit.handle)
        end
    end
end
function FowController.prototype.show_fog(self)
    y3.game.set_globale_view(false)
    local leftArea = y3.area.get_by_res_id(10339, 2)
    local rightArea = y3.area.get_by_res_id(10340, 2)
    local fullArea = y3.area.get_by_res_id(10334, 2)
    --- 设置多边形区域对玩家可见性
    -- 
    -- @param area 区域
    -- @param player 玩家
    -- @param stage 是否开启视野
    -- @param is_real_visibility 是否开启真实视野
    local function set_fog_visible(____, area, player, stage, is_real_visibility)
        GameAPI.set_fog_state(area.handle, player.handle, stage, is_real_visibility)
    end
    for ____, playerId in ipairs(playerIdList) do
        if playerId <= 4 then
            leftArea:set_visible(
                y3.player.get_by_id(playerId),
                true,
                true
            )
        else
            rightArea:set_visible(
                y3.player.get_by_id(playerId),
                true,
                true
            )
        end
    end
    console:log("初始化国王信息555.....")
    self:show_king_fog(PlayerId.LEFT_KING)
    self:show_king_fog(PlayerId.RIGHT_KING)
end
function FowController.prototype.showLastBattleFog(self)
    y3.game.set_globale_view(false)
    local leftArea = y3.area.get_by_res_id(mapConfig["终极大战迷雾"][1], 2)
    local rightArea = y3.area.get_by_res_id(mapConfig["终极大战迷雾"][2], 2)
    local fullArea = y3.area.get_by_res_id(10334, 2)
    --- 设置多边形区域对玩家可见性
    -- 
    -- @param area 区域
    -- @param player 玩家
    -- @param stage 是否开启视野
    -- @param is_real_visibility 是否开启真实视野
    local function set_fog_visible(____, area, player, stage, is_real_visibility)
        GameAPI.set_fog_state(area.handle, player.handle, stage, is_real_visibility)
    end
    for ____, playerId in ipairs(playerIdList) do
        if playerId <= 4 then
            leftArea:set_visible(
                y3.player.get_by_id(playerId),
                true,
                true
            )
        else
            rightArea:set_visible(
                y3.player.get_by_id(playerId),
                true,
                false
            )
            leftArea:set_visible(
                y3.player.get_by_id(playerId),
                true,
                true
            )
            set_fog_visible(
                nil,
                leftArea,
                y3.player.get_by_id(playerId),
                1,
                true
            )
        end
    end
end
function FowController.prototype.hide_fog(self)
    y3.game.set_globale_view(true)
end
function FowController.prototype.set_mini_map_alpha(self)
    for ____, playerId in ipairs(playerIdList) do
        GameAPI.set_mini_map_alpha(
            y3.player.get_by_id(playerId).handle,
            95
        )
    end
end
____exports.fowController = make(nil, ____exports.FowController)
return ____exports
