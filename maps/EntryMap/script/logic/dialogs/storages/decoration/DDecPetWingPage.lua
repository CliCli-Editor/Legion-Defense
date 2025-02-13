local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 14,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["39"] = 16,["40"] = 17,["41"] = 44,["42"] = 16,["43"] = 24,["44"] = 25,["45"] = 24,["46"] = 28,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 30,["53"] = 30,["54"] = 30,["55"] = 30,["56"] = 31,["58"] = 28,["59"] = 34,["60"] = 34,["61"] = 40,["62"] = 41,["63"] = 40,["64"] = 49,["65"] = 52,["66"] = 53,["67"] = 55,["68"] = 56,["69"] = 57,["71"] = 58,["72"] = 58,["74"] = 59,["75"] = 60,["76"] = 60,["78"] = 61,["79"] = 62,["82"] = 58,["85"] = 69,["86"] = 69,["87"] = 69,["88"] = 70,["89"] = 70,["91"] = 71,["92"] = 69,["93"] = 69,["94"] = 55,["95"] = 81,["96"] = 84,["97"] = 84,["98"] = 84,["99"] = 84,["100"] = 85,["101"] = 85,["103"] = 87,["105"] = 88,["106"] = 88,["107"] = 89,["108"] = 90,["109"] = 91,["110"] = 92,["111"] = 93,["112"] = 93,["113"] = 93,["114"] = 94,["115"] = 93,["116"] = 93,["118"] = 97,["119"] = 97,["120"] = 98,["121"] = 99,["122"] = 100,["123"] = 102,["124"] = 102,["125"] = 102,["126"] = 103,["127"] = 104,["128"] = 102,["129"] = 102,["130"] = 107,["131"] = 107,["132"] = 107,["133"] = 108,["134"] = 107,["135"] = 107,["136"] = 111,["137"] = 111,["138"] = 111,["139"] = 112,["140"] = 112,["142"] = 113,["143"] = 111,["144"] = 111,["145"] = 115,["146"] = 115,["147"] = 115,["148"] = 116,["149"] = 116,["151"] = 117,["152"] = 115,["153"] = 115,["154"] = 119,["155"] = 119,["156"] = 119,["157"] = 120,["158"] = 119,["159"] = 119,["160"] = 122,["161"] = 122,["162"] = 122,["163"] = 123,["164"] = 122,["165"] = 122,["166"] = 125,["167"] = 125,["168"] = 125,["169"] = 126,["170"] = 125,["171"] = 125,["172"] = 128,["173"] = 128,["174"] = 128,["175"] = 129,["176"] = 129,["177"] = 129,["178"] = 129,["180"] = 130,["181"] = 130,["182"] = 130,["183"] = 130,["185"] = 131,["186"] = 131,["187"] = 131,["188"] = 131,["190"] = 132,["191"] = 132,["192"] = 132,["193"] = 132,["195"] = 133,["196"] = 133,["197"] = 133,["198"] = 133,["200"] = 134,["201"] = 128,["202"] = 128,["203"] = 137,["204"] = 97,["207"] = 88,["210"] = 141,["211"] = 141,["212"] = 141,["213"] = 142,["214"] = 141,["215"] = 141,["216"] = 144,["217"] = 144,["218"] = 144,["219"] = 145,["220"] = 144,["221"] = 144,["222"] = 147,["223"] = 147,["224"] = 147,["225"] = 148,["226"] = 147,["227"] = 147,["228"] = 151,["229"] = 151,["230"] = 151,["231"] = 154,["232"] = 155,["233"] = 156,["234"] = 157,["237"] = 160,["239"] = 151,["240"] = 151,["241"] = 164,["242"] = 164,["243"] = 164,["244"] = 165,["245"] = 166,["246"] = 167,["248"] = 169,["249"] = 170,["251"] = 164,["252"] = 164,["253"] = 174,["254"] = 174,["255"] = 174,["256"] = 175,["257"] = 176,["259"] = 178,["260"] = 174,["261"] = 174,["262"] = 174,["263"] = 174,["264"] = 181,["265"] = 181,["266"] = 181,["267"] = 182,["268"] = 182,["269"] = 182,["270"] = 182,["271"] = 182,["272"] = 181,["273"] = 181,["274"] = 49,["275"] = 187,["276"] = 188,["277"] = 189,["278"] = 190,["279"] = 191,["280"] = 191,["281"] = 191,["282"] = 192,["283"] = 192,["284"] = 192,["285"] = 192,["286"] = 192,["287"] = 192,["288"] = 191,["289"] = 191,["290"] = 187});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigMap = ____PetConfig.petConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigList = ____PetWingConfig.petWingConfigList
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecPetWingPage = __TS__Class()
local DDecPetWingPage = ____exports.DDecPetWingPage
DDecPetWingPage.name = "DDecPetWingPage"
__TS__ClassExtends(DDecPetWingPage, Dialog)
function DDecPetWingPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0}
    self.list = nil
end
function DDecPetWingPage.prototype.onCreate(self)
    self:initView()
