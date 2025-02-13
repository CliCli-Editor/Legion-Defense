local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 7,["14"] = 7,["15"] = 8,["16"] = 8,["17"] = 9,["18"] = 9,["19"] = 10,["20"] = 10,["21"] = 18,["22"] = 18,["23"] = 23,["24"] = 23,["25"] = 24,["26"] = 24,["27"] = 25,["28"] = 25,["29"] = 27,["30"] = 27,["31"] = 27,["32"] = 27,["34"] = 27,["35"] = 28,["36"] = 27,["37"] = 51,["38"] = 53,["39"] = 55,["40"] = 57,["41"] = 58,["42"] = 57,["43"] = 51,["44"] = 63,["45"] = 63,["46"] = 67,["48"] = 69,["50"] = 71,["51"] = 71,["52"] = 72,["53"] = 73,["54"] = 75,["55"] = 75,["56"] = 75,["57"] = 76,["58"] = 75,["59"] = 75,["60"] = 78,["61"] = 78,["62"] = 78,["63"] = 79,["64"] = 79,["65"] = 78,["66"] = 78,["67"] = 81,["68"] = 81,["69"] = 81,["70"] = 82,["71"] = 82,["72"] = 81,["73"] = 81,["74"] = 84,["75"] = 84,["76"] = 84,["77"] = 85,["78"] = 85,["79"] = 84,["80"] = 84,["81"] = 87,["82"] = 87,["83"] = 87,["84"] = 88,["85"] = 88,["86"] = 87,["87"] = 87,["88"] = 90,["89"] = 90,["90"] = 90,["91"] = 91,["92"] = 91,["93"] = 90,["94"] = 90,["95"] = 93,["96"] = 93,["97"] = 93,["98"] = 94,["99"] = 94,["100"] = 93,["101"] = 93,["102"] = 96,["103"] = 96,["104"] = 96,["105"] = 97,["106"] = 97,["107"] = 96,["108"] = 96,["109"] = 99,["110"] = 99,["111"] = 99,["112"] = 100,["113"] = 100,["114"] = 99,["115"] = 99,["116"] = 103,["117"] = 103,["118"] = 103,["119"] = 104,["120"] = 104,["121"] = 103,["122"] = 103,["123"] = 107,["124"] = 107,["125"] = 107,["126"] = 108,["127"] = 108,["129"] = 109,["130"] = 107,["131"] = 107,["132"] = 112,["133"] = 112,["134"] = 112,["135"] = 113,["136"] = 113,["138"] = 114,["139"] = 115,["140"] = 116,["141"] = 112,["142"] = 112,["143"] = 118,["144"] = 118,["145"] = 118,["146"] = 119,["147"] = 119,["149"] = 120,["150"] = 121,["151"] = 122,["152"] = 118,["153"] = 118,["154"] = 125,["155"] = 125,["156"] = 125,["157"] = 126,["158"] = 126,["159"] = 127,["160"] = 128,["161"] = 129,["162"] = 130,["163"] = 131,["164"] = 132,["166"] = 134,["168"] = 125,["169"] = 125,["170"] = 71,["173"] = 139,["174"] = 139,["175"] = 139,["176"] = 140,["177"] = 139,["178"] = 139,["179"] = 146,["180"] = 146,["181"] = 146,["182"] = 147,["183"] = 146,["184"] = 146,["185"] = 153,["186"] = 153,["187"] = 153,["188"] = 154,["189"] = 153,["190"] = 153,["191"] = 160,["192"] = 160,["193"] = 160,["194"] = 161,["195"] = 160,["196"] = 160,["197"] = 167,["198"] = 167,["199"] = 167,["200"] = 168,["201"] = 169,["203"] = 171,["205"] = 167,["206"] = 167,["207"] = 175,["208"] = 175,["209"] = 175,["210"] = 176,["211"] = 175,["212"] = 175,["213"] = 179,["214"] = 179,["215"] = 179,["216"] = 180,["217"] = 181,["218"] = 179,["219"] = 179,["220"] = 183,["221"] = 183,["222"] = 183,["223"] = 184,["224"] = 185,["225"] = 183,["226"] = 183,["227"] = 200,["228"] = 200,["229"] = 200,["230"] = 200,["231"] = 201,["232"] = 200,["233"] = 200,["234"] = 203,["235"] = 203,["236"] = 203,["237"] = 203,["238"] = 204,["239"] = 203,["240"] = 203,["241"] = 209,["242"] = 210,["244"] = 211,["245"] = 211,["246"] = 212,["247"] = 213,["248"] = 214,["249"] = 215,["250"] = 215,["251"] = 215,["252"] = 216,["253"] = 217,["254"] = 218,["256"] = 220,["257"] = 215,["258"] = 215,["259"] = 222,["260"] = 222,["261"] = 222,["262"] = 223,["263"] = 224,["264"] = 225,["266"] = 227,["267"] = 228,["269"] = 230,["271"] = 222,["272"] = 222,["273"] = 234,["274"] = 234,["275"] = 234,["276"] = 235,["277"] = 236,["278"] = 237,["280"] = 239,["281"] = 234,["282"] = 234,["283"] = 242,["284"] = 242,["285"] = 242,["286"] = 243,["287"] = 244,["288"] = 245,["290"] = 247,["291"] = 242,["292"] = 242,["293"] = 249,["294"] = 249,["295"] = 249,["296"] = 250,["297"] = 251,["298"] = 252,["300"] = 254,["301"] = 249,["302"] = 249,["303"] = 257,["304"] = 257,["305"] = 257,["306"] = 258,["307"] = 259,["310"] = 262,["311"] = 257,["312"] = 257,["313"] = 265,["314"] = 265,["315"] = 265,["316"] = 266,["317"] = 265,["318"] = 265,["319"] = 269,["320"] = 269,["321"] = 269,["322"] = 270,["323"] = 269,["324"] = 269,["325"] = 273,["326"] = 273,["327"] = 273,["328"] = 274,["329"] = 273,["330"] = 273,["331"] = 277,["332"] = 277,["333"] = 277,["334"] = 278,["335"] = 279,["336"] = 280,["338"] = 282,["339"] = 283,["340"] = 284,["342"] = 286,["343"] = 277,["344"] = 277,["345"] = 289,["346"] = 289,["347"] = 289,["348"] = 290,["349"] = 291,["352"] = 294,["353"] = 295,["354"] = 295,["355"] = 295,["356"] = 295,["357"] = 295,["358"] = 295,["359"] = 295,["360"] = 295,["361"] = 289,["362"] = 300,["363"] = 301,["364"] = 289,["365"] = 289,["366"] = 211,["369"] = 306,["370"] = 306,["371"] = 306,["372"] = 307,["373"] = 306,["374"] = 306,["375"] = 310,["376"] = 310,["377"] = 310,["378"] = 311,["379"] = 310,["380"] = 310,["381"] = 318,["382"] = 318,["383"] = 318,["384"] = 319,["385"] = 318,["386"] = 318,["387"] = 321,["388"] = 321,["389"] = 321,["390"] = 322,["391"] = 321,["392"] = 321,["393"] = 325,["394"] = 325,["395"] = 325,["396"] = 326,["397"] = 325,["398"] = 325,["399"] = 329,["400"] = 329,["401"] = 329,["402"] = 330,["403"] = 329,["404"] = 329,["405"] = 333,["406"] = 333,["407"] = 333,["408"] = 334,["409"] = 335,["410"] = 336,["411"] = 337,["413"] = 339,["414"] = 333,["415"] = 333,["416"] = 342,["417"] = 342,["418"] = 342,["419"] = 343,["420"] = 342,["421"] = 342,["422"] = 346,["423"] = 346,["424"] = 346,["425"] = 347,["426"] = 346,["427"] = 346,["428"] = 350,["429"] = 350,["430"] = 350,["431"] = 351,["432"] = 350,["433"] = 350,["435"] = 67});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____MatchManager = include("logic.archive.manager.MatchManager")
local matchManager = ____MatchManager.matchManager
local ____SeasonTaskConfig = include("logic.configs.SeasonTaskConfig")
local seasonTaskConfigMap_season = ____SeasonTaskConfig.seasonTaskConfigMap_season
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DHelpItem = include("logic.dialogs.help.DHelpItem")
local DHelpItem = ____DHelpItem.DHelpItem
____exports.DLadderInfo = __TS__Class()
local DLadderInfo = ____exports.DLadderInfo
DLadderInfo.name = "DLadderInfo"
__TS__ClassExtends(DLadderInfo, Dialog)
function DLadderInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {rankData = {self = {name = "", rank = 0, tag = "", value = 0}, rankList = {}}}
end
function DLadderInfo.prototype.onCreate(self)
    self.data.rankData = ladderTournamentManager:getCurrentSeasonRank()
    ladderTournamentManager:getNeedClearRankSlot()
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DLadderInfo.prototype.onShow(self)
end
function DLadderInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        matchManager:getNeedClearRankSlot()
        do
            local index = 0
            while index < 200 do
                local root = "center.list.litem_" .. tostring(index + 1)
                local i = index
                self:bindVisible(
                    root,
                    function()
                        return self.data.rankData.rankList[i + 1] ~= nil
                    end
                )
                self:bindVisible(
                    root .. ".root.rank.rank1",
                    function()
                        local ____opt_0 = self.data.rankData.rankList[i + 1]
                        return (____opt_0 and ____opt_0.rank or 0) == 1
                    end
                )
                self:bindVisible(
                    root .. ".root.bg1",
                    function()
                        local ____opt_2 = self.data.rankData.rankList[i + 1]
                        return (____opt_2 and ____opt_2.rank or 0) == 1
                    end
                )
                self:bindVisible(
                    root .. ".root.rank.rank2",
                    function()
                        local ____opt_4 = self.data.rankData.rankList[i + 1]
                        return (____opt_4 and ____opt_4.rank or 0) == 2
                    end
                )
                self:bindVisible(
                    root .. ".root.bg2",
                    function()
                        local ____opt_6 = self.data.rankData.rankList[i + 1]
                        return (____opt_6 and ____opt_6.rank or 0) == 2
                    end
                )
                self:bindVisible(
                    root .. ".root.rank.rank3",
                    function()
                        local ____opt_8 = self.data.rankData.rankList[i + 1]
                        return (____opt_8 and ____opt_8.rank or 0) == 3
                    end
                )
                self:bindVisible(
                    root .. ".root.bg3",
                    function()
                        local ____opt_10 = self.data.rankData.rankList[i + 1]
                        return (____opt_10 and ____opt_10.rank or 0) == 3
                    end
                )
                self:bindVisible(
                    root .. ".root.rank.other",
                    function()
                        local ____opt_12 = self.data.rankData.rankList[i + 1]
                        return (____opt_12 and ____opt_12.rank or 0) > 3
                    end
                )
                self:bindVisible(
                    root .. ".root.bgother",
                    function()
                        local ____opt_14 = self.data.rankData.rankList[i + 1]
                        return (____opt_14 and ____opt_14.rank or 0) > 3
                    end
                )
                self:bindText(
                    root .. ".root.rank.other.rank",
                    function()
                        local ____opt_16 = self.data.rankData.rankList[i + 1]
                        return "" .. tostring(____opt_16 and ____opt_16.rank or 0)
                    end
                )
                self:bindText(
                    root .. ".root.name",
                    function()
                        if self.data.rankData.rankList[i + 1] == nil then
                            return ""
                        end
                        return self.data.rankData.rankList[i + 1].name
                    end
                )
                self:bindImage(
                    root .. ".root.ladder",
                    function()
                        if self.data.rankData.rankList[i + 1] == nil then
                            return 0
                        end
                        local score = self.data.rankData.rankList[i + 1].value
                        local cfg = ladderTournamentManager:getRank(score)
                        return cfg.icon
                    end
                )
                self:bindText(
                    root .. ".root.score",
                    function()
                        if self.data.rankData.rankList[i + 1] == nil then
                            return "0"
                        end
                        local score = self.data.rankData.rankList[i + 1].value
                        local cfg = ladderTournamentManager:getRank(score)
                        return (tostring(cfg.rankName) .. "  ") .. tostring(score - cfg.totalScore)
                    end
                )
                self:bindTextColor(
                    root .. ".root.score",
                    function()
                        local ____opt_18 = self.data.rankData.rankList[i + 1]
                        local r = ____opt_18 and ____opt_18.rank or 0
                        if r == 1 then
                            return UIUtils:toColor("#ffca70")
                        elseif r == 2 then
                            return UIUtils:toColor("#a79eff")
                        elseif r == 3 then
                            return UIUtils:toColor("#9fcdff")
                        else
                            return UIUtils:toColor("#8a95b6")
                        end
                    end
                )
                index = index + 1
            end
        end
        self:bindVisible(
            "center.self.root.rank.rank1",
            function()
                return self.data.rankData.self.rank == 1
            end
        )
        self:bindVisible(
            "center.self.root.rank.rank2",
            function()
                return self.data.rankData.self.rank == 2
            end
        )
        self:bindVisible(
            "center.self.root.rank.rank3",
            function()
                return self.data.rankData.self.rank == 3
            end
        )
        self:bindVisible(
            "center.self.root.rank.other",
            function()
                return self.data.rankData.self.rank > 3
            end
        )
        self:bindText(
            "center.self.root.rank.other.rank",
            function()
                if self.data.rankData.self.rank > 200 then
                    return "200+"
                else
                    return tostring(self.data.rankData.self.rank)
                end
            end
        )
        self:bindText(
            "center.self.root.name",
            function()
                return self.data.rankData.self.name
            end
        )
        self:bindImage(
            "center.self.root.ladder",
            function()
                local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
                return cfg.icon
            end
        )
        self:bindText(
            "center.self.root.score",
            function()
                local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
                return (tostring(cfg.rankName) .. "  ") .. tostring(archive.statInfo.data.seasonSateInfo.score - cfg.totalScore)
            end
        )
        self:bindAction(
            "root_mask",
            "左键-点击",
            function()
                self:hide()
            end
        )
        self:bindAction(
            "center.close",
            "左键-点击",
            function()
                self:hide()
            end
        )
        local taskList = seasonTaskConfigMap_season[ladderTournamentManager:getCurrentSeason().seasonIndex] or ({})
        local nodes = self:getUI("center.task.taskBox"):get_childs()
        do
            local i = 0
            while i < #nodes do
                local node = nodes[i + 1]
                local index = i
                local pathRoot = "center.task.taskBox." .. node:get_name()
                self:bindVisible(
                    pathRoot,
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return false
                        end
                        return true
                    end
                )
                self:bindText(
                    pathRoot .. ".des",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return ""
                        end
                        if ladderTournamentManager:checkTask(task.task) and not ladderTournamentManager:isCanGetReward(task.task) then
                            return task.des.value
                        else
                            return task.des.value .. ladderTournamentManager:getConditionText(task)
                        end
                    end
                )
                self:bindVisible(
                    pathRoot .. ".unfinished",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return false
                        end
                        return not ladderTournamentManager:checkTask(task.task)
                    end
                )
                self:bindVisible(
                    pathRoot .. ".finished",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return false
                        end
                        return ladderTournamentManager:checkTask(task.task) and not ladderTournamentManager:isCanGetReward(task.task)
                    end
                )
                self:bindVisible(
                    pathRoot .. ".get",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return false
                        end
                        return ladderTournamentManager:isCanGetReward(task.task)
                    end
                )
                self:bindClick(
                    pathRoot .. ".get",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return
                        end
                        ladderTournamentManager:getReward(task.task)
                    end
                )
                self:bindText(
                    pathRoot .. ".get.text",
                    function()
                        return i18n["local"](i18n, "领取")
                    end
                )
                self:bindText(
                    pathRoot .. ".finished",
                    function()
                        return i18n["local"](i18n, "已完成")
                    end
                )
                self:bindText(
                    pathRoot .. ".unfinished",
                    function()
                        return i18n["local"](i18n, "未完成")
                    end
                )
                self:bindImage(
                    pathRoot .. ".reward1.icon",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return 0
                        end
                        local propId = task.propId[1]
                        if propId == nil then
                            return 0
                        end
                        return getPropIcon(nil, propId)
                    end
                )
                self:bindMouse(
                    pathRoot .. ".reward1.icon",
                    function()
                        local task = taskList[index + 1]
                        if task == nil then
                            return
                        end
                        local ui = self:getUI(pathRoot .. ".reward1.icon")
                        dialogs:showRepeat(
                            DHelpItem,
                            {
                                x = ui:get_absolute_x(),
                                y = ui:get_absolute_y() + 20,
                                des = task.rewardDes.value
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DHelpItem)
                    end
                )
                i = i + 1
            end
        end
        self:bindVisible(
            "center.task",
            function()
                return not ladderTournamentManager:isRestTime()
            end
        )
        self:bindVisible(
            "center.resttime",
            function()
                return ladderTournamentManager:isRestTime()
            end
        )
        self:bindVisible(
            "center.Title_zh",
            function()
                return i18n.currentLang ~= "en"
            end
        )
        self:bindVisible(
            "center.Title_en",
            function()
                return i18n.currentLang == "en"
            end
        )
        self:bindText(
            "center.task.title",
            function()
                return ladderTournamentManager:getCurrentSeason().rankSeasonName.value
            end
        )
        self:bindVisible(
            "center.reward",
            function()
                return ladderTournamentManager:isCanGetSeasonReward() or ladderTournamentManager:isCanGetLastSeasonReward()
            end
        )
        self:bindText(
            "center.reward.text",
            function()
                if ladderTournamentManager:isCanGetLastSeasonReward() then
                    return i18n["local"](i18n, "获取上个赛季奖励")
                elseif ladderTournamentManager:isCanGetSeasonReward() then
                    return i18n["local"](i18n, "获取赛季奖励")
                end
                return i18n["local"](i18n, "获取赛季奖励")
            end
        )
        self:bindClick(
            "center.reward",
            function()
                ladderTournamentManager:getSeasonReward()
            end
        )
        self:bindText(
            "center.helpBox.gameDes",
            function()
                return ladderTournamentManager:getCurrentSeason().gameDes.value
            end
        )
        self:bindText(
            "center.helpBox.rewardDes",
            function()
                return ladderTournamentManager:getCurrentSeason().rewardDes.value
            end
        )
    end)
end
return ____exports
