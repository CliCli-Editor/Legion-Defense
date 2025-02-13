local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 13,["26"] = 13,["27"] = 14,["28"] = 14,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 16,["34"] = 16,["35"] = 17,["36"] = 16,["37"] = 26,["38"] = 27,["39"] = 26,["40"] = 30,["42"] = 31,["43"] = 31,["44"] = 31,["45"] = 31,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 33,["50"] = 35,["52"] = 30,["53"] = 38,["54"] = 38,["55"] = 41,["56"] = 41,["57"] = 44,["58"] = 46,["59"] = 47,["61"] = 48,["62"] = 48,["63"] = 49,["64"] = 50,["65"] = 51,["67"] = 56,["68"] = 57,["70"] = 48,["73"] = 64,["74"] = 46,["76"] = 67,["77"] = 67,["78"] = 68,["79"] = 69,["80"] = 70,["81"] = 70,["82"] = 70,["83"] = 71,["84"] = 72,["85"] = 73,["87"] = 76,["88"] = 70,["89"] = 70,["90"] = 79,["91"] = 79,["92"] = 79,["93"] = 80,["94"] = 80,["96"] = 81,["97"] = 81,["98"] = 81,["99"] = 82,["100"] = 81,["101"] = 81,["102"] = 85,["103"] = 86,["104"] = 87,["106"] = 90,["107"] = 79,["108"] = 79,["109"] = 93,["110"] = 93,["111"] = 93,["112"] = 94,["113"] = 95,["114"] = 96,["116"] = 98,["117"] = 98,["118"] = 98,["120"] = 98,["122"] = 98,["123"] = 93,["124"] = 93,["125"] = 100,["126"] = 100,["127"] = 100,["128"] = 101,["129"] = 102,["130"] = 103,["132"] = 105,["133"] = 105,["134"] = 105,["136"] = 105,["138"] = 105,["139"] = 100,["140"] = 100,["141"] = 107,["142"] = 107,["143"] = 107,["144"] = 107,["145"] = 108,["146"] = 108,["147"] = 108,["148"] = 108,["149"] = 108,["150"] = 108,["151"] = 108,["152"] = 67,["155"] = 111,["156"] = 112,["157"] = 114,["158"] = 115,["159"] = 116,["161"] = 118,["162"] = 118,["164"] = 119,["165"] = 120,["166"] = 120,["168"] = 121,["169"] = 123,["170"] = 124,["171"] = 124,["173"] = 125,["174"] = 125,["176"] = 126,["177"] = 126,["179"] = 127,["180"] = 127,["182"] = 129,["185"] = 118,["188"] = 137,["189"] = 137,["190"] = 137,["191"] = 138,["192"] = 138,["194"] = 139,["195"] = 137,["196"] = 137,["197"] = 114,["198"] = 151,["199"] = 151,["200"] = 151,["201"] = 151,["202"] = 152,["203"] = 152,["205"] = 154,["207"] = 155,["208"] = 155,["209"] = 156,["210"] = 157,["211"] = 158,["212"] = 159,["213"] = 160,["214"] = 160,["215"] = 160,["216"] = 161,["217"] = 160,["218"] = 160,["220"] = 164,["221"] = 164,["222"] = 165,["223"] = 166,["224"] = 167,["225"] = 169,["226"] = 169,["227"] = 169,["228"] = 170,["229"] = 169,["230"] = 169,["231"] = 173,["232"] = 173,["233"] = 173,["234"] = 174,["235"] = 173,["236"] = 173,["237"] = 177,["238"] = 177,["239"] = 177,["240"] = 178,["241"] = 178,["243"] = 179,["244"] = 177,["245"] = 177,["246"] = 181,["247"] = 181,["248"] = 181,["249"] = 182,["250"] = 182,["252"] = 184,["253"] = 185,["254"] = 186,["256"] = 189,["257"] = 181,["258"] = 181,["259"] = 191,["260"] = 191,["261"] = 191,["262"] = 192,["263"] = 192,["264"] = 193,["265"] = 194,["267"] = 196,["268"] = 196,["269"] = 196,["271"] = 196,["273"] = 196,["274"] = 191,["275"] = 191,["276"] = 198,["277"] = 198,["278"] = 198,["279"] = 199,["280"] = 199,["281"] = 200,["282"] = 201,["284"] = 203,["285"] = 203,["286"] = 203,["288"] = 203,["290"] = 203,["291"] = 198,["292"] = 198,["293"] = 205,["294"] = 205,["295"] = 205,["296"] = 206,["297"] = 206,["299"] = 207,["300"] = 207,["302"] = 209,["303"] = 210,["304"] = 211,["306"] = 214,["307"] = 205,["308"] = 205,["309"] = 217,["310"] = 217,["311"] = 217,["312"] = 218,["313"] = 217,["314"] = 217,["315"] = 221,["316"] = 221,["317"] = 221,["318"] = 222,["319"] = 221,["320"] = 221,["321"] = 224,["322"] = 224,["323"] = 224,["324"] = 225,["325"] = 224,["326"] = 224,["327"] = 227,["328"] = 227,["329"] = 227,["330"] = 228,["331"] = 227,["332"] = 227,["333"] = 230,["334"] = 230,["335"] = 230,["336"] = 231,["337"] = 231,["338"] = 231,["339"] = 231,["341"] = 232,["342"] = 232,["343"] = 232,["344"] = 232,["346"] = 233,["347"] = 233,["348"] = 233,["349"] = 233,["351"] = 234,["352"] = 234,["353"] = 234,["354"] = 234,["356"] = 235,["357"] = 235,["358"] = 235,["359"] = 235,["361"] = 236,["362"] = 230,["363"] = 230,["364"] = 239,["365"] = 164,["368"] = 155,["371"] = 243,["372"] = 243,["373"] = 243,["374"] = 244,["377"] = 245,["378"] = 245,["379"] = 246,["380"] = 248,["383"] = 252,["385"] = 254,["386"] = 256,["388"] = 259,["389"] = 260,["390"] = 243,["391"] = 243,["392"] = 263,["393"] = 263,["394"] = 263,["395"] = 264,["396"] = 264,["398"] = 265,["399"] = 265,["400"] = 265,["402"] = 266,["403"] = 266,["404"] = 267,["405"] = 267,["407"] = 268,["410"] = 270,["411"] = 263,["412"] = 263,["413"] = 273,["414"] = 273,["415"] = 273,["416"] = 273,["417"] = 274,["418"] = 274,["419"] = 274,["420"] = 274,["421"] = 276,["422"] = 276,["423"] = 276,["424"] = 277,["425"] = 277,["426"] = 277,["427"] = 277,["428"] = 277,["429"] = 276,["430"] = 276,["431"] = 280,["432"] = 280,["433"] = 280,["434"] = 281,["435"] = 282,["436"] = 283,["437"] = 284,["440"] = 287,["442"] = 280,["443"] = 280,["444"] = 44});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigList = ____PetEmoConfig.petEmoConfigList
local petEmoConfigMap = ____PetEmoConfig.petEmoConfigMap
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecPetEmoPage = __TS__Class()
local DDecPetEmoPage = ____exports.DDecPetEmoPage
DDecPetEmoPage.name = "DDecPetEmoPage"
__TS__ClassExtends(DDecPetEmoPage, Dialog)
function DDecPetEmoPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0, emojiIndex = 0}
end
function DDecPetEmoPage.prototype.onCreate(self)
    self:initView()
