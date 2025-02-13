local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["27"] = 9,["28"] = 10,["29"] = 200,["30"] = 9,["31"] = 19,["32"] = 20,["33"] = 19,["34"] = 23,["35"] = 25,["36"] = 26,["37"] = 26,["38"] = 26,["39"] = 25,["40"] = 27,["41"] = 27,["42"] = 27,["43"] = 25,["44"] = 28,["45"] = 28,["46"] = 28,["47"] = 25,["48"] = 29,["49"] = 29,["50"] = 29,["51"] = 25,["52"] = 25,["54"] = 32,["55"] = 32,["56"] = 33,["57"] = 34,["58"] = 35,["59"] = 36,["60"] = 36,["61"] = 36,["62"] = 36,["63"] = 37,["64"] = 37,["65"] = 37,["66"] = 37,["67"] = 38,["68"] = 38,["69"] = 38,["70"] = 38,["71"] = 39,["72"] = 39,["73"] = 39,["74"] = 40,["75"] = 41,["76"] = 39,["77"] = 39,["78"] = 43,["79"] = 43,["80"] = 43,["81"] = 44,["82"] = 45,["83"] = 45,["85"] = 46,["86"] = 46,["87"] = 46,["88"] = 46,["89"] = 46,["90"] = 46,["91"] = 46,["92"] = 46,["93"] = 46,["94"] = 46,["95"] = 46,["96"] = 46,["97"] = 46,["98"] = 46,["99"] = 46,["100"] = 56,["101"] = 56,["102"] = 56,["103"] = 56,["105"] = 58,["107"] = 43,["108"] = 43,["109"] = 32,["112"] = 62,["113"] = 63,["114"] = 65,["116"] = 71,["117"] = 71,["119"] = 72,["120"] = 73,["121"] = 74,["122"] = 75,["123"] = 76,["125"] = 78,["128"] = 71,["131"] = 85,["132"] = 62,["134"] = 88,["135"] = 88,["136"] = 89,["137"] = 90,["138"] = 92,["139"] = 92,["140"] = 92,["141"] = 93,["142"] = 92,["143"] = 92,["144"] = 95,["145"] = 95,["146"] = 95,["147"] = 96,["148"] = 95,["149"] = 95,["150"] = 98,["151"] = 98,["152"] = 98,["153"] = 99,["154"] = 98,["155"] = 98,["156"] = 101,["157"] = 101,["158"] = 101,["159"] = 102,["160"] = 101,["161"] = 101,["162"] = 104,["163"] = 104,["164"] = 104,["165"] = 105,["166"] = 104,["167"] = 104,["168"] = 107,["169"] = 107,["170"] = 107,["171"] = 108,["172"] = 107,["173"] = 107,["174"] = 110,["175"] = 110,["176"] = 110,["177"] = 111,["178"] = 110,["179"] = 110,["180"] = 113,["181"] = 113,["182"] = 113,["183"] = 114,["184"] = 113,["185"] = 113,["186"] = 116,["187"] = 116,["188"] = 116,["189"] = 117,["190"] = 116,["191"] = 116,["192"] = 120,["193"] = 120,["194"] = 120,["195"] = 121,["196"] = 120,["197"] = 120,["198"] = 124,["199"] = 124,["200"] = 124,["201"] = 125,["202"] = 125,["204"] = 126,["205"] = 124,["206"] = 124,["207"] = 129,["208"] = 129,["209"] = 129,["210"] = 130,["211"] = 130,["213"] = 131,["214"] = 129,["215"] = 129,["216"] = 88,["219"] = 135,["220"] = 138,["221"] = 139,["222"] = 139,["223"] = 139,["224"] = 139,["225"] = 139,["226"] = 140,["227"] = 141,["229"] = 143,["230"] = 138,["231"] = 145,["232"] = 146,["233"] = 147,["234"] = 148,["235"] = 149,["236"] = 150,["237"] = 151,["238"] = 152,["239"] = 153,["241"] = 155,["243"] = 145,["244"] = 160,["245"] = 160,["246"] = 160,["247"] = 161,["248"] = 162,["249"] = 163,["250"] = 164,["251"] = 165,["252"] = 166,["253"] = 167,["254"] = 168,["255"] = 169,["256"] = 170,["258"] = 172,["259"] = 160,["260"] = 160,["261"] = 175,["262"] = 175,["263"] = 175,["264"] = 176,["265"] = 176,["267"] = 177,["268"] = 175,["269"] = 175,["270"] = 179,["271"] = 179,["272"] = 179,["273"] = 180,["274"] = 179,["275"] = 179,["276"] = 182,["277"] = 182,["278"] = 182,["279"] = 183,["280"] = 182,["281"] = 182,["282"] = 186,["283"] = 186,["284"] = 186,["285"] = 187,["286"] = 186,["287"] = 186,["288"] = 189,["289"] = 189,["290"] = 189,["291"] = 190,["292"] = 189,["293"] = 189,["294"] = 192,["295"] = 192,["296"] = 192,["297"] = 193,["298"] = 192,["299"] = 192,["300"] = 195,["301"] = 195,["302"] = 195,["303"] = 196,["304"] = 195,["305"] = 195,["306"] = 23,["307"] = 201,["308"] = 202,["309"] = 203,["310"] = 205,["311"] = 205,["312"] = 206,["313"] = 205,["314"] = 207,["315"] = 208,["316"] = 209,["318"] = 205,["319"] = 205,["320"] = 201,["321"] = 213,["322"] = 214,["323"] = 213,["324"] = 216,["325"] = 217,["326"] = 218,["327"] = 216});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local SettingType = ____LocalData.SettingType
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
____exports.DRank = __TS__Class()
local DRank = ____exports.DRank
DRank.name = "DRank"
__TS__ClassExtends(DRank, Dialog)
function DRank.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {type = 0, slot = 51}
    self.eventId = 0
