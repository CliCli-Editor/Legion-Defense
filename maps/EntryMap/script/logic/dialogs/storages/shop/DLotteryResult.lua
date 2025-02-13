local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 7,["16"] = 7,["17"] = 7,["18"] = 7,["20"] = 7,["21"] = 8,["22"] = 7,["23"] = 19,["24"] = 20,["25"] = 20,["26"] = 20,["27"] = 21,["28"] = 20,["29"] = 20,["30"] = 24,["31"] = 24,["32"] = 24,["33"] = 25,["34"] = 24,["35"] = 24,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 29,["40"] = 28,["41"] = 28,["42"] = 32,["43"] = 32,["45"] = 33,["46"] = 33,["47"] = 34,["48"] = 35,["49"] = 36,["50"] = 38,["51"] = 38,["52"] = 38,["53"] = 39,["54"] = 40,["55"] = 38,["56"] = 38,["57"] = 42,["58"] = 42,["59"] = 42,["60"] = 43,["61"] = 44,["62"] = 45,["64"] = 47,["65"] = 48,["67"] = 50,["69"] = 42,["70"] = 42,["71"] = 54,["72"] = 54,["73"] = 54,["74"] = 55,["75"] = 56,["76"] = 57,["78"] = 59,["79"] = 54,["80"] = 54,["81"] = 62,["82"] = 62,["83"] = 62,["84"] = 63,["85"] = 64,["86"] = 65,["88"] = 67,["89"] = 68,["90"] = 69,["91"] = 70,["92"] = 71,["93"] = 72,["95"] = 74,["97"] = 62,["98"] = 62,["99"] = 78,["100"] = 78,["101"] = 78,["102"] = 79,["103"] = 80,["104"] = 81,["106"] = 83,["107"] = 84,["108"] = 85,["109"] = 86,["110"] = 87,["111"] = 88,["113"] = 90,["115"] = 78,["116"] = 78,["117"] = 96,["118"] = 96,["119"] = 96,["120"] = 97,["121"] = 98,["124"] = 101,["125"] = 102,["126"] = 102,["127"] = 102,["128"] = 102,["129"] = 102,["130"] = 102,["131"] = 102,["132"] = 102,["133"] = 96,["134"] = 107,["135"] = 108,["136"] = 96,["137"] = 96,["138"] = 33,["141"] = 113,["142"] = 113,["143"] = 113,["144"] = 114,["145"] = 113,["146"] = 113,["147"] = 116,["148"] = 116,["149"] = 116,["150"] = 117,["151"] = 118,["152"] = 119,["154"] = 121,["155"] = 122,["157"] = 124,["159"] = 116,["160"] = 116,["161"] = 128,["162"] = 128,["163"] = 128,["164"] = 129,["165"] = 130,["166"] = 131,["168"] = 133,["169"] = 128,["170"] = 128,["171"] = 136,["172"] = 136,["173"] = 136,["174"] = 137,["175"] = 138,["176"] = 139,["178"] = 141,["179"] = 142,["180"] = 143,["181"] = 144,["182"] = 145,["183"] = 146,["185"] = 148,["187"] = 136,["188"] = 136,["189"] = 152,["190"] = 152,["191"] = 152,["192"] = 153,["193"] = 154,["194"] = 155,["196"] = 157,["197"] = 158,["198"] = 159,["199"] = 160,["200"] = 161,["201"] = 162,["203"] = 164,["205"] = 152,["206"] = 152,["207"] = 168,["208"] = 168,["209"] = 168,["210"] = 169,["211"] = 170,["214"] = 173,["215"] = 174,["216"] = 174,["217"] = 174,["218"] = 174,["219"] = 174,["220"] = 174,["221"] = 174,["222"] = 174,["223"] = 168,["224"] = 179,["225"] = 180,["226"] = 168,["227"] = 168,["228"] = 19,["229"] = 186,["230"] = 187,["231"] = 186});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
____exports.DLotteryResult = __TS__Class()
local DLotteryResult = ____exports.DLotteryResult
DLotteryResult.name = "DLotteryResult"
__TS__ClassExtends(DLotteryResult, Dialog)
function DLotteryResult.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {result = {}}}
end
function DLotteryResult.prototype.onCreate(self)
    self:bindClick(
        "root.ok",
        function()
            self:hide()
        end
    )
    self:bindClick(
        "root.closeBtn",
        function()
            self:hide()
        end
    )
    self:bindVisible(
        "root.list",
        function()
            return #self.data.params.result > 1
        end
    )
    local ____opt_0 = self:getUI("root.list")
    local children = ____opt_0 and ____opt_0:get_childs()
    do
        local i = 0
        while i < #children do
            local index = i
            local ui = children[i + 1]
            local root = "root.list." .. ui:get_name()
            self:bindVisible(
                root,
                function()
                    local config = self.data.params.result[index + 1]
                    return config ~= nil
                end
            )
            self:bindText(
                root .. ".name",
                function()
                    local config = self.data.params.result[index + 1]
                    if config == nil then
                        return ""
                    end
                    if config.isHave then
                        return i18n:format("已拥有，兑换${score}积分", {score = config.box.point})
                    else
                        return ""
                    end
                end
            )
            self:bindImage(
                root .. ".icon",
                function()
                    local config = self.data.params.result[index + 1]
                    if config == nil then
                        return 0
                    end
                    return i18n.currentLang == "en" and config.box.enIcon ~= 0 and config.box.enIcon or config.box.icon
                end
            )
            self:bindImage(
                root .. ".icon_bg",
                function()
                    local config = self.data.params.result[index + 1]
                    if config == nil then
                        return 134265176
                    end
                    if config.box.quality == 1 then
                        return 134254235
                    elseif config.box.quality == 2 then
                        return 134244605
                    elseif config.box.quality == 3 then
                        return 134270496
                    else
                        return 134265176
                    end
                end
            )
            self:bindImage(
                root .. ".icon_frame",
                function()
                    local config = self.data.params.result[index + 1]
                    if config == nil then
                        return 134257810
                    end
                    if config.box.quality == 1 then
                        return 134229799
                    elseif config.box.quality == 2 then
                        return 134228308
                    elseif config.box.quality == 3 then
                        return 134239323
                    else
                        return 134257810
                    end
                end
            )
            self:bindMouse(
                root,
                function()
                    local config = self.data.params.result[index + 1]
                    if config == nil then
                        return
                    end
                    local ui = self:getUI(root)
                    dialogs:showRepeat(
                        DHelpItem,
                        {
                            x = ui:get_absolute_x(),
                            y = ui:get_absolute_y() + 20,
                            des = config.box.des.value
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
    self:bindVisible(
        "root.item",
        function()
            return #self.data.params.result == 1
        end
    )
    self:bindText(
        "root.item" .. ".name",
        function()
            local config = self.data.params.result[1]
            if config == nil then
                return ""
            end
            if config.isHave then
                return i18n:format("已拥有，兑换${score}积分", {score = config.box.point})
            else
                return ""
            end
        end
    )
    self:bindImage(
        "root.item" .. ".icon",
        function()
            local config = self.data.params.result[1]
            if config == nil then
                return 0
            end
            return i18n.currentLang == "en" and config.box.enIcon ~= 0 and config.box.enIcon or config.box.icon
        end
    )
    self:bindImage(
        "root.item" .. ".icon_bg",
        function()
            local config = self.data.params.result[1]
            if config == nil then
                return 134265176
            end
            if config.box.quality == 1 then
                return 134254235
            elseif config.box.quality == 2 then
                return 134244605
            elseif config.box.quality == 3 then
                return 134270496
            else
                return 134265176
            end
        end
    )
    self:bindImage(
        "root.item" .. ".icon_frame",
        function()
            local config = self.data.params.result[1]
            if config == nil then
                return 134257810
            end
            if config.box.quality == 1 then
                return 134229799
            elseif config.box.quality == 2 then
                return 134228308
            elseif config.box.quality == 3 then
                return 134239323
            else
                return 134257810
            end
        end
    )
    self:bindMouse(
        "root.item",
        function()
            local config = self.data.params.result[1]
            if config == nil then
                return
            end
            local ui = self:getUI("root.item")
            dialogs:showRepeat(
                DHelpItem,
                {
                    x = ui:get_absolute_x(),
                    y = ui:get_absolute_y() + 20,
                    des = config.box.des.value
                }
            )
        end,
        function()
            dialogs:hide(DHelpItem)
        end
    )
end
function DLotteryResult.prototype.onHide(self)
    self.data.params.result = {}
end
return ____exports
