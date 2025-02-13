local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 17,["39"] = 17,["40"] = 19,["41"] = 19,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 54,["48"] = 54,["49"] = 54,["50"] = 54,["52"] = 54,["53"] = 55,["54"] = 54,["55"] = 63,["56"] = 64,["57"] = 63,["58"] = 67,["59"] = 68,["60"] = 68,["61"] = 68,["62"] = 68,["63"] = 70,["64"] = 67,["65"] = 74,["66"] = 74,["67"] = 77,["68"] = 77,["69"] = 81,["70"] = 82,["71"] = 83,["72"] = 84,["73"] = 85,["74"] = 85,["75"] = 85,["76"] = 85,["77"] = 89,["78"] = 90,["79"] = 91,["80"] = 92,["81"] = 93,["82"] = 94,["83"] = 95,["84"] = 96,["85"] = 98,["86"] = 99,["87"] = 100,["89"] = 102,["90"] = 104,["91"] = 105,["92"] = 106,["93"] = 107,["94"] = 108,["95"] = 109,["96"] = 110,["97"] = 111,["98"] = 112,["100"] = 114,["102"] = 116,["103"] = 117,["106"] = 120,["107"] = 122,["109"] = 125,["110"] = 126,["111"] = 127,["112"] = 129,["113"] = 129,["114"] = 129,["115"] = 129,["116"] = 129,["117"] = 129,["118"] = 129,["119"] = 129,["120"] = 129,["121"] = 129,["122"] = 129,["123"] = 129,["124"] = 129,["125"] = 129,["126"] = 129,["127"] = 129,["128"] = 129,["129"] = 129,["130"] = 90,["131"] = 149,["132"] = 150,["133"] = 150,["134"] = 150,["135"] = 151,["136"] = 152,["137"] = 153,["139"] = 150,["140"] = 150,["141"] = 157,["142"] = 157,["143"] = 157,["144"] = 158,["145"] = 159,["146"] = 159,["148"] = 160,["149"] = 160,["152"] = 162,["153"] = 163,["154"] = 163,["156"] = 164,["157"] = 164,["160"] = 166,["161"] = 167,["163"] = 172,["164"] = 157,["165"] = 157,["166"] = 175,["167"] = 89,["169"] = 178,["170"] = 178,["171"] = 179,["172"] = 180,["173"] = 181,["174"] = 182,["175"] = 183,["176"] = 183,["177"] = 183,["178"] = 184,["179"] = 183,["180"] = 183,["182"] = 187,["183"] = 187,["184"] = 188,["185"] = 189,["186"] = 190,["187"] = 192,["188"] = 192,["189"] = 192,["190"] = 193,["191"] = 194,["192"] = 194,["193"] = 195,["196"] = 196,["197"] = 196,["198"] = 196,["199"] = 196,["200"] = 196,["201"] = 201,["202"] = 192,["203"] = 202,["204"] = 203,["205"] = 192,["206"] = 192,["208"] = 206,["209"] = 206,["210"] = 207,["211"] = 208,["212"] = 209,["213"] = 209,["214"] = 209,["215"] = 209,["216"] = 209,["217"] = 209,["218"] = 209,["219"] = 211,["220"] = 211,["221"] = 211,["222"] = 212,["223"] = 214,["224"] = 215,["225"] = 216,["226"] = 213,["227"] = 218,["228"] = 211,["229"] = 219,["230"] = 220,["231"] = 211,["232"] = 211,["233"] = 206,["236"] = 224,["237"] = 224,["238"] = 224,["239"] = 224,["240"] = 224,["241"] = 224,["242"] = 224,["243"] = 226,["244"] = 226,["245"] = 226,["246"] = 226,["247"] = 228,["248"] = 228,["249"] = 228,["250"] = 228,["251"] = 228,["252"] = 228,["253"] = 228,["254"] = 229,["255"] = 229,["256"] = 229,["257"] = 229,["258"] = 229,["259"] = 229,["260"] = 229,["261"] = 231,["262"] = 231,["263"] = 231,["264"] = 231,["265"] = 231,["266"] = 231,["267"] = 231,["269"] = 231,["270"] = 231,["271"] = 231,["272"] = 233,["273"] = 233,["274"] = 233,["275"] = 233,["276"] = 233,["277"] = 233,["278"] = 233,["280"] = 233,["281"] = 233,["282"] = 233,["283"] = 235,["284"] = 235,["285"] = 235,["286"] = 235,["287"] = 235,["288"] = 235,["289"] = 235,["290"] = 237,["291"] = 237,["292"] = 237,["293"] = 237,["294"] = 237,["295"] = 237,["296"] = 237,["297"] = 238,["298"] = 238,["299"] = 238,["300"] = 238,["301"] = 238,["302"] = 238,["303"] = 238,["304"] = 239,["305"] = 239,["306"] = 239,["307"] = 239,["308"] = 239,["309"] = 239,["310"] = 239,["311"] = 240,["312"] = 240,["313"] = 240,["314"] = 240,["315"] = 240,["316"] = 240,["317"] = 240,["318"] = 241,["319"] = 241,["320"] = 241,["321"] = 241,["322"] = 243,["323"] = 243,["324"] = 243,["325"] = 243,["326"] = 243,["328"] = 243,["329"] = 243,["331"] = 243,["332"] = 243,["333"] = 243,["334"] = 244,["335"] = 244,["336"] = 244,["337"] = 245,["338"] = 244,["339"] = 244,["340"] = 249,["341"] = 249,["342"] = 249,["343"] = 249,["344"] = 250,["347"] = 251,["348"] = 252,["349"] = 253,["350"] = 254,["352"] = 257,["356"] = 261,["357"] = 263,["358"] = 264,["359"] = 265,["363"] = 269,["364"] = 270,["365"] = 271,["366"] = 272,["367"] = 273,["368"] = 274,["369"] = 275,["371"] = 277,["374"] = 280,["375"] = 281,["377"] = 249,["378"] = 249,["379"] = 298,["380"] = 187,["383"] = 178,["386"] = 81,["387"] = 303,["388"] = 304,["389"] = 305,["390"] = 306,["391"] = 307,["393"] = 309,["394"] = 303,["395"] = 313,["396"] = 314,["397"] = 315,["398"] = 316,["400"] = 318,["401"] = 313});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____ShopManager = include("logic.archive.manager.ShopManager")
local shopManager = ____ShopManager.shopManager
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigList = ____GoodsConfig.goodsConfigList
local goodsConfigMap = ____GoodsConfig.goodsConfigMap
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ShopType = ____LocalData.ShopType
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DHelpGenre = include("logic.dialogs.help.DHelpGenre")
local DHelpGenre = ____DHelpGenre.DHelpGenre
local ____DSkillInfo = include("logic.dialogs.infos.DSkillInfo")
local DSkillInfo = ____DSkillInfo.DSkillInfo
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DShopHeroPage = __TS__Class()
local DShopHeroPage = ____exports.DShopHeroPage
DShopHeroPage.name = "DShopHeroPage"
__TS__ClassExtends(DShopHeroPage, Dialog)
function DShopHeroPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 1}
end
function DShopHeroPage.prototype.onCreate(self)
    self:initView()
