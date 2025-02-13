local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 4,["17"] = 4,["18"] = 5,["19"] = 4,["20"] = 9,["21"] = 10,["22"] = 9,["23"] = 13,["24"] = 14,["25"] = 14,["26"] = 14,["27"] = 15,["28"] = 14,["29"] = 14,["30"] = 18,["31"] = 18,["33"] = 19,["34"] = 19,["35"] = 20,["36"] = 21,["37"] = 22,["38"] = 22,["39"] = 22,["40"] = 23,["41"] = 24,["42"] = 22,["43"] = 22,["44"] = 26,["45"] = 26,["46"] = 26,["47"] = 27,["48"] = 28,["49"] = 29,["51"] = 32,["52"] = 26,["53"] = 26,["54"] = 35,["55"] = 35,["56"] = 35,["57"] = 36,["58"] = 37,["59"] = 35,["60"] = 35,["61"] = 19,["64"] = 13});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____SteamTopUpManager = include("logic.archive.manager.SteamTopUpManager")
local steamTopUpManager = ____SteamTopUpManager.steamTopUpManager
local topUpLevels = ____SteamTopUpManager.topUpLevels
____exports.DTopUp = __TS__Class()
local DTopUp = ____exports.DTopUp
DTopUp.name = "DTopUp"
__TS__ClassExtends(DTopUp, Dialog)
function DTopUp.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DTopUp.prototype.onCreate(self)
    self:initView()
end
function DTopUp.prototype.initView(self)
    self:bindClick(
        "root.close",
        function()
            self:hide()
        end
    )
    local ____opt_0 = self:getUI("root.list")
    local count = ____opt_0 and #____opt_0:get_childs() or 0
    do
        local i = 0
        while i < count do
            local index = i
            local root = "root.list.item_" .. tostring(i + 1)
            self:bindVisible(
                root,
                function()
                    local data = topUpLevels[index + 1]
                    return data ~= nil
                end
            )
            self:bindText(
                root .. ".price",
                function()
                    local data = topUpLevels[index + 1]
                    if data == nil then
                        return ""
                    end
                    return "" .. tostring(data.priceCNY)
                end
            )
            self:bindClick(
                root,
                function()
                    local data = topUpLevels[index + 1]
                    steamTopUpManager:topUp(data)
                end
            )
            i = i + 1
        end
    end
end
return ____exports