end
function DDecPetEmoPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["PetEmo_宠物表情"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["PetEmo_宠物表情"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetEmoPage.prototype.onShow(self)
end
function DDecPetEmoPage.prototype.onHide(self)
end
function DDecPetEmoPage.prototype.initDetails(self)
    local emojies = self:compute(function()
        local list = {}
        do
            local index = 0
            while index < 4 do
                local emoji = archive.petData.cur_emoji["" .. tostring(index + 1)]
                if emoji == nil or emoji == 0 then
                    list[#list + 1] = {cfg = nil, name = "未设置"}
                else
                    local cfg = petEmoConfigMap[emoji]
                    list[#list + 1] = {cfg = cfg, name = cfg.name}
                end
                index = index + 1
            end
        end
        return list
    end)
    do
        local index = 0
        while index < 4 do
            local idx = index
            local path = "root.panel.emoji_" .. tostring(idx + 1)
            self:bindImage(
                path .. ".icon",
                function()
                    local cfg = emojies.value[idx + 1].cfg
                    if cfg == nil then
                        return 0
                    end
                    return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                end
            )
            self:bindSeq(
                path .. ".seq",
                function()
                    if localData.decoration.tabIndex ~= DecorationType["PetEmo_宠物表情"] then
                        return 0
                    end
                    y3.ltimer.wait(
                        0.1,
                        function()
                            self:getUI(path .. ".seq"):play_ui_sequence(true)
                        end
                    )
                    local cfg = emojies.value[idx + 1].cfg
                    if cfg == nil then
                        return 0
                    end
                    return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                end
            )
            self:bindVisible(
                path .. ".icon",
                function()
                    local cfg = emojies.value[idx + 1].cfg
                    if cfg == nil then
                        return false
                    end
                    local ____temp_0
                    if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                        ____temp_0 = cfg.enType == 1
                    else
                        ____temp_0 = cfg.type == 1
                    end
                    return ____temp_0
                end
            )
            self:bindVisible(
                path .. ".seq",
                function()
                    local cfg = emojies.value[idx + 1].cfg
                    if cfg == nil then
                        return false
                    end
                    local ____temp_1
                    if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                        ____temp_1 = cfg.enType == 2
                    else
                        ____temp_1 = cfg.type == 2
                    end
                    return ____temp_1
                end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.selectIndex == idx end
            )
            self:bindClick(
                path,
                function()
                    self.data.selectIndex = idx
                    return idx
                end
            )
            index = index + 1
        end
    end
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = petEmoConfigList
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 then
                        goto __continue28
                    end
                    local info = archive.petData.emojies["" .. tostring(element.id)]
                    local seat = -1
                    if archive.petData.cur_emoji["1"] == element.id then
                        seat = 1
                    end
                    if archive.petData.cur_emoji["2"] == element.id then
                        seat = 2
                    end
                    if archive.petData.cur_emoji["3"] == element.id then
                        seat = 3
                    end
                    if archive.petData.cur_emoji["4"] == element.id then
                        seat = 4
                    end
                    list2[#list2 + 1] = {cfg = element, select = seat > 0, seat = seat, unlock = info == true}
                end
                ::__continue28::
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
                            self.data.emojiIndex = temp_idx
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
                            local cfg = list.value[temp_idx + 1].cfg
                            if cfg == nil then
                                return 0
                            end
                            return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                        end
                    )
                    self:bindVisible(
                        path .. ".icon",
                        function()
                            local ____opt_2 = list.value[temp_idx + 1]
                            local cfg = ____opt_2 and ____opt_2.cfg
                            if cfg == nil then
                                return false
                            end
                            local ____temp_4
                            if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                                ____temp_4 = cfg.enType == 1
                            else
                                ____temp_4 = cfg.type == 1
                            end
                            return ____temp_4
                        end
                    )
                    self:bindVisible(
                        path .. ".seq",
                        function()
                            local ____opt_5 = list.value[temp_idx + 1]
                            local cfg = ____opt_5 and ____opt_5.cfg
                            if cfg == nil then
                                return false
                            end
                            local ____temp_7
                            if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                                ____temp_7 = cfg.enType == 2
                            else
                                ____temp_7 = cfg.type == 2
                            end
                            return ____temp_7
                        end
                    )
                    self:bindSeq(
                        path .. ".seq",
                        function()
                            if localData.decoration.tabIndex ~= DecorationType["PetEmo_宠物表情"] then
                                return 0
                            end
                            if list.value[temp_idx + 1] == nil then
                                return 0
                            end
                            local cfg = list.value[temp_idx + 1].cfg
                            if cfg == nil then
                                return 0
                            end
                            return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                        end
                    )
                    y3.ltimer.wait(
                        0.1,
                        function()
                            self:getUI(path .. ".seq"):play_ui_sequence(true)
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
                            return self.data.emojiIndex == temp_idx
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
                            local ____opt_10 = list.value[temp_idx + 1]
                            local ____opt_8 = ____opt_10 and ____opt_10.cfg
                            if (____opt_8 and ____opt_8.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_14 = list.value[temp_idx + 1]
                            local ____opt_12 = ____opt_14 and ____opt_14.cfg
                            if (____opt_12 and ____opt_12.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_18 = list.value[temp_idx + 1]
                            local ____opt_16 = ____opt_18 and ____opt_18.cfg
                            if (____opt_16 and ____opt_16.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_22 = list.value[temp_idx + 1]
                            local ____opt_20 = ____opt_22 and ____opt_22.cfg
                            if (____opt_20 and ____opt_20.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_26 = list.value[temp_idx + 1]
                            local ____opt_24 = ____opt_26 and ____opt_26.cfg
                            if (____opt_24 and ____opt_24.quality) == 4 then
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
    self:bindClick(
        "root.center.use",
        function()
            if not list.value[self.data.emojiIndex + 1].unlock then
                return
            end
            local ____opt_28 = emojies.value[self.data.selectIndex + 1]
            if (____opt_28 and ____opt_28.cfg) ~= nil then
                if list.value[self.data.emojiIndex + 1].cfg.id == emojies.value[self.data.selectIndex + 1].cfg.id then
                    heroSkinManager:replacePetEmoji(0, self.data.selectIndex + 1)
                    return
                end
                heroSkinManager:replacePetEmoji(0, self.data.selectIndex + 1)
            end
            if list.value[self.data.emojiIndex + 1].seat > 0 then
                heroSkinManager:replacePetEmoji(0, list.value[self.data.emojiIndex + 1].seat)
            end
            heroSkinManager:replacePetEmoji(list.value[self.data.emojiIndex + 1].cfg.id, self.data.selectIndex + 1)
            console:log(list.value[self.data.emojiIndex + 1].cfg.id, self.data.selectIndex)
        end
    )
    self:bindText(
        "root.center.use.title",
        function()
            if not list.value[self.data.emojiIndex + 1].unlock then
                return i18n["local"](i18n, "使用")
            end
            local ____opt_30 = emojies.value[self.data.selectIndex + 1]
            if (____opt_30 and ____opt_30.cfg) == nil then
                return i18n["local"](i18n, "使用")
            end
            local ____opt_32 = emojies.value[self.data.selectIndex + 1]
            if (____opt_32 and ____opt_32.cfg) ~= nil then
                if list.value[self.data.emojiIndex + 1].cfg.id ~= emojies.value[self.data.selectIndex + 1].cfg.id then
                    return i18n["local"](i18n, "替换")
                else
                    return i18n["local"](i18n, "卸下")
                end
            end
            return i18n["local"](i18n, "使用")
        end
    )
    self:bindVisible(
        "root.center.use",
        function() return list.value[self.data.emojiIndex + 1].unlock end
    )
    self:bindVisible(
        "root.center.buy",
        function() return list.value[self.data.emojiIndex + 1].unlock ~= true end
    )
    self:bindText(
        "root.center.dec.text",
        function()
            local ____i18n_38 = i18n
            local ____i18n_format_39 = i18n.format
            local ____opt_36 = list.value[self.data.selectIndex + 1]
            local ____opt_34 = ____opt_36 and ____opt_36.cfg
            return ____i18n_format_39(____i18n_38, "装饰度：${value}", {value = ____opt_34 and ____opt_34.decorate or 0})
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                local data = list.value[self.data.emojiIndex + 1]
                if data ~= nil then
                    steamUtils:gotoShop(19, data.cfg.id)
                end
            else
                DTips:show(i18n["local"](i18n, "请前往商城购买"))
            end
        end
    )
end
return ____exports
