local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 14,["34"] = 19,["35"] = 19,["36"] = 19,["38"] = 19,["39"] = 26,["40"] = 27,["41"] = 28,["42"] = 28,["43"] = 28,["44"] = 28,["45"] = 28,["46"] = 26,["47"] = 31,["48"] = 32,["49"] = 33,["50"] = 31,["51"] = 36,["52"] = 37,["53"] = 36,["54"] = 40,["55"] = 41,["56"] = 40,["57"] = 44,["58"] = 45,["59"] = 46,["60"] = 47,["61"] = 44,["62"] = 60,["63"] = 61,["64"] = 60,["65"] = 64,["66"] = 65,["67"] = 64,["68"] = 69,["69"] = 70,["70"] = 69,["71"] = 74,["72"] = 74,["73"] = 74,["75"] = 75,["76"] = 76,["78"] = 78,["79"] = 74,["80"] = 81,["81"] = 82,["82"] = 82,["83"] = 82,["84"] = 83,["85"] = 84,["86"] = 82,["87"] = 82,["88"] = 86,["89"] = 87,["90"] = 87,["91"] = 87,["92"] = 88,["93"] = 89,["94"] = 90,["95"] = 91,["96"] = 91,["97"] = 91,["98"] = 91,["99"] = 93,["100"] = 93,["101"] = 93,["102"] = 94,["103"] = 95,["104"] = 93,["105"] = 93,["107"] = 81,["108"] = 100,["109"] = 101,["110"] = 101,["111"] = 101,["112"] = 102,["113"] = 103,["114"] = 101,["115"] = 101,["116"] = 106,["117"] = 107,["118"] = 107,["119"] = 107,["120"] = 108,["121"] = 109,["122"] = 110,["123"] = 111,["124"] = 111,["125"] = 111,["126"] = 111,["127"] = 113,["128"] = 113,["129"] = 113,["130"] = 114,["131"] = 115,["132"] = 113,["133"] = 113,["135"] = 100,["136"] = 120,["137"] = 121,["138"] = 121,["139"] = 121,["140"] = 122,["141"] = 123,["142"] = 121,["143"] = 121,["144"] = 126,["145"] = 127,["146"] = 127,["147"] = 127,["148"] = 128,["149"] = 129,["150"] = 130,["151"] = 131,["152"] = 131,["153"] = 131,["154"] = 131,["155"] = 133,["156"] = 133,["157"] = 133,["158"] = 134,["159"] = 135,["160"] = 135,["161"] = 135,["162"] = 135,["163"] = 136,["164"] = 133,["165"] = 133,["167"] = 120,["168"] = 141,["169"] = 142,["170"] = 142,["171"] = 142,["172"] = 143,["173"] = 144,["174"] = 142,["175"] = 142,["176"] = 147,["177"] = 148,["178"] = 148,["179"] = 148,["180"] = 149,["181"] = 150,["182"] = 151,["183"] = 152,["184"] = 152,["185"] = 152,["186"] = 152,["187"] = 154,["188"] = 154,["189"] = 154,["190"] = 155,["191"] = 156,["192"] = 154,["193"] = 154,["195"] = 141,["196"] = 161,["197"] = 162,["198"] = 163,["199"] = 163,["200"] = 163,["201"] = 163,["202"] = 161,["203"] = 166,["204"] = 167,["205"] = 167,["206"] = 167,["207"] = 168,["208"] = 169,["210"] = 166,["211"] = 173,["212"] = 174,["213"] = 176,["214"] = 178,["215"] = 179,["216"] = 181,["217"] = 182,["218"] = 183,["219"] = 184,["222"] = 188,["223"] = 189,["224"] = 173,["225"] = 193,["226"] = 194,["227"] = 194,["228"] = 194,["229"] = 194,["230"] = 196,["231"] = 196,["232"] = 196,["233"] = 196,["234"] = 196,["235"] = 196,["236"] = 193,["237"] = 199,["238"] = 200,["239"] = 201,["240"] = 202,["241"] = 202,["242"] = 202,["243"] = 202,["244"] = 202,["245"] = 202,["246"] = 199,["247"] = 205,["248"] = 206,["249"] = 205,["250"] = 209,["251"] = 210,["252"] = 209,["253"] = 212,["254"] = 213,["255"] = 212,["256"] = 215,["257"] = 216,["258"] = 215,["259"] = 219,["260"] = 220,["261"] = 219,["262"] = 223,["263"] = 224,["264"] = 225,["265"] = 223,["266"] = 228,["267"] = 229,["268"] = 229,["269"] = 229,["270"] = 229,["271"] = 228,["272"] = 231,["273"] = 232,["274"] = 231,["275"] = 237});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local playerIdList = ____PlayerUtils.playerIdList
local ____AreaController = include("logic.controllers.ui.AreaController")
local areaController = ____AreaController.areaController
local ____CameraController = include("logic.controllers.ui.CameraController")
local cameraController = ____CameraController.cameraController
local ____FowController = include("logic.controllers.ui.FowController")
local fowController = ____FowController.fowController
local ____MinimapController = include("logic.controllers.ui.MinimapController")
local minimapController = ____MinimapController.minimapController
local ____SignalController = include("logic.controllers.ui.SignalController")
local signalController = ____SignalController.signalController
local Camera_DISTANCE = 5500
--- 所有可能引起同步问题的ui操作，都要在这里处理掉
____exports.UIController = __TS__Class()
local UIController = ____exports.UIController
UIController.name = "UIController"
function UIController.prototype.____constructor(self)
end
function UIController.prototype.createByPath(self, playerId, prefabName, rootPath)
    local player = y3.player.get_by_id(playerId)
    return y3.ui_prefab.create(
        player,
        prefabName,
        y3.ui.get_ui(player, rootPath)
    ):get_ui(player)
