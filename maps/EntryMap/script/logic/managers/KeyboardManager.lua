local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 14,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 16,["38"] = 16,["39"] = 19,["40"] = 19,["41"] = 19,["43"] = 19,["44"] = 23,["45"] = 24,["46"] = 24,["47"] = 26,["50"] = 29,["51"] = 23,["52"] = 35,["53"] = 38,["54"] = 38,["55"] = 38,["56"] = 38,["57"] = 38,["58"] = 39,["59"] = 40,["60"] = 41,["63"] = 42,["64"] = 43,["65"] = 38,["66"] = 38,["67"] = 45,["68"] = 45,["69"] = 45,["70"] = 45,["71"] = 45,["72"] = 46,["73"] = 47,["74"] = 48,["77"] = 49,["78"] = 45,["79"] = 45,["80"] = 89,["81"] = 89,["82"] = 89,["83"] = 89,["84"] = 89,["85"] = 89,["86"] = 89,["87"] = 105,["88"] = 105,["89"] = 105,["90"] = 105,["91"] = 105,["92"] = 106,["93"] = 105,["94"] = 105,["95"] = 108,["96"] = 108,["97"] = 108,["98"] = 108,["99"] = 108,["100"] = 109,["101"] = 108,["102"] = 108,["103"] = 111,["104"] = 111,["105"] = 111,["106"] = 111,["107"] = 111,["108"] = 111,["109"] = 111,["110"] = 114,["111"] = 114,["112"] = 114,["113"] = 114,["114"] = 114,["115"] = 114,["116"] = 114,["117"] = 117,["118"] = 117,["119"] = 117,["120"] = 117,["121"] = 117,["122"] = 118,["123"] = 117,["124"] = 117,["125"] = 120,["126"] = 120,["127"] = 120,["128"] = 120,["129"] = 120,["130"] = 121,["131"] = 120,["132"] = 120,["133"] = 124,["134"] = 124,["135"] = 124,["136"] = 124,["137"] = 124,["138"] = 125,["141"] = 128,["142"] = 124,["143"] = 124,["144"] = 130,["145"] = 130,["146"] = 130,["147"] = 130,["148"] = 130,["149"] = 131,["152"] = 134,["153"] = 130,["154"] = 130,["155"] = 35,["156"] = 141,["157"] = 142,["160"] = 146,["161"] = 147,["162"] = 147,["163"] = 147,["164"] = 147,["165"] = 148,["166"] = 149,["167"] = 150,["168"] = 147,["169"] = 147,["170"] = 157,["171"] = 158,["172"] = 159,["173"] = 160,["174"] = 161,["175"] = 162,["176"] = 163,["177"] = 164,["178"] = 166,["179"] = 166,["180"] = 166,["181"] = 166,["182"] = 166,["183"] = 167,["184"] = 166,["185"] = 166,["186"] = 169,["187"] = 169,["188"] = 169,["189"] = 169,["190"] = 169,["191"] = 170,["192"] = 169,["193"] = 169,["194"] = 172,["195"] = 172,["196"] = 172,["197"] = 172,["198"] = 172,["199"] = 173,["200"] = 172,["201"] = 172,["202"] = 175,["203"] = 175,["204"] = 175,["205"] = 175,["206"] = 175,["207"] = 176,["208"] = 175,["209"] = 175,["210"] = 141,["211"] = 180,["212"] = 181,["213"] = 182,["214"] = 183,["217"] = 186,["218"] = 187,["219"] = 188,["220"] = 189,["223"] = 192,["224"] = 180,["225"] = 195,["226"] = 196,["227"] = 196,["228"] = 196,["229"] = 196,["230"] = 196,["231"] = 197,["232"] = 198,["235"] = 196,["236"] = 196,["237"] = 195,["238"] = 210,["239"] = 211,["240"] = 212,["242"] = 214,["243"] = 210,["244"] = 21});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____Keyboard = include("framework.ui.Keyboard")
local keyboard = ____Keyboard.keyboard
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigMap = ____PetSkillConfig.petSkillConfigMap
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____DEmoji = include("logic.dialogs.DEmoji")
local DEmoji = ____DEmoji.DEmoji
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DAttrInfo = include("logic.dialogs.infos.DAttrInfo")
local DAttrInfo = ____DAttrInfo.DAttrInfo
local ____DPlayerList = include("logic.dialogs.infos.DPlayerList")
local DPlayerList = ____DPlayerList.DPlayerList
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
____exports.KeyboardManager = __TS__Class()
local KeyboardManager = ____exports.KeyboardManager
KeyboardManager.name = "KeyboardManager"
function KeyboardManager.prototype.____constructor(self)
end
function KeyboardManager.init(self)
    local ____require_result_0 = include("logic.loop.GameLoop")
    local gameLoop = ____require_result_0.gameLoop
    if gameLoop.isExit then
        return
    end
    self:initLocal()
