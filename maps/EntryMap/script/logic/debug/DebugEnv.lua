local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 12,["13"] = 13,["14"] = 14,["15"] = 15,["17"] = 18,["18"] = 19,["20"] = 22,["21"] = 23});
local ____exports = {}
____exports.debugEnv = {
    enabled = false,
    focusHeroId = 0,
    enableBigBless = true,
    isSteam = true,
    hidePayInSteam = false
}
local msg = ""
if y3.game.is_debug_mode() then
    ____exports.debugEnv.enabled = true
    msg = msg .. "#ff0000 y3.game.is_debug_mode() is true\n"
end
if ____exports.debugEnv.enabled then
    msg = msg .. "#00ff00 debugEnv.enabled is true\n"
end
if msg ~= nil then
    y3.ui.display_message(y3.player.LOCAL_PLAYER, msg, 60 * 10)
end
return ____exports