end
function UIController.prototype.createByUI(self, playerId, prefabName, ui)
    local player = y3.player.get_by_id(playerId)
    return y3.ui_prefab.create(player, prefabName, ui):get_ui(player)
end
function UIController.prototype.show_fog(self)
    fowController:show_fog()
end
function UIController.prototype.hide_fog(self)
    fowController:hide_fog()
end
function UIController.prototype.init(self)
    y3.game.toggle_day_night_time(false)
    y3.game.set_day_night_time(12)
    self:show_fog()
end
function UIController.prototype.follow(self, playerId, unitId)
    cameraController:follow(playerId, unitId)
end
function UIController.prototype.follow_cancel(self, playerId)
    cameraController:follow_cancel(playerId)
end
function UIController.prototype.follow_once_by_all_player(self)
    cameraController:follow_once_by_all_player()
end
function UIController.prototype.follow_once(self, playerId, unitId)
    if unitId == nil then
        unitId = 0
    end
    if unitId == nil or unitId == 0 then
        unitId = datas.players[playerId]:getSingle(UnitData).entity.y3Unit.id
    end
    cameraController:follow_once(playerId, unitId)
end
function UIController.prototype.focusKof(self)
    y3.ltimer.wait(
        0.5,
        function(t)
            t:remove()
            ____exports.uiController:hide_fog()
        end
    )
    local area = areaController:get_rectangle_area(10239)
    local ____array_0 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_0, PlayerId.JUDGE, PlayerId.OBSERVER)
    local list = {__TS__SparseArraySpread(____array_0)}
    for ____, playerId in ipairs(list) do
        self:minimap_show_area(playerId, area)
        self:limit_in_area(playerId, area)
        self:lookAtPos(
            playerId,
            area:get_center_point()
        )
        y3.ltimer.wait_frame(
            5,
            function(t)
                t:remove()
                cameraController:set_distance(playerId, Camera_DISTANCE)
            end
        )
    end
end
function UIController.prototype.focusRabbitVsSheep(self)
    y3.ltimer.wait(
        0.5,
        function(t)
            t:remove()
            ____exports.uiController:hide_fog()
        end
    )
    local area = areaController:get_rectangle_area(mapConfig["兔羊大战镜头区域"])
    local ____array_1 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_1, PlayerId.JUDGE, PlayerId.OBSERVER)
    local list = {__TS__SparseArraySpread(____array_1)}
    for ____, playerId in ipairs(list) do
        self:minimap_show_area(playerId, area)
        self:limit_in_area(playerId, area)
        self:lookAtPos(
            playerId,
            area:get_center_point()
        )
        y3.ltimer.wait_frame(
            5,
            function(t)
                t:remove()
                cameraController:set_distance(playerId, Camera_DISTANCE)
            end
        )
    end
