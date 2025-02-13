local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["37"] = 13,["38"] = 14,["39"] = 13,["40"] = 21,["41"] = 22,["42"] = 21,["43"] = 25,["45"] = 26,["46"] = 26,["47"] = 26,["48"] = 26,["49"] = 28,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 29,["55"] = 25,["56"] = 32,["57"] = 32,["58"] = 34,["59"] = 34,["60"] = 37,["61"] = 39,["62"] = 40,["63"] = 42,["64"] = 43,["65"] = 44,["67"] = 45,["68"] = 45,["70"] = 46,["71"] = 47,["72"] = 47,["74"] = 48,["75"] = 49,["78"] = 45,["81"] = 56,["82"] = 56,["83"] = 56,["84"] = 57,["85"] = 57,["87"] = 58,["88"] = 56,["89"] = 56,["90"] = 42,["91"] = 70,["92"] = 70,["93"] = 70,["94"] = 70,["95"] = 71,["96"] = 71,["98"] = 73,["100"] = 74,["101"] = 74,["102"] = 75,["103"] = 76,["104"] = 77,["105"] = 78,["106"] = 79,["107"] = 79,["108"] = 79,["109"] = 80,["110"] = 79,["111"] = 79,["113"] = 83,["114"] = 83,["115"] = 84,["116"] = 85,["117"] = 86,["118"] = 88,["119"] = 88,["120"] = 88,["121"] = 89,["122"] = 88,["123"] = 88,["124"] = 92,["125"] = 92,["126"] = 92,["127"] = 93,["128"] = 92,["129"] = 92,["130"] = 96,["131"] = 96,["132"] = 96,["133"] = 97,["134"] = 97,["136"] = 98,["137"] = 96,["138"] = 96,["139"] = 100,["140"] = 100,["141"] = 100,["142"] = 101,["143"] = 101,["145"] = 102,["146"] = 100,["147"] = 100,["148"] = 104,["149"] = 104,["150"] = 104,["151"] = 105,["152"] = 104,["153"] = 104,["154"] = 107,["155"] = 107,["156"] = 107,["157"] = 108,["158"] = 107,["159"] = 107,["160"] = 110,["161"] = 110,["162"] = 110,["163"] = 111,["164"] = 110,["165"] = 110,["166"] = 113,["167"] = 113,["168"] = 113,["169"] = 114,["170"] = 114,["171"] = 114,["172"] = 114,["174"] = 115,["175"] = 115,["176"] = 115,["177"] = 115,["179"] = 116,["180"] = 116,["181"] = 116,["182"] = 116,["184"] = 117,["185"] = 117,["186"] = 117,["187"] = 117,["189"] = 118,["190"] = 118,["191"] = 118,["192"] = 118,["194"] = 119,["195"] = 113,["196"] = 113,["197"] = 123,["198"] = 83,["201"] = 74,["204"] = 127,["205"] = 127,["206"] = 127,["207"] = 128,["208"] = 127,["209"] = 127,["210"] = 131,["211"] = 131,["212"] = 131,["213"] = 132,["214"] = 131,["215"] = 131,["216"] = 134,["217"] = 134,["218"] = 134,["219"] = 135,["220"] = 134,["221"] = 134,["222"] = 137,["223"] = 137,["224"] = 137,["225"] = 138,["226"] = 137,["227"] = 137,["228"] = 141,["229"] = 141,["230"] = 141,["231"] = 144,["232"] = 145,["233"] = 146,["234"] = 147,["237"] = 150,["239"] = 141,["240"] = 141,["241"] = 153,["242"] = 153,["243"] = 153,["244"] = 154,["245"] = 155,["246"] = 153,["247"] = 153,["248"] = 158,["249"] = 159,["250"] = 159,["251"] = 159,["252"] = 160,["255"] = 162,["256"] = 162,["258"] = 164,["259"] = 164,["260"] = 164,["261"] = 165,["262"] = 166,["263"] = 166,["264"] = 166,["265"] = 166,["266"] = 166,["267"] = 166,["268"] = 166,["269"] = 166,["270"] = 166,["271"] = 166,["272"] = 167,["273"] = 167,["274"] = 167,["275"] = 167,["276"] = 167,["277"] = 167,["278"] = 164,["279"] = 164,["280"] = 159,["281"] = 159,["282"] = 159,["283"] = 159,["284"] = 171,["285"] = 171,["286"] = 171,["287"] = 172,["288"] = 172,["289"] = 172,["290"] = 172,["291"] = 172,["292"] = 171,["293"] = 171,["294"] = 37});
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
local petConfigList = ____PetConfig.petConfigList
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecPetPage = __TS__Class()
local DDecPetPage = ____exports.DDecPetPage
DDecPetPage.name = "DDecPetPage"
__TS__ClassExtends(DDecPetPage, Dialog)
function DDecPetPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0}
end
function DDecPetPage.prototype.onCreate(self)
    self:initView()
end
function DDecPetPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["Pet_宠物"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["Pet_宠物"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetPage.prototype.onShow(self)
end
function DDecPetPage.prototype.onHide(self)
end
function DDecPetPage.prototype.initDetails(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = petConfigList
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                        goto __continue11
                    end
                    local info = archive.petData.skins["" .. tostring(element.id)]
                    list2[#list2 + 1] = {cfg = element, select = archive.petData.cur_skin == element.id, unlock = info == true}
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
    self:bindModel(
        "root.center.model",
        function()
            return list.value[self.data.selectIndex + 1].cfg.role or 0
        end
    )
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
            return list.value[self.data.selectIndex + 1].select and i18n["local"](i18n, "使用中") or i18n["local"](i18n, "使用")
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                local data = list.value[self.data.selectIndex + 1]
                if data ~= nil then
                    steamUtils:gotoShop(3, data.cfg.id)
                end
            else
                DTips:show(i18n["local"](i18n, "请前往商城购买"))
            end
        end
    )
    self:bindClick(
        "root.center.use",
        function()
            heroSkinManager:replacePetSkin(list.value[self.data.selectIndex + 1].cfg.id)
            createUnitController.changePet:execute(LOCAL.PLAYER_ID, list.value[self.data.selectIndex + 1].cfg.id)
        end
    )
    local timer = nil
    self:watch(
        function() return list.value[self.data.selectIndex + 1] end,
        function(____, v, o)
            if v == o then
                return
            end
            if timer ~= nil then
                timer:remove()
            end
            timer = y3.ltimer.wait(
                0.3,
                function()
                    timer = nil
                    GameAPI.play_ui_model_anim(
                        LOCAL.PLAYER.handle,
                        self:getUI("root.center.model").handle,
                        v.cfg.uiBornAnime,
                        1,
                        0,
                        -1,
                        false,
                        true
                    )
                    GameAPI.set_modifier_on_ui_model(
                        v.cfg.roleEffect,
                        0,
                        LOCAL.PLAYER.handle,
                        self:getUI("root.center.model").handle
                    )
                end
            )
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
return ____exports
