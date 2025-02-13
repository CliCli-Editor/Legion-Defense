local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 12,["27"] = 12,["28"] = 12,["29"] = 12,["31"] = 12,["32"] = 13,["33"] = 135,["34"] = 12,["35"] = 20,["36"] = 21,["37"] = 20,["38"] = 24,["39"] = 38,["40"] = 38,["41"] = 38,["42"] = 39,["43"] = 38,["44"] = 38,["45"] = 42,["46"] = 42,["47"] = 42,["48"] = 43,["49"] = 44,["50"] = 42,["51"] = 42,["52"] = 46,["53"] = 46,["54"] = 46,["55"] = 47,["56"] = 48,["57"] = 46,["58"] = 46,["59"] = 51,["60"] = 51,["61"] = 51,["62"] = 52,["63"] = 52,["65"] = 53,["66"] = 51,["67"] = 51,["68"] = 55,["69"] = 55,["70"] = 55,["71"] = 56,["72"] = 56,["74"] = 57,["75"] = 58,["76"] = 55,["77"] = 55,["78"] = 60,["79"] = 60,["80"] = 60,["81"] = 61,["82"] = 62,["83"] = 60,["84"] = 60,["85"] = 64,["86"] = 64,["87"] = 64,["88"] = 65,["89"] = 65,["90"] = 64,["91"] = 64,["92"] = 69,["93"] = 69,["94"] = 69,["95"] = 70,["96"] = 69,["97"] = 69,["98"] = 72,["99"] = 72,["100"] = 72,["101"] = 73,["102"] = 72,["103"] = 72,["104"] = 75,["105"] = 75,["106"] = 75,["107"] = 76,["108"] = 75,["109"] = 75,["110"] = 78,["111"] = 78,["112"] = 78,["113"] = 79,["114"] = 78,["115"] = 78,["116"] = 81,["117"] = 81,["118"] = 81,["119"] = 82,["120"] = 83,["121"] = 84,["122"] = 81,["123"] = 81,["124"] = 86,["125"] = 86,["126"] = 86,["127"] = 87,["128"] = 88,["129"] = 89,["130"] = 90,["131"] = 91,["134"] = 94,["135"] = 86,["136"] = 86,["137"] = 96,["138"] = 96,["139"] = 96,["140"] = 97,["141"] = 98,["142"] = 99,["143"] = 100,["144"] = 101,["147"] = 104,["148"] = 96,["149"] = 96,["150"] = 107,["151"] = 108,["152"] = 109,["153"] = 110,["154"] = 111,["155"] = 112,["156"] = 112,["157"] = 112,["158"] = 112,["161"] = 118,["162"] = 118,["163"] = 118,["164"] = 119,["165"] = 118,["166"] = 118,["167"] = 121,["168"] = 107,["170"] = 124,["171"] = 124,["172"] = 125,["173"] = 126,["174"] = 126,["175"] = 126,["176"] = 127,["177"] = 127,["179"] = 128,["180"] = 129,["181"] = 126,["182"] = 126,["183"] = 124,["186"] = 24,["187"] = 137,["188"] = 138,["189"] = 139,["190"] = 141,["191"] = 141,["192"] = 143,["193"] = 144,["194"] = 144,["196"] = 141,["197"] = 141,["198"] = 137,["199"] = 148,["200"] = 149,["201"] = 150,["202"] = 148,["203"] = 154,["204"] = 155,["205"] = 156,["206"] = 154});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
____exports.DLife = __TS__Class()
local DLife = ____exports.DLife
DLife.name = "DLife"
__TS__ClassExtends(DLife, Dialog)
function DLife.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 1}
    self.eventId = 0
end
function DLife.prototype.onCreate(self)
    self:initView()
