local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 15,["38"] = 16,["39"] = 16,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["45"] = 18,["46"] = 19,["47"] = 84,["48"] = 18,["49"] = 26,["50"] = 27,["51"] = 26,["52"] = 30,["53"] = 32,["54"] = 32,["55"] = 32,["56"] = 32,["57"] = 32,["58"] = 32,["59"] = 32,["60"] = 33,["61"] = 33,["62"] = 33,["63"] = 36,["64"] = 36,["65"] = 36,["66"] = 36,["67"] = 36,["68"] = 36,["69"] = 36,["70"] = 33,["71"] = 33,["72"] = 33,["73"] = 33,["74"] = 41,["76"] = 42,["77"] = 42,["78"] = 43,["79"] = 44,["80"] = 45,["81"] = 46,["82"] = 47,["83"] = 47,["84"] = 47,["85"] = 47,["86"] = 48,["87"] = 48,["88"] = 48,["89"] = 48,["90"] = 49,["91"] = 49,["92"] = 49,["93"] = 49,["94"] = 50,["95"] = 50,["96"] = 50,["97"] = 51,["98"] = 52,["101"] = 55,["102"] = 56,["103"] = 57,["104"] = 50,["105"] = 50,["106"] = 60,["107"] = 61,["108"] = 61,["109"] = 61,["110"] = 61,["112"] = 63,["113"] = 63,["114"] = 64,["115"] = 65,["116"] = 66,["117"] = 67,["118"] = 67,["119"] = 67,["120"] = 67,["121"] = 68,["122"] = 68,["123"] = 68,["125"] = 68,["126"] = 68,["127"] = 68,["128"] = 68,["129"] = 68,["130"] = 69,["131"] = 69,["132"] = 69,["134"] = 69,["135"] = 69,["136"] = 69,["137"] = 69,["138"] = 69,["139"] = 70,["140"] = 70,["141"] = 70,["142"] = 70,["143"] = 71,["144"] = 71,["145"] = 71,["146"] = 71,["147"] = 71,["148"] = 71,["149"] = 71,["150"] = 73,["151"] = 74,["153"] = 63,["156"] = 42,["159"] = 77,["160"] = 79,["161"] = 79,["162"] = 79,["163"] = 80,["164"] = 80,["165"] = 80,["166"] = 80,["167"] = 79,["168"] = 79,["169"] = 30,["170"] = 86,["171"] = 87,["172"] = 88,["173"] = 89,["174"] = 91,["175"] = 91,["176"] = 93,["177"] = 94,["178"] = 94,["180"] = 91,["181"] = 91,["182"] = 97,["183"] = 98,["184"] = 99,["185"] = 100,["186"] = 101,["187"] = 102,["188"] = 103,["189"] = 104,["190"] = 105,["191"] = 106,["192"] = 86,["193"] = 109,["194"] = 110,["195"] = 111,["196"] = 113,["197"] = 114,["198"] = 115,["199"] = 116,["200"] = 117,["201"] = 118,["202"] = 119,["203"] = 120,["204"] = 121,["205"] = 122,["206"] = 109,["207"] = 126,["208"] = 127,["209"] = 128,["210"] = 126});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____DDecHallBgPage = include("logic.dialogs.storages.decoration.DDecHallBgPage")
local DDecHallBgPage = ____DDecHallBgPage.DDecHallBgPage
local ____DDecHeroPage = include("logic.dialogs.storages.decoration.DDecHeroPage")
local DDecHeroPage = ____DDecHeroPage.DDecHeroPage
local ____DDecMercenaryPage = include("logic.dialogs.storages.decoration.DDecMercenaryPage")
local DDecMercenaryPage = ____DDecMercenaryPage.DDecMercenaryPage
local ____DDecPetEffectPage = include("logic.dialogs.storages.decoration.DDecPetEffectPage")
local DDecPetEffectPage = ____DDecPetEffectPage.DDecPetEffectPage
local ____DDecPetEmoPage = include("logic.dialogs.storages.decoration.DDecPetEmoPage")
local DDecPetEmoPage = ____DDecPetEmoPage.DDecPetEmoPage
local ____DDecPetHaloPage = include("logic.dialogs.storages.decoration.DDecPetHaloPage")
local DDecPetHaloPage = ____DDecPetHaloPage.DDecPetHaloPage
local ____DDecPetPage = include("logic.dialogs.storages.decoration.DDecPetPage")
local DDecPetPage = ____DDecPetPage.DDecPetPage
local ____DDecPetSkillPage = include("logic.dialogs.storages.decoration.DDecPetSkillPage")
local DDecPetSkillPage = ____DDecPetSkillPage.DDecPetSkillPage
local ____DDecPetTitlePage = include("logic.dialogs.storages.decoration.DDecPetTitlePage")
local DDecPetTitlePage = ____DDecPetTitlePage.DDecPetTitlePage
local ____DDecPetWingPage = include("logic.dialogs.storages.decoration.DDecPetWingPage")
local DDecPetWingPage = ____DDecPetWingPage.DDecPetWingPage
____exports.DDecoration = __TS__Class()
local DDecoration = ____exports.DDecoration
DDecoration.name = "DDecoration"
__TS__ClassExtends(DDecoration, Dialog)
function DDecoration.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {showSub = true}
    self.eventId = 0
