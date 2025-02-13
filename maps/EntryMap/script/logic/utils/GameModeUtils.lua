local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 12,["29"] = 12,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 18,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 18,["41"] = 22,["42"] = 22,["43"] = 22,["45"] = 22,["46"] = 24,["47"] = 24,["48"] = 24,["52"] = 53,["55"] = 26,["56"] = 28,["57"] = 30,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 32,["63"] = 31,["64"] = 31,["66"] = 35,["67"] = 36,["68"] = 37,["69"] = 38,["72"] = 42,["73"] = 44,["74"] = 45,["75"] = 46,["77"] = 48,["78"] = 48,["79"] = 48,["80"] = 48,["81"] = 48,["89"] = 24,["90"] = 58,["91"] = 59,["92"] = 60,["93"] = 60,["94"] = 60,["95"] = 60,["96"] = 61,["97"] = 62,["100"] = 65,["101"] = 68,["102"] = 69,["103"] = 70,["104"] = 71,["105"] = 72,["106"] = 72,["107"] = 72,["108"] = 72,["109"] = 72,["110"] = 72,["111"] = 72,["114"] = 75,["115"] = 75,["116"] = 75,["117"] = 75,["118"] = 75,["119"] = 75,["120"] = 75,["121"] = 77,["122"] = 78,["123"] = 77,["124"] = 58,["125"] = 83,["127"] = 85,["128"] = 85,["129"] = 87,["130"] = 88,["131"] = 89,["132"] = 89,["133"] = 89,["134"] = 89,["135"] = 89,["136"] = 89,["137"] = 89,["138"] = 89,["139"] = 89,["140"] = 90,["142"] = 93,["143"] = 95,["144"] = 97,["145"] = 98,["147"] = 101,["148"] = 102,["149"] = 103,["152"] = 107,["153"] = 108,["154"] = 114,["155"] = 116,["156"] = 117,["157"] = 119,["158"] = 119,["159"] = 120,["160"] = 121,["161"] = 122,["162"] = 123,["163"] = 124,["164"] = 125,["167"] = 129,["168"] = 129,["169"] = 131,["170"] = 133,["171"] = 134,["174"] = 91,["177"] = 143,["179"] = 91,["182"] = 83,["183"] = 152});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DAlert = include("logic.dialogs.tips.DAlert")
local DAlert = ____DAlert.DAlert
local ____KeyboardManager = include("logic.managers.KeyboardManager")
local KeyboardManager = ____KeyboardManager.KeyboardManager
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local BgmType = ____SoundManager.BgmType
local ____BobInfo = include("logic.match.BobInfo")
local BobInfo = ____BobInfo.BobInfo
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local GameModeSlotId = 63
local function getNow(self)
    return math.max(
        0,
        math.floor((os.time() - 1732251958) / 60 / 60)
    )
end
____exports.GameModeUtils = __TS__Class()
local GameModeUtils = ____exports.GameModeUtils
GameModeUtils.name = "GameModeUtils"
function GameModeUtils.prototype.____constructor(self)
end
function GameModeUtils.prototype.restartGame(self, gameMode)
    if gameMode == nil then
        gameMode = 1001
    end
    do
        local function ____catch(e)
            DTips:show(i18n["local"](i18n, "关卡启动失败"))
        end
        local ____try, ____hasReturned = pcall(function()
            if steamUtils:isSteam() then
                if gameMode ~= 1001 then
                    print("y3.steam.request_start_game req")
                    y3.steam.request_start_game(
                        BobInfo.levelId,
                        gameMode,
                        function(s, e)
                            print("y3.steam.request_start_game rep", s, e)
                        end
                    )
                else
                    local value = getNow(nil) * 10000 + gameMode
                    print("restartGame value", value)
                    y3.save_data.save_integer(LOCAL.PLAYER, GameModeSlotId, value)
                    y3.game.switch_level(y3.game.get_level())
                end
            else
                if y3.game.is_debug_mode() then
                    local value = getNow(nil) * 10000 + gameMode
                    y3.save_data.save_integer(LOCAL.PLAYER, GameModeSlotId, value)
                    y3.game.switch_level(y3.game.get_level())
                else
                    LOCAL.PLAYER.handle:request_create_private_dungeon(
                        y3.game.get_level(),
                        gameMode,
                        1
                    )
                end
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function GameModeUtils.prototype.refreshGameMode(self)
    local value = y3.save_data.load_integer(LOCAL.PLAYER, GameModeSlotId)
    print(
        "game_mode",
        y3.game.get_current_game_mode()
    )
    print("GameMode value", value)
    if value == 0 then
        return
    end
    y3.save_data.save_integer(LOCAL.PLAYER, GameModeSlotId, 0)
    local time = math.floor(value / 10000)
    local gameMode = value % 10000
    local offset = getNow(nil) - time
    if offset > 1 then
        print(
            "get_current_game_mode 事件超过1小时，放弃重写",
            offset,
            value,
            time,
            gameMode
        )
        return
    end
    print(
        "get_current_game_mode 重写为",
        offset,
        value,
        time,
        gameMode
    )
    y3.game.get_current_game_mode = function()
        return gameMode
    end
end
function GameModeUtils.prototype.exitGameBackToHall(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____require_result_0 = include("logic.loop.GameLoop")
        local gameLoop = ____require_result_0.gameLoop
        local text = i18n["local"](i18n, "目前正在战局中，确认退出吗，中途退出影响他人游戏体验将面临信誉/段位积分惩罚")
        local sure = i18n["local"](i18n, "返回大厅")
        local ____TS__Await_result_1 = __TS__Await(dialogs:got(
            DAlert,
            {
                title = i18n["local"](i18n, "提示"),
                tips = text,
                sure = sure
            }
        ))
        local ok = ____TS__Await_result_1.ok
        if ok then
            local ____try = __TS__AsyncAwaiter(function()
                if steamUtils:isSteam() then
                    if y3.game.is_lobby() then
                        print("回到大厅 restart_game")
                        y3.game.restart_game()
                    else
                        print("回到大厅 exit_game")
                        y3.game.end_player_game(LOCAL.PLAYER, "defeat", false)
                        LOCAL.PLAYER:exit_game()
                    end
                else
                    console:log("返回主界面")
                    gameLoop.isExit = true
                    fight.isStop = true
                    playerController.offline:execute(LOCAL.PLAYER_ID)
                    UIUtils:SetOnlyDrawUIs(true)
                    local ____require_result_2 = include("logic.match.Bob")
                    local bob = ____require_result_2.bob
                    bob:exitGame()
                    local list = dialogs:getAll()
                    for ____, l in ipairs(list) do
                        if l.name ~= "DSettings" and l.name ~= "DNewGameHall" then
                            console:log("hide", l.name)
                            dialogs:hideByName(l.name)
                        end
                    end
                    local ____require_result_3 = include("logic.dialogs.DNewGameHall")
                    local DNewGameHall = ____require_result_3.DNewGameHall
                    dialogs:show(DNewGameHall, {})
                    KeyboardManager:release()
                    SoundManager:playBgm(BgmType["大厅"])
                end
            end)
            __TS__Await(____try.catch(
                ____try,
                function(____, e)
                    console:error(e)
                end
            ))
        end
    end)
end
____exports.gameModeUtils = __TS__New(____exports.GameModeUtils)
return ____exports
