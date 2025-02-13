local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayJoin = ____lualib.__TS__ArrayJoin
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["16"] = 1,["17"] = 1,["18"] = 2,["19"] = 2,["20"] = 3,["21"] = 3,["22"] = 3,["23"] = 3,["24"] = 3,["25"] = 4,["26"] = 4,["27"] = 5,["28"] = 5,["29"] = 6,["30"] = 6,["31"] = 7,["32"] = 7,["33"] = 8,["34"] = 8,["35"] = 9,["36"] = 9,["37"] = 10,["38"] = 10,["39"] = 11,["40"] = 11,["41"] = 12,["42"] = 12,["43"] = 14,["44"] = 14,["45"] = 14,["46"] = 14,["48"] = 14,["49"] = 15,["50"] = 25,["51"] = 176,["52"] = 14,["53"] = 27,["54"] = 28,["55"] = 29,["56"] = 28,["57"] = 27,["58"] = 33,["60"] = 35,["61"] = 35,["62"] = 35,["63"] = 35,["64"] = 37,["65"] = 37,["67"] = 38,["68"] = 35,["69"] = 35,["70"] = 41,["71"] = 41,["72"] = 41,["73"] = 41,["74"] = 42,["75"] = 43,["76"] = 44,["77"] = 44,["78"] = 44,["79"] = 44,["80"] = 45,["81"] = 46,["83"] = 48,["84"] = 41,["85"] = 41,["86"] = 50,["87"] = 50,["88"] = 50,["89"] = 50,["90"] = 51,["91"] = 50,["92"] = 50,["93"] = 54,["94"] = 54,["95"] = 54,["96"] = 54,["97"] = 55,["98"] = 56,["99"] = 57,["100"] = 59,["101"] = 60,["102"] = 60,["103"] = 62,["105"] = 65,["106"] = 66,["107"] = 66,["108"] = 66,["109"] = 67,["110"] = 67,["112"] = 68,["113"] = 66,["114"] = 66,["115"] = 70,["116"] = 54,["117"] = 54,["118"] = 72,["119"] = 72,["120"] = 72,["121"] = 73,["122"] = 73,["124"] = 74,["125"] = 75,["126"] = 75,["127"] = 75,["128"] = 75,["129"] = 72,["130"] = 72,["131"] = 77,["132"] = 77,["133"] = 77,["134"] = 78,["135"] = 78,["137"] = 79,["138"] = 80,["139"] = 77,["140"] = 77,["141"] = 88,["142"] = 88,["143"] = 88,["144"] = 89,["145"] = 90,["146"] = 88,["147"] = 88,["148"] = 92,["149"] = 92,["150"] = 92,["151"] = 93,["152"] = 94,["153"] = 92,["154"] = 92,["155"] = 96,["156"] = 96,["157"] = 96,["158"] = 97,["159"] = 98,["160"] = 96,["161"] = 96,["163"] = 101,["164"] = 101,["165"] = 102,["166"] = 103,["167"] = 103,["168"] = 103,["169"] = 103,["170"] = 104,["171"] = 105,["172"] = 103,["173"] = 103,["174"] = 101,["177"] = 109,["179"] = 111,["180"] = 111,["181"] = 112,["182"] = 113,["183"] = 115,["184"] = 116,["185"] = 117,["186"] = 117,["187"] = 117,["188"] = 118,["189"] = 119,["190"] = 120,["191"] = 117,["192"] = 117,["193"] = 115,["194"] = 124,["195"] = 124,["196"] = 124,["197"] = 125,["198"] = 125,["200"] = 126,["201"] = 124,["202"] = 124,["203"] = 129,["204"] = 129,["205"] = 129,["206"] = 130,["207"] = 130,["209"] = 131,["210"] = 131,["212"] = 132,["213"] = 133,["214"] = 134,["215"] = 129,["216"] = 129,["217"] = 136,["218"] = 136,["219"] = 136,["220"] = 137,["221"] = 137,["223"] = 138,["224"] = 139,["225"] = 139,["227"] = 140,["228"] = 141,["229"] = 142,["230"] = 143,["231"] = 143,["232"] = 143,["233"] = 143,["234"] = 143,["235"] = 143,["236"] = 143,["237"] = 144,["238"] = 145,["240"] = 147,["241"] = 136,["242"] = 136,["243"] = 149,["244"] = 149,["245"] = 149,["246"] = 150,["247"] = 150,["249"] = 151,["250"] = 152,["251"] = 152,["253"] = 153,["254"] = 154,["255"] = 155,["256"] = 156,["257"] = 157,["258"] = 157,["260"] = 158,["261"] = 158,["263"] = 159,["264"] = 149,["265"] = 149,["266"] = 111,["270"] = 33,["271"] = 166,["272"] = 167,["273"] = 167,["274"] = 168,["275"] = 169,["276"] = 167,["277"] = 170,["278"] = 171,["279"] = 167,["280"] = 167,["281"] = 173,["282"] = 166,["283"] = 177,["284"] = 178,["285"] = 179,["286"] = 180,["287"] = 181,["288"] = 182,["289"] = 182,["290"] = 182,["291"] = 182,["292"] = 183,["293"] = 183,["294"] = 183,["295"] = 183,["296"] = 177});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindImage = ____bind.bindImage
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
local bindVisible = ____bind.bindVisible
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
____exports.DGenreInfo = __TS__Class()
local DGenreInfo = ____exports.DGenreInfo
DGenreInfo.name = "DGenreInfo"
__TS__ClassExtends(DGenreInfo, Dialog)
function DGenreInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
    self.minHeight = 180
