local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["16"] = 9,["17"] = 10,["18"] = 10,["19"] = 11,["20"] = 11,["21"] = 12,["22"] = 12,["25"] = 18,["26"] = 19,["27"] = 19,["28"] = 20,["29"] = 20,["30"] = 21,["31"] = 21,["32"] = 22,["33"] = 22,["34"] = 23,["35"] = 23,["36"] = 24,["37"] = 24,["38"] = 25,["39"] = 25,["40"] = 28,["41"] = 28,["42"] = 28,["44"] = 167,["45"] = 28,["46"] = 35,["47"] = 36,["48"] = 37,["50"] = 39,["52"] = 35,["53"] = 51,["54"] = 51,["55"] = 51,["57"] = 52,["58"] = 52,["59"] = 52,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 52,["64"] = 51,["65"] = 64,["66"] = 64,["67"] = 64,["69"] = 65,["70"] = 65,["71"] = 65,["72"] = 65,["73"] = 65,["74"] = 65,["75"] = 65,["76"] = 65,["77"] = 64,["78"] = 87,["79"] = 87,["80"] = 87,["82"] = 87,["83"] = 87,["85"] = 87,["86"] = 87,["88"] = 88,["89"] = 88,["90"] = 88,["91"] = 88,["92"] = 88,["93"] = 88,["94"] = 88,["95"] = 87,["96"] = 95,["97"] = 96,["98"] = 95,["99"] = 104,["100"] = 105,["101"] = 105,["102"] = 105,["103"] = 105,["104"] = 104,["105"] = 112,["106"] = 113,["107"] = 113,["108"] = 113,["109"] = 113,["110"] = 113,["111"] = 112,["112"] = 120,["113"] = 121,["114"] = 121,["115"] = 121,["116"] = 121,["117"] = 121,["118"] = 120,["119"] = 128,["120"] = 129,["121"] = 129,["122"] = 129,["123"] = 129,["124"] = 128,["125"] = 135,["126"] = 136,["127"] = 136,["128"] = 136,["129"] = 136,["130"] = 136,["131"] = 136,["132"] = 135,["133"] = 139,["134"] = 140,["135"] = 140,["136"] = 140,["137"] = 140,["138"] = 139,["139"] = 144,["140"] = 145,["141"] = 146,["142"] = 146,["143"] = 146,["144"] = 146,["146"] = 144,["147"] = 151,["148"] = 151,["149"] = 151,["151"] = 152,["152"] = 153,["153"] = 154,["154"] = 154,["155"] = 154,["156"] = 154,["157"] = 155,["158"] = 155,["159"] = 155,["160"] = 155,["161"] = 155,["162"] = 155,["163"] = 151,["164"] = 159,["165"] = 160,["166"] = 160,["167"] = 160,["168"] = 160,["169"] = 160,["170"] = 160,["171"] = 159,["172"] = 163,["173"] = 164,["174"] = 164,["175"] = 164,["176"] = 164,["177"] = 163,["178"] = 168,["179"] = 169,["180"] = 170,["181"] = 171,["182"] = 173,["183"] = 174,["184"] = 175,["185"] = 175,["186"] = 175,["187"] = 175,["189"] = 178,["190"] = 180,["191"] = 168,["192"] = 183,["193"] = 184,["194"] = 185,["195"] = 186,["196"] = 188,["197"] = 190,["198"] = 183,["199"] = 195});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
---
-- @todo 未测试，谨慎使用
____exports.CameraMoveType = CameraMoveType or ({})
____exports.CameraMoveType["匀加速"] = 1
____exports.CameraMoveType[____exports.CameraMoveType["匀加速"]] = "匀加速"
____exports.CameraMoveType["匀速"] = 2
____exports.CameraMoveType[____exports.CameraMoveType["匀速"]] = "匀速"
____exports.CameraMoveType["匀减速"] = 3
____exports.CameraMoveType[____exports.CameraMoveType["匀减速"]] = "匀减速"
---
-- @todo 未测试，谨慎使用
____exports.CameraShakeType = CameraShakeType or ({})
____exports.CameraShakeType["左右"] = 1
____exports.CameraShakeType[____exports.CameraShakeType["左右"]] = "左右"
____exports.CameraShakeType["上下"] = 2
____exports.CameraShakeType[____exports.CameraShakeType["上下"]] = "上下"
____exports.CameraShakeType["前后"] = 3
____exports.CameraShakeType[____exports.CameraShakeType["前后"]] = "前后"
____exports.CameraShakeType["左右上下"] = 4
____exports.CameraShakeType[____exports.CameraShakeType["左右上下"]] = "左右上下"
____exports.CameraShakeType["左右前后"] = 5
____exports.CameraShakeType[____exports.CameraShakeType["左右前后"]] = "左右前后"
____exports.CameraShakeType["上下前后"] = 6
____exports.CameraShakeType[____exports.CameraShakeType["上下前后"]] = "上下前后"
____exports.CameraShakeType["左右上下前后"] = 7
____exports.CameraShakeType[____exports.CameraShakeType["左右上下前后"]] = "左右上下前后"
____exports.CameraController = __TS__Class()
local CameraController = ____exports.CameraController
CameraController.name = "CameraController"
function CameraController.prototype.____constructor(self)
    self.camera1 = false