end
function DDecPetWingPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["PetWing_宠物翅膀"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["PetWing_宠物翅膀"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetWingPage.prototype.onShow(self)
end
function DDecPetWingPage.prototype.onHide(self)
    self:getUI("root.center.model"):set_ui_model_id(0)
end
function DDecPetWingPage.prototype.initDetails(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = petWingConfigList
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                        goto __continue11
                    end
                    local info = archive.petData.wings["" .. tostring(element.id)]
                    list2[#list2 + 1] = {cfg = element, select = archive.petData.cur_wing == element.id, unlock = info == true}
                end
                ::__continue11::
                index = index + 1
            end
        end
        return __TS__ArraySort(
            list2,
            function(____, a, b)
                if b.cfg.quality == a.cfg.quality then
                    return b.cfg.id - a.cfg.id
                end
                return b.cfg.quality - a.cfg.quality
            end
        )
    end)
    self.list = list
    local idx2 = __TS__ArrayFindIndex(
        list.value,
        function(____, a) return a.select end
    )
    if idx2 >= 0 then
        self.data.selectIndex = idx2
    end
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
                    return #list.value >= temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = (path1 .. ".") .. cld:get_name()
                    local temp_idx = idx
                    self:bindClick(
                        path,
                        function()
                            self.data.selectIndex = temp_idx
                            self:change(list.value[self.data.selectIndex + 1].cfg.wing)
                        end
                    )
                    self:bindVisible(
                        path,
                        function()
                            return #list.value > temp_idx
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return ""
                            end
                            return list.value[temp_idx + 1].cfg.name.value
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return 0
                            end
                            return list.value[temp_idx + 1].cfg.icon
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return list.value[temp_idx + 1] ~= nil and list.value[temp_idx + 1].select
                        end
                    )
                    self:bindVisible(
                        path .. ".select2",
                        function()
                            return self.data.selectIndex == temp_idx
                        end
                    )
                    self:bindVisible(
                        path .. ".lock",
                        function()
                            return list.value[temp_idx + 1] ~= nil and not list.value[temp_idx + 1].unlock
                        end
                    )
                    self:bindImage(
                        path .. ".bg",
                        function()
                            local ____opt_2 = list.value[temp_idx + 1]
                            local ____opt_0 = ____opt_2 and ____opt_2.cfg
                            if (____opt_0 and ____opt_0.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_6 = list.value[temp_idx + 1]
                            local ____opt_4 = ____opt_6 and ____opt_6.cfg
                            if (____opt_4 and ____opt_4.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_10 = list.value[temp_idx + 1]
                            local ____opt_8 = ____opt_10 and ____opt_10.cfg
                            if (____opt_8 and ____opt_8.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_14 = list.value[temp_idx + 1]
                            local ____opt_12 = ____opt_14 and ____opt_14.cfg
                            if (____opt_12 and ____opt_12.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_18 = list.value[temp_idx + 1]
                            local ____opt_16 = ____opt_18 and ____opt_18.cfg
                            if (____opt_16 and ____opt_16.quality) == 4 then
                                return 134248468
                            end
                            return 134237313
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
    self:bindVisible(
        "root.center.buy",
        function()
            return list.value[self.data.selectIndex + 1].unlock ~= true
        end
    )
    self:bindVisible(
        "root.center.use",
        function()
            return list.value[self.data.selectIndex + 1].unlock == true
        end
    )
    self:bindText(
        "root.center.use.title",
        function()
            return list.value[self.data.selectIndex + 1].select and i18n["local"](i18n, "卸下") or i18n["local"](i18n, "使用")
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                local data = list.value[self.data.selectIndex + 1]
                if data ~= nil then
                    steamUtils:gotoShop(16, data.cfg.id)
                end
            else
                DTips:show(i18n["local"](i18n, "请前往商城购买"))
            end
        end
    )
    self:bindClick(
        "root.center.use",
        function()
            if list.value[self.data.selectIndex + 1].select then
                heroSkinManager:replacePetWing(0)
                createUnitController.changeWing:execute(LOCAL.PLAYER_ID, 0)
            else
                heroSkinManager:replacePetWing(list.value[self.data.selectIndex + 1].cfg.id)
                createUnitController.changeWing:execute(LOCAL.PLAYER_ID, list.value[self.data.selectIndex + 1].cfg.wing)
            end
        end
    )
    self:watch(
        function() return localData.decoration.tabIndex == DecorationType["PetWing_宠物翅膀"] end,
        function(____, v)
            if v then
                self:change(list.value[self.data.selectIndex + 1].cfg.wing)
            end
            return v
        end,
        false,
        true
    )
    self:bindText(
        "root.center.dec.text",
        function()
            local ____i18n_24 = i18n
            local ____i18n_format_25 = i18n.format
            local ____opt_22 = list.value[self.data.selectIndex + 1]
            local ____opt_20 = ____opt_22 and ____opt_22.cfg
            return ____i18n_format_25(____i18n_24, "装饰度：${value}", {value = ____opt_20 and ____opt_20.decorate or 0})
        end
    )
end
function DDecPetWingPage.prototype.change(self, wing)
    self:getUI("root.center.model"):set_ui_model_id(0)
    local unit = y3.object.unit[petConfigMap[archive.petData.cur_skin].role]
    self:getUI("root.center.model"):set_ui_model_id(unit.data.model)
    y3.ltimer.wait(
        0.2,
        function()
            GameAPI.set_modifier_on_ui_model(
                wing,
                0,
                LOCAL.PLAYER.handle,
                self:getUI("root.center.model").handle
            )
        end
    )
end
return ____exports
