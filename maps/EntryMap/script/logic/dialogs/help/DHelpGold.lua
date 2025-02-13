local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["31"] = 10,["32"] = 11,["33"] = 20,["34"] = 10,["35"] = 22,["36"] = 23,["37"] = 24,["38"] = 23,["39"] = 22,["40"] = 28,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 30,["46"] = 30,["48"] = 31,["49"] = 29,["50"] = 29,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 35,["55"] = 36,["56"] = 37,["57"] = 38,["58"] = 38,["59"] = 38,["60"] = 38,["61"] = 38,["62"] = 38,["63"] = 38,["64"] = 39,["65"] = 40,["67"] = 42,["68"] = 34,["69"] = 34,["70"] = 44,["71"] = 44,["72"] = 44,["73"] = 45,["74"] = 46,["75"] = 47,["76"] = 44,["77"] = 44,["79"] = 28,["80"] = 51,["81"] = 51});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameRandomEventType = ____GameData.GameRandomEventType
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.DHelpGold = __TS__Class()
local DHelpGold = ____exports.DHelpGold
DHelpGold.name = "DHelpGold"
__TS__ClassExtends(DHelpGold, Dialog)
function DHelpGold.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpGold.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpGold.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "root",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindText(
            "root.num",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                local gameData = datas.global:getSingle(GameData)
                local max = GameUtils:getMaxBaseInterest(LOCAL.PLAYER_ID)
                local gold = math.max(
                    0,
                    math.min(
                        max,
                        math.floor(playerData.gold / 10 * defaultConfig["利息"])
                    )
                )
                if gameData.randomEventType == GameRandomEventType["艰苦抉择"] then
                    gold = gold * 2
                end
                return tostring(gold)
            end
        )
        self:bindText(
            "root.des3",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                local max = GameUtils:getMaxBaseInterest(LOCAL.PLAYER_ID)
                return i18n:format("上限为${max}。", {max = max})
            end
        )
    end)
end
function DHelpGold.prototype.onShow(self)
end
return ____exports
