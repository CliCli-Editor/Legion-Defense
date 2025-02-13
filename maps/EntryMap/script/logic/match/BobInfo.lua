local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 40,["7"] = 40,["8"] = 40,["9"] = 40,["10"] = 40,["11"] = 40,["12"] = 40,["13"] = 40,["14"] = 40,["15"] = 40,["16"] = 40,["17"] = 40,["18"] = 40,["19"] = 40,["20"] = 40,["21"] = 60,["22"] = 61,["23"] = 62,["24"] = 60,["25"] = 66,["26"] = 67,["27"] = 68,["28"] = 66,["29"] = 71,["30"] = 72,["31"] = 73,["32"] = 71,["33"] = 76,["34"] = 77,["35"] = 78,["36"] = 76,["37"] = 82,["38"] = 83,["39"] = 84,["40"] = 82});
local ____exports = {}
____exports.BobInfo = {
    levelId = "75093844226223348641170779025550441629",
    gameMode = 1004,
    gameModeLow = 1005,
    gameModeRobot = 1006,
    gameModeGuide = 1007,
    randomMode = 1008,
    localServer = "42.186.213.132",
    qaServer = "42.186.215.253",
    preServer = "42.186.213.132",
    prodServer = "223.252.200.35",
    localToken = "79ae3ecbcabdce7c446ac2286d4ce7a89dea6908833f55e1a17124545656b8b43c76f7af7375f491603cff545bb5a0f2",
    localMapId = "NjY3YmQyOThhNTg2OWY1NmMyMjdlMmVk",
    preGamePlayId = "188211",
    prodGamePlayId = "194199"
}
function ____exports.isPvpMode(self)
    local mode = y3.game.get_current_game_mode()
    return mode == ____exports.BobInfo.gameMode or mode == ____exports.BobInfo.gameModeLow or mode == ____exports.BobInfo.gameModeRobot or mode == ____exports.BobInfo.randomMode
end
function ____exports.isPvpModeLow(self)
    local mode = y3.game.get_current_game_mode()
    return mode == ____exports.BobInfo.gameModeLow
end
function ____exports.isPvpModeRobot(self)
    local mode = y3.game.get_current_game_mode()
    return mode == ____exports.BobInfo.gameModeRobot
end
function ____exports.isPvpModeRandom(self)
    local mode = y3.game.get_current_game_mode()
    return mode == ____exports.BobInfo.randomMode
end
function ____exports.isGuideLevel(self)
    local mode = y3.game.get_current_game_mode()
    return mode == ____exports.BobInfo.gameModeGuide
end
return ____exports