end
function DGenreInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DGenreInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        bindPos(
            self,
            "info",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        bindText(
            self,
            "info.top.title",
            function()
                local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                local tag = genreData.genreTagCount[self.data.params.genre]
                local nextCount = __TS__ArrayFind(
                    defaultConfig.genreLevel,
                    function(____, a) return tag < a end
                )
                if nextCount == nil then
                    nextCount = defaultConfig.genreLevel[#defaultConfig.genreLevel]
                end
                return ((((tostring(genreLevelConfigMap_genre[self.data.params.genre][1].name) .. "(") .. tostring(tag)) .. "/") .. tostring(nextCount)) .. ")"
            end
        )
        bindImage(
            self,
            "info.top.icon",
            function()
                return genreLevelConfigMap_genre[self.data.params.genre][1].icon
            end
        )
        bindText(
            self,
            "info.top.des",
            function()
                local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                local cfg = genreLevelConfigMap_genre[self.data.params.genre][1]
                local effects = cfg.effect
                local bigBlessData = datas.global:getSingle(BigBlessData)
                local ____opt_0 = bigBlessData and bigBlessData.bigBless
                if (____opt_0 and ____opt_0.id) == 9 then
                    effects = cfg.effect2
                end
                local des = ""
                __TS__ArrayForEach(
                    effects,
                    function(____, a)
                        if des ~= "" then
                            des = des .. ";\n"
                        end
                        des = des .. tostring(a.describe)
                    end
                )
                return RichTextUtils:replace2(des, genreData.genreLevels[self.data.params.genre])
            end
        )
        self:bindText(
            "info.progress.percent",
            function()
                if self.data.params.genre <= 0 then
                    return "100%"
                end
                local genreData = datas.global:getSingle(GenreData)
                return i18n:format(
                    "卡池剩余：${count}%",
                    {count = math.floor(genreData.genrePool[self.data.params.genre].left / genreData.genrePool[self.data.params.genre].total * 100 + 0.5)}
                )
            end
        )
        self:bindProgress(
            "info.progress",
            function()
                if self.data.params.genre <= 0 then
                    return 100
                end
                local genreData = datas.global:getSingle(GenreData)
                return genreData.genrePool[self.data.params.genre].left / genreData.genrePool[self.data.params.genre].total * 100
            end
        )
        self:bindText(
            "info.countView.q1.count",
            function()
                local genreData = datas.global:getSingle(GenreData)
                return tostring(genreData.skillCountByGenre[self.data.params.genre][1])
            end
        )
        self:bindText(
            "info.countView.q2.count",
            function()
                local genreData = datas.global:getSingle(GenreData)
                return tostring(genreData.skillCountByGenre[self.data.params.genre][2])
            end
        )
        self:bindText(
            "info.countView.q3.count",
            function()
                local genreData = datas.global:getSingle(GenreData)
                return tostring(genreData.skillCountByGenre[self.data.params.genre][3])
            end
        )
        do
            local index = 0
            while index < 5 do
                local i = index
                bindVisible(
                    self,
                    "info.top.stars.star" .. tostring(index + 1),
                    function()
                        local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                        return genreData.genreLevels[self.data.params.genre] >= i + 1
                    end
                )
                index = index + 1
            end
        end
        local nodes = self:getUI("info.list"):get_childs()
        do
            local index = 0
            while index < #nodes do
                local path = "info.list." .. nodes[index + 1]:get_name()
                local k = index
                local dataList = vue.computed(function()
                    local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                    return __TS__ArraySort(
                        __TS__ArraySlice(genreData.skillLevelByGenreList[self.data.params.genre]),
                        function(____, a, b)
                            local aa = genreConfigMap[a]
                            local bb = genreConfigMap[b]
                            return bb.rarity - aa.rarity
                        end
                    )
                end)
                self:bindVisible(
                    path,
                    function()
                        if self.data.params.genre <= 0 then
                            return false
                        end
                        return #dataList.value > k
                    end
                )
                self:bindImage(
                    path .. ".root.icon",
                    function()
                        if self.data.params.genre <= 0 then
                            return 0
                        end
                        if #dataList.value <= k then
                            return 0
                        end
                        local id = dataList.value[k + 1]
                        local cfg = genreConfigMap[id]
                        return cfg.icon
                    end
                )
                self:bindText(
                    path .. ".root.des",
                    function()
                        if self.data.params.genre <= 0 then
                            return ""
                        end
                        local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                        if #dataList.value <= k then
                            return ""
                        end
                        local id = dataList.value[k + 1]
                        local level = genreData.skillLevelByGenre[self.data.params.genre][id]
                        local cfg = genreConfigMap[id]
                        local effectDesc = __TS__ArrayJoin(
                            __TS__ArrayMap(
                                cfg.effect,
                                function(____, a) return a.describe end
                            ),
                            ";"
                        )
                        if cfg.des.value ~= "%%" then
                            effectDesc = __TS__StringReplaceAll(cfg.des.value, "%%", effectDesc)
                        end
                        return RichTextUtils:replace(effectDesc, level, "#c2d1eb")
                    end
                )
                self:bindText(
                    path .. ".root.name",
                    function()
                        if self.data.params.genre <= 0 then
                            return ""
                        end
                        local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
                        if #dataList.value <= k then
                            return ""
                        end
                        local id = dataList.value[k + 1]
                        local level = genreData.skillLevelByGenre[self.data.params.genre][id]
                        local cfg = genreConfigMap[id]
                        local color = "#ffffff"
                        if cfg.rarity == 2 then
                            color = "#c718dc"
                        end
                        if cfg.rarity == 3 then
                            color = "#f18d18"
                        end
                        return ((color .. tostring(cfg.name)) .. " Lv.") .. tostring(level >= cfg.maxLevel and "Max" or level)
                    end
                )
                index = index + 1
            end
        end
    end)
end
function DGenreInfo.prototype.onShow(self)
    self:watch(
        function()
            local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
            return #genreData.skillLevelByGenreList[self.data.params.genre]
        end,
        function()
            self:updateUI()
        end
    )
    self:updateUI()
end
function DGenreInfo.prototype.updateUI(self)
    local genreData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
    local len = #genreData.skillLevelByGenreList[self.data.params.genre]
    local maxHeight = self.minHeight + len * 80
    local bg = self:getUI("info.bg")
    bg:set_ui_size(
        bg:get_width(),
        maxHeight
    )
    bg:set_pos(
        bg:get_width() / 2,
        bg:get_relative_y()
    )
end
return ____exports