end
function KeyboardManager.initLocal(self)
    local ____self_eventList_3 = self.eventList
    ____self_eventList_3[#____self_eventList_3 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.SPACE,
        function(trigger, data)
            uiController.follow_cancel:execute(LOCAL.PLAYER_ID)
            local gameData = datas.global:getSingle(GameData)
            if (gameData and gameData.mode) == GameMode.KOF then
                return
            end
            local pet = LOCAL.PLAYER_DATA:getSingle(PetData)
            uiController.follow_once:execute(LOCAL.PLAYER_ID, pet.y3Unit.id)
        end
    )
    local ____self_eventList_6 = self.eventList
    ____self_eventList_6[#____self_eventList_6 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.F1,
        function(trigger, data)
            uiController.follow_cancel:execute(LOCAL.PLAYER_ID)
            local gameData = datas.global:getSingle(GameData)
            if (gameData and gameData.mode) == GameMode.KOF then
                return
            end
            uiController.follow_once:execute(LOCAL.PLAYER_ID)
        end
    )
    local ____self_eventList_7 = self.eventList
    ____self_eventList_7[#____self_eventList_7 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.D,
        function(trigger, data)
        end
    )
    local ____self_eventList_8 = self.eventList
    ____self_eventList_8[#____self_eventList_8 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.C,
        function(trigger, data)
            dialogs:show(DAttrInfo, {})
        end
    )
    local ____self_eventList_9 = self.eventList
    ____self_eventList_9[#____self_eventList_9 + 1] = y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.C,
        function(trigger, data)
            dialogs:hide(DAttrInfo)
        end
    )
    local ____self_eventList_10 = self.eventList
    ____self_eventList_10[#____self_eventList_10 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.V,
        function(trigger, data)
        end
    )
    local ____self_eventList_11 = self.eventList
    ____self_eventList_11[#____self_eventList_11 + 1] = y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.V,
        function(trigger, data)
        end
    )
    local ____self_eventList_12 = self.eventList
    ____self_eventList_12[#____self_eventList_12 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.TAB,
        function(trigger, data)
            dialogs:show(DPlayerList, {})
        end
    )
    local ____self_eventList_13 = self.eventList
    ____self_eventList_13[#____self_eventList_13 + 1] = y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.TAB,
        function(trigger, data)
            dialogs:hide(DPlayerList)
        end
    )
    local ____self_eventList_14 = self.eventList
    ____self_eventList_14[#____self_eventList_14 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.Y,
        function(trigger, data)
            if LOCAL.IS_OBSERVER then
                return
            end
            dialogs:show(DEmoji, {})
        end
    )
    local ____self_eventList_15 = self.eventList
    ____self_eventList_15[#____self_eventList_15 + 1] = y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.Y,
        function(trigger, data)
            if LOCAL.IS_OBSERVER then
                return
            end
            dialogs:hide(DEmoji)
        end
    )
end
function KeyboardManager.initPet(self)
    if LOCAL.IS_OBSERVER then
        return
    end
    y3.config.sync.key = true
    y3.game:event(
        "鼠标-抬起",
        y3.const.MouseKey.RIGHT,
        function(trigger, data)
            local unitdata = datas.players[data.player.id]:getSingle(PetData)
            uiController:selectUnit(data.player.id, unitdata.y3Unit.id)
            petController:move(data.player.id, data.pointing_world_pos)
        end
    )
    self:registerKey(y3.const.KeyboardKey.KEY_1, 0)
    self:registerKey(y3.const.KeyboardKey.KEY_2, 1)
    self:registerKey(y3.const.KeyboardKey.KEY_3, 2)
    self:registerKey(y3.const.KeyboardKey.KEY_4, 3)
    self:registerKey(y3.const.KeyboardKey.KEY_5, 4)
    self:registerKey(y3.const.KeyboardKey.KEY_6, 5)
    self:registerKey(y3.const.KeyboardKey.KEY_7, 6)
    self:registerKey(y3.const.KeyboardKey.KEY_8, 7)
    local ____self_eventList_16 = self.eventList
    ____self_eventList_16[#____self_eventList_16 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.Q,
        function(trigger, data)
            self:castSkill(1)
        end
    )
    local ____self_eventList_17 = self.eventList
    ____self_eventList_17[#____self_eventList_17 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.W,
        function(trigger, data)
            self:castSkill(2)
        end
    )
    local ____self_eventList_18 = self.eventList
    ____self_eventList_18[#____self_eventList_18 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.E,
        function(trigger, data)
            self:castSkill(3)
        end
    )
    local ____self_eventList_19 = self.eventList
    ____self_eventList_19[#____self_eventList_19 + 1] = y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.R,
        function(trigger, data)
            self:castSkill(4)
        end
    )
end
function KeyboardManager.castSkill(self, idx)
    local skillId = archive.petData.cur_skill["" .. tostring(idx)]
    if skillId == nil or skillId == 0 then
        DTips:show(i18n["local"](i18n, "技能未装配"))
        return
    end
    local cfg = petSkillConfigMap[skillId]
    local count = rewardManager:getItem(skillId)
    if count == nil or count <= 0 then
        DTips:show(tostring(cfg.name) .. i18n["local"](i18n, "道具不足"))
        return
    end
    petController.cast:execute(LOCAL.PLAYER_ID, idx)
end
function KeyboardManager.registerKey(self, key, index)
    local ____self_eventList_20 = self.eventList
    ____self_eventList_20[#____self_eventList_20 + 1] = y3.game:event(
        "本地-键盘-按下",
        key,
        function(trigger, data)
            if keyboard.LCTRL then
                petController.playAnim:execute(data.player.id, index)
            else
            end
        end
    )
end
function KeyboardManager.release(self)
    for ____, e in ipairs(self.eventList) do
        e:remove()
    end
    self.eventList = {}
end
KeyboardManager.eventList = {}
return ____exports
