local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 10,["23"] = 10,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 14,["30"] = 14,["31"] = 14,["32"] = 14,["34"] = 14,["35"] = 15,["36"] = 28,["37"] = 14,["38"] = 20,["39"] = 21,["40"] = 20,["41"] = 24,["42"] = 25,["43"] = 24,["44"] = 30,["45"] = 31,["46"] = 32,["47"] = 33,["48"] = 33,["49"] = 34,["50"] = 33,["51"] = 35,["52"] = 36,["53"] = 37,["55"] = 33,["56"] = 33,["57"] = 30,["58"] = 41,["59"] = 42,["60"] = 43,["61"] = 41,["62"] = 46,["63"] = 47,["64"] = 48,["65"] = 46,["66"] = 51,["67"] = 53,["68"] = 54,["69"] = 54,["70"] = 54,["71"] = 54,["72"] = 55,["74"] = 57,["75"] = 57,["76"] = 58,["77"] = 59,["78"] = 60,["79"] = 61,["80"] = 61,["81"] = 61,["82"] = 61,["83"] = 61,["85"] = 57,["88"] = 68,["89"] = 68,["90"] = 68,["91"] = 69,["92"] = 70,["94"] = 72,["95"] = 68,["96"] = 68,["97"] = 53,["98"] = 76,["99"] = 77,["100"] = 79,["102"] = 80,["103"] = 80,["104"] = 81,["105"] = 82,["106"] = 83,["107"] = 84,["108"] = 85,["109"] = 85,["110"] = 85,["111"] = 86,["112"] = 85,["113"] = 85,["115"] = 89,["116"] = 89,["117"] = 90,["118"] = 91,["119"] = 92,["120"] = 94,["121"] = 94,["122"] = 94,["123"] = 94,["124"] = 96,["125"] = 96,["126"] = 96,["127"] = 96,["128"] = 96,["129"] = 96,["130"] = 96,["131"] = 96,["132"] = 96,["133"] = 97,["134"] = 97,["135"] = 97,["136"] = 97,["137"] = 97,["138"] = 97,["139"] = 97,["140"] = 98,["141"] = 98,["142"] = 98,["143"] = 98,["144"] = 98,["145"] = 98,["146"] = 98,["147"] = 98,["148"] = 100,["149"] = 100,["150"] = 100,["151"] = 101,["152"] = 101,["153"] = 101,["155"] = 102,["156"] = 103,["157"] = 103,["159"] = 104,["160"] = 104,["162"] = 105,["163"] = 105,["165"] = 106,["166"] = 106,["168"] = 107,["169"] = 100,["170"] = 100,["171"] = 110,["172"] = 110,["173"] = 110,["174"] = 111,["175"] = 112,["176"] = 112,["177"] = 112,["178"] = 113,["179"] = 114,["180"] = 115,["181"] = 112,["182"] = 110,["183"] = 117,["184"] = 118,["185"] = 110,["186"] = 110,["187"] = 121,["188"] = 89,["191"] = 80,["194"] = 51});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigList = ____PropConfig.propConfigList
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local getPropQuality = ____PropUtils.getPropQuality
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
____exports.DBag = __TS__Class()
local DBag = ____exports.DBag
DBag.name = "DBag"
__TS__ClassExtends(DBag, Dialog)
function DBag.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.eventId = 0
end
function DBag.prototype.onCreate(self)
    self:initView()
end
function DBag.prototype.initView(self)
    self:initDetails()
end
function DBag.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Bag_背包"]
    self:watch(
        function()
            return localData.setting.tabIndex == SettingType["Bag_背包"]
        end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DBag.prototype.onHide(self)
    escManager:removeEvent(self.eventId)
    dialogs:hideHover()
end
function DBag.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
function DBag.prototype.initDetails(self)
    local list = self:compute(function()
        local bags = __TS__ArrayFilter(
            propConfigList,
            function(____, a) return a.inBag == 1 and a.ban == 0 end
        )
        local array = {}
        do
            local index = 0
            while index < #bags do
                local element = bags[index + 1]
                local res = archive.playerData.resource["" .. tostring(element.id)]
                if res ~= nil and res > 0 then
                    array[#array + 1] = {
                        cfg = element,
                        quality = getPropQuality(nil, element),
                        res = res
                    }
                end
                index = index + 1
            end
        end
        return __TS__ArraySort(
            array,
            function(____, a, b)
                if a.cfg.propTag == b.cfg.propTag then
                    return b.quality - a.quality
                end
                return a.cfg.propTag - b.cfg.propTag
            end
        )
    end)
    local root = "root.contents.list"
    local childrens = self:getUI(root):get_childs()
    local idx = 0
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local childs = element:get_childs()
            local path1 = (root .. ".") .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #list.value > temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = ((path1 .. ".") .. cld:get_name()) .. ".info"
                    local temp_idx = idx
                    self:bindVisible(
                        path,
                        function() return list.value[temp_idx + 1] ~= nil end
                    )
                    self:bindText(
                        path .. ".count",
                        function()
                            local ____UIUtils_2 = UIUtils
                            local ____UIUtils_formatNumber_3 = UIUtils.formatNumber
                            local ____opt_0 = list.value[temp_idx + 1]
                            return "x" .. ____UIUtils_formatNumber_3(____UIUtils_2, ____opt_0 and ____opt_0.res or 0)
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            local ____opt_4 = list.value[temp_idx + 1]
                            return "" .. (____opt_4 and ____opt_4.cfg.name.value or "")
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            local ____getPropIcon_8 = getPropIcon
                            local ____opt_6 = list.value[temp_idx + 1]
                            return ____getPropIcon_8(nil, ____opt_6 and ____opt_6.cfg.id or 0)
                        end
                    )
                    self:bindImage(
                        path .. ".bg",
                        function()
                            local ____opt_9 = list.value[temp_idx + 1]
                            if (____opt_9 and ____opt_9.cfg) == nil then
                                return 134237313
                            end
                            local quality = getPropQuality(nil, list.value[temp_idx + 1].cfg)
                            if quality == 1 then
                                return 134235490
                            end
                            if quality == 2 then
                                return 134223638
                            end
                            if quality == 3 then
                                return 134274551
                            end
                            if quality == 4 then
                                return 134248468
                            end
                            return 134237313
                        end
                    )
                    self:bindMouse(
                        path,
                        function()
                            local ui = self:getUI(path)
                            local ____dialogs_16 = dialogs
                            local ____dialogs_showRepeat_17 = dialogs.showRepeat
                            local ____DHelpItem_15 = DHelpItem
                            local ____temp_13 = ui:get_absolute_x()
                            local ____temp_14 = ui:get_absolute_y()
                            local ____opt_11 = list.value[temp_idx + 1]
                            ____dialogs_showRepeat_17(____dialogs_16, ____DHelpItem_15, {x = ____temp_13, y = ____temp_14, des = ____opt_11 and ____opt_11.cfg.des.value or ""})
                        end,
                        function()
                            dialogs:hide(DHelpItem)
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
end
return ____exports
