local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 6,["14"] = 6,["15"] = 8,["16"] = 8,["17"] = 8,["18"] = 10,["19"] = 10,["20"] = 10,["21"] = 10,["23"] = 10,["24"] = 11,["25"] = 10,["26"] = 35,["27"] = 37,["28"] = 39,["29"] = 40,["30"] = 39,["31"] = 35,["32"] = 45,["33"] = 46,["34"] = 45,["35"] = 49,["38"] = 51,["39"] = 51,["40"] = 52,["41"] = 53,["42"] = 55,["43"] = 55,["44"] = 55,["45"] = 56,["46"] = 56,["48"] = 57,["49"] = 55,["50"] = 55,["51"] = 60,["52"] = 60,["53"] = 60,["54"] = 61,["55"] = 61,["56"] = 62,["57"] = 60,["58"] = 60,["59"] = 71,["60"] = 71,["61"] = 71,["62"] = 72,["63"] = 71,["64"] = 71,["65"] = 51,["69"] = 76,["70"] = 76,["71"] = 77,["72"] = 78,["73"] = 80,["74"] = 80,["75"] = 80,["76"] = 81,["77"] = 80,["78"] = 80,["79"] = 84,["80"] = 84,["81"] = 84,["82"] = 85,["83"] = 85,["84"] = 84,["85"] = 84,["86"] = 88,["87"] = 88,["88"] = 88,["89"] = 89,["90"] = 89,["92"] = 90,["93"] = 88,["94"] = 88,["95"] = 93,["96"] = 93,["97"] = 93,["98"] = 94,["99"] = 94,["100"] = 95,["101"] = 93,["102"] = 93,["103"] = 76,["106"] = 105,["107"] = 105,["108"] = 105,["109"] = 106,["110"] = 105,["111"] = 105,["112"] = 108,["113"] = 108,["114"] = 108,["115"] = 109,["116"] = 108,["117"] = 108,["118"] = 111,["119"] = 111,["120"] = 111,["121"] = 112,["122"] = 111,["123"] = 111,["124"] = 114,["125"] = 114,["126"] = 114,["127"] = 115,["128"] = 114,["129"] = 114,["130"] = 118,["131"] = 118,["132"] = 118,["133"] = 119,["134"] = 120,["136"] = 122,["138"] = 118,["139"] = 118,["140"] = 126,["141"] = 126,["142"] = 126,["143"] = 127,["144"] = 126,["145"] = 126,["146"] = 142,["147"] = 142,["148"] = 142,["149"] = 143,["150"] = 142,["151"] = 142,["152"] = 146,["153"] = 146,["154"] = 146,["155"] = 147,["156"] = 146,["157"] = 146,["158"] = 150,["159"] = 150,["160"] = 150,["161"] = 151,["162"] = 150,["163"] = 150,["164"] = 154,["165"] = 154,["166"] = 154,["167"] = 154,["168"] = 155,["169"] = 154,["170"] = 154,["171"] = 158,["172"] = 158,["173"] = 158,["174"] = 159,["175"] = 158,["176"] = 158,["177"] = 162,["178"] = 162,["179"] = 162,["180"] = 162,["181"] = 163,["182"] = 162,["183"] = 162,["185"] = 49});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____MatchManager = include("logic.archive.manager.MatchManager")
local matchManager = ____MatchManager.matchManager
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
____exports.DHonor = __TS__Class()
local DHonor = ____exports.DHonor
DHonor.name = "DHonor"
__TS__ClassExtends(DHonor, Dialog)
function DHonor.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {rankData = {self = {name = "", rank = 0, tag = "", value = 0}, rankList = {}}}
end
function DHonor.prototype.onCreate(self)
    self.data.rankData = matchManager:getLastWeekRank()
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHonor.prototype.onShow(self)
    localData.setting.tabIndex = SettingType["Honor_荣誉"]
end
function DHonor.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        do
            local index = 0
            while index < 3 do
                local root = "main.bg.honor_" .. tostring(index + 1)
                local i = index
                self:bindText(
                    root .. ".root.name",
                    function()
                        if self.data.rankData.rankList[i + 1] == nil then
                            return ""
                        end
                        return self.data.rankData.rankList[i + 1].name
                    end
                )
                self:bindText(
                    root .. ".root.score",
                    function()
                        local ____opt_0 = self.data.rankData.rankList[i + 1]
                        local v = ____opt_0 and ____opt_0.value or 0
                        return tostring(math.floor(v / 10000))
                    end
                )
                self:bindVisible(
                    "main.bg.list.rritem_" .. tostring(index + 1),
                    function()
                        return false
                    end
                )
                index = index + 1
            end
        end
        do
            local index = 3
            while index < 200 do
                local root = "main.bg.list.rritem_" .. tostring(index + 1)
                local i = index
                self:bindVisible(
                    root,
                    function()
                        return self.data.rankData.rankList[i + 1] ~= nil
                    end
                )
                self:bindText(
                    root .. ".root.rank",
                    function()
                        local ____opt_2 = self.data.rankData.rankList[i + 1]
                        return "" .. tostring(____opt_2 and ____opt_2.rank or 0)
                    end
                )
                self:bindText(
                    root .. ".root.name",
                    function()
                        if self.data.rankData.rankList[i + 1] == nil then
                            return ""
                        end
                        return self.data.rankData.rankList[i + 1].name
                    end
                )
                self:bindText(
                    root .. ".root.score",
                    function()
                        local ____opt_4 = self.data.rankData.rankList[i + 1]
                        local v = ____opt_4 and ____opt_4.value or 0
                        return tostring(math.floor(v / 10000))
                    end
                )
                index = index + 1
            end
        end
        self:bindVisible(
            "main.bg.self.root.bg1",
            function()
                return self.data.rankData.self.rank == 1
            end
        )
        self:bindVisible(
            "main.bg.self.root.bg2",
            function()
                return self.data.rankData.self.rank == 2
            end
        )
        self:bindVisible(
            "main.bg.self.root.bg3",
            function()
                return self.data.rankData.self.rank == 3
            end
        )
        self:bindVisible(
            "main.bg.self.root.bgother",
            function()
                return self.data.rankData.self.rank > 3
            end
        )
        self:bindText(
            "main.bg.self.root.rank",
            function()
                if self.data.rankData.self.rank > 200 then
                    return "200+"
                else
                    return tostring(self.data.rankData.self.rank)
                end
            end
        )
        self:bindText(
            "main.bg.self.root.name",
            function()
                return self.data.rankData.self.name
            end
        )
        self:bindVisible(
            "main.bg.self.root.got",
            function()
                return matchManager:canGetWeekReward()
            end
        )
        self:bindVisible(
            "main.bg.self.root.none",
            function()
                return not matchManager:canGetWeekReward()
            end
        )
        self:bindText(
            "main.bg.self.root.none",
            function()
                return self.data.rankData.self.rank > 200 and "无法领取" or "已领取"
            end
        )
        self:bindAction(
            "main.bg.self.root.got",
            "左键-点击",
            function()
                return matchManager:getLastWeekReward()
            end
        )
        self:bindText(
            "main.bg.time",
            function()
                return dateUtils:getLastWeekStr()
            end
        )
        self:bindAction(
            "mask",
            "左键-点击",
            function()
                self:hide()
            end
        )
    end)
end
return ____exports
