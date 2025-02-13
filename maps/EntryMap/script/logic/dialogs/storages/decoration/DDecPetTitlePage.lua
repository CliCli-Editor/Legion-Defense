local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 9,["21"] = 9,["22"] = 9,["23"] = 12,["24"] = 12,["25"] = 14,["26"] = 14,["27"] = 14,["28"] = 14,["30"] = 14,["31"] = 15,["32"] = 14,["33"] = 22,["34"] = 23,["35"] = 22,["36"] = 26,["38"] = 27,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 29,["46"] = 30,["48"] = 26,["49"] = 33,["50"] = 33,["51"] = 35,["52"] = 36,["53"] = 35,["54"] = 39,["55"] = 42,["56"] = 43,["57"] = 45,["58"] = 46,["59"] = 48,["60"] = 49,["62"] = 50,["63"] = 50,["65"] = 51,["66"] = 52,["67"] = 53,["68"] = 54,["70"] = 57,["71"] = 58,["72"] = 59,["77"] = 50,["81"] = 66,["83"] = 67,["84"] = 67,["86"] = 68,["87"] = 69,["88"] = 69,["90"] = 70,["91"] = 71,["94"] = 67,["97"] = 78,["98"] = 78,["99"] = 78,["100"] = 79,["101"] = 79,["103"] = 80,["104"] = 78,["105"] = 78,["106"] = 45,["107"] = 96,["109"] = 97,["110"] = 97,["111"] = 98,["112"] = 99,["113"] = 100,["114"] = 101,["115"] = 102,["116"] = 102,["117"] = 102,["118"] = 103,["119"] = 102,["120"] = 102,["122"] = 106,["123"] = 106,["124"] = 107,["125"] = 108,["126"] = 109,["127"] = 111,["128"] = 111,["129"] = 111,["130"] = 112,["131"] = 111,["132"] = 111,["133"] = 116,["134"] = 116,["135"] = 116,["136"] = 117,["137"] = 116,["138"] = 116,["139"] = 120,["140"] = 120,["141"] = 120,["142"] = 121,["143"] = 121,["145"] = 122,["146"] = 120,["147"] = 120,["148"] = 129,["149"] = 129,["150"] = 129,["151"] = 129,["152"] = 130,["153"] = 130,["154"] = 130,["155"] = 131,["156"] = 131,["158"] = 132,["159"] = 132,["161"] = 133,["162"] = 133,["163"] = 133,["164"] = 134,["165"] = 133,["166"] = 133,["167"] = 136,["168"] = 137,["169"] = 138,["171"] = 140,["173"] = 130,["174"] = 130,["175"] = 143,["176"] = 143,["177"] = 143,["178"] = 144,["179"] = 144,["180"] = 145,["181"] = 146,["183"] = 148,["184"] = 149,["186"] = 151,["188"] = 143,["189"] = 143,["190"] = 155,["191"] = 155,["192"] = 155,["193"] = 156,["194"] = 155,["195"] = 155,["196"] = 158,["197"] = 158,["198"] = 158,["199"] = 159,["200"] = 158,["201"] = 158,["202"] = 161,["203"] = 161,["204"] = 161,["205"] = 162,["206"] = 161,["207"] = 161,["208"] = 164,["209"] = 164,["210"] = 164,["211"] = 165,["212"] = 165,["213"] = 165,["214"] = 165,["216"] = 166,["217"] = 166,["218"] = 166,["219"] = 166,["221"] = 167,["222"] = 167,["223"] = 167,["224"] = 167,["226"] = 168,["227"] = 168,["228"] = 168,["229"] = 168,["231"] = 169,["232"] = 169,["233"] = 169,["234"] = 169,["236"] = 170,["237"] = 164,["238"] = 164,["239"] = 173,["240"] = 106,["243"] = 97,["246"] = 177,["247"] = 177,["248"] = 177,["249"] = 178,["250"] = 177,["251"] = 177,["252"] = 180,["253"] = 180,["254"] = 180,["255"] = 181,["256"] = 180,["257"] = 180,["258"] = 183,["259"] = 183,["260"] = 183,["261"] = 184,["262"] = 183,["263"] = 183,["264"] = 186,["265"] = 186,["266"] = 186,["267"] = 187,["268"] = 186,["269"] = 186,["270"] = 190,["271"] = 190,["272"] = 190,["273"] = 199,["274"] = 199,["275"] = 199,["276"] = 199,["277"] = 199,["278"] = 190,["279"] = 190,["280"] = 208,["281"] = 208,["282"] = 208,["283"] = 209,["284"] = 209,["285"] = 209,["286"] = 210,["287"] = 209,["288"] = 209,["289"] = 213,["290"] = 214,["291"] = 215,["293"] = 217,["295"] = 208,["296"] = 208,["297"] = 221,["298"] = 221,["299"] = 221,["300"] = 222,["301"] = 221,["302"] = 221,["303"] = 39});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____PetTitleConfig = include("logic.configs.PetTitleConfig")
local petTitleConfigMap_group = ____PetTitleConfig.petTitleConfigMap_group
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecPetTitlePage = __TS__Class()
local DDecPetTitlePage = ____exports.DDecPetTitlePage
DDecPetTitlePage.name = "DDecPetTitlePage"
__TS__ClassExtends(DDecPetTitlePage, Dialog)
function DDecPetTitlePage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0}
end
function DDecPetTitlePage.prototype.onCreate(self)
    self:initView()
