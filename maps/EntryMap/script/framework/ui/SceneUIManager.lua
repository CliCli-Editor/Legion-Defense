local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 4,["8"] = 4,["12"] = 11,["13"] = 11,["14"] = 11,["16"] = 12,["17"] = 11,["18"] = 21,["19"] = 25,["20"] = 25,["21"] = 25,["22"] = 25,["23"] = 25,["24"] = 25,["25"] = 25,["26"] = 21,["27"] = 36,["28"] = 37,["29"] = 38,["30"] = 39,["33"] = 43,["34"] = 44,["35"] = 45,["36"] = 46,["38"] = 48,["39"] = 48,["43"] = 52,["44"] = 53,["45"] = 54,["48"] = 59,["49"] = 59,["50"] = 59,["51"] = 59,["52"] = 59,["53"] = 59,["54"] = 60,["55"] = 62,["56"] = 63,["57"] = 64,["58"] = 66,["59"] = 67,["60"] = 68,["61"] = 69,["62"] = 72,["63"] = 74,["64"] = 75,["68"] = 86,["71"] = 78,["72"] = 79,["73"] = 80,["74"] = 81,["75"] = 80,["77"] = 84,["83"] = 36,["84"] = 90,["85"] = 91,["86"] = 92,["87"] = 90,["88"] = 96});
local ____exports = {}
local ____SceneUIMap = include("framework.ui.SceneUIMap")
local SceneUIMap = ____SceneUIMap.SceneUIMap
--- 对话框管理
-- * sceneui 在场景上运行
-- * 修改sceneUI的时候，需要所有客户端同时执行
____exports.SceneUIManager = __TS__Class()
local SceneUIManager = ____exports.SceneUIManager
SceneUIManager.name = "SceneUIManager"
function SceneUIManager.prototype.____constructor(self)
    self._dialogCache = {}
end
function SceneUIManager.prototype.showAll(self, unitId, socket, clazz, params)
    self:show(
        y3.player.LOCAL_PLAYER.id,
        unitId,
        socket,
        clazz,
        params
    )
end
function SceneUIManager.prototype.show(self, playerId, unitId, socket, clazz, params)
    local uid = SceneUIMap[clazz.name]
    if uid == nil then
        console:error("请在SceneUIMap中添加这个ui的键值对:  " .. clazz.name)
        return
    end
    local key = (tostring(unitId) .. "_") .. clazz.name
    if self._dialogCache[key] ~= nil then
        if params then
            self._dialogCache[key].data.params = params
        end
        if self._dialogCache[key].onEnable ~= nil then
            self._dialogCache[key]:onEnable()
        end
        return
    end
    local unit = y3.unit.get_by_id(unitId)
    if unit == nil then
        console:error("需要绑定的单位不存在: " .. tostring(unitId))
        return
    end
    local scene_ui_obj = y3.scene_ui.create_scene_ui_at_player_unit_socket(
        uid,
        y3.player.get_by_id(playerId),
        unit,
        socket
    )
    unit:bindGC(scene_ui_obj)
    local scene_ui = __TS__New(clazz)
    scene_ui.id = key
    scene_ui.name = clazz.name
    scene_ui.playerId = unit:get_owner_player().id
    scene_ui.unitId = unitId
    scene_ui.source_id = uid
    scene_ui.ui = scene_ui_obj
    self._dialogCache[key] = scene_ui
    if params then
        scene_ui.data.params = params
    end
    do
        local function ____catch(e)
            console:error("对话框 onCreate 执行异常", e)
        end
        local ____try, ____hasReturned = pcall(function()
            local p = scene_ui.onCreate and scene_ui:onCreate()
            if p ~= nil and type(p) == "table" and p.catch ~= nil then
                p:catch(function(____, e)
                    console:error(e)
                end)
            end
            local ____ = scene_ui.onEnable and scene_ui:onEnable()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function SceneUIManager.prototype.hide(self, clz)
    local id = clz.id
    self._dialogCache[id] = nil
end
____exports.sceneUIManager = __TS__New(____exports.SceneUIManager)
return ____exports
