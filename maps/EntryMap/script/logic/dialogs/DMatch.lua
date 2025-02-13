local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 11,["26"] = 11,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["32"] = 13,["33"] = 14,["34"] = 13,["35"] = 46,["36"] = 48,["37"] = 50,["38"] = 51,["39"] = 50,["40"] = 46,["41"] = 56,["42"] = 57,["43"] = 56,["44"] = 60,["46"] = 62,["48"] = 64,["49"] = 64,["50"] = 65,["51"] = 66,["52"] = 68,["53"] = 68,["54"] = 68,["55"] = 69,["56"] = 68,["57"] = 68,["58"] = 71,["59"] = 71,["60"] = 71,["61"] = 72,["62"] = 72,["63"] = 71,["64"] = 71,["65"] = 74,["66"] = 74,["67"] = 74,["68"] = 75,["69"] = 75,["70"] = 74,["71"] = 74,["72"] = 77,["73"] = 77,["74"] = 77,["75"] = 78,["76"] = 78,["77"] = 77,["78"] = 77,["79"] = 80,["80"] = 80,["81"] = 80,["82"] = 81,["83"] = 81,["84"] = 80,["85"] = 80,["86"] = 83,["87"] = 83,["88"] = 83,["89"] = 84,["90"] = 84,["91"] = 83,["92"] = 83,["93"] = 86,["94"] = 86,["95"] = 86,["96"] = 87,["97"] = 87,["98"] = 86,["99"] = 86,["100"] = 89,["101"] = 89,["102"] = 89,["103"] = 90,["104"] = 90,["105"] = 89,["106"] = 89,["107"] = 92,["108"] = 92,["109"] = 92,["110"] = 93,["111"] = 93,["112"] = 92,["113"] = 92,["114"] = 96,["115"] = 96,["116"] = 96,["117"] = 97,["118"] = 97,["119"] = 96,["120"] = 96,["121"] = 100,["122"] = 100,["123"] = 100,["124"] = 101,["125"] = 101,["127"] = 102,["128"] = 100,["129"] = 100,["130"] = 105,["131"] = 105,["132"] = 105,["133"] = 106,["134"] = 106,["135"] = 107,["136"] = 105,["137"] = 105,["138"] = 110,["139"] = 110,["140"] = 110,["141"] = 111,["142"] = 111,["143"] = 112,["144"] = 113,["145"] = 110,["146"] = 110,["147"] = 116,["148"] = 116,["149"] = 116,["150"] = 117,["151"] = 117,["152"] = 118,["153"] = 119,["154"] = 120,["155"] = 121,["156"] = 122,["157"] = 123,["159"] = 125,["161"] = 116,["162"] = 116,["163"] = 128,["164"] = 128,["165"] = 128,["166"] = 129,["167"] = 129,["168"] = 130,["169"] = 131,["170"] = 132,["171"] = 133,["172"] = 134,["173"] = 135,["175"] = 137,["177"] = 128,["178"] = 128,["179"] = 64,["182"] = 143,["183"] = 143,["184"] = 143,["185"] = 144,["186"] = 143,["187"] = 143,["188"] = 146,["189"] = 146,["190"] = 146,["191"] = 147,["192"] = 146,["193"] = 146,["194"] = 150,["195"] = 150,["196"] = 150,["197"] = 151,["198"] = 150,["199"] = 150,["200"] = 153,["201"] = 153,["202"] = 153,["203"] = 154,["204"] = 153,["205"] = 153,["206"] = 157,["207"] = 157,["208"] = 157,["209"] = 158,["210"] = 157,["211"] = 157,["212"] = 160,["213"] = 160,["214"] = 160,["215"] = 161,["216"] = 160,["217"] = 160,["218"] = 164,["219"] = 164,["220"] = 164,["221"] = 165,["222"] = 164,["223"] = 164,["224"] = 167,["225"] = 167,["226"] = 167,["227"] = 168,["228"] = 167,["229"] = 167,["230"] = 171,["231"] = 171,["232"] = 171,["233"] = 172,["234"] = 173,["236"] = 175,["238"] = 171,["239"] = 171,["240"] = 179,["241"] = 179,["242"] = 179,["243"] = 180,["244"] = 179,["245"] = 179,["246"] = 183,["247"] = 183,["248"] = 183,["249"] = 184,["250"] = 185,["251"] = 183,["252"] = 183,["253"] = 188,["254"] = 188,["255"] = 188,["256"] = 189,["257"] = 190,["258"] = 191,["259"] = 188,["260"] = 188,["261"] = 194,["262"] = 194,["263"] = 194,["264"] = 195,["265"] = 196,["266"] = 197,["267"] = 198,["268"] = 199,["269"] = 200,["270"] = 201,["272"] = 203,["274"] = 194,["275"] = 194,["276"] = 206,["277"] = 206,["278"] = 206,["279"] = 207,["280"] = 208,["281"] = 209,["282"] = 210,["283"] = 211,["284"] = 212,["285"] = 213,["287"] = 215,["289"] = 206,["290"] = 206,["291"] = 219,["292"] = 219,["293"] = 219,["294"] = 220,["295"] = 221,["296"] = 221,["297"] = 221,["298"] = 221,["300"] = 223,["301"] = 223,["302"] = 223,["303"] = 223,["305"] = 219,["306"] = 219,["307"] = 227,["308"] = 227,["309"] = 227,["310"] = 228,["311"] = 227,["312"] = 227,["313"] = 231,["314"] = 231,["315"] = 231,["316"] = 231,["317"] = 232,["318"] = 231,["319"] = 231,["320"] = 235,["321"] = 235,["322"] = 235,["323"] = 236,["324"] = 237,["326"] = 239,["328"] = 235,["329"] = 235,["330"] = 243,["331"] = 243,["332"] = 243,["333"] = 243,["334"] = 244,["335"] = 243,["336"] = 243,["337"] = 247,["338"] = 247,["339"] = 247,["340"] = 248,["341"] = 247,["342"] = 247,["343"] = 250,["344"] = 250,["345"] = 250,["346"] = 251,["347"] = 250,["348"] = 250,["349"] = 254,["350"] = 254,["351"] = 254,["352"] = 254,["353"] = 255,["354"] = 254,["355"] = 254,["356"] = 268,["357"] = 268,["358"] = 268,["359"] = 268,["360"] = 269,["361"] = 268,["362"] = 268,["363"] = 272,["364"] = 272,["365"] = 272,["366"] = 272,["367"] = 273,["368"] = 274,["369"] = 272,["370"] = 272,["371"] = 277,["372"] = 277,["373"] = 277,["374"] = 277,["375"] = 278,["376"] = 279,["377"] = 277,["378"] = 277,["379"] = 282,["380"] = 282,["381"] = 282,["382"] = 282,["383"] = 283,["384"] = 284,["385"] = 282,["386"] = 282,["387"] = 287,["388"] = 287,["389"] = 287,["390"] = 288,["391"] = 287,["392"] = 287,["393"] = 290,["394"] = 290,["395"] = 290,["396"] = 291,["397"] = 290,["398"] = 290,["399"] = 293,["400"] = 293,["401"] = 293,["402"] = 294,["403"] = 293,["404"] = 293,["405"] = 296,["406"] = 296,["407"] = 296,["408"] = 297,["409"] = 296,["410"] = 296,["411"] = 299,["412"] = 299,["413"] = 299,["414"] = 300,["415"] = 299,["416"] = 299,["417"] = 302,["418"] = 302,["419"] = 302,["420"] = 303,["421"] = 302,["422"] = 302,["423"] = 309,["424"] = 309,["425"] = 309,["426"] = 310,["427"] = 309,["428"] = 309,["429"] = 313,["430"] = 313,["431"] = 313,["432"] = 314,["433"] = 313,["434"] = 313,["435"] = 317,["436"] = 317,["437"] = 317,["438"] = 318,["439"] = 317,["440"] = 317,["441"] = 321,["442"] = 321,["443"] = 321,["444"] = 322,["445"] = 321,["446"] = 321,["447"] = 325,["448"] = 325,["449"] = 325,["450"] = 326,["451"] = 325,["452"] = 325,["454"] = 60});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____MatchManager = include("logic.archive.manager.MatchManager")
local matchManager = ____MatchManager.matchManager
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____LocalData = include("logic.localData.LocalData")
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
____exports.DMatch = __TS__Class()
local DMatch = ____exports.DMatch
DMatch.name = "DMatch"
__TS__ClassExtends(DMatch, Dialog)
function DMatch.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = "currentWeek", rankData = {self = {name = "", rank = 0, tag = "", value = 0}, rankList = {}}, showHelp = false}
end
function DMatch.prototype.onCreate(self)
    self.data.rankData = matchManager:getCurrentWeekRank()
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DMatch.prototype.onShow(self)
    localData.setting.tabIndex = SettingType["Match_比赛"]