end
function DRank.prototype.onCreate(self)
    self:initView()
end
function DRank.prototype.initView(self)
    local ttt = {
        {
            title = function() return i18n["local"](i18n, "熟练度排行榜") end,
            slot = 51
        },
        {
            title = function() return i18n["local"](i18n, "金币榜") end,
            slot = 57
        },
        {
            title = function() return i18n["local"](i18n, "钻石榜") end,
            slot = 58
        },
        {
            title = function() return i18n["local"](i18n, "装饰度排行榜") end,
            slot = 62
        }
    }
    do
        local index = 0
        while index < #ttt do
            local element = ttt[index + 1]
            local idx = index
            local path = "root.btns.btns.btn_" .. tostring(idx + 1)
            self:bindText(
                path .. ".normal.title",
                function() return element:title() end
            )
            self:bindText(
                path .. ".select.title",
                function() return element:title() end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.type == idx end
            )
            self:bindClick(
                path,
                function()
                    self.data.type = idx
                    self.data.slot = ttt[idx + 1].slot
                end
            )
            self:bindVisible(
                path,
                function()
                    if element.slot == 57 or element.slot == 58 then
                        if y3.game.is_debug_mode() then
                            return true
                        end
                        local userList = {
                            "birnfly#4180",
                            "聪明的可达鸭#9161",
                            "xpf#9160",
                            "xpf#8755",
                            "mml#3739",
                            "林天辰#7583",
                            "林天辰#2827",
                            "力丸#3301",
                            "来妹#5913",
                            "DATOU#7812",
                            "木头是一条狗#4894",
                            "木头是一条狗#8582",
                            "困难的电脑#1292"
                        }
                        return __TS__ArrayIndexOf(
                            userList,
                            LOCAL.PLAYER:get_platform_name()
                        ) ~= -1
                    else
                        return true
                    end
                end
            )
            index = index + 1
        end
    end
    local list = self:compute(function()
        local slot = self.data.slot
        local rankList = {}
        do
            local index = 0
            while index < 200 do
                do
                    local name = GameAPI.get_archive_rank_player_nickname(slot, index + 1)
                    local tag = GameAPI.get_archive_rank_player_tag(slot, index + 1)
                    local value = y3.game.get_archive_rank_player_archive_value(slot, index + 1)
                    if name == "" and tag == "" then
                        goto __continue18
                    end
                    rankList[#rankList + 1] = {rank = index + 1, platformName = name .. tag, name = name, value = value}
                end
                ::__continue18::
                index = index + 1
            end
        end
        return rankList
    end)
    do
        local index = 0
        while index < 200 do
            local root = "root.contents.list.rank_" .. tostring(index + 1)
            local rank = index
            self:bindVisible(
                root,
                function()
                    return list.value[rank + 1] ~= nil
                end
            )
            self:bindVisible(
                root .. ".bg.other",
                function()
                    return rank + 1 > 3
                end
            )
            self:bindVisible(
                root .. ".bg.rank1",
                function()
                    return rank + 1 == 1
                end
            )
            self:bindVisible(
                root .. ".bg.rank2",
                function()
                    return rank + 1 == 2
                end
            )
            self:bindVisible(
                root .. ".bg.rank3",
                function()
                    return rank + 1 == 3
                end
            )
            self:bindVisible(
                root .. ".rank.other",
                function()
                    return rank + 1 > 3
                end
            )
            self:bindVisible(
                root .. ".rank.rank1",
                function()
                    return rank + 1 == 1
                end
            )
            self:bindVisible(
                root .. ".rank.rank2",
                function()
                    return rank + 1 == 2
                end
            )
            self:bindVisible(
                root .. ".rank.rank3",
                function()
                    return rank + 1 == 3
                end
            )
            self:bindText(
                root .. ".rank.other.rank",
                function()
                    return "" .. tostring(rank + 1)
                end
            )
            self:bindText(
                root .. ".name",
                function()
                    if list.value[rank + 1] == nil then
                        return ""
                    end
                    return list.value[rank + 1].name
                end
            )
            self:bindText(
                root .. ".value",
                function()
                    if list.value[rank + 1] == nil then
                        return "0"
                    end
                    return "" .. tostring(list.value[rank + 1].value)
                end
            )
            index = index + 1
        end
    end
    local platformName = LOCAL.PLAYER:get_platform_name()
    local rank = self:compute(function()
        local ____opt_0 = __TS__ArrayFind(
            list.value,
            function(____, a) return a.platformName == platformName end
        )
        local rank = ____opt_0 and ____opt_0.rank or LOCAL.PLAYER:get_rank_num(self.data.slot)
        if rank == 0 then
            rank = 999
        end
        return rank
    end)
    local value = self:compute(function()
        if self.data.slot == 51 then
            return archive.expRankInfo:get()
        elseif self.data.slot == 57 then
            return archive.goldRank:get()
        elseif self.data.slot == 58 then
            return archive.diamondRank:get()
        elseif self.data.slot == 62 then
            return archive.decorationRank:get()
        else
            return archive.scoreRankInfo:get()
        end
    end)
    self:bindText(
        "root.contents.header.value",
        function()
            if self.data.slot == 51 then
                return i18n["local"](i18n, "熟练度")
            elseif self.data.slot == 57 then
                return i18n["local"](i18n, "金币榜")
            elseif self.data.slot == 58 then
                return i18n["local"](i18n, "钻石榜")
            elseif self.data.slot == 56 then
                return i18n["local"](i18n, "国庆积分")
            elseif self.data.slot == 62 then
                return i18n["local"](i18n, "装饰度排行榜")
            end
            return i18n["local"](i18n, "当前值")
        end
    )
    self:bindText(
        "root.contents.myrank.rank.rank",
        function()
            if rank.value > 200 then
                return "200+"
            end
            return "" .. tostring(rank.value)
        end
    )
    self:bindText(
        "root.contents.myrank.value",
        function()
            return "" .. tostring(value.value)
        end
    )
    self:bindText(
        "root.contents.myrank.name",
        function()
            return LOCAL.PLAYER:get_name()
        end
    )
    self:bindVisible(
        "root.contents.myrank.rank",
        function()
            return rank.value > 3
        end
    )
    self:bindVisible(
        "root.contents.myrank.rank1",
        function()
            return rank.value == 1
        end
    )
    self:bindVisible(
        "root.contents.myrank.rank2",
        function()
            return rank.value == 2
        end
    )
    self:bindVisible(
        "root.contents.myrank.rank3",
        function()
            return rank.value == 3
        end
    )
end
function DRank.prototype.onShow(self)
    localData.setting.tabIndex = SettingType["Rank_排行榜"]
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    self:watch(
        function()
            return localData.setting.tabIndex == SettingType["Rank_排行榜"]
        end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DRank.prototype.onHide(self)
    escManager:removeEvent(self.eventId)
end
function DRank.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
return ____exports
