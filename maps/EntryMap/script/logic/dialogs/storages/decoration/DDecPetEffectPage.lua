local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 14,["34"] = 14,["35"] = 14,["36"] = 14,["38"] = 14,["39"] = 15,["40"] = 14,["41"] = 22,["42"] = 23,["43"] = 22,["44"] = 26,["46"] = 27,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 28,["54"] = 30,["56"] = 26,["57"] = 33,["58"] = 33,["59"] = 35,["60"] = 36,["61"] = 35,["62"] = 39,["63"] = 42,["64"] = 43,["65"] = 45,["66"] = 46,["67"] = 47,["69"] = 48,["70"] = 48,["72"] = 49,["73"] = 50,["74"] = 50,["76"] = 51,["77"] = 52,["80"] = 48,["83"] = 59,["84"] = 59,["85"] = 59,["86"] = 60,["87"] = 60,["89"] = 61,["90"] = 59,["91"] = 59,["92"] = 45,["93"] = 77,["95"] = 78,["96"] = 78,["97"] = 79,["98"] = 80,["99"] = 81,["100"] = 82,["101"] = 83,["102"] = 83,["103"] = 83,["104"] = 84,["105"] = 83,["106"] = 83,["108"] = 87,["109"] = 87,["110"] = 88,["111"] = 89,["112"] = 90,["113"] = 92,["114"] = 92,["115"] = 92,["116"] = 93,["117"] = 94,["118"] = 92,["119"] = 92,["120"] = 97,["121"] = 97,["122"] = 97,["123"] = 98,["124"] = 97,["125"] = 97,["126"] = 101,["127"] = 101,["128"] = 101,["129"] = 102,["130"] = 102,["132"] = 103,["133"] = 101,["134"] = 101,["135"] = 105,["136"] = 105,["137"] = 105,["138"] = 106,["139"] = 106,["141"] = 107,["142"] = 105,["143"] = 105,["144"] = 109,["145"] = 109,["146"] = 109,["147"] = 110,["148"] = 109,["149"] = 109,["150"] = 112,["151"] = 112,["152"] = 112,["153"] = 113,["154"] = 112,["155"] = 112,["156"] = 115,["157"] = 115,["158"] = 115,["159"] = 116,["160"] = 115,["161"] = 115,["162"] = 118,["163"] = 118,["164"] = 118,["165"] = 119,["166"] = 119,["167"] = 119,["168"] = 119,["170"] = 120,["171"] = 120,["172"] = 120,["173"] = 120,["175"] = 121,["176"] = 121,["177"] = 121,["178"] = 121,["180"] = 122,["181"] = 122,["182"] = 122,["183"] = 122,["185"] = 123,["186"] = 123,["187"] = 123,["188"] = 123,["190"] = 124,["191"] = 118,["192"] = 118,["193"] = 127,["194"] = 87,["197"] = 78,["200"] = 131,["201"] = 131,["202"] = 131,["203"] = 132,["204"] = 131,["205"] = 131,["206"] = 134,["207"] = 134,["208"] = 134,["209"] = 135,["210"] = 134,["211"] = 134,["212"] = 137,["213"] = 137,["214"] = 137,["215"] = 138,["216"] = 137,["217"] = 137,["218"] = 141,["219"] = 141,["220"] = 141,["221"] = 144,["222"] = 145,["223"] = 146,["224"] = 147,["227"] = 150,["229"] = 141,["230"] = 141,["231"] = 154,["232"] = 154,["233"] = 154,["234"] = 155,["235"] = 156,["236"] = 157,["238"] = 159,["239"] = 160,["241"] = 154,["242"] = 154,["243"] = 163,["244"] = 163,["245"] = 163,["246"] = 164,["247"] = 165,["249"] = 167,["250"] = 163,["251"] = 163,["252"] = 163,["253"] = 163,["254"] = 170,["255"] = 170,["256"] = 170,["257"] = 171,["258"] = 171,["259"] = 171,["260"] = 171,["261"] = 171,["262"] = 170,["263"] = 170,["264"] = 39,["265"] = 176,["266"] = 177,["267"] = 179,["268"] = 180,["269"] = 181,["270"] = 181,["271"] = 181,["272"] = 182,["273"] = 182,["274"] = 182,["275"] = 182,["276"] = 182,["277"] = 182,["278"] = 181,["279"] = 181,["280"] = 176});
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
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigList = ____PetEffectConfig.petEffectConfigList
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecPetEffectPage = __TS__Class()
local DDecPetEffectPage = ____exports.DDecPetEffectPage
DDecPetEffectPage.name = "DDecPetEffectPage"
__TS__ClassExtends(DDecPetEffectPage, Dialog)
function DDecPetEffectPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0}
end
function DDecPetEffectPage.prototype.onCreate(self)
    self:initView()
end
function DDecPetEffectPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["PetEffect_宠物粒子"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["PetEffect_宠物粒子"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetEffectPage.prototype.onShow(self)
end
function DDecPetEffectPage.prototype.onHide(self)
    self:getUI("root.center.model"):set_ui_model_id(0)
end
function DDecPetEffectPage.prototype.initDetails(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = petEffectConfigList
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                        goto __continue11
                    end
                    local info = archive.petData.effects["" .. tostring(element.id)]
                    list2[#list2 + 1] = {cfg = element, select = archive.petData.cur_effect == element.id, unlock = info == true}
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
                            self:change(list.value[self.data.selectIndex + 1].cfg.effect)
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
                    steamUtils:gotoShop(18, data.cfg.id)
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
                heroSkinManager:replacePetEffect(0)
                createUnitController.changeEffect:execute(LOCAL.PLAYER_ID, 0)
            else
                heroSkinManager:replacePetEffect(list.value[self.data.selectIndex + 1].cfg.id)
                createUnitController.changeEffect:execute(LOCAL.PLAYER_ID, list.value[self.data.selectIndex + 1].cfg.effect)
            end
        end
    )
    self:watch(
        function() return localData.decoration.tabIndex == DecorationType["PetEffect_宠物粒子"] end,
        function(____, v)
            if v then
                self:change(list.value[self.data.selectIndex + 1].cfg.effect)
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
function DDecPetEffectPage.prototype.change(self, wing)
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
