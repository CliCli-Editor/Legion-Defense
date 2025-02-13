local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 13,["30"] = 13,["31"] = 14,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 16,["36"] = 16,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["42"] = 19,["43"] = 20,["44"] = 19,["45"] = 32,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 34,["50"] = 33,["51"] = 33,["52"] = 36,["53"] = 36,["54"] = 36,["56"] = 38,["57"] = 39,["60"] = 42,["61"] = 44,["62"] = 45,["63"] = 46,["64"] = 47,["66"] = 49,["67"] = 49,["68"] = 50,["69"] = 51,["70"] = 52,["71"] = 54,["72"] = 55,["73"] = 56,["74"] = 57,["77"] = 62,["78"] = 63,["79"] = 63,["80"] = 63,["81"] = 63,["82"] = 64,["83"] = 65,["84"] = 66,["86"] = 63,["87"] = 63,["88"] = 63,["89"] = 70,["90"] = 70,["91"] = 70,["92"] = 70,["93"] = 70,["94"] = 70,["95"] = 70,["96"] = 71,["97"] = 72,["101"] = 36,["102"] = 36,["103"] = 79,["104"] = 79,["105"] = 79,["107"] = 80,["108"] = 81,["111"] = 85,["112"] = 86,["115"] = 90,["116"] = 91,["117"] = 92,["118"] = 93,["119"] = 94,["121"] = 96,["122"] = 96,["123"] = 97,["124"] = 99,["125"] = 100,["126"] = 100,["127"] = 100,["128"] = 100,["129"] = 101,["130"] = 102,["131"] = 103,["133"] = 100,["134"] = 100,["135"] = 100,["136"] = 107,["137"] = 107,["138"] = 107,["139"] = 107,["140"] = 107,["141"] = 107,["142"] = 107,["143"] = 108,["144"] = 109,["148"] = 79,["149"] = 79,["150"] = 116,["151"] = 116,["152"] = 116,["153"] = 118,["154"] = 119,["157"] = 123,["158"] = 124,["161"] = 128,["162"] = 116,["163"] = 116,["164"] = 132,["165"] = 133,["166"] = 134,["167"] = 134,["168"] = 135,["169"] = 136,["170"] = 137,["171"] = 137,["172"] = 137,["173"] = 137,["174"] = 137,["175"] = 137,["176"] = 137,["177"] = 138,["178"] = 137,["179"] = 137,["180"] = 134,["181"] = 140,["182"] = 141,["183"] = 142,["184"] = 142,["185"] = 142,["186"] = 142,["187"] = 142,["188"] = 142,["189"] = 142,["190"] = 143,["191"] = 142,["192"] = 142,["193"] = 134,["194"] = 134,["195"] = 147,["196"] = 148,["197"] = 148,["198"] = 149,["199"] = 150,["200"] = 151,["201"] = 151,["202"] = 151,["203"] = 151,["204"] = 151,["205"] = 151,["206"] = 151,["207"] = 152,["208"] = 151,["209"] = 151,["210"] = 148,["211"] = 154,["212"] = 155,["213"] = 156,["214"] = 156,["215"] = 156,["216"] = 156,["217"] = 156,["218"] = 156,["219"] = 156,["220"] = 157,["221"] = 156,["222"] = 156,["223"] = 148,["224"] = 148,["225"] = 161,["226"] = 162,["227"] = 162,["228"] = 163,["229"] = 164,["230"] = 165,["231"] = 165,["232"] = 165,["233"] = 165,["234"] = 165,["235"] = 165,["236"] = 165,["237"] = 166,["238"] = 165,["239"] = 165,["240"] = 162,["241"] = 168,["242"] = 169,["243"] = 170,["244"] = 170,["245"] = 170,["246"] = 170,["247"] = 170,["248"] = 170,["249"] = 170,["250"] = 171,["251"] = 170,["252"] = 170,["253"] = 162,["254"] = 162,["255"] = 176,["256"] = 176,["257"] = 176,["258"] = 177,["259"] = 176,["260"] = 176,["261"] = 180,["262"] = 180,["263"] = 180,["264"] = 181,["265"] = 180,["266"] = 180,["267"] = 183,["268"] = 183,["269"] = 183,["270"] = 184,["271"] = 183,["272"] = 183,["273"] = 187,["274"] = 187,["275"] = 187,["276"] = 188,["277"] = 189,["278"] = 189,["279"] = 189,["280"] = 189,["281"] = 187,["282"] = 187,["283"] = 32});
local ____exports = {}
local ____Easing = include("framework.animation.Easing")
local Easing = ____Easing.default
local ____Tween = include("framework.animation.Tween")
local tween = ____Tween.tween
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
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____BobInfo = include("logic.match.BobInfo")
local BobInfo = ____BobInfo.BobInfo
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DMatching = include("logic.dialogs.menu.DMatching")
local DMatching = ____DMatching.DMatching
local ____DRoomList = include("logic.dialogs.menu.DRoomList")
local DRoomList = ____DRoomList.DRoomList
____exports.DMultiMode = __TS__Class()
local DMultiMode = ____exports.DMultiMode
DMultiMode.name = "DMultiMode"
__TS__ClassExtends(DMultiMode, Dialog)
function DMultiMode.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {effect = "none"}
end
function DMultiMode.prototype.onCreate(self)
    self:bindClick(
        "bg.exit",
        function()
            self:hide()
        end
    )
    self:bindClick(
        "bg.ladder",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                    DTips:show(i18n["local"](i18n, "仅限队长选择游戏模式"))
                    return ____awaiter_resolve(nil)
                end
                self.data.effect = "ladder"
                if bob.data.isMatching then
                    bob:cancel_match()
                elseif bob.data.teamInfo ~= nil and #bob.data.teamInfo.members > 3 then
                    DTips:show(i18n["local"](i18n, "队伍成员数量必须≤3人"))
                else
                    local ____opt_0 = archive.statData.seasonSateInfo
                    local score = ____opt_0 and ____opt_0.score or 0
                    local mode = score < 500 and BobInfo.gameModeLow or BobInfo.gameMode
                    local isSingleMatch = bob.data.teamInfo == nil
                    local isFake = nil
                    if isSingleMatch then
                        local fightCount = archive.statData.match_complete_count + archive.statData.pvp_complete_count
                        if fightCount < defaultConfig["温暖局局数"] then
                            isFake = true
                        end
                    end
                    print((((("开始匹配：score=" .. tostring(score)) .. " mode=") .. tostring(mode)) .. " isSingleMatch=") .. tostring(isSingleMatch))
                    bob:start_match(
                        mode,
                        score,
                        function(____, r, e)
                            if r ~= true then
                                dialogs:hide(DMatching)
                                DTips:show(i18n["local"](i18n, "匹配失败"))
                            end
                        end,
                        isFake
                    )
                    local r = __TS__Await(dialogs:got(
                        DMatching,
                        {
                            showCancel = true,
                            message = i18n["local"](i18n, "正在匹配中")
                        }
                    ))
                    if r and r.cancel then
                        bob:cancel_match()
                    end
                end
            end)
        end
    )
    self:bindClick(
        "bg.random",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if not steamUtils:isSteam() then
                    DTips:show(i18n["local"](i18n, "敬请期待"))
                    return ____awaiter_resolve(nil)
                end
                if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                    DTips:show(i18n["local"](i18n, "仅限队长选择游戏模式"))
                    return ____awaiter_resolve(nil)
                end
                self.data.effect = "random"
                if bob.data.isMatching then
                    bob:cancel_match()
                elseif bob.data.teamInfo ~= nil and #bob.data.teamInfo.members > 3 then
                    DTips:show(i18n["local"](i18n, "队伍成员数量必须≤3人"))
                else
                    local ____opt_4 = archive.statData.seasonSateInfo
                    local score = ____opt_4 and ____opt_4.score or 0
                    local mode = BobInfo.randomMode
                    print(((("开始随机匹配：score=" .. tostring(score)) .. " mode=") .. tostring(mode)) .. " ")
                    bob:start_match(
                        mode,
                        score,
                        function(____, r, e)
                            if r ~= true then
                                dialogs:hide(DMatching)
                                DTips:show(i18n["local"](i18n, "匹配失败"))
                            end
                        end,
                        false
                    )
                    local r = __TS__Await(dialogs:got(
                        DMatching,
                        {
                            showCancel = true,
                            message = i18n["local"](i18n, "正在匹配中")
                        }
                    ))
                    if r and r.cancel then
                        bob:cancel_match()
                    end
                end
            end)
        end
    )
    self:bindClick(
        "bg.custom",
        function()
            if not steamUtils:isSteam() then
                DTips:show(i18n["local"](i18n, "敬请期待"))
                return
            end
            if bob.data.teamInfo ~= nil then
                DTips:show(i18n["local"](i18n, "在队伍中不可选择该模式"))
                return
            end
            dialogs:show(DRoomList, {})
        end
    )
    local animTime = 0.1
    local ladderId = -1
    self:bindMouse(
        "bg.ladder",
        function(____, ui)
            tween:stop(ladderId)
            ladderId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                1,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end,
        function(____, ui)
            tween:stop(ladderId)
            ladderId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                0.9,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end
    )
    local randomId = -1
    self:bindMouse(
        "bg.random",
        function(____, ui)
            tween:stop(randomId)
            randomId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                1,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end,
        function(____, ui)
            tween:stop(randomId)
            randomId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                0.9,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end
    )
    local customId = -1
    self:bindMouse(
        "bg.custom",
        function(____, ui)
            tween:stop(customId)
            customId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                1,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end,
        function(____, ui)
            tween:stop(customId)
            customId = tween["do"](
                tween,
                ui:get_relative_scale_x(),
                0.9,
                animTime,
                Easing.Linear.None,
                function(____, v)
                    ui:set_widget_relative_scale(v, v)
                end
            )
        end
    )
    self:bindVisible(
        "bg.ladder.effect",
        function()
            return self.data.effect == "ladder"
        end
    )
    self:bindVisible(
        "bg.random.effect",
        function()
            return self.data.effect == "random"
        end
    )
    self:bindVisible(
        "bg.custom.effect",
        function()
            return self.data.effect == "custom"
        end
    )
    self:bindText(
        "bg.ladder.currentScore.score",
        function()
            local cfg = ladderTournamentManager:getRank(archive.statInfo.data.seasonSateInfo.score)
            return i18n:format(
                "当前段位：${rankName}",
                {rankName = "#d4c495" .. tostring(cfg.rankName)}
            )
        end
    )
end
return ____exports
