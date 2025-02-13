local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayJoin = ____lualib.__TS__ArrayJoin
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 8,["29"] = 18,["30"] = 122,["31"] = 124,["32"] = 124,["33"] = 124,["34"] = 124,["35"] = 124,["36"] = 124,["37"] = 124,["38"] = 124,["39"] = 124,["40"] = 124,["41"] = 124,["42"] = 7,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 21,["47"] = 20,["48"] = 37,["50"] = 38,["51"] = 38,["52"] = 38,["53"] = 39,["54"] = 39,["56"] = 40,["57"] = 38,["58"] = 38,["59"] = 55,["60"] = 57,["61"] = 57,["62"] = 57,["63"] = 58,["64"] = 59,["65"] = 60,["66"] = 57,["67"] = 57,["68"] = 63,["69"] = 63,["70"] = 63,["71"] = 64,["72"] = 65,["73"] = 66,["74"] = 63,["75"] = 63,["76"] = 69,["77"] = 69,["78"] = 69,["79"] = 70,["80"] = 71,["81"] = 72,["82"] = 69,["83"] = 69,["84"] = 75,["85"] = 75,["86"] = 75,["87"] = 76,["88"] = 77,["89"] = 75,["90"] = 75,["91"] = 75,["92"] = 80,["93"] = 80,["94"] = 80,["95"] = 81,["96"] = 82,["97"] = 82,["99"] = 83,["100"] = 84,["101"] = 80,["102"] = 80,["103"] = 87,["104"] = 87,["105"] = 87,["106"] = 88,["107"] = 89,["108"] = 89,["110"] = 90,["111"] = 91,["112"] = 87,["113"] = 87,["114"] = 94,["115"] = 94,["116"] = 94,["117"] = 95,["118"] = 96,["119"] = 96,["121"] = 97,["122"] = 98,["123"] = 94,["124"] = 94,["125"] = 101,["127"] = 101,["130"] = 103,["131"] = 103,["132"] = 104,["133"] = 106,["134"] = 106,["135"] = 106,["136"] = 107,["137"] = 106,["138"] = 106,["139"] = 106,["140"] = 110,["141"] = 110,["142"] = 110,["143"] = 111,["144"] = 112,["146"] = 114,["147"] = 115,["148"] = 115,["150"] = 116,["151"] = 110,["152"] = 110,["153"] = 103,["157"] = 37,["158"] = 136,["159"] = 146,["160"] = 147,["161"] = 148,["162"] = 148,["163"] = 148,["164"] = 148,["165"] = 148,["166"] = 148,["167"] = 148,["168"] = 150,["169"] = 151,["171"] = 153,["173"] = 155,["175"] = 156,["176"] = 156,["177"] = 157,["178"] = 158,["179"] = 159,["181"] = 156,["184"] = 162,["185"] = 136,["186"] = 167,["187"] = 168,["188"] = 167});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____TextConfig = include("logic.configs.TextConfig")
local textConfigMap = ____TextConfig.textConfigMap
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DHelpGenreSkill = __TS__Class()
local DHelpGenreSkill = ____exports.DHelpGenreSkill
DHelpGenreSkill.name = "DHelpGenreSkill"
__TS__ClassExtends(DHelpGenreSkill, Dialog)
function DHelpGenreSkill.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
    self.attrList = vue.ref({})
    self.keyList = {
        {key = "暴击", id = 1},
        {key = "闪避", id = 2},
        {key = "恢复", id = 3},
        {key = "怒火", id = 4},
        {key = "易伤", id = 5},
        {key = "冰霜", id = 6},
        {key = "中毒", id = 7},
        {key = "减伤", id = 8},
        {key = "生命", id = 9}
    }
end
function DHelpGenreSkill.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpGenreSkill.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "root",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:updateInfo()
        self:bindImage(
            "root.list.genre1.genre",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                local genre = cfg.genre[1]
                return genreLevelConfigMap_genre[genre][1].icon
            end
        )
        self:bindText(
            "root.list.genre1.name",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                local genre = cfg.genre[1]
                return "#ffff00" .. tostring(genreLevelConfigMap_genre[genre][1].name)
            end
        )
        self:bindText(
            "root.list.genre1.des",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                local genre = cfg.genre[1]
                return genreLevelConfigMap_genre[genre][1].des.value
            end
        )
        self:bindVisible(
            "root.list.genre2",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                return #cfg.genre > 1
            end,
            true
        )
        self:bindImage(
            "root.list.genre2.genre",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                if #cfg.genre == 1 then
                    return 0
                end
                local genre = cfg.genre[2]
                return genreLevelConfigMap_genre[genre][1].icon
            end
        )
        self:bindText(
            "root.list.genre2.name",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                if #cfg.genre == 1 then
                    return ""
                end
                local genre = cfg.genre[2]
                return "#ffff00" .. tostring(genreLevelConfigMap_genre[genre][1].name)
            end
        )
        self:bindText(
            "root.list.genre2.des",
            function()
                local cfg = genreConfigMap[self.data.params.configId]
                if #cfg.genre == 1 then
                    return ""
                end
                local genre = cfg.genre[2]
                return genreLevelConfigMap_genre[genre][1].des.value
            end
        )
        local ____opt_0 = self:getUI("root.list.attr4")
        if ____opt_0 ~= nil then
            ____opt_0:set_visible(false)
        end
        do
            local index = 0
            while index < 4 do
                local k = index
                self:bindVisible(
                    "root.list.attr" .. tostring(index + 1),
                    function()
                        return #self.attrList.value > k
                    end,
                    false
                )
                self:bindText(
                    ("root.list.attr" .. tostring(index + 1)) .. ".des",
                    function()
                        if #self.attrList.value <= k then
                            return ""
                        end
                        local cfg = textConfigMap[self.attrList.value[k + 1]]
                        if cfg == nil then
                            return ""
                        end
                        return RichTextUtils:replaceSkill((cfg.showName.value .. ":") .. cfg.des.value, "#c2d1eb")
                    end
                )
                index = index + 1
            end
        end
    end)
end
function DHelpGenreSkill.prototype.updateInfo(self)
    local cfg = genreConfigMap[self.data.params.configId]
    local desc = ""
    local effectDesc = __TS__ArrayJoin(
        __TS__ArrayMap(
            cfg.effect,
            function(____, a) return a.describe end
        ),
        ";"
    )
    if cfg.des.value == "%%" then
        desc = effectDesc
    else
        desc = __TS__StringReplaceAll(cfg.des.value, "%%", effectDesc)
    end
    local idList = {}
    do
        local index = 0
        while index < #self.keyList do
            local element = self.keyList[index + 1]
            if (string.find(desc, element.key, nil, true) or 0) - 1 ~= -1 then
                idList[#idList + 1] = element.id
            end
            index = index + 1
        end
    end
    self.attrList.value = idList
end
function DHelpGenreSkill.prototype.onShow(self)
    self:updateInfo()
end
return ____exports