end
function CameraController.prototype.moveable(self, playerId, able)
    if able then
        y3.camera.enable_camera_move(y3.player.get_by_id(playerId))
    else
        y3.camera.disable_camera_move(y3.player.get_by_id(playerId))
    end
end
function CameraController.prototype.shake(self, playerId, strength, count, time, ____type)
    if ____type == nil then
        ____type = ____exports.CameraShakeType["左右上下前后"]
    end
    y3.camera.camera_shake(
        y3.player.get_by_id(playerId),
        strength,
        count,
        time,
        ____type
    )
end
function CameraController.prototype.shake2(self, playerId, strength, _____8870_51CF, count, time, ____type)
    if ____type == nil then
        ____type = ____exports.CameraShakeType["左右上下前后"]
    end
    y3.camera.camera_shake_with_decay(
        y3.player.get_by_id(playerId),
        strength,
        _____8870_51CF,
        count,
        time,
        ____type
    )
end
function CameraController.prototype.follow(self, playerId, unitId, offsetX, offsetY, offsetHeight)
    if offsetX == nil then
        offsetX = 0
    end
    if offsetY == nil then
        offsetY = 0
    end
    if offsetHeight == nil then
        offsetHeight = 0
    end
    y3.camera.set_camera_follow_unit(
        y3.player.get_by_id(playerId),
        y3.unit.get_by_id(unitId),
        offsetX,
        offsetY,
        offsetHeight
    )
end
function CameraController.prototype.follow_cancel(self, playerId)
    y3.camera.cancel_camera_follow_unit(y3.player.get_by_id(playerId))
end
function CameraController.prototype.limit_in_area(self, playerId, area)
    y3.camera.limit_in_rectangle_area(
        y3.player.get_by_id(playerId),
        area
    )
end
function CameraController.prototype.set_distance(self, playerId, distance)
    y3.camera.set_distance(
        y3.player.get_by_id(playerId),
        distance,
        0.1
    )
end
function CameraController.prototype.set_focus_height(self, playerId, distance)
    y3.camera.set_focus_height(
        y3.player.get_by_id(playerId),
        distance,
        0.1
    )
end
function CameraController.prototype.set_moving_with_mouse(self, playerId, state)
    y3.camera.set_moving_with_mouse(
        y3.player.get_by_id(playerId),
        state
    )
end
function CameraController.prototype.set_rotate(self, playerId, rotate)
    y3.camera.set_rotate(
        y3.player.get_by_id(playerId),
        2,
        rotate,
        0
    )
end
function CameraController.prototype.minimap_show_area(self, playerId, area)
    y3.ui.set_min_map_show_area(
        y3.player.get_by_id(playerId),
        area.handle
    )
end
function CameraController.prototype.follow_once_by_all_player(self)
    for ____, playerId in ipairs(playerIdList) do
        self:follow_once(
            playerId,
            datas.players[playerId]:getSingle(UnitData).entity.y3Unit.id
        )
    end
end
function CameraController.prototype.follow_once(self, playerId, unitId, time)
    if time == nil then
        time = 0
    end
    local unit = y3.unit.get_by_id(unitId)
    local point = unit:get_point()
    local p1 = y3.point.create(
        point:get_x(),
        point:get_y() + 200
    )
    y3.camera.linear_move_by_time(
        y3.player.get_by_id(playerId),
        p1,
        time,
        1
    )
end
function CameraController.prototype.lookAt(self, playerId, x, y, time)
    y3.camera.linear_move_by_time(
        y3.player.get_by_id(playerId),
        y3.point.create(x, y),
        time,
        1
    )
end
function CameraController.prototype.limit(self, playerId)
    y3.camera.set_moving_with_mouse(
        y3.player.get_by_id(playerId),
        true
    )
end
function CameraController.prototype.defaultCamera(self, playerId)
    local camera = y3.camera.get_by_handle(9999)
    camera:apply(y3.player.get_by_id(playerId))
    y3.camera.enable_camera_move(y3.player.get_by_id(playerId))
    local unit = datas.players[playerId]:getSingle(UnitData)
    if unit ~= nil and unit.entity ~= nil and unit.entity.y3Unit ~= nil then
        self:follow_once(
            playerId,
            datas.players[playerId]:getSingle(UnitData).entity.y3Unit.id
        )
    end
    self.camera1 = false
    console:log("启用默认像机")
end
function CameraController.prototype.hookCamera(self, playerId)
    local camera = y3.camera.get_by_handle(10342)
    camera:apply(y3.player.get_by_id(playerId))
    y3.camera.disable_camera_move(y3.player.get_by_id(playerId))
    self.camera1 = true
    console:log("启用备用像机")
end
____exports.cameraController = make(nil, ____exports.CameraController)
return ____exports
