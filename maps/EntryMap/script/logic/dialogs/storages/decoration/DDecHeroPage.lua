local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 14,["32"] = 14,["33"] = 14,["34"] = 14,["36"] = 14,["37"] = 15,["38"] = 47,["39"] = 227,["40"] = 14,["41"] = 22,["42"] = 23,["43"] = 22,["44"] = 26,["45"] = 27,["46"] = 27,["47"] = 27,["48"] = 28,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 30,["53"] = 29,["54"] = 29,["55"] = 32,["57"] = 34,["58"] = 27,["59"] = 27,["60"] = 37,["61"] = 26,["62"] = 41,["63"] = 41,["64"] = 44,["65"] = 44,["66"] = 52,["67"] = 54,["68"] = 55,["69"] = 57,["70"] = 57,["71"] = 57,["72"] = 57,["73"] = 59,["74"] = 60,["76"] = 61,["77"] = 61,["78"] = 62,["79"] = 63,["80"] = 64,["81"] = 64,["82"] = 64,["83"] = 67,["84"] = 67,["85"] = 67,["86"] = 64,["87"] = 64,["88"] = 61,["91"] = 72,["92"] = 72,["93"] = 72,["94"] = 73,["95"] = 74,["96"] = 74,["98"] = 75,["99"] = 75,["102"] = 77,["103"] = 78,["105"] = 80,["106"] = 81,["108"] = 83,["109"] = 72,["110"] = 72,["111"] = 59,["112"] = 86,["113"] = 92,["115"] = 93,["116"] = 93,["117"] = 94,["118"] = 95,["119"] = 96,["120"] = 97,["121"] = 98,["122"] = 98,["123"] = 98,["124"] = 99,["125"] = 98,["126"] = 98,["128"] = 102,["129"] = 102,["130"] = 103,["131"] = 104,["132"] = 105,["133"] = 107,["134"] = 107,["135"] = 107,["136"] = 108,["137"] = 107,["138"] = 107,["139"] = 111,["140"] = 111,["141"] = 111,["142"] = 112,["143"] = 111,["144"] = 111,["145"] = 115,["146"] = 115,["147"] = 115,["148"] = 116,["149"] = 116,["151"] = 117,["152"] = 115,["153"] = 115,["154"] = 119,["155"] = 119,["156"] = 119,["157"] = 120,["158"] = 120,["160"] = 121,["161"] = 119,["162"] = 119,["163"] = 123,["164"] = 123,["165"] = 123,["166"] = 124,["167"] = 124,["169"] = 125,["170"] = 126,["171"] = 127,["173"] = 129,["175"] = 123,["176"] = 123,["177"] = 135,["178"] = 135,["179"] = 135,["180"] = 136,["181"] = 135,["182"] = 135,["183"] = 138,["184"] = 138,["185"] = 138,["186"] = 139,["187"] = 138,["188"] = 138,["189"] = 142,["190"] = 142,["191"] = 142,["192"] = 143,["193"] = 143,["195"] = 144,["196"] = 144,["198"] = 145,["199"] = 145,["201"] = 146,["202"] = 146,["204"] = 147,["205"] = 147,["207"] = 148,["208"] = 148,["210"] = 149,["211"] = 142,["212"] = 142,["213"] = 151,["214"] = 151,["215"] = 151,["216"] = 152,["217"] = 152,["219"] = 153,["220"] = 153,["222"] = 154,["223"] = 154,["225"] = 155,["226"] = 155,["228"] = 156,["229"] = 156,["231"] = 157,["232"] = 157,["234"] = 158,["235"] = 151,["236"] = 151,["237"] = 161,["238"] = 161,["239"] = 161,["240"] = 162,["241"] = 162,["243"] = 163,["244"] = 163,["246"] = 164,["247"] = 164,["249"] = 165,["250"] = 165,["252"] = 166,["253"] = 166,["255"] = 167,["256"] = 167,["258"] = 168,["259"] = 161,["260"] = 161,["261"] = 170,["262"] = 170,["263"] = 170,["264"] = 171,["265"] = 171,["267"] = 172,["268"] = 172,["270"] = 173,["271"] = 173,["273"] = 174,["274"] = 174,["276"] = 175,["277"] = 175,["279"] = 176,["280"] = 176,["282"] = 177,["283"] = 170,["284"] = 170,["285"] = 180,["286"] = 102,["289"] = 93,["292"] = 184,["293"] = 184,["294"] = 184,["295"] = 185,["298"] = 188,["299"] = 184,["300"] = 184,["301"] = 184,["302"] = 184,["303"] = 191,["304"] = 191,["305"] = 191,["306"] = 192,["307"] = 192,["309"] = 193,["310"] = 193,["312"] = 194,["313"] = 191,["314"] = 191,["315"] = 196,["316"] = 196,["317"] = 196,["318"] = 197,["319"] = 197,["321"] = 198,["322"] = 196,["323"] = 196,["324"] = 200,["325"] = 200,["326"] = 200,["327"] = 201,["328"] = 201,["330"] = 202,["331"] = 200,["332"] = 200,["333"] = 205,["334"] = 205,["335"] = 205,["336"] = 206,["337"] = 205,["338"] = 205,["339"] = 209,["340"] = 209,["341"] = 209,["342"] = 212,["343"] = 213,["344"] = 214,["345"] = 215,["348"] = 218,["350"] = 209,["351"] = 209,["352"] = 222,["353"] = 222,["354"] = 222,["355"] = 223,["356"] = 223,["357"] = 223,["358"] = 223,["359"] = 223,["360"] = 222,["361"] = 222,["362"] = 52,["363"] = 228,["364"] = 229,["367"] = 231,["368"] = 231,["370"] = 233,["371"] = 233,["372"] = 233,["373"] = 234,["374"] = 234,["375"] = 234,["376"] = 234,["377"] = 234,["378"] = 234,["379"] = 234,["380"] = 234,["381"] = 234,["382"] = 234,["383"] = 235,["384"] = 235,["385"] = 235,["386"] = 235,["387"] = 235,["388"] = 235,["389"] = 236,["390"] = 233,["391"] = 233,["392"] = 228});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigList = ____SkinConfig.skinConfigList
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecHeroPage = __TS__Class()
local DDecHeroPage = ____exports.DDecHeroPage
DDecHeroPage.name = "DDecHeroPage"
__TS__ClassExtends(DDecHeroPage, Dialog)
function DDecHeroPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0}
    self.list = nil
    self.timer = nil
