local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["29"] = 9,["30"] = 10,["31"] = 63,["32"] = 9,["33"] = 15,["34"] = 16,["35"] = 17,["36"] = 16,["37"] = 15,["38"] = 21,["40"] = 23,["41"] = 28,["42"] = 28,["43"] = 28,["44"] = 28,["45"] = 28,["46"] = 28,["47"] = 28,["48"] = 28,["49"] = 29,["50"] = 29,["51"] = 29,["52"] = 29,["53"] = 29,["54"] = 29,["55"] = 29,["56"] = 29,["57"] = 31,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 31,["63"] = 31,["64"] = 31,["65"] = 32,["66"] = 32,["67"] = 32,["68"] = 32,["69"] = 32,["70"] = 32,["71"] = 32,["72"] = 32,["73"] = 34,["74"] = 34,["75"] = 34,["76"] = 34,["77"] = 34,["78"] = 35,["79"] = 34,["80"] = 34,["81"] = 38,["82"] = 38,["83"] = 38,["84"] = 38,["85"] = 38,["86"] = 39,["87"] = 38,["88"] = 38,["89"] = 42,["90"] = 42,["91"] = 42,["92"] = 42,["93"] = 42,["94"] = 43,["95"] = 42,["96"] = 42,["97"] = 54,["98"] = 54,["99"] = 54,["100"] = 55,["101"] = 56,["103"] = 58,["105"] = 54,["106"] = 54,["107"] = 54,["108"] = 54,["110"] = 21,["111"] = 65,["112"] = 70,["113"] = 71,["114"] = 71,["115"] = 71,["116"] = 71,["117"] = 71,["118"] = 71,["119"] = 71,["120"] = 71,["121"] = 73,["122"] = 74,["123"] = 74,["124"] = 74,["125"] = 75,["126"] = 76,["127"] = 77,["128"] = 74,["129"] = 74,["130"] = 65,["131"] = 80,["132"] = 81,["133"] = 82,["134"] = 83,["136"] = 85,["137"] = 86,["138"] = 86,["139"] = 86,["140"] = 86,["141"] = 86,["142"] = 86,["143"] = 86,["144"] = 86,["145"] = 80});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindAction = ____bind.bindAction
local bindText = ____bind.bindText
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
local ____LocalDataUtils = include("logic.localData.LocalDataUtils")
local localDataUtils = ____LocalDataUtils.localDataUtils
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
____exports.DTalent = __TS__Class()
local DTalent = ____exports.DTalent
DTalent.name = "DTalent"
__TS__ClassExtends(DTalent, Dialog)
function DTalent.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {}}
    self.talentTimer = nil
end
function DTalent.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DTalent.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local player = LOCAL.PLAYER_DATA:getSingle(PlayerData)
        bindText(
            self,
            "center.cards.item_1.des",
            function()
                local ____opt_0 = player.talentConfigList[#player.talent * 2 + 1]
                return ____opt_0 and ____opt_0.describe.value or "??"
            end
        )
        bindText(
            self,
            "center.cards.item_2.des",
            function()
                local ____opt_2 = player.talentConfigList[#player.talent * 2 + 1 + 1]
                return ____opt_2 and ____opt_2.describe.value or "??"
            end
        )
        bindText(
            self,
            "center.cards.item_1.name",
            function()
                local ____opt_4 = player.talentConfigList[#player.talent * 2 + 1]
                return ____opt_4 and ____opt_4.name.value or "??"
            end
        )
        bindText(
            self,
            "center.cards.item_2.name",
            function()
                local ____opt_6 = player.talentConfigList[#player.talent * 2 + 1 + 1]
                return ____opt_6 and ____opt_6.name.value or "??"
            end
        )
        bindAction(
            self,
            "center.cards.item_1",
            "左键-点击",
            function()
                playerController.selTalent:execute(LOCAL.PLAYER_ID, 1)
            end
        )
        bindAction(
            self,
            "center.cards.item_2",
            "左键-点击",
            function()
                playerController.selTalent:execute(LOCAL.PLAYER_ID, 2)
            end
        )
        bindAction(
            self,
            "center.hide",
            "左键-点击",
            function()
                localDataUtils:hideTalent()
            end
        )
        self:watch(
            function() return localData.main.showTalent end,
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
    end)
end
function DTalent.prototype.showAnim(self)
    GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "2fd34482-773d-49d7-bd61-b21ced10e84f")
    GameAPI.play_ui_comp_anim_new(
        LOCAL.PLAYER.handle,
        "9e6fd7da-f7aa-46ae-8892-063d028e207e",
        0,
        nil,
        1,
        0
    )
    localData.main.showTalenting = true
    self.talentTimer = y3.ltimer.wait_frame(
        15,
        function()
            localData.main.showTalenting = false
            self.talentTimer:remove()
            self.talentTimer = nil
        end
    )
end
function DTalent.prototype.hideAnim(self)
    if self.talentTimer ~= nil then
        self.talentTimer:remove()
        self.talentTimer = nil
    end
    GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "9e6fd7da-f7aa-46ae-8892-063d028e207e")
    GameAPI.play_ui_comp_anim_new(
        LOCAL.PLAYER.handle,
        "2fd34482-773d-49d7-bd61-b21ced10e84f",
        0,
        nil,
        1,
        0
    )
end
return ____exports
