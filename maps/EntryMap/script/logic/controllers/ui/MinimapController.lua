local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 4,["10"] = 4,["12"] = 4,["13"] = 11,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 11,["19"] = 21,["20"] = 22,["21"] = 22,["22"] = 22,["23"] = 22,["24"] = 21,["25"] = 31,["26"] = 32,["28"] = 32,["30"] = 31,["31"] = 36});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
____exports.MinimapController = __TS__Class()
local MinimapController = ____exports.MinimapController
MinimapController.name = "MinimapController"
function MinimapController.prototype.____constructor(self)
end
function MinimapController.prototype.set_min_map_show_area(self, playerId, area)
    GameAPI.set_min_map_show_area(
        y3.player.get_by_id(playerId).handle,
        area.handle
    )
end
function MinimapController.prototype.set_mini_map_bg(self, playerId, imgId)
    y3.ui.change_mini_map_img(
        y3.player.get_by_id(playerId),
        imgId
    )
end
function MinimapController.prototype.set_unit_icon_with_player(self, playerId, unitId, imgId)
    local ____opt_0 = y3.unit.get_by_id(unitId)
    if ____opt_0 ~= nil then
        ____opt_0:set_minimap_icon(imgId)
    end
end
____exports.minimapController = make(nil, ____exports.MinimapController)
return ____exports
