local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["22"] = 6,["23"] = 7,["24"] = 17,["25"] = 6,["26"] = 19,["27"] = 20,["28"] = 21,["29"] = 20,["30"] = 19,["31"] = 25,["33"] = 26,["34"] = 26,["35"] = 26,["36"] = 27,["37"] = 27,["39"] = 28,["40"] = 26,["41"] = 26,["42"] = 31,["43"] = 31,["44"] = 31,["45"] = 32,["46"] = 33,["47"] = 31,["48"] = 31,["49"] = 36,["50"] = 36,["51"] = 36,["52"] = 37,["53"] = 38,["54"] = 36,["55"] = 36,["57"] = 25,["58"] = 42,["59"] = 42});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.DHelpWood = __TS__Class()
local DHelpWood = ____exports.DHelpWood
DHelpWood.name = "DHelpWood"
__TS__ClassExtends(DHelpWood, Dialog)
function DHelpWood.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpWood.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpWood.prototype.initView(self)
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
            "root.level",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return "" .. tostring(playerData.farmerLevel)
            end
        )
        self:bindText(
            "root.num",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return tostring(GameUtils:getFarmerGatherNum(LOCAL.PLAYER_ID))
            end
        )
    end)
end
function DHelpWood.prototype.onShow(self)
end
return ____exports
