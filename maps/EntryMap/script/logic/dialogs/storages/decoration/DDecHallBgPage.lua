local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 11,["16"] = 11,["17"] = 11,["18"] = 11,["19"] = 14,["20"] = 14,["21"] = 14,["22"] = 15,["23"] = 15,["24"] = 16,["25"] = 16,["26"] = 17,["27"] = 17,["28"] = 19,["29"] = 19,["30"] = 19,["31"] = 19,["33"] = 19,["34"] = 20,["35"] = 19,["36"] = 27,["37"] = 28,["38"] = 29,["39"] = 27,["40"] = 32,["42"] = 33,["43"] = 33,["44"] = 33,["45"] = 33,["46"] = 35,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 37,["52"] = 32,["53"] = 40,["54"] = 40,["55"] = 43,["56"] = 43,["57"] = 46,["58"] = 48,["59"] = 49,["61"] = 52,["62"] = 52,["63"] = 53,["64"] = 54,["65"] = 55,["66"] = 57,["67"] = 57,["68"] = 57,["69"] = 58,["70"] = 59,["71"] = 57,["72"] = 57,["73"] = 62,["74"] = 62,["75"] = 62,["76"] = 63,["77"] = 64,["78"] = 62,["79"] = 62,["80"] = 67,["81"] = 67,["82"] = 67,["83"] = 68,["84"] = 69,["85"] = 67,["86"] = 67,["87"] = 71,["88"] = 71,["89"] = 71,["90"] = 72,["91"] = 73,["92"] = 71,["93"] = 71,["94"] = 76,["95"] = 76,["96"] = 76,["97"] = 77,["98"] = 78,["99"] = 76,["100"] = 76,["101"] = 80,["102"] = 80,["103"] = 80,["104"] = 81,["105"] = 82,["106"] = 80,["107"] = 80,["108"] = 84,["109"] = 84,["110"] = 84,["111"] = 85,["112"] = 86,["113"] = 84,["114"] = 84,["115"] = 52,["118"] = 92,["119"] = 92,["120"] = 92,["121"] = 93,["122"] = 94,["125"] = 95,["128"] = 97,["129"] = 92,["130"] = 92,["131"] = 100,["132"] = 100,["133"] = 100,["134"] = 101,["135"] = 100,["136"] = 100,["137"] = 104,["138"] = 104,["139"] = 104,["140"] = 105,["141"] = 106,["142"] = 104,["143"] = 104,["144"] = 108,["145"] = 108,["146"] = 108,["147"] = 109,["148"] = 110,["149"] = 108,["150"] = 108,["151"] = 113,["152"] = 113,["153"] = 113,["154"] = 114,["155"] = 115,["156"] = 117,["157"] = 118,["159"] = 113,["160"] = 113,["161"] = 122,["162"] = 122,["163"] = 122,["164"] = 123,["165"] = 124,["166"] = 122,["167"] = 122,["168"] = 127,["169"] = 127,["170"] = 127,["171"] = 128,["172"] = 129,["173"] = 127,["174"] = 127,["175"] = 136,["176"] = 136,["177"] = 136,["178"] = 137,["179"] = 138,["180"] = 136,["181"] = 136,["182"] = 141,["183"] = 141,["184"] = 141,["185"] = 142,["186"] = 143,["187"] = 141,["188"] = 141,["189"] = 46});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____HallBgConfig = include("logic.configs.HallBgConfig")
local hallBgConfigList = ____HallBgConfig.hallBgConfigList
local hallBgConfigMap = ____HallBgConfig.hallBgConfigMap
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DShop = include("logic.dialogs.storages.DShop")
local DShop = ____DShop.DShop
____exports.DDecHallBgPage = __TS__Class()
local DDecHallBgPage = ____exports.DDecHallBgPage
DDecHallBgPage.name = "DDecHallBgPage"
__TS__ClassExtends(DDecHallBgPage, Dialog)
function DDecHallBgPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectId = 0}
end
function DDecHallBgPage.prototype.onCreate(self)
    self.data.selectId = archive.playerData.cur_hall_bg
    self:initView()
end
function DDecHallBgPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["HallBg_大厅背景"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["HallBg_大厅背景"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecHallBgPage.prototype.onShow(self)
end
function DDecHallBgPage.prototype.onHide(self)
end
function DDecHallBgPage.prototype.initDetails(self)
    local root = "root.right.list"
    local children = self:getUI(root):get_childs()
    do
        local i = 0
        while i < #children do
            local index = i
            local childName = children[index + 1]:get_name()
            local path = (root .. ".") .. childName
            self:bindClick(
                path,
                function()
                    local config = hallBgConfigList[index + 1]
                    self.data.selectId = config and config.id or 0
                end
            )
            self:bindVisible(
                path,
                function()
                    local config = hallBgConfigList[index + 1]
                    return config ~= nil
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local config = hallBgConfigList[index + 1]
                    return config and config.name.value or ""
                end
            )
            self:bindImage(
                path .. ".icon",
                function()
                    local config = hallBgConfigList[index + 1]
                    return config and config.icon or 0
                end
            )
            self:bindVisible(
                path .. ".select",
                function()
                    local config = hallBgConfigList[index + 1]
                    return (config and config.id) == archive.playerData.cur_hall_bg
                end
            )
            self:bindVisible(
                path .. ".select2",
                function()
                    local config = hallBgConfigList[index + 1]
                    return (config and config.id) == self.data.selectId
                end
            )
            self:bindVisible(
                path .. ".lock",
                function()
                    local config = hallBgConfigList[index + 1]
                    return archive.playerData.hall_bg["" .. tostring(config.id)] ~= true
                end
            )
            i = i + 1
        end
    end
    self:bindClick(
        "root.center.use",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            if archive.playerData.hall_bg["" .. tostring(config.id)] ~= true then
                return
            end
            if config.id == archive.playerData.cur_hall_bg then
                return
            end
            archive.playerData.cur_hall_bg = config.id
        end
    )
    self:bindText(
        "root.center.use.title",
        function()
            return i18n["local"](i18n, "使用")
        end
    )
    self:bindVisible(
        "root.center.use",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return archive.playerData.hall_bg["" .. tostring(config.id)] == true and config.id ~= archive.playerData.cur_hall_bg
        end
    )
    self:bindVisible(
        "root.center.buy",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return archive.playerData.hall_bg["" .. tostring(config.id)] ~= true
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                dialogs:showRepeat(DShop, {})
                localData.shop.subTabIndex = 3
                localData.shop.tabIndex = ShopType.STEAM_COUPON
            end
        end
    )
    self:bindText(
        "root.center.dec.text",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return i18n:format("装饰度：${value}", {value = config and config.decorate or 0})
        end
    )
    self:bindSpine(
        "root.center.root.spine",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return {spine = config.spine, animName = "loop", isLoop = true}
        end
    )
    self:bindScale(
        "root.center.root.spine",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return config.scale * 0.4
        end
    )
    self:bindImage(
        "root.center.root.bg",
        function()
            local config = hallBgConfigMap[self.data.selectId]
            return config.bg
        end
    )
end
return ____exports
