local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 10,["28"] = 10,["29"] = 11,["30"] = 10,["31"] = 19,["32"] = 20,["33"] = 19,["34"] = 23,["35"] = 24,["36"] = 24,["37"] = 24,["39"] = 25,["40"] = 26,["41"] = 27,["44"] = 30,["46"] = 24,["47"] = 24,["48"] = 33,["49"] = 33,["50"] = 33,["51"] = 34,["52"] = 35,["53"] = 36,["55"] = 38,["56"] = 33,["57"] = 33,["58"] = 41,["59"] = 41,["60"] = 41,["61"] = 42,["62"] = 43,["63"] = 44,["65"] = 46,["66"] = 41,["67"] = 41,["68"] = 23,["69"] = 50,["70"] = 50});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____CheckController = include("logic.controllers.CheckController")
local checkController = ____CheckController.checkController
local ____PlayerInHookData = include("logic.models.PlayerInHookData")
local PlayerInHookData = ____PlayerInHookData.PlayerInHookData
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
____exports.DHookView = __TS__Class()
local DHookView = ____exports.DHookView
DHookView.name = "DHookView"
__TS__ClassExtends(DHookView, Dialog)
function DHookView.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DHookView.prototype.onCreate(self)
    self:initView()
end
function DHookView.prototype.initView(self)
    self:bindClick(
        "root",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                local hookData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerInHookData)
                if hookData.inHook and hookData.cancel_count >= 1 then
                    gameModeUtils:exitGameBackToHall()
                    return ____awaiter_resolve(nil)
                end
                checkController.cancelHook:execute(LOCAL.PLAYER_ID)
            end)
        end
    )
    self:bindText(
        "root.tips",
        function()
            local hookData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerInHookData)
            if hookData.inHook and hookData.cancel_count >= 1 then
                return i18n["local"](i18n, "由于你在#f59524匹配模式#ffffff中长时间不进行任何操作，你已经被判定为逃亡者（挂机惩罚），系统已经进行托管处理。\n#ff0000本次游戏和下次游戏结算不会获得任何奖励。\n#82ea2f（人机对抗不会有挂机惩罚）")
            end
            return i18n["local"](i18n, "检测到玩家在#f59524匹配模式#ffffff中长时间未操作，可能存在挂机，掉线等行为，系统已进行托管操作。\n如果长时间不操作，则#ff0000本次游戏和下次游戏结算不会获得任何奖励。\n#82ea2f（人机对抗不会有挂机惩罚）")
        end
    )
    self:bindText(
        "root.tips_2",
        function()
            local hookData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerInHookData)
            if hookData.inHook and hookData.cancel_count >= 1 then
                return i18n["local"](i18n, "点击屏幕任意位置，退出游戏")
            end
            return i18n["local"](i18n, "点击屏幕任意位置，可以取消托管")
        end
    )
end
function DHookView.prototype.onShow(self)
end
return ____exports
