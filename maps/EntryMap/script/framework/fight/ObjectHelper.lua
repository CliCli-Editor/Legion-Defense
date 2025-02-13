local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 4,["8"] = 5,["9"] = 5,["10"] = 5,["12"] = 7,["13"] = 9,["14"] = 10,["15"] = 5,["16"] = 15,["17"] = 16,["18"] = 15,["19"] = 19,["20"] = 21,["21"] = 22,["23"] = 23,["27"] = 25,["28"] = 26,["29"] = 27,["30"] = 28,["31"] = 29,["32"] = 30,["34"] = 32,["35"] = 32,["36"] = 32,["37"] = 32,["38"] = 32,["39"] = 32,["40"] = 33,["41"] = 19});
local ____exports = {}
local NEUTRAL_AND_HOSTILE = y3.player.get_by_id(32)
local hell = y3.point.create(0, 20000, -9999999)
____exports.ObjectHelper = __TS__Class()
local ObjectHelper = ____exports.ObjectHelper
ObjectHelper.name = "ObjectHelper"
function ObjectHelper.prototype.____constructor(self)
    self.map = {}
    self.templateMap = {}
    self.new2Old = {}
end
function ObjectHelper.prototype.remove(self, y3Unit)
    y3Unit:remove()
end
function ObjectHelper.prototype.create(self, playerId, roleId)
    local template = y3.object.unit[roleId]
    if template == nil or template.data == nil then
        error(
            ((("roleId " .. tostring(roleId)) .. " 不存在") .. "\n") .. debug.traceback(),
            0
        )
    end
    local key = self.templateMap[roleId]
    if key == nil then
        template.data.destroy_after_die = false
        key = template:new().key
        self.templateMap[roleId] = key
        self.new2Old[key] = roleId
    end
    local y3Unit = y3.unit.create_unit(
        y3.player.get_by_id(playerId),
        key,
        hell,
        0
    )
    return y3Unit
end
return ____exports