end
function DDecoration.prototype.onCreate(self)
    self:initView()
end
function DDecoration.prototype.initView(self)
    local list = {
        function() return i18n["local"](i18n, "英雄") end,
        function() return i18n["local"](i18n, "佣兵") end,
        function() return i18n["local"](i18n, "宠物") end,
        function() return i18n["local"](i18n, "表情") end,
        function() return i18n["local"](i18n, "其它") end
    }
    local list2 = {
        {function() return i18n["local"](i18n, "英雄皮肤") end},
        {function() return i18n["local"](i18n, "佣兵皮肤") end},
        {
            function() return i18n["local"](i18n, "宠物皮肤") end,
            function() return i18n["local"](i18n, "宠物翅膀") end,
            function() return i18n["local"](i18n, "宠物光环") end,
            function() return i18n["local"](i18n, "宠物环绕") end,
            function() return i18n["local"](i18n, "宠物道具") end,
            function() return i18n["local"](i18n, "称谓") end
        },
        {function() return i18n["local"](i18n, "宠物表情") end},
        {function() return i18n["local"](i18n, "大厅场景") end}
    }
    local idx333 = 1
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            local idx = index + 1
            local path = "root.btns.btns.btn_" .. tostring(idx)
            local id555 = idx333
            self:bindText(
                path .. ".normal.title",
                function() return element(nil) end
            )
            self:bindText(
                path .. ".select.title",
                function() return element(nil) end
            )
            self:bindVisible(
                path .. ".select",
                function() return localData.decoration.subTabIndex == idx end
            )
            self:bindClick(
                path,
                function()
                    if localData.decoration.subTabIndex == idx then
                        self.data.showSub = not self.data.showSub
                        return
                    end
                    self.data.showSub = true
                    localData.decoration.tabIndex = id555
                    localData.decoration.subTabIndex = idx
                end
            )
            local path2 = "root.btns.btns.list_" .. tostring(idx)
            self:bindVisible(
                path2,
                function() return localData.decoration.subTabIndex == idx and self.data.showSub end
            )
            do
                local j = 0
                while j < 6 do
                    local path3 = (("root.btns.btns.list_" .. tostring(idx)) .. ".btn_") .. tostring(j + 1)
                    local idx2 = j
                    local idx444 = idx333
                    self:bindVisible(
                        path3,
                        function() return list2[idx][idx2 + 1] ~= nil end
                    )
                    self:bindText(
                        path3 .. ".normal.title",
                        function()
                            local ____this_1
                            ____this_1 = list2[idx]
                            local ____opt_0 = ____this_1[idx2 + 1]
                            return ____opt_0 and ____opt_0(____this_1) or ""
                        end
                    )
                    self:bindText(
                        path3 .. ".select.title",
                        function()
                            local ____this_3
                            ____this_3 = list2[idx]
                            local ____opt_2 = ____this_3[idx2 + 1]
                            return ____opt_2 and ____opt_2(____this_3) or ""
                        end
                    )
                    self:bindVisible(
                        path3 .. ".select",
                        function() return localData.decoration.tabIndex == idx444 end
                    )
                    self:bindClick(
                        path3,
                        function()
                            localData.decoration.tabIndex = idx444
                            return idx444
                        end
                    )
                    if list2[idx][idx2 + 1] ~= nil then
                        idx333 = idx333 + 1
                    end
                    j = j + 1
                end
            end
            index = index + 1
        end
    end
    localData.decoration.subTabIndex = 1
    self:bindText(
        "root.btns.dec",
        function()
            return i18n:format(
                "总装饰度：${value}",
                {value = shopManager:getCurrentDecorateCount()}
            )
        end
    )
end
function DDecoration.prototype.onShow(self)
    self.data.showSub = true
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Decoration_装饰"]
    self:watch(
        function() return localData.setting.tabIndex == SettingType["Decoration_装饰"] end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
    dialogs:show(DDecMercenaryPage, {})
    dialogs:show(DDecHeroPage, {})
    dialogs:show(DDecPetPage, {})
    dialogs:show(DDecPetHaloPage, {})
    dialogs:show(DDecPetSkillPage, {})
    dialogs:show(DDecPetWingPage, {})
    dialogs:show(DDecPetEmoPage, {})
    dialogs:show(DDecPetEffectPage, {})
    dialogs:show(DDecPetTitlePage, {})
    dialogs:show(DDecHallBgPage, {})
end
function DDecoration.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
    dialogs:hide(DDecMercenaryPage)
    dialogs:hide(DDecHeroPage)
    dialogs:hide(DDecPetPage)
    dialogs:hide(DDecPetHaloPage)
    dialogs:hide(DDecPetSkillPage)
    dialogs:hide(DDecPetWingPage)
    dialogs:hide(DDecPetEmoPage)
    dialogs:hide(DDecPetEffectPage)
    dialogs:hide(DDecPetTitlePage)
    dialogs:hide(DDecHallBgPage)
end
function DDecoration.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
return ____exports