end
function UIController.prototype.focusBigBlessArea(self)
    y3.ltimer.wait(
        0.5,
        function(t)
            t:remove()
            ____exports.uiController:hide_fog()
        end
    )
    local area = areaController:get_rectangle_area(mapConfig["大祝福镜头选择"])
    local ____array_2 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_2, PlayerId.JUDGE, PlayerId.OBSERVER)
    local list = {__TS__SparseArraySpread(____array_2)}
    for ____, playerId in ipairs(list) do
        self:minimap_show_area(playerId, area)
        self:limit_in_area(playerId, area)
        self:lookAtPos(
            playerId,
            area:get_center_point()
        )
        y3.ltimer.wait_frame(
            5,
            function(t)
                t:remove()
                self:lookAtPos(
                    playerId,
                    area:get_center_point()
                )
                cameraController:set_distance(playerId, Camera_DISTANCE)
            end
        )
    end
end
function UIController.prototype.focusLastBattle(self)
    y3.ltimer.wait(
        0.5,
        function(t)
            t:remove()
            ____exports.uiController:hide_fog()
        end
    )
    local area = areaController:get_rectangle_area(mapConfig["终极大战区域"])
    local ____array_3 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_3, PlayerId.JUDGE, PlayerId.OBSERVER)
    local list = {__TS__SparseArraySpread(____array_3)}
    for ____, playerId in ipairs(list) do
        self:minimap_show_area(playerId, area)
        self:limit_in_area(playerId, area)
        self:lookAtPos(
            playerId,
            area:get_center_point()
        )
        y3.ltimer.wait_frame(
            5,
            function(t)
                t:remove()
                cameraController:set_distance(playerId, Camera_DISTANCE)
            end
        )
    end
end
function UIController.prototype.resetLastBattlePos(self, playerId)
    local area = areaController:get_rectangle_area(mapConfig["终极大战区域"])
    self:lookAtPos(
        playerId,
        area:get_center_point()
    )
end
function UIController.prototype.allPlayerFocusMain(self)
    local ____array_4 = __TS__SparseArrayNew(table.unpack(playerIdList))
    __TS__SparseArrayPush(____array_4, PlayerId.JUDGE, PlayerId.OBSERVER)
    local list = {__TS__SparseArraySpread(____array_4)}
    for ____, playerId in ipairs(list) do
        self:focusMain(playerId)
    end
end
function UIController.prototype.focusMain(self, playerId)
    local area = areaController:create_rectangle_area(-17000 - 6500, -19000, 17000 - 6500, 7000)
    minimapController:set_mini_map_bg(playerId, 134221589)
    minimapController:set_min_map_show_area(playerId, area)
    cameraController:limit_in_area(playerId, area)
    if datas.players[playerId] ~= nil then
        local data = datas.players[playerId]:getSingle(PetData)
        if data ~= nil then
            self:lookAtUnit(playerId, data.y3Unit.id)
        end
    end
    cameraController:moveable(playerId, true)
    cameraController:set_distance(playerId, Camera_DISTANCE)
end
function UIController.prototype.lookAtPos(self, playerId, pos)
    local p1 = y3.point.create(
        pos:get_x(),
        pos:get_y() - 200
    )
    y3.camera.linear_move_by_time(
        y3.player.get_by_id(playerId),
        p1,
        0.05,
        1
    )
end
function UIController.prototype.lookAtCenter(self, playerId)
    local posId = mapConfig.playerPoints[playerId]
    local pos = y3.point.get_point_by_res_id(posId)
    cameraController:lookAt(
        playerId,
        pos:get_x(),
        pos:get_y(),
        0.2
    )
end
function UIController.prototype.lookAtUnit(self, playerId, unitId)
    cameraController:follow_once(playerId, unitId, 0.05)
end
function UIController.prototype.createArea(self, x1, y1, x2, y2)
    return areaController:create_rectangle_area(x1, y1, x2, y2)
end
function UIController.prototype.limit_in_area(self, playerId, area)
    cameraController:limit_in_area(playerId, area)
end
function UIController.prototype.minimap_show_area(self, playerId, area)
    minimapController:set_min_map_show_area(playerId, area)
end
function UIController.prototype.set_distance(self, playerId, distance)
    cameraController:set_distance(playerId, distance)
end
function UIController.prototype.selectUnit(self, playerId, unitId)
    y3.player.get_by_id(playerId):select_unit(y3.unit_group.create())
    y3.player.get_by_id(playerId):select_unit(y3.unit.get_by_id(unitId))
end
function UIController.prototype.send_signal(self, playerId, posId)
    signalController:send_yellow_signal_showMy(
        playerId,
        y3.point.get_point_by_res_id(posId)
    )
end
function UIController.prototype.send_signal2(self, playerId, pos)
    signalController:send_yellow_signal_showMy(playerId, pos)
end
____exports.uiController = make(nil, ____exports.UIController)
return ____exports
