local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["22"] = 7,["23"] = 8,["24"] = 7,["25"] = 19,["26"] = 20,["27"] = 20,["28"] = 20,["29"] = 21,["30"] = 20,["31"] = 20,["32"] = 23,["33"] = 23,["34"] = 23,["35"] = 24,["36"] = 23,["37"] = 23,["38"] = 27,["39"] = 19,["40"] = 30,["41"] = 32,["42"] = 33,["43"] = 32,["44"] = 36,["45"] = 36,["47"] = 37,["48"] = 37,["49"] = 38,["50"] = 39,["51"] = 40,["52"] = 42,["53"] = 42,["54"] = 42,["55"] = 43,["56"] = 44,["57"] = 42,["58"] = 42,["59"] = 46,["60"] = 46,["61"] = 46,["62"] = 47,["63"] = 48,["64"] = 49,["66"] = 51,["67"] = 46,["68"] = 46,["69"] = 53,["70"] = 53,["71"] = 53,["72"] = 54,["73"] = 53,["74"] = 53,["75"] = 57,["76"] = 57,["77"] = 57,["78"] = 58,["79"] = 59,["80"] = 60,["82"] = 62,["83"] = 57,["84"] = 57,["85"] = 66,["86"] = 66,["87"] = 66,["88"] = 67,["89"] = 68,["90"] = 69,["92"] = 71,["93"] = 72,["94"] = 73,["95"] = 74,["96"] = 75,["97"] = 76,["99"] = 78,["101"] = 66,["102"] = 66,["103"] = 82,["104"] = 82,["105"] = 82,["106"] = 83,["107"] = 84,["108"] = 85,["110"] = 87,["111"] = 88,["112"] = 89,["113"] = 90,["114"] = 91,["115"] = 92,["117"] = 94,["119"] = 82,["120"] = 82,["121"] = 99,["122"] = 99,["123"] = 99,["124"] = 100,["125"] = 101,["128"] = 104,["129"] = 105,["130"] = 105,["131"] = 105,["132"] = 105,["133"] = 105,["134"] = 105,["135"] = 105,["136"] = 105,["137"] = 99,["138"] = 110,["139"] = 111,["140"] = 99,["141"] = 99,["142"] = 37,["145"] = 116,["146"] = 116,["147"] = 116,["148"] = 117,["149"] = 116,["150"] = 116,["151"] = 119,["152"] = 119,["153"] = 119,["154"] = 120,["155"] = 119,["156"] = 119,["157"] = 122,["158"] = 122,["159"] = 122,["160"] = 123,["161"] = 122,["162"] = 122,["163"] = 125,["164"] = 125,["165"] = 125,["166"] = 126,["167"] = 125,["168"] = 125,["169"] = 129,["170"] = 129,["171"] = 129,["172"] = 130,["173"] = 129,["174"] = 129,["175"] = 132,["176"] = 132,["177"] = 132,["178"] = 133,["179"] = 132,["180"] = 132,["181"] = 135,["182"] = 135,["183"] = 135,["184"] = 136,["185"] = 135,["186"] = 135,["187"] = 138,["188"] = 138,["189"] = 138,["190"] = 139,["191"] = 138,["192"] = 138,["193"] = 30});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SteamBoxConfig = include("logic.configs.SteamBoxConfig")
local steamBoxConfigMap_quality = ____SteamBoxConfig.steamBoxConfigMap_quality
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
____exports.DLotteryDetail = __TS__Class()
local DLotteryDetail = ____exports.DLotteryDetail
DLotteryDetail.name = "DLotteryDetail"
__TS__ClassExtends(DLotteryDetail, Dialog)
function DLotteryDetail.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {}, tab = "ssr"}
end
function DLotteryDetail.prototype.onCreate(self)
    self:bindClick(
        "box.closeBtn",
        function()
            self:hide()
        end
    )
    self:bindClick(
        "bg",
        function()
            self:hide()
        end
    )
    self:initView()
end
function DLotteryDetail.prototype.initView(self)
    local boxList = vue.computed(function()
        return steamBoxConfigMap_quality[({ssr = 3, sr = 2, r = 1, n = 0})[self.data.tab]]
    end)
    local ____opt_0 = self:getUI("box.rewardBg.list")
    local children = ____opt_0 and ____opt_0:get_childs()
    do
        local i = 0
        while i < #children do
            local index = i
            local ui = children[i + 1]
            local root = "box.rewardBg.list." .. ui:get_name()
            self:bindVisible(
                root,
                function()
                    local config = boxList.value[index + 1]
                    return config ~= nil
                end
            )
            self:bindText(
                root .. ".name",
                function()
                    local config = boxList.value[index + 1]
                    if config == nil then
                        return ""
                    end
                    return config.name.value
                end
            )
            self:bindVisible(
                root .. ".name",
                function()
                    return false
                end
            )
            self:bindImage(
                root .. ".icon",
                function()
                    local config = boxList.value[index + 1]
                    if config == nil then
                        return 0
                    end
                    return i18n.currentLang == "en" and config.enIcon ~= 0 and config.enIcon or config.icon
                end
            )
            self:bindImage(
                root .. ".icon_bg",
                function()
                    local config = boxList.value[index + 1]
                    if config == nil then
                        return 134265176
                    end
                    if config.quality == 1 then
                        return 134254235
                    elseif config.quality == 2 then
                        return 134244605
                    elseif config.quality == 3 then
                        return 134270496
                    else
                        return 134265176
                    end
                end
            )
            self:bindImage(
                root .. ".icon_frame",
                function()
                    local config = boxList.value[index + 1]
                    if config == nil then
                        return 134257810
                    end
                    if config.quality == 1 then
                        return 134229799
                    elseif config.quality == 2 then
                        return 134228308
                    elseif config.quality == 3 then
                        return 134239323
                    else
                        return 134257810
                    end
                end
            )
            self:bindMouse(
                root,
                function()
                    local config = boxList.value[index + 1]
                    if config == nil then
                        return
                    end
                    local ui = self:getUI(root)
                    dialogs:showRepeat(
                        DHelpItem,
                        {
                            x = ui:get_absolute_x(),
                            y = ui:get_absolute_y() + 20,
                            des = config.des.value
                        }
                    )
                end,
                function()
                    dialogs:hide(DHelpItem)
                end
            )
            i = i + 1
        end
    end
    self:bindClick(
        "box.reardTabs.SSR",
        function()
            self.data.tab = "ssr"
        end
    )
    self:bindClick(
        "box.reardTabs.SR",
        function()
            self.data.tab = "sr"
        end
    )
    self:bindClick(
        "box.reardTabs.R",
        function()
            self.data.tab = "r"
        end
    )
    self:bindClick(
        "box.reardTabs.N",
        function()
            self.data.tab = "n"
        end
    )
    self:bindVisible(
        "box.reardTabs.SSR.sel",
        function()
            return self.data.tab == "ssr"
        end
    )
    self:bindVisible(
        "box.reardTabs.SR.sel",
        function()
            return self.data.tab == "sr"
        end
    )
    self:bindVisible(
        "box.reardTabs.R.sel",
        function()
            return self.data.tab == "r"
        end
    )
    self:bindVisible(
        "box.reardTabs.N.sel",
        function()
            return self.data.tab == "n"
        end
    )
end
return ____exports
