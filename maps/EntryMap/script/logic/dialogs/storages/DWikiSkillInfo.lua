local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayJoin = ____lualib.__TS__ArrayJoin
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["25"] = 6,["26"] = 7,["27"] = 18,["28"] = 6,["29"] = 20,["30"] = 21,["31"] = 22,["32"] = 21,["33"] = 20,["34"] = 26,["36"] = 28,["37"] = 28,["38"] = 28,["39"] = 29,["40"] = 29,["42"] = 30,["43"] = 28,["44"] = 28,["45"] = 33,["46"] = 33,["47"] = 33,["48"] = 34,["49"] = 34,["51"] = 35,["52"] = 36,["53"] = 33,["54"] = 33,["55"] = 51,["56"] = 51,["57"] = 51,["58"] = 52,["59"] = 52,["61"] = 53,["62"] = 54,["63"] = 51,["64"] = 51,["65"] = 56,["66"] = 56,["67"] = 56,["68"] = 57,["69"] = 57,["71"] = 58,["72"] = 59,["73"] = 60,["74"] = 56,["75"] = 56,["76"] = 62,["77"] = 62,["78"] = 62,["79"] = 63,["80"] = 63,["82"] = 64,["83"] = 65,["84"] = 65,["86"] = 66,["87"] = 67,["88"] = 62,["89"] = 62,["90"] = 69,["91"] = 69,["92"] = 69,["93"] = 70,["94"] = 70,["96"] = 71,["97"] = 72,["98"] = 72,["100"] = 73,["101"] = 69,["102"] = 69,["103"] = 76,["104"] = 76,["105"] = 76,["106"] = 77,["107"] = 77,["109"] = 78,["110"] = 79,["111"] = 79,["112"] = 79,["113"] = 79,["114"] = 79,["115"] = 79,["116"] = 79,["117"] = 80,["118"] = 81,["120"] = 83,["121"] = 76,["122"] = 76,["124"] = 26});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigMap = ____GenreConfig.genreConfigMap
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DWikiSkillInfo = __TS__Class()
local DWikiSkillInfo = ____exports.DWikiSkillInfo
DWikiSkillInfo.name = "DWikiSkillInfo"
__TS__ClassExtends(DWikiSkillInfo, Dialog)
function DWikiSkillInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DWikiSkillInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DWikiSkillInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "tips",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindText(
            "tips.title.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = genreConfigMap[self.data.params.skillId]
                return cfg.name.value
            end
        )
        self:bindImage(
            "tips.title.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = genreConfigMap[self.data.params.skillId]
                return cfg.icon
            end
        )
        self:bindImage(
            "tips.title.genre_1",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = genreConfigMap[self.data.params.skillId]
                local genre = genreLevelConfigMap_genre[cfg.genre[1]][1]
                return genre.icon
            end
        )
        self:bindImage(
            "tips.title.genre_2",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = genreConfigMap[self.data.params.skillId]
                if #cfg.genre < 2 then
                    return 0
                end
                local genre = genreLevelConfigMap_genre[cfg.genre[2]][1]
                return genre.icon
            end
        )
        self:bindVisible(
            "tips.title.genre_2",
            function()
                if self.data.params == nil then
                    return false
                end
                local cfg = genreConfigMap[self.data.params.skillId]
                if #cfg.genre < 2 then
                    return false
                end
                return true
            end
        )
        self:bindText(
            "tips.des",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = genreConfigMap[self.data.params.skillId]
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
                return RichTextUtils:replace(effectDesc, cfg.maxLevel, "#c2d1eb")
            end
        )
    end)
end
return ____exports
