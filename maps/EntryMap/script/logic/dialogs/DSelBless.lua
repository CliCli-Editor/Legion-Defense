local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["41"] = 17,["42"] = 18,["43"] = 182,["44"] = 17,["45"] = 25,["46"] = 27,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 30,["52"] = 32,["53"] = 32,["54"] = 33,["55"] = 34,["56"] = 34,["57"] = 34,["58"] = 35,["59"] = 36,["60"] = 37,["61"] = 38,["62"] = 39,["64"] = 41,["65"] = 34,["66"] = 34,["67"] = 43,["68"] = 43,["69"] = 43,["70"] = 44,["71"] = 45,["72"] = 46,["73"] = 47,["74"] = 48,["76"] = 50,["77"] = 43,["78"] = 43,["79"] = 52,["80"] = 52,["81"] = 52,["82"] = 53,["83"] = 54,["84"] = 55,["85"] = 56,["86"] = 57,["88"] = 59,["89"] = 60,["90"] = 61,["91"] = 62,["92"] = 63,["94"] = 65,["96"] = 68,["97"] = 52,["98"] = 52,["99"] = 71,["100"] = 71,["101"] = 71,["102"] = 72,["103"] = 73,["104"] = 74,["105"] = 75,["106"] = 76,["108"] = 78,["109"] = 78,["111"] = 79,["112"] = 79,["114"] = 80,["115"] = 80,["117"] = 81,["118"] = 71,["119"] = 71,["120"] = 84,["121"] = 84,["122"] = 84,["123"] = 85,["124"] = 86,["125"] = 87,["126"] = 88,["127"] = 89,["129"] = 91,["130"] = 84,["131"] = 84,["132"] = 94,["133"] = 94,["134"] = 94,["135"] = 95,["136"] = 94,["137"] = 94,["138"] = 98,["139"] = 98,["140"] = 98,["141"] = 99,["142"] = 100,["143"] = 101,["145"] = 103,["146"] = 98,["147"] = 98,["148"] = 105,["149"] = 105,["150"] = 105,["151"] = 106,["152"] = 107,["153"] = 105,["154"] = 105,["155"] = 32,["158"] = 147,["159"] = 147,["160"] = 147,["161"] = 148,["162"] = 149,["164"] = 151,["165"] = 147,["166"] = 147,["167"] = 154,["168"] = 154,["169"] = 154,["170"] = 155,["171"] = 156,["173"] = 158,["175"] = 154,["176"] = 154,["177"] = 154,["178"] = 154,["179"] = 162,["180"] = 162,["181"] = 163,["182"] = 164,["183"] = 165,["184"] = 162,["185"] = 169,["186"] = 170,["187"] = 171,["189"] = 173,["191"] = 162,["192"] = 162,["193"] = 25,["194"] = 178,["195"] = 179,["196"] = 179,["197"] = 179,["198"] = 179,["199"] = 179,["200"] = 179,["201"] = 179,["202"] = 179,["203"] = 178,["204"] = 184,["205"] = 188,["206"] = 189,["207"] = 189,["208"] = 189,["209"] = 189,["210"] = 189,["211"] = 189,["212"] = 189,["213"] = 189,["214"] = 190,["215"] = 191,["216"] = 191,["217"] = 191,["218"] = 192,["219"] = 193,["220"] = 194,["221"] = 191,["222"] = 191,["223"] = 184,["224"] = 197,["225"] = 201,["226"] = 202,["227"] = 203,["229"] = 205,["230"] = 206,["231"] = 206,["232"] = 206,["233"] = 206,["234"] = 206,["235"] = 206,["236"] = 206,["237"] = 206,["238"] = 197});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____BlessController = include("logic.controllers.BlessController")
local blessController = ____BlessController.blessController
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____LocalDataUtils = include("logic.localData.LocalDataUtils")
local localDataUtils = ____LocalDataUtils.localDataUtils
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____BlessData = include("logic.models.BlessData")
local BlessData = ____BlessData.BlessData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
local ____UIEffect = include("logic.utils.UIEffect")
local UIEffect = ____UIEffect.UIEffect
____exports.DSelBless = __TS__Class()
local DSelBless = ____exports.DSelBless
DSelBless.name = "DSelBless"
__TS__ClassExtends(DSelBless, Dialog)
function DSelBless.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.blessTimer = nil
end
function DSelBless.prototype.onCreate(self)
    self:bindVisible(
        "center",
        function() return not LOCAL.IS_OBSERVER end
    )
    local gameData = datas.global:getSingle(GameData)
    do
        local i = 0
        while i < 3 do
            local id = i
            self:bindText(
                ("center.item_" .. tostring(id + 1)) .. ".name",
                function()
                    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                    local list = playerData and playerData.canSelBless or ({})
                    local config = list[id + 1]
                    if not config then
                        return "error"
                    end
                    return config.name.value
                end
            )
            self:bindImage(
                ("center.item_" .. tostring(id + 1)) .. ".icon",
                function()
                    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                    local list = playerData and playerData.canSelBless or ({})
                    local config = list[id + 1]
                    if config == nil then
                        return 0
                    end
                    return config.icon
                end
            )
            self:bindText(
                ("center.item_" .. tostring(id + 1)) .. ".content.des",
                function()
                    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                    local list = playerData and playerData.canSelBless or ({})
                    local config = list[id + 1]
                    if not config then
                        return "error"
                    end
                    local level = 1
                    if gameData.level <= 10 then
                        level = 1
                    elseif gameData.level <= 20 then
                        level = 2
                    else
                        level = 3
                    end
                    return RichTextUtils:replaceBless(config.id, level)
                end
            )
            self:bindImage(
                ("center.item_" .. tostring(id + 1)) .. ".quality",
                function()
                    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                    local list = playerData and playerData.canSelBless or ({})
                    local config = list[id + 1]
                    if not config then
                        return 0
                    end
                    if config.quality == 1 then
                        return 134218174
                    end
                    if config.quality == 2 then
                        return 134226168
                    end
                    if config.quality == 3 then
                        return 134280850
                    end
                    return 134218174
                end
            )
            self:bindVisible(
                ("center.item_" .. tostring(id + 1)) .. ".effect",
                function()
                    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                    local list = playerData and playerData.canSelBless or ({})
                    local config = list[id + 1]
                    if not config then
                        return false
                    end
                    return config.quality == 3
                end
            )
            self:bindClick(
                "center.item_" .. tostring(id + 1),
                function(____, ui, player)
                    blessController.selBless:execute(LOCAL.PLAYER_ID, id)
                end
            )
            self:bindClick(
                "center.refresh_" .. tostring(id + 1),
                function(____, ui, player)
                    local blessData = datas.players[LOCAL.PLAYER_ID]:getSingle(BlessData)
                    if blessData.refreshCount[id + 1] < blessData.refreshMaxCount[id + 1] then
                        self:playAnim("center.item_" .. tostring(id + 1))
                    end
                    blessController.refresh2:execute(LOCAL.PLAYER_ID, id)
                end
            )
            self:bindVisible(
                ("center.refresh_" .. tostring(id + 1)) .. ".disable",
                function()
                    local blessData = datas.players[LOCAL.PLAYER_ID]:getSingle(BlessData)
                    return blessData.refreshCount[id + 1] >= blessData.refreshMaxCount[id + 1]
                end
            )
            i = i + 1
        end
    end
    self:bindText(
        "center.time.title",
        function()
            if gameLoop ~= nil then
                return i18n["local"](i18n, "选择倒计时：") .. tostring(gameLoop.timeLeft.value)
            end
            return i18n["local"](i18n, "选择倒计时：") .. "0"
        end
    )
    self:watch(
        function() return localData.main.showBless end,
        function(____, show)
            if show then
                self:showAnim()
            else
                self:hideAnim()
            end
        end,
        false,
        true
    )
    self:watch(
        function()
            local cfg = levelConfigMap[gameData.level]
            local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
            return gameData.gameStatus == GameStatus["准备回合"] and (cfg and cfg.trigger) == 2 and playerData.canSelBless ~= nil and #playerData.canSelBless > 0
        end,
        function(____, v, o)
            if v then
                localDataUtils:showBless(true)
            else
                localDataUtils:hideBless()
            end
        end
    )
end
function DSelBless.prototype.playAnim(self, path)
    UIEffect:play_scale2(
        self:getUI(path),
        1,
        1.05,
        0.1,
        function()
        end
    )
end
function DSelBless.prototype.showAnim(self)
    GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "d2398aea-d0ea-4d49-8553-3aa1607a91a3")
    GameAPI.play_ui_comp_anim_new(
        LOCAL.PLAYER.handle,
        "81ad11cd-3ad0-4a66-b376-7b5c58433298",
        0,
        nil,
        1,
        0
    )
    localData.main.showBlessing = true
    self.blessTimer = y3.ltimer.wait_frame(
        15,
        function()
            localData.main.showBlessing = false
            self.blessTimer:remove()
            self.blessTimer = nil
        end
    )
end
function DSelBless.prototype.hideAnim(self)
    if self.blessTimer ~= nil then
        self.blessTimer:remove()
        self.blessTimer = nil
    end
    GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "81ad11cd-3ad0-4a66-b376-7b5c58433298")
    GameAPI.play_ui_comp_anim_new(
        LOCAL.PLAYER.handle,
        "d2398aea-d0ea-4d49-8553-3aa1607a91a3",
        0,
        nil,
        1,
        0
    )
end
return ____exports