end
function DDecPetTitlePage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["PetTitle_称谓"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["PetTitle_称谓"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetTitlePage.prototype.onShow(self)
end
function DDecPetTitlePage.prototype.onHide(self)
    self:getUI("root.center.model"):set_ui_model_id(0)
end
function DDecPetTitlePage.prototype.initDetails(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = {}
        for k in pairs(petTitleConfigMap_group) do
            local l = petTitleConfigMap_group[k]
            do
                local i = #l - 1
                while i >= 0 do
                    do
                        local config = l[i + 1]
                        if config.group == 0 then
                            list1[#list1 + 1] = config
                            goto __continue12
                        end
                        local configPrevious = l[i]
                        if archive.petData.titles["" .. tostring(config.id)] == true or configPrevious == nil then
                            list1[#list1 + 1] = config
                            break
                        end
                    end
                    ::__continue12::
                    i = i - 1
                end
            end
        end
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                        goto __continue16
                    end
                    local info = archive.petData.titles["" .. tostring(element.id)]
                    list2[#list2 + 1] = {cfg = element, select = archive.petData.current_title == element.id, unlock = info == true}
                end
                ::__continue16::
                index = index + 1
            end
        end
        return __TS__ArraySort(
            list2,
            function(____, a, b)
                if b.cfg.quality == a.cfg.quality then
                    return a.cfg.id - b.cfg.id
                end
                return b.cfg.quality - a.cfg.quality
            end
        )
    end)
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
                    self:bindVisible(
                        path .. ".seq",
                        function() return true end
                    )
                    self:bindSeq(
                        path .. ".seq",
                        function()
                            if localData.decoration.tabIndex ~= DecorationType["PetTitle_称谓"] then
                                return 0
                            end
                            if list.value[temp_idx + 1] == nil then
                                return 0
                            end
                            y3.ltimer.wait(
                                0.1,
                                function()
                                    self:getUI(path .. ".seq"):play_ui_sequence(true)
                                end
                            )
                            local config = list.value[temp_idx + 1].cfg
                            if i18n.currentLang == "en" and config.enIcon ~= 0 then
                                return config.enIcon
                            else
                                return config.icon
                            end
                        end
                    )
                    self:bindSize(
                        path .. ".seq",
                        function()
                            local ____opt_0 = list.value[temp_idx + 1]
                            local config = ____opt_0 and ____opt_0.cfg
                            if config == nil then
                                return {width = 1, height = 1}
                            end
                            if i18n.currentLang == "en" and config.enIcon ~= 0 then
                                return {width = config.enWidth * 0.75, height = config.enHeight * 0.75}
                            else
                                return {width = config.width * 0.75, height = config.height * 0.75}
                            end
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
                            local ____opt_4 = list.value[temp_idx + 1]
                            local ____opt_2 = ____opt_4 and ____opt_4.cfg
                            if (____opt_2 and ____opt_2.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_8 = list.value[temp_idx + 1]
                            local ____opt_6 = ____opt_8 and ____opt_8.cfg
                            if (____opt_6 and ____opt_6.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_12 = list.value[temp_idx + 1]
                            local ____opt_10 = ____opt_12 and ____opt_12.cfg
                            if (____opt_10 and ____opt_10.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_16 = list.value[temp_idx + 1]
                            local ____opt_14 = ____opt_16 and ____opt_16.cfg
                            if (____opt_14 and ____opt_14.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_20 = list.value[temp_idx + 1]
                            local ____opt_18 = ____opt_20 and ____opt_20.cfg
                            if (____opt_18 and ____opt_18.quality) == 4 then
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
    self:bindText(
        "root.center.buy",
        function()
            return list.value[self.data.selectIndex + 1].cfg.des.value
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
        "root.center.use",
        function()
            local ____heroSkinManager_26 = heroSkinManager
            local ____heroSkinManager_replacePetTitle_27 = heroSkinManager.replacePetTitle
            local ____opt_24 = list.value[self.data.selectIndex + 1]
            local ____opt_22 = ____opt_24 and ____opt_24.cfg
            ____heroSkinManager_replacePetTitle_27(____heroSkinManager_26, ____opt_22 and ____opt_22.id or 0)
        end
    )
    self:bindSeq(
        "root.center.title",
        function()
            y3.ltimer.wait(
                0.1,
                function()
                    self:getUI("root.center.title"):play_ui_sequence(true)
                end
            )
            local config = list.value[self.data.selectIndex + 1].cfg
            if i18n.currentLang == "en" and config.enIcon ~= 0 then
                return config.enIcon
            else
                return config.icon
            end
        end
    )
    self:bindSize(
        "root.center.title",
        function()
            return list.value[self.data.selectIndex + 1].cfg
        end
    )
end
return ____exports