end
function DMatch.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        matchManager:getNeedClearRankSlot()
        do
            local index = 0
            while index < 200 do
                local root = "main.bg.list.ritem_" .. tostring(index + 1)
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
                self:bindText(
                    root .. ".root.score",
                    function()
                        local ____opt_18 = self.data.rankData.rankList[i + 1]
                        local v = ____opt_18 and ____opt_18.value or 0
                        return tostring(math.floor(v / 10000))
                    end
                )
                self:bindText(
                    root .. ".root.winp",
                    function()
                        local ____opt_20 = self.data.rankData.rankList[i + 1]
                        local v = ____opt_20 and ____opt_20.value or 0
                        local p = v % 10000
                        return tostring(p / 10) .. "%"
                    end
                )
                self:bindTextColor(
                    root .. ".root.score",
                    function()
                        local ____opt_22 = self.data.rankData.rankList[i + 1]
                        local r = ____opt_22 and ____opt_22.rank or 0
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
                self:bindTextColor(
                    root .. ".root.winp",
                    function()
                        local ____opt_24 = self.data.rankData.rankList[i + 1]
                        local r = ____opt_24 and ____opt_24.rank or 0
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
            "main.bg.self.root.rank.rank1",
            function()
                return self.data.rankData.self.rank == 1
            end
        )
        self:bindVisible(
            "main.bg.self.root.bg1",
            function()
                return self.data.rankData.self.rank == 1
            end
        )
        self:bindVisible(
            "main.bg.self.root.rank.rank2",
            function()
                return self.data.rankData.self.rank == 2
            end
        )
        self:bindVisible(
            "main.bg.self.root.bg2",
            function()
                return self.data.rankData.self.rank == 2
            end
        )
        self:bindVisible(
            "main.bg.self.root.rank.rank3",
            function()
                return self.data.rankData.self.rank == 3
            end
        )
        self:bindVisible(
            "main.bg.self.root.bg3",
            function()
                return self.data.rankData.self.rank == 3
            end
        )
        self:bindVisible(
            "main.bg.self.root.rank.other",
            function()
                return self.data.rankData.self.rank > 3
            end
        )
        self:bindVisible(
            "main.bg.self.root.bgother",
            function()
                return self.data.rankData.self.rank > 3
            end
        )
        self:bindText(
            "main.bg.self.root.rank.other.rank",
            function()
                if self.data.rankData.self.rank > 200 then
                    return "200+"
                else
                    return tostring(self.data.rankData.self.rank)
                end
            end
        )
        self:bindText(
            "main.bg.self.root.name",
            function()
                return self.data.rankData.self.name
            end
        )
        self:bindText(
            "main.bg.self.root.score",
            function()
                local v = self.data.rankData.self.value
                return tostring(math.floor(v / 10000))
            end
        )
        self:bindText(
            "main.bg.self.root.winp",
            function()
                local v = self.data.rankData.self.value
                local p = v % 10000
                return tostring(p / 10) .. "%"
            end
        )
        self:bindTextColor(
            "main.bg.self.root.score",
            function()
                local r = self.data.rankData.self.rank
                if r == 1 then
                    return UIUtils:toColor("#ffca70")
                elseif r == 2 then
                    return UIUtils:toColor("#a79eff")
                elseif r == 3 then
                    return UIUtils:toColor("#9fcdff")
                else
                    return UIUtils:toColor("#c4ddf8")
                end
            end
        )
        self:bindTextColor(
            "main.bg.self.root.winp",
            function()
                local r = self.data.rankData.self.rank
                if r == 1 then
                    return UIUtils:toColor("#ffca70")
                elseif r == 2 then
                    return UIUtils:toColor("#a79eff")
                elseif r == 3 then
                    return UIUtils:toColor("#9fcdff")
                else
                    return UIUtils:toColor("#c4ddf8")
                end
            end
        )
        self:bindText(
            "main.bg.got.got_label",
            function()
                if __TS__ArrayIndexOf(defaultConfig["比赛不限制积分日期"], dateUtils.startWeekDay) ~= -1 then
                    return i18n["local"](i18n, "每日战斗") .. (tostring(math.min(
                        archive.statInfo:getDailyCompleteMatchGameCount(),
                        defaultConfig["比赛奖励周末_次数"]
                    )) .. "/") .. tostring(defaultConfig["比赛奖励周末_次数"])
                else
                    return i18n["local"](i18n, "每日战斗") .. (tostring(math.min(
                        archive.statInfo:getDailyCompleteMatchGameCount(),
                        defaultConfig["比赛奖励工作日_次数"]
                    )) .. "/") .. tostring(defaultConfig["比赛奖励工作日_次数"])
                end
            end
        )
        self:bindButtonEnable(
            "main.bg.got.got",
            function()
                return not archive.statInfo:isGotMatchRewardFlag()
            end
        )
        self:bindAction(
            "main.bg.got.got",
            "左键-点击",
            function()
                return matchManager:getDailyReward()
            end
        )
        self:bindVisible(
            "main.bg.got.glow",
            function()
                if __TS__ArrayIndexOf(defaultConfig["比赛不限制积分日期"], dateUtils.startWeekDay) ~= -1 then
                    return not archive.statInfo:isGotMatchRewardFlag() and archive.statInfo:getDailyCompleteMatchGameCount() >= defaultConfig["比赛奖励周末_次数"]
                else
                    return not archive.statInfo:isGotMatchRewardFlag() and archive.statInfo:getDailyCompleteMatchGameCount() >= defaultConfig["比赛奖励工作日_次数"]
                end
            end
        )
        self:bindAction(
            "main.bg.help",
            "左键-点击",
            function()
                self.data.showHelp = true
            end
        )
        self:bindVisible(
            "help",
            function()
                return self.data.showHelp
            end
        )
        self:bindVisible(
            "mask",
            function()
                return self.data.showHelp
            end
        )
        self:bindAction(
            "mask",
            "左键-点击",
            function()
                self.data.showHelp = false
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
            "main.bg.tabs.total",
            "左键-点击",
            function()
                self.data.tab = "total"
                self.data.rankData = matchManager:getTotalWeekRank()
            end
        )
        self:bindAction(
            "main.bg.tabs.last_week",
            "左键-点击",
            function()
                self.data.tab = "lastWeek"
                self.data.rankData = matchManager:getLastWeekRank()
            end
        )
        self:bindAction(
            "main.bg.tabs.current_week",
            "左键-点击",
            function()
                self.data.tab = "currentWeek"
                self.data.rankData = matchManager:getCurrentWeekRank()
            end
        )
        self:bindVisible(
            "main.bg.tabs.total.sel",
            function()
                return self.data.tab == "total"
            end
        )
        self:bindVisible(
            "main.bg.tabs.total.unsel",
            function()
                return self.data.tab ~= "total"
            end
        )
        self:bindVisible(
            "main.bg.tabs.last_week.sel",
            function()
                return self.data.tab == "lastWeek"
            end
        )
        self:bindVisible(
            "main.bg.tabs.last_week.unsel",
            function()
                return self.data.tab ~= "lastWeek"
            end
        )
        self:bindVisible(
            "main.bg.tabs.current_week.sel",
            function()
                return self.data.tab == "currentWeek"
            end
        )
        self:bindVisible(
            "main.bg.tabs.current_week.unsel",
            function()
                return self.data.tab ~= "currentWeek"
            end
        )
        self:bindVisible(
            "main.bg.got",
            function()
                return not matchManager:isMatchEnd()
            end
        )
        self:bindVisible(
            "main.bg.help",
            function()
                return not matchManager:isMatchEnd()
            end
        )
        self:bindVisible(
            "main.bg.gameEnd",
            function()
                return self.data.tab == "currentWeek" and matchManager:isMatchEnd()
            end
        )
        self:bindVisible(
            "main.bg.list",
            function()
                return not (self.data.tab == "currentWeek" and matchManager:isMatchEnd())
            end
        )
        self:bindVisible(
            "main.bg.self",
            function()
                return not (self.data.tab == "currentWeek" and matchManager:isMatchEnd())
            end
        )
    end)
end
return ____exports
