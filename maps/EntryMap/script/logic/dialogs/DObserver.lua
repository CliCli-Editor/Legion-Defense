local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 11,["31"] = 11,["32"] = 11,["33"] = 11,["35"] = 11,["36"] = 12,["37"] = 11,["38"] = 19,["40"] = 21,["41"] = 23,["42"] = 23,["43"] = 23,["44"] = 23,["45"] = 24,["46"] = 24,["47"] = 24,["48"] = 24,["49"] = 23,["50"] = 23,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 28,["57"] = 29,["58"] = 30,["60"] = 32,["61"] = 33,["62"] = 34,["63"] = 35,["64"] = 38,["65"] = 39,["66"] = 39,["67"] = 39,["68"] = 39,["69"] = 39,["70"] = 39,["71"] = 27,["72"] = 27,["73"] = 42,["74"] = 42,["75"] = 42,["76"] = 42,["77"] = 42,["78"] = 43,["79"] = 44,["80"] = 45,["82"] = 47,["83"] = 48,["84"] = 49,["85"] = 50,["86"] = 53,["87"] = 54,["88"] = 54,["89"] = 54,["90"] = 54,["91"] = 54,["92"] = 54,["93"] = 42,["94"] = 42,["96"] = 19});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindAction = ____bind.bindAction
local bindText = ____bind.bindText
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local switchLocalPlayer = ____LocalPlayer.switchLocalPlayer
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ObserverController = include("logic.controllers.ObserverController")
local observerController = ____ObserverController.observerController
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
____exports.DObserver = __TS__Class()
local DObserver = ____exports.DObserver
DObserver.name = "DObserver"
__TS__ClassExtends(DObserver, Dialog)
function DObserver.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DObserver.prototype.onCreate(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        observerController.switch:executeFromObserver(LOCAL.PLAYER_ID)
        bindText(
            self,
            "root.des",
            function()
                local ____temp_4 = LOCAL.PLAYER:get_name() .. "\n"
                local ____opt_2 = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                local ____opt_0 = ____opt_2 and ____opt_2.hero
                return ____temp_4 .. (____opt_0 and ____opt_0.showName.value or i18n["local"](i18n, "未选择英雄"))
            end
        )
        bindAction(
            self,
            "root.next",
            "左键-点击",
            function()
                local next = __TS__ArrayIndexOf(playerIdList, LOCAL.PLAYER_ID) + 1
                if next >= #playerIdList then
                    next = next % #playerIdList
                end
                local target = playerIdList[next + 1]
                console:log("next", next, target)
                observerController.switch:executeFromObserver(target)
                switchLocalPlayer(nil, target)
                local unitData = datas.players[target]:getSingle(UnitData)
                y3.camera.linear_move_by_time(
                    y3.player.LOCAL_PLAYER,
                    unitData.entity.y3Unit:get_point(),
                    0.25,
                    1
                )
            end
        )
        bindAction(
            self,
            "root.prev",
            "左键-点击",
            function()
                local prev = __TS__ArrayIndexOf(playerIdList, LOCAL.PLAYER_ID) - 1
                if prev < 0 then
                    prev = prev + #playerIdList
                end
                local target = playerIdList[prev + 1]
                console:log("prev", prev, target)
                observerController.switch:executeFromObserver(target)
                switchLocalPlayer(nil, target)
                local unitData = datas.players[target]:getSingle(UnitData)
                y3.camera.linear_move_by_time(
                    y3.player.LOCAL_PLAYER,
                    unitData.entity.y3Unit:get_point(),
                    0.25,
                    1
                )
            end
        )
    end)
end
return ____exports
