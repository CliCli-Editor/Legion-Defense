local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayUnshift = ____lualib.__TS__ArrayUnshift
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 11,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["42"] = 15,["43"] = 16,["44"] = 37,["45"] = 367,["46"] = 15,["47"] = 49,["48"] = 50,["49"] = 49,["50"] = 53,["52"] = 54,["53"] = 54,["54"] = 54,["55"] = 54,["56"] = 56,["57"] = 56,["58"] = 56,["59"] = 56,["60"] = 57,["61"] = 58,["62"] = 59,["64"] = 53,["65"] = 63,["66"] = 63,["67"] = 65,["68"] = 65,["69"] = 68,["71"] = 70,["72"] = 70,["73"] = 71,["74"] = 72,["75"] = 73,["76"] = 75,["77"] = 76,["79"] = 77,["80"] = 77,["81"] = 78,["82"] = 79,["83"] = 80,["84"] = 81,["85"] = 82,["86"] = 82,["87"] = 82,["88"] = 83,["89"] = 82,["90"] = 82,["92"] = 86,["93"] = 86,["94"] = 87,["95"] = 88,["96"] = 89,["97"] = 90,["98"] = 86,["101"] = 77,["104"] = 70,["107"] = 68,["108"] = 96,["109"] = 98,["110"] = 98,["111"] = 98,["112"] = 99,["113"] = 99,["115"] = 100,["116"] = 98,["117"] = 98,["118"] = 104,["119"] = 104,["120"] = 104,["121"] = 105,["122"] = 105,["124"] = 106,["125"] = 107,["127"] = 113,["128"] = 114,["129"] = 104,["130"] = 104,["131"] = 120,["132"] = 120,["133"] = 120,["134"] = 121,["135"] = 121,["137"] = 122,["138"] = 123,["140"] = 125,["141"] = 126,["142"] = 120,["143"] = 120,["144"] = 128,["145"] = 128,["146"] = 128,["147"] = 129,["148"] = 129,["150"] = 130,["151"] = 131,["153"] = 137,["154"] = 138,["155"] = 128,["156"] = 128,["157"] = 145,["158"] = 145,["159"] = 145,["160"] = 146,["163"] = 149,["164"] = 145,["165"] = 145,["166"] = 145,["167"] = 145,["168"] = 152,["169"] = 152,["170"] = 152,["171"] = 153,["172"] = 152,["173"] = 152,["174"] = 155,["175"] = 155,["176"] = 155,["177"] = 156,["178"] = 155,["179"] = 155,["180"] = 158,["181"] = 158,["182"] = 158,["183"] = 159,["184"] = 158,["185"] = 158,["186"] = 162,["187"] = 162,["188"] = 162,["189"] = 164,["190"] = 165,["191"] = 166,["192"] = 167,["195"] = 170,["197"] = 162,["198"] = 162,["199"] = 173,["200"] = 173,["201"] = 173,["202"] = 174,["203"] = 173,["204"] = 173,["205"] = 177,["206"] = 177,["207"] = 177,["208"] = 178,["209"] = 178,["210"] = 178,["211"] = 178,["212"] = 177,["213"] = 177,["214"] = 96,["215"] = 182,["216"] = 183,["217"] = 184,["218"] = 186,["219"] = 187,["220"] = 187,["222"] = 188,["223"] = 189,["224"] = 190,["225"] = 190,["226"] = 190,["227"] = 190,["228"] = 190,["230"] = 191,["231"] = 191,["232"] = 191,["233"] = 191,["234"] = 191,["235"] = 191,["236"] = 191,["237"] = 191,["238"] = 191,["239"] = 191,["240"] = 201,["241"] = 186,["242"] = 204,["244"] = 205,["245"] = 205,["246"] = 206,["247"] = 207,["248"] = 208,["249"] = 209,["250"] = 210,["251"] = 210,["252"] = 210,["253"] = 211,["254"] = 210,["255"] = 210,["257"] = 214,["258"] = 214,["259"] = 215,["260"] = 216,["261"] = 217,["262"] = 219,["263"] = 220,["264"] = 220,["265"] = 220,["266"] = 220,["267"] = 220,["268"] = 220,["269"] = 220,["270"] = 220,["271"] = 220,["272"] = 220,["273"] = 220,["274"] = 220,["275"] = 220,["277"] = 232,["278"] = 234,["279"] = 236,["280"] = 236,["281"] = 236,["282"] = 236,["283"] = 236,["284"] = 236,["285"] = 236,["286"] = 236,["287"] = 236,["288"] = 236,["289"] = 236,["290"] = 236,["291"] = 236,["292"] = 219,["293"] = 251,["294"] = 251,["295"] = 251,["296"] = 252,["297"] = 253,["298"] = 251,["299"] = 251,["300"] = 260,["301"] = 260,["302"] = 260,["303"] = 261,["304"] = 260,["305"] = 260,["306"] = 264,["307"] = 264,["308"] = 264,["309"] = 265,["310"] = 265,["311"] = 264,["312"] = 264,["313"] = 267,["314"] = 267,["315"] = 267,["316"] = 268,["317"] = 267,["318"] = 267,["319"] = 270,["320"] = 270,["321"] = 270,["322"] = 271,["323"] = 270,["324"] = 270,["325"] = 273,["326"] = 273,["327"] = 273,["328"] = 274,["329"] = 273,["330"] = 273,["331"] = 276,["332"] = 276,["333"] = 276,["334"] = 277,["335"] = 276,["336"] = 276,["337"] = 279,["338"] = 279,["339"] = 279,["340"] = 280,["341"] = 279,["342"] = 279,["343"] = 283,["344"] = 283,["345"] = 283,["346"] = 284,["347"] = 284,["349"] = 285,["350"] = 285,["352"] = 286,["353"] = 286,["355"] = 287,["356"] = 287,["358"] = 288,["359"] = 288,["361"] = 289,["362"] = 289,["364"] = 290,["365"] = 283,["366"] = 283,["367"] = 292,["368"] = 292,["369"] = 292,["370"] = 293,["371"] = 293,["373"] = 294,["374"] = 294,["376"] = 295,["377"] = 295,["379"] = 296,["380"] = 296,["382"] = 297,["383"] = 297,["385"] = 298,["386"] = 298,["388"] = 299,["389"] = 292,["390"] = 292,["391"] = 302,["392"] = 302,["393"] = 302,["394"] = 303,["395"] = 303,["397"] = 304,["398"] = 304,["400"] = 305,["401"] = 305,["403"] = 306,["404"] = 306,["406"] = 307,["407"] = 307,["409"] = 308,["410"] = 308,["412"] = 309,["413"] = 302,["414"] = 302,["415"] = 311,["416"] = 311,["417"] = 311,["418"] = 312,["419"] = 312,["421"] = 313,["422"] = 313,["424"] = 314,["425"] = 314,["427"] = 315,["428"] = 315,["430"] = 316,["431"] = 316,["433"] = 317,["434"] = 317,["436"] = 318,["437"] = 311,["438"] = 311,["439"] = 321,["440"] = 322,["442"] = 325,["443"] = 325,["444"] = 326,["445"] = 214,["448"] = 205,["451"] = 182,["452"] = 332,["453"] = 333,["454"] = 333,["455"] = 333,["456"] = 334,["457"] = 333,["458"] = 333,["459"] = 337,["460"] = 337,["461"] = 337,["462"] = 338,["463"] = 339,["464"] = 339,["466"] = 340,["467"] = 337,["468"] = 337,["469"] = 342,["470"] = 342,["471"] = 342,["472"] = 343,["473"] = 342,["474"] = 342,["475"] = 346,["476"] = 346,["477"] = 346,["478"] = 347,["479"] = 346,["480"] = 346,["481"] = 349,["482"] = 349,["483"] = 349,["484"] = 350,["485"] = 349,["486"] = 349,["487"] = 352,["488"] = 352,["489"] = 352,["490"] = 353,["491"] = 352,["492"] = 352,["493"] = 356,["494"] = 356,["495"] = 356,["496"] = 357,["497"] = 358,["498"] = 359,["499"] = 356,["500"] = 356,["501"] = 362,["502"] = 363,["504"] = 332,["505"] = 368,["506"] = 369,["509"] = 371,["510"] = 371,["512"] = 373,["513"] = 373,["514"] = 373,["515"] = 374,["516"] = 374,["517"] = 374,["518"] = 374,["519"] = 374,["520"] = 374,["521"] = 375,["522"] = 373,["523"] = 373,["524"] = 368});
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
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigMap_rarity = ____MercenaryConfig.mercenaryConfigMap_rarity
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
local skinMercenaryConfigMap_mercenaryId = ____SkinMercenaryConfig.skinMercenaryConfigMap_mercenaryId
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DDecMercenaryPage = __TS__Class()
local DDecMercenaryPage = ____exports.DDecMercenaryPage
DDecMercenaryPage.name = "DDecMercenaryPage"
__TS__ClassExtends(DDecMercenaryPage, Dialog)
function DDecMercenaryPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {cfg = nil, current = nil, selectIndex = 0}
    self.skinList = {}
    self.timer = nil