end
function DLife.prototype.initView(self)
    self:bindText(
        "root.contents.root.name",
        function()
            return LOCAL.PLAYER:get_name()
        end
    )
    self:bindImage(
        "root.contents.root.ladder.ladder",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return cfg.icon
        end
    )
    self:bindText(
        "root.contents.root.ladder.ladder_title",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return tostring(cfg.rankName)
        end
    )
    self:bindProgress(
        "root.contents.root.ladder.win_rate",
        function()
            if archive.statInfo.data.seasonSateInfo.season_complete_count == 0 then
                return 100
            end
            return archive.statInfo.data.seasonSateInfo.season_win_count / archive.statInfo.data.seasonSateInfo.season_complete_count * 100
        end
    )
    self:bindText(
        "root.contents.root.ladder.win_rate.value",
        function()
            if archive.statInfo.data.seasonSateInfo.season_complete_count == 0 then
                return "100%"
            end
            local progress = math.floor(archive.statInfo.data.seasonSateInfo.season_win_count / archive.statInfo.data.seasonSateInfo.season_complete_count * 1000) / 10
            return tostring(progress) .. "%"
        end
    )
    self:bindText(
        "root.contents.root.ladder.score.value",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return tostring(archive.statInfo.data.seasonSateInfo.score - cfg.totalScore)
        end
    )
    self:bindText(
        "root.contents.root.ladder.count.value",
        function()
            local ____opt_0 = archive.statInfo.data.seasonSateInfo
            return tostring(____opt_0 and ____opt_0.season_complete_count)
        end
    )
    self:bindText(
        "root.contents.root.life.total_count.value",
        function()
            return tostring(archive.statInfo.data.match_complete_count + archive.statInfo.data.pvp_complete_count)
        end
    )
    self:bindText(
        "root.contents.root.life.win_count.value",
        function()
            return tostring(archive.statInfo.data.match_win_count + archive.statInfo.data.pvp_win_count)
        end
    )
    self:bindText(
        "root.contents.root.life.mvp.value",
        function()
            return tostring(archive.statInfo.data.match_mvp + archive.statInfo.data.pvp_mvp)
        end
    )
    self:bindText(
        "root.contents.root.life.smvp.value",
        function()
            return tostring(archive.statInfo.data.match_smvp + archive.statInfo.data.pvp_smvp)
        end
    )
    self:bindText(
        "root.contents.root.life.max_ladder.value",
        function()
            local score = math.max(archive.statInfo.data.seasonSateInfo.score, archive.statInfo.data.highestSeasonScore)
            local cfg = ladderTournamentManager:getRank(score)
            return tostring(cfg.rankName)
        end
    )
    self:bindText(
        "root.contents.root.life.pet.value",
        function()
            local total = 0
            for key in pairs(archive.petData.skins) do
                local element = archive.petData.skins[key]
                if element then
                    total = total + 1
                end
            end
            return tostring(total)
        end
    )
    self:bindText(
        "root.contents.root.life.hero.value",
        function()
            local total = 0
            for key in pairs(archive.playerData.heroes) do
                local element = archive.playerData.heroes[key]
                if element.isHave then
                    total = total + 1
                end
            end
            return tostring(total)
        end
    )
    local list = self:compute(function()
        local list = {}
        for key in pairs(archive.playerData.heroes) do
            local element = archive.playerData.heroes[key]
            if element.isHave and element.exp > 0 then
                list[#list + 1] = {
                    id = __TS__ParseInt(key),
                    data = element
                }
            end
        end
        list = __TS__ArraySort(
            list,
            function(____, a, b)
                return b.data.exp - a.data.exp
            end
        )
        return list
    end)
    do
        local index = 0
        while index < 3 do
            local idx = index
            self:bindImage(
                ("root.contents.root.hero.item_" .. tostring(index + 1)) .. ".icon",
                function()
                    if list.value[idx + 1] == nil then
                        return 0
                    end
                    local data = list.value[idx + 1]
                    return heroConfigMap[data.id].icon
                end
            )
            index = index + 1
        end
    end
end
function DLife.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Life_生涯"]
    self:watch(
        function() return localData.setting.tabIndex == SettingType["Life_生涯"] end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DLife.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DLife.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
return ____exports