end
function DShopHeroPage.prototype.initView(self)
    self:bindVisible(
        "root",
        function() return localData.shop.tabIndex == ShopType["Hero_金币商城英雄"] end
    )
    self:initDetails()
end
function DShopHeroPage.prototype.onShow(self)
end
function DShopHeroPage.prototype.onHide(self)
end
function DShopHeroPage.prototype.initDetails(self)
    local ui = self:getUI("root.contents.list")
    local idx = 0
    local childrens = ui:get_childs()
    local list = __TS__ArrayFilter(
        goodsConfigList,
        function(____, a) return (a.pos == 0 or not steamUtils:isSteam() and a.pos == 1 or steamUtils:isSteam() and a.pos == 2) and (a.type == 2 and a.lockType ~= 2) end
    )
    local dataList = self:compute(function()
        local function func(____, idx)
            local cfg = list[idx + 1]
            local shopInfo = archive.shopData.shops["" .. tostring(cfg.id)]
            local cur_count = shopInfo ~= nil and shopInfo.buy_count or 0
            local lock = false
            local lock_tips = ""
            local hero = heroConfigMap[cfg.propId.indexId]
            local limit_count = cfg.limitCount
            if limit_count == 0 then
                limit_count = 99999999
            end
            local sell_out = cur_count >= limit_count
            local info = archive.playerData.heroes["" .. tostring(hero.id)]
            if cfg.unlockType == 2 then
                lock = (LOCAL.PLAYER.handle:api_get_map_level() or 0) < (cfg.unlockValue[1] or 1)
                lock_tips = i18n:format("地图等级达到${level}级解锁", {level = cfg.unlockValue[1]})
            elseif cfg.unlockType == 3 then
                if not info.isHave then
                    lock = true
                elseif info.isHave then
                    sell_out = true
                end
                lock_tips = i18n["local"](i18n, "加群891946889后解锁成就获取")
            else
                if info.isHave then
                    sell_out = true
                end
            end
            if info.isHave and (steamUtils:isSteam() and hero.steamDefaultHero or not steamUtils:isSteam() and hero.defaultHero == 1) then
                return nil
            end
            local name = cfg.name
            local icon = hero.pic
            local quality = 1
            return {
                cfg = cfg,
                hero = hero,
                visible = true,
                show_limit_label = false,
                cur_count = cur_count,
                limit_count = limit_count,
                icon = icon,
                price = cfg.price,
                name = name.value,
                quality = quality,
                lock = lock,
                lock_tips = lock_tips,
                sell_out = sell_out,
                isLimit = cur_count >= limit_count,
                genre = hero.heroGenre[1],
                genreIcon = genreLevelConfigMap_genre[hero.heroGenre[1]][1].icon
            }
        end
        local result = {}
        __TS__ArrayForEach(
            list,
            function(____, a, idx)
                local d = func(nil, idx)
                if d ~= nil then
                    result[#result + 1] = d
                end
            end
        )
        result = __TS__ArraySort(
            result,
            function(____, a, b)
                if a.sell_out ~= b.sell_out then
                    if b.sell_out then
                        return -1
                    end
                    if a.sell_out then
                        return 1
                    end
                end
                if a.isLimit ~= b.isLimit then
                    if b.isLimit then
                        return -1
                    end
                    if a.isLimit then
                        return 1
                    end
                end
                if a.price == b.price then
                    return a.cfg.id - b.cfg.id
                end
                return a.price - b.price
            end
        )
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local childs = element:get_childs()
            local path1 = "root.contents.list." .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #dataList.value > temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = (path1 .. ".") .. cld:get_name()
                    local temp_idx = idx
                    self:bindMouse(
                        path .. ".info.genre.genre_1",
                        function()
                            local ui = self:getUI(path .. ".info.genre.genre_1")
                            local ____opt_0 = dataList.value[temp_idx + 1]
                            local genre = ____opt_0 and ____opt_0.genre
                            if genre == nil then
                                return
                            end
                            local params = {
                                x = ui:get_absolute_x() + 180 * UIUtils:get_scale(),
                                y = ui:get_absolute_y() + 60,
                                genre = genre
                            }
                            dialogs:showRepeat(DHelpGenre, params)
                        end,
                        function()
                            dialogs:hide(DHelpGenre)
                        end
                    )
                    do
                        local kkk = 0
                        while kkk < 3 do
                            local idddd = kkk
                            local skill_path = path .. (".info.skills.skill_" .. tostring(kkk + 1)) .. ".icon"
                            self:bindImage(
                                skill_path,
                                function()
                                    local ____opt_2 = dataList.value[temp_idx + 1]
                                    return ____opt_2 and ____opt_2.hero.skill[idddd + 1].icon or 0
                                end
                            )
                            self:bindMouse(
                                skill_path,
                                function()
                                    local ui = self:getUI(skill_path)
                                    local ____temp_6 = ui:get_absolute_x()
                                    local ____temp_7 = ui:get_absolute_y() + ui:get_height() / 2 + 80
                                    local ____opt_4 = dataList.value[temp_idx + 1]
                                    local params = {x = ____temp_6, y = ____temp_7, skillId = ____opt_4 and ____opt_4.hero.skill[idddd + 1].id}
                                    dialogs:showRepeat(DSkillInfo, params)
                                end,
                                function()
                                    dialogs:hide(DSkillInfo)
                                end
                            )
                            kkk = kkk + 1
                        end
                    end
                    self:bindText(
                        path .. ".info.header.name",
                        function()
                            local ____opt_8 = dataList.value[temp_idx + 1]
                            return ____opt_8 and ____opt_8.name or ""
                        end
                    )
                    self:bindVisible(
                        path,
                        function() return dataList.value[temp_idx + 1] ~= nil and dataList.value[temp_idx + 1].visible end
                    )
                    self:bindImage(
                        path .. ".info.icon",
                        function()
                            local ____opt_10 = dataList.value[temp_idx + 1]
                            return ____opt_10 and ____opt_10.icon or 0
                        end
                    )
                    self:bindImage(
                        path .. ".info.genre.genre_1",
                        function()
                            local ____opt_12 = dataList.value[temp_idx + 1]
                            return ____opt_12 and ____opt_12.genreIcon or 0
                        end
                    )
                    self:bindVisible(
                        path .. ".info.sellout",
                        function()
                            local ____opt_14 = dataList.value[temp_idx + 1]
                            local ____temp_16 = ____opt_14 and ____opt_14.sell_out
                            if ____temp_16 == nil then
                                ____temp_16 = false
                            end
                            return ____temp_16
                        end
                    )
                    self:bindVisible(
                        path .. ".info.locked",
                        function()
                            local ____opt_17 = dataList.value[temp_idx + 1]
                            local ____temp_19 = ____opt_17 and ____opt_17.lock
                            if ____temp_19 == nil then
                                ____temp_19 = false
                            end
                            return ____temp_19
                        end
                    )
                    self:bindText(
                        path .. ".info.locked.des",
                        function()
                            local ____opt_20 = dataList.value[temp_idx + 1]
                            return ____opt_20 and ____opt_20.lock_tips or ""
                        end
                    )
                    self:bindText(
                        path .. ".buy.value",
                        function()
                            local ____opt_22 = dataList.value[temp_idx + 1]
                            return "" .. tostring(____opt_22 and ____opt_22.price or "")
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.value",
                        function()
                            local ____opt_24 = dataList.value[temp_idx + 1]
                            return (____opt_24 and ____opt_24.price or 0) > 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.get",
                        function()
                            local ____opt_26 = dataList.value[temp_idx + 1]
                            return (____opt_26 and ____opt_26.price or 0) == 0
                        end
                    )
                    self:bindVisible(
                        path .. ".buy.icon",
                        function()
                            local ____opt_28 = dataList.value[temp_idx + 1]
                            return (____opt_28 and ____opt_28.price or 0) > 0
                        end
                    )
                    self:bindImage(
                        path .. ".buy.icon",
                        function() return getPropIcon(nil, 1) end
                    )
                    self:bindVisible(
                        path .. ".buy.disable",
                        function()
                            local ____opt_30 = dataList.value[temp_idx + 1]
                            local ____temp_34 = ____opt_30 and ____opt_30.isLimit
                            if not ____temp_34 then
                                local ____opt_32 = dataList.value[temp_idx + 1]
                                ____temp_34 = ____opt_32 and ____opt_32.sell_out
                            end
                            return ____temp_34
                        end
                    )
                    self:bindText(
                        path .. ".info.sellout.sellout.image_78.text",
                        function()
                            return i18n["local"](i18n, "已购买")
                        end
                    )
                    self:bindAction(
                        path .. ".buy",
                        "左键-点击",
                        function()
                            if dataList.value[temp_idx + 1] == nil then
                                return
                            end
                            local cfg = dataList.value[temp_idx + 1].cfg
                            if cfg.unlockType == 3 or dataList.value[temp_idx + 1].sell_out then
                                if not self:have(cfg.id) then
                                    UIUtils:gotoQQ()
                                else
                                    DTips:show(i18n["local"](i18n, "已拥有"))
                                end
                                return
                            end
                            if cfg.unlockType == 1 then
                            elseif cfg.unlockType == 2 then
                                if (LOCAL.PLAYER.handle:api_get_map_level() or 0) < (cfg.unlockValue[1] or 1) then
                                    DTips:show(i18n:format("无法购买，需要地图等级达到${level}级", {level = cfg.unlockValue[1] or 1}))
                                    return
                                end
                            end
                            if shopManager:isLimit(cfg.id) then
                                DTips:show(i18n["local"](i18n, "无法购买"))
                            elseif not shopManager:isEnough(cfg.id) then
                                if cfg.cost == 1 or cfg.cost == 0 then
                                    DTips:show(i18n["local"](i18n, "金币不足"))
                                elseif cfg.cost == 2 then
                                    DTips:show(i18n["local"](i18n, "钻石不足"))
                                else
                                    DTips:show(i18n["local"](i18n, "道具不足"))
                                end
                            else
                                SoundManager:play(SoundType["UI购买"])
                                shopManager:buy(cfg.id)
                            end
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
end
function DShopHeroPage.prototype.have(self, id)
    local cfg = goodsConfigMap[id]
    if cfg.type == 2 then
        local hero = archive.playerData.heroes["" .. tostring(cfg.propId.indexId)]
        return hero and hero.isHave or false
    end
    return false
end
function DShopHeroPage.prototype.getIcon(self, id)
    local cfg = goodsConfigMap[id]
    if cfg.propId ~= nil then
        return getPropIcon(nil, cfg.propId)
    end
    return 0
end
return ____exports