end
function DDecMercenaryPage.prototype.onCreate(self)
    self:initView()
end
function DDecMercenaryPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["MercenarySkin_佣兵皮肤"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["MercenarySkin_佣兵皮肤"] end,
            function(____, v) return v end
        ))
        self:initLeft()
        self:initRight()
        self:initCenter()
    end)
end
function DDecMercenaryPage.prototype.onShow(self)
end
function DDecMercenaryPage.prototype.onHide(self)
end
function DDecMercenaryPage.prototype.initLeft(self)
    do
        local index = 0
        while index < 5 do
            local element = index
            local root = "root.left.list.list" .. tostring(element + 1)
            local childrens = self:getUI(root):get_childs()
            local list = mercenaryConfigMap_rarity[element + 1]
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
                            return #list > temp_i
                        end
                    )
                    do
                        local index = 0
                        while index < #childs do
                            local cld = childs[index + 1]
                            local path = (path1 .. ".") .. cld:get_name()
                            self:updateMercenary(path, list[idx + 1])
                            idx = idx + 1
                            index = index + 1
                        end
                    end
                    i = i + 1
                end
            end
            index = index + 1
        end
    end
end
function DDecMercenaryPage.prototype.initCenter(self)
    self:bindModel(
        "root.center.model",
        function()
            if localData.decoration.tabIndex ~= DecorationType["MercenarySkin_佣兵皮肤"] then
                return 0
            end
            return self.data.current.role
        end
    )
    self:bindModelCamera(
        "root.center.model",
        function()
            if self.data.current == nil then
                return {x = 0, y = 0, z = 0}
            end
            if self.data.current.skinId == 0 then
                return {x = self.data.cfg.detailoffset[1], y = self.data.cfg.detailoffset[2], z = self.data.cfg.detailoffset[3]}
            end
            local cfg = skinMercenaryConfigMap[self.data.current.skinId]
            return {x = cfg.detailoffset[1], y = cfg.detailoffset[2], z = cfg.detailoffset[3]}
        end
    )
    self:bindModelFov(
        "root.center.model",
        function()
            if self.data.current == nil then
                return 0
            end
            if self.data.current.skinId == 0 then
                return self.data.cfg.detailviewport
            end
            local cfg = skinMercenaryConfigMap[self.data.current.skinId]
            return cfg.detailviewport
        end
    )
    self:bindModelFocus(
        "root.center.model",
        function()
            if self.data.current == nil then
                return {x = 0, y = 0, z = 0}
            end
            if self.data.current.skinId == 0 then
                return {x = self.data.cfg.detailCamera[1], y = self.data.cfg.detailCamera[2], z = self.data.cfg.detailCamera[3]}
            end
            local cfg = skinMercenaryConfigMap[self.data.current.skinId]
            return {x = cfg.detailCamera[1], y = cfg.detailCamera[2], z = cfg.detailCamera[3]}
        end
    )
    self:watch(
        function() return self.data.current end,
        function(____, v, o)
            if v == o then
                return
            end
            self:showEffect(v.roleEffect)
        end,
        false,
        true
    )
    self:bindVisible(
        "root.center.buy",
        function()
            return not self.data.current.unlock
        end
    )
    self:bindVisible(
        "root.center.use",
        function()
            return self.data.current.unlock
        end
    )
    self:bindText(
        "root.center.use.title",
        function()
            return self.data.current.select and i18n["local"](i18n, "使用中") or i18n["local"](i18n, "使用")
        end
    )
    self:bindClick(
        "root.center.buy",
        function()
            if steamUtils:isSteam() then
                local data = self.data.current
                if data ~= nil then
                    steamUtils:gotoShop(13, data.skinId)
                end
            else
                DTips:show(i18n["local"](i18n, "请前往商城购买"))
            end
        end
    )
    self:bindClick(
        "root.center.use",
        function()
            heroSkinManager:replaceMercenarySkin(self.data.current.mercenaryId, self.data.current.skinId)
        end
    )
    self:bindText(
        "root.center.dec.text",
        function()
            local ____i18n_2 = i18n
            local ____i18n_format_3 = i18n.format
            local ____opt_0 = skinMercenaryConfigMap[self.data.current.skinId]
            return ____i18n_format_3(____i18n_2, "装饰度：${value}", {value = ____opt_0 and ____opt_0.decorate or 0})
        end
    )