end
function DDecHeroPage.prototype.onCreate(self)
    self:initView()
end
function DDecHeroPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function()
            if localData.decoration.tabIndex == DecorationType["HeroSkin_英雄皮肤"] then
                y3.ltimer.wait_frame(
                    1,
                    function()
                        self:showEffect(self.list.value[self.data.selectIndex + 1].cfg)
                    end
                )
                return true
            end
            return false
        end
    )
    self:initDetails()
end
function DDecHeroPage.prototype.onShow(self)
end
function DDecHeroPage.prototype.onHide(self)
end
function DDecHeroPage.prototype.initDetails(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local skins = __TS__ArrayFilter(
        skinConfigList,
        function(____, a) return not a.isDefault and a.ban == 0 end
    )
    local list = self:compute(function()
        local list2 = {}
        do
            local index = 0
            while index < #skins do
                local element = skins[index + 1]
                local info = archive.playerData.heroes["" .. tostring(element.hero)]
                list2[#list2 + 1] = {
                    cfg = element,
                    select = false,
                    unlock = __TS__ArrayFindIndex(
                        info.unlock_skin,
                        function(____, a) return a == element.id end
                    ) ~= -1
                }
                index = index + 1
            end
        end
        return __TS__ArraySort(
            list2,
            function(____, a, b)
                if a.unlock ~= b.unlock then
                    if a.unlock then
                        return -1
                    end
                    if b.unlock then
                        return 1
                    end
                end
                if a.cfg.quality ~= b.cfg.quality then
                    return b.cfg.quality - a.cfg.quality
                end
                if a.cfg.showId ~= b.cfg.showId then
                    return a.cfg.showId - b.cfg.showId
                end
                return a.cfg.id - b.cfg.id
            end
        )
    end)
    self.list = list
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
                            return heroConfigMap[list.value[temp_idx + 1].cfg.hero].showName.value
                        end
                    )
                    self:bindText(
                        path .. ".skinName",
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
                            local skin = list.value[temp_idx + 1].cfg
                            if i18n.currentLang == "en" and skin.enPic ~= 0 then
                                return skin.enPic
                            else
                                return skin.pic
                            end
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
                            if list.value[temp_idx + 1] == nil then
                                return 134270568
                            end
                            if list.value[temp_idx + 1].cfg.quality == 0 then
                                return 134270568
                            end
                            if list.value[temp_idx + 1].cfg.quality == 1 then
                                return 134277873
                            end
                            if list.value[temp_idx + 1].cfg.quality == 2 then
                                return 134247885
                            end
                            if list.value[temp_idx + 1].cfg.quality == 3 then
                                return 134277993
                            end
                            if list.value[temp_idx + 1].cfg.quality == 4 then
                                return 134256318
                            end
                            return 134270568
                        end
                    )
                    self:bindImage(
                        path .. ".bg2",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return 134249910
                            end
                            if list.value[temp_idx + 1].cfg.quality == 0 then
                                return 134249910
                            end
                            if list.value[temp_idx + 1].cfg.quality == 1 then
                                return 134263292
                            end
                            if list.value[temp_idx + 1].cfg.quality == 2 then
                                return 134255313
                            end
                            if list.value[temp_idx + 1].cfg.quality == 3 then
                                return 134257619
                            end
                            if list.value[temp_idx + 1].cfg.quality == 4 then
                                return 134247032
                            end
                            return 134249910
                        end
                    )
                    self:bindTextColor(
                        path .. ".skinName",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return UIUtils:toColor("c7cbd9")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 0 then
                                return UIUtils:toColor("c7cbd9")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 1 then
                                return UIUtils:toColor("a6c7ff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 2 then
                                return UIUtils:toColor("c9acff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 3 then
                                return UIUtils:toColor("ffd3a3")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 4 then
                                return UIUtils:toColor("ffb9b9")
                            end
                            return UIUtils:toColor("a6c7ff")
                        end
                    )
                    self:bindTextColor(
                        path .. ".name",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 0 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 1 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 2 then
                                return UIUtils:toColor("f22fff")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 3 then
                                return UIUtils:toColor("fff8ee")
                            end
                            if list.value[temp_idx + 1].cfg.quality == 4 then
                                return UIUtils:toColor("fff8ee")
                            end
                            return UIUtils:toColor("ecf2ff")
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
    self:watch(
        function() return list.value[self.data.selectIndex + 1] end,
        function(____, v, o)
            if v == o then
                return
            end
            self:showEffect(v.cfg)
        end,
        false,
        true
    )
    self:bindModel(
        "root.center.model",
        function()
            if localData.decoration.tabIndex ~= DecorationType["HeroSkin_英雄皮肤"] then
                return 0
            end
            if list.value[self.data.selectIndex + 1].cfg.banModel == 1 then
                return 0
            end
            return list.value[self.data.selectIndex + 1].cfg.role or 0
        end
    )
    self:bindVisible(
        "root.center.tips",
        function()
            if list.value[self.data.selectIndex + 1].cfg.banModel == 1 then
                return true
            end
            return false
        end
    )
    self:bindVisible(
        "root.center.model",
        function()
            if list.value[self.data.selectIndex + 1].cfg.banModel == 1 then
                return false
            end
            return true
        end
    )
    self:bindVisible(
        "root.center.buy",
        function()
            return list.value[self.data.selectIndex + 1].unlock ~= true
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                local data = list.value[self.data.selectIndex + 1]
                if data ~= nil then
                    steamUtils:gotoShop(11, data.cfg.id)
                end
            else
                DTips:show(i18n["local"](i18n, "请前往商城购买"))
            end
        end
    )
    self:bindText(
        "root.center.dec.text",
        function()
            local ____i18n_4 = i18n
            local ____i18n_format_5 = i18n.format
            local ____opt_2 = list.value[self.data.selectIndex + 1]
            local ____opt_0 = ____opt_2 and ____opt_2.cfg
            return ____i18n_format_5(____i18n_4, "装饰度：${value}", {value = ____opt_0 and ____opt_0.decorate or 0})
        end
    )
end
function DDecHeroPage.prototype.showEffect(self, cfg)
    if cfg == nil then
        return
    end
    if self.timer ~= nil then
        self.timer:remove()
    end
    self.timer = y3.ltimer.wait_frame(
        15,
        function()
            GameAPI.play_ui_model_anim(
                LOCAL.PLAYER.handle,
                self:getUI("root.center.model").handle,
                cfg.uiBornAnime,
                1,
                0,
                -1,
                false,
                true
            )
            GameAPI.set_modifier_on_ui_model(
                cfg.roleEffect,
                0,
                LOCAL.PLAYER.handle,
                self:getUI("root.center.model").handle
            )
            self.timer = nil
        end
    )
end
return ____exports
