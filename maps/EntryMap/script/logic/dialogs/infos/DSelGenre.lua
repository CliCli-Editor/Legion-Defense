local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["32"] = 12,["33"] = 13,["34"] = 12,["35"] = 21,["36"] = 22,["37"] = 21,["38"] = 25,["39"] = 27,["40"] = 27,["41"] = 27,["42"] = 28,["43"] = 29,["44"] = 30,["45"] = 27,["46"] = 27,["48"] = 32,["49"] = 32,["50"] = 33,["51"] = 34,["52"] = 35,["54"] = 37,["56"] = 39,["57"] = 40,["58"] = 40,["59"] = 40,["60"] = 41,["61"] = 40,["62"] = 40,["63"] = 43,["64"] = 43,["65"] = 43,["66"] = 44,["67"] = 43,["68"] = 43,["69"] = 46,["70"] = 46,["71"] = 46,["72"] = 47,["73"] = 48,["74"] = 46,["75"] = 46,["76"] = 50,["77"] = 50,["78"] = 50,["79"] = 51,["80"] = 53,["81"] = 54,["82"] = 55,["83"] = 57,["84"] = 58,["85"] = 58,["87"] = 59,["89"] = 60,["90"] = 61,["91"] = 61,["93"] = 62,["96"] = 64,["97"] = 64,["99"] = 65,["102"] = 67,["103"] = 50,["104"] = 50,["105"] = 32,["108"] = 71,["109"] = 71,["110"] = 71,["111"] = 72,["112"] = 73,["113"] = 71,["114"] = 71,["115"] = 25});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigList = ____GenreLevelConfig.genreLevelConfigList
local ____GenreController = include("logic.controllers.GenreController")
local genreController = ____GenreController.genreController
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
____exports.DSelGenre = __TS__Class()
local DSelGenre = ____exports.DSelGenre
DSelGenre.name = "DSelGenre"
__TS__ClassExtends(DSelGenre, Dialog)
function DSelGenre.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DSelGenre.prototype.onCreate(self)
    self:initView()
end
function DSelGenre.prototype.initView(self)
    local list = __TS__ArrayFilter(
        genreLevelConfigList,
        function(____, a)
            local genreData = datas.global:getSingle(GenreData)
            local player = LOCAL.PLAYER_DATA:getSingle(PlayerData)
            return a.genre ~= player.hero.heroGenre[1] and __TS__ArrayIndexOf(genreData.disableList, a.genre) == -1
        end
    )
    do
        local index = 0
        while index < 8 do
            local path = ""
            if index < 4 then
                path = "selectList.list1.item_" .. tostring(index + 1)
            else
                path = "selectList.list2.item_" .. tostring(index + 1)
            end
            local idx = index
            self:bindText(
                path .. ".title",
                function()
                    return list[idx + 1].name.value
                end
            )
            self:bindImage(
                path .. ".icon",
                function()
                    return list[idx + 1].icon
                end
            )
            self:bindVisible(
                path .. ".select",
                function()
                    local genreData = LOCAL.PLAYER_DATA:getSingle(PlayerGenreData)
                    return list[idx + 1].genre == genreData.recommand1 or list[idx + 1].genre == genreData.recommand2
                end
            )
            self:bindClick(
                path,
                function()
                    local genreData = LOCAL.PLAYER_DATA:getSingle(PlayerGenreData)
                    local r = list[idx + 1].genre
                    local r1 = genreData.recommand1
                    local r2 = genreData.recommand2
                    if r == r1 or r == r2 then
                        if r == r1 then
                            r1 = 0
                        else
                            r2 = 0
                        end
                    elseif r1 == 0 or r2 == 0 then
                        if r1 == 0 then
                            r1 = r
                        else
                            r2 = r
                        end
                    else
                        if localData.main.recommand == 1 then
                            r1 = r
                        else
                            r2 = r
                        end
                    end
                    genreController.setRecommand:execute(LOCAL.PLAYER_ID, r1, r2)
                end
            )
            index = index + 1
        end
    end
    self:bindClick(
        "click",
        function()
            self:hide()
            localData.main.showRecommand = false
        end
    )
end
return ____exports