end
function DDecMercenaryPage.prototype.initRight(self)
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        if self.data.cfg == nil then
            return {}
        end
        local list2 = {}
        local list1 = skinMercenaryConfigMap_mercenaryId[self.data.cfg.id]
        if list1 ~= nil then
            list2 = __TS__ArrayFilter(
                __TS__ArrayConcat(list1),
                function(____, a) return a.ban == 0 end
            )
        end
        __TS__ArrayUnshift(list2, {
            id = 0,
            mercenaryId = self.data.cfg.id,
            name = nil,
            role = self.data.cfg.role,
            pic = self.data.cfg.pic,
            buildId = self.data.cfg.buildId,
            changeFrom = {},
            changeTo = {}
        })
        return list2
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
                    local data = self:compute(function()
                        if list.value[temp_idx + 1] == nil then
                            return {
                                skinId = 0,
                                role = 0,
                                quality = 1,
                                mercenaryId = 0,
                                select = false,
                                unlock = false,
                                name = nil,
                                icon = 0,
                                visible = false,
                                roleEffect = 0
                            }
                        end
                        local cfg = list.value[temp_idx + 1]
                        local info = archive.mercenaryData.skins["" .. tostring(cfg.mercenaryId)]
                        return {
                            skinId = cfg.id,
                            mercenaryId = cfg.mercenaryId,
                            role = cfg.role,
                            pic = cfg.pic,
                            select = info.cur_skin == cfg.id,
                            unlock = cfg.id == 0 or __TS__ArrayIndexOf(info.unlock_skin, cfg.id) ~= -1,
                            name = cfg.name,
                            icon = cfg.icon,
                            quality = cfg.quality,
                            visible = true,
                            roleEffect = cfg.roleEffect
                        }
                    end)
                    self:bindClick(
                        path,
                        function()
                            self.data.selectIndex = temp_idx
                            self.data.current = self.skinList[temp_idx + 1].value
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
                            local ____opt_4 = data.value.name
                            return ____opt_4 and ____opt_4.value or i18n["local"](i18n, "默认皮肤")
                        end
                    )
                    self:bindText(
                        path .. ".skinName",
                        function()
                            return i18n["local"](i18n, "皮肤名称")
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            return data.value.pic or 0
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return data.value.select
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
                            return not data.value.unlock
                        end
                    )
                    self:bindImage(
                        path .. ".bg",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return 134270568
                            end
                            if data.value.quality == 0 then
                                return 134270568
                            end
                            if data.value.quality == 1 then
                                return 134277873
                            end
                            if data.value.quality == 2 then
                                return 134247885
                            end
                            if data.value.quality == 3 then
                                return 134277993
                            end
                            if data.value.quality == 4 then
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
                            if data.value.quality == 0 then
                                return 134249910
                            end
                            if data.value.quality == 1 then
                                return 134263292
                            end
                            if data.value.quality == 2 then
                                return 134255313
                            end
                            if data.value.quality == 3 then
                                return 134257619
                            end
                            if data.value.quality == 4 then
                                return 134247032
                            end
                            return 134249910
                        end
                    )
                    self:bindTextColor(
                        path .. ".skinName",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return UIUtils:toColor("a6c7ff")
                            end
                            if data.value.quality == 0 then
                                return UIUtils:toColor("c7cbd9")
                            end
                            if data.value.quality == 1 then
                                return UIUtils:toColor("a6c7ff")
                            end
                            if data.value.quality == 2 then
                                return UIUtils:toColor("c9acff")
                            end
                            if data.value.quality == 3 then
                                return UIUtils:toColor("ffd3a3")
                            end
                            if data.value.quality == 4 then
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
                            if data.value.quality == 0 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if data.value.quality == 1 then
                                return UIUtils:toColor("ecf2ff")
                            end
                            if data.value.quality == 2 then
                                return UIUtils:toColor("f22fff")
                            end
                            if data.value.quality == 3 then
                                return UIUtils:toColor("fff8ee")
                            end
                            if data.value.quality == 4 then
                                return UIUtils:toColor("fff8ee")
                            end
                            return UIUtils:toColor("ecf2ff")
                        end
                    )
                    if self.data.current == nil then
                        self.data.current = data.value
                    end
                    local ____self_skinList_6 = self.skinList
                    ____self_skinList_6[#____self_skinList_6 + 1] = data
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
end
function DDecMercenaryPage.prototype.updateMercenary(self, path, cfg)
    self:bindVisible(
        path,
        function()
            return cfg ~= nil
        end
    )
    self:bindImage(
        path .. ".icon",
        function()
            local cfg2 = heroSkinManager:getMercenarySkinCfg(cfg and cfg.id or 0, LOCAL.PLAYER_ID)
            if cfg2 ~= nil then
                return cfg2.icon
            end
            return cfg and cfg.icon or 0
        end
    )
    self:bindText(
        path .. ".name",
        function()
            return cfg and cfg.showName.value or ""
        end
    )
    self:bindVisible(
        path .. ".select2",
        function()
            return cfg ~= nil and self.data.cfg ~= nil and (cfg and cfg.id) == self.data.cfg.id
        end
    )
    self:bindVisible(
        path .. ".lock",
        function()
            return false
        end
    )
    self:bindVisible(
        path .. ".select",
        function()
            return false
        end
    )
    self:bindClick(
        path,
        function()
            self.data.cfg = cfg
            self.data.current = self.skinList[1].value
            self.data.selectIndex = 0
        end
    )
    if self.data.cfg == nil then
        self.data.cfg = cfg
    end
end
function DDecMercenaryPage.prototype.showEffect(self, roleEffect)
    if roleEffect == 0 then
        return
    end
    if self.timer ~= nil then
        self.timer:remove()
    end
    self.timer = y3.ltimer.wait_frame(
        15,
        function()
            GameAPI.set_modifier_on_ui_model(
                roleEffect,
                0,
                LOCAL.PLAYER.handle,
                self:getUI("root.center.model").handle
            )
            self.timer = nil
        end
    )
end
return ____exports
