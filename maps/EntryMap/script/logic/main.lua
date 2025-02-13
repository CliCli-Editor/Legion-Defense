local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 5,["7"] = 8,["8"] = 9,["9"] = 9,["10"] = 10,["11"] = 10,["12"] = 10,["13"] = 11,["14"] = 11,["15"] = 25,["16"] = 25,["17"] = 25,["18"] = 26,["19"] = 26,["20"] = 28,["21"] = 30,["22"] = 145,["23"] = 146,["24"] = 147,["25"] = 148,["26"] = 148,["27"] = 148,["29"] = 148,["30"] = 147,["31"] = 151,["32"] = 152,["33"] = 153,["34"] = 153,["35"] = 153,["37"] = 153,["38"] = 152,["39"] = 156,["40"] = 156,["41"] = 156,["42"] = 156,["43"] = 156,["44"] = 156,["45"] = 156,["46"] = 156,["47"] = 157,["49"] = 158,["50"] = 159,["51"] = 160,["53"] = 163,["54"] = 164,["55"] = 165,["57"] = 167,["58"] = 168,["63"] = 173,["64"] = 173,["65"] = 173,["66"] = 174,["67"] = 173,["68"] = 173,["70"] = 178,["71"] = 179,["72"] = 179,["73"] = 179,["74"] = 180,["75"] = 179,["76"] = 179,["78"] = 25,["79"] = 25});
local ____exports = {}
include("javascript.init")
include("framework.init")
include("logic.reload.ReloadLogic")
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
local ____RoleStatus = include("logic.models.RoleStatus")
local RoleStatus = ____RoleStatus.RoleStatus
local RoleType = ____RoleStatus.RoleType
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
y3.game:event(
    "游戏-初始化",
    function()
        local ____require_result_0 = include("logic.utils.GameModeUtils")
        local gameModeUtils = ____require_result_0.gameModeUtils
        gameModeUtils:refreshGameMode()
        if isPvpMode(nil) then
            local start = include("logic.start").start
            local get_state = y3.player.get_state
            y3.player.get_state = function(self)
                local ____self___state___1 = self.__state__
                if ____self___state___1 == nil then
                    ____self___state___1 = get_state(self)
                end
                return ____self___state___1
            end
            local get_controller = y3.player.get_controller
            y3.player.get_controller = function(self)
                local ____self___controller___2 = self.__controller__
                if ____self___controller___2 == nil then
                    ____self___controller___2 = get_controller(self)
                end
                return ____self___controller___2
            end
            local idList = {
                1,
                2,
                3,
                5,
                6,
                7
            }
            for ____, i in ipairs(idList) do
                do
                    local player = y3.player.get_by_id(i)
                    if player == nil then
                        goto __continue6
                    end
                    if player:get_state() == RoleStatus.NONE then
                        player.__state__ = RoleStatus.PLAYING
                        player.__controller__ = RoleType.AI_HARD
                    else
                        player.__state__ = RoleStatus.PLAYING
                        player.__controller__ = RoleType.USER
                    end
                end
                ::__continue6::
            end
            sync(
                nil,
                function()
                    start(nil)
                end
            )
        else
            local start = include("logic.start").start
            sync(
                nil,
                function()
                    start(nil)
                end
            )
        end
    end
)
return ____exports
