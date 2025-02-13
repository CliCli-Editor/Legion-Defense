local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 10,["26"] = 10,["27"] = 11,["28"] = 10,["29"] = 19,["30"] = 20,["31"] = 21,["32"] = 20,["33"] = 19,["34"] = 25,["37"] = 27,["38"] = 27,["39"] = 28,["40"] = 29,["41"] = 29,["42"] = 29,["43"] = 29,["44"] = 30,["45"] = 31,["48"] = 32,["49"] = 29,["50"] = 29,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 35,["55"] = 36,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 38,["60"] = 37,["61"] = 37,["62"] = 40,["63"] = 41,["65"] = 43,["66"] = 34,["67"] = 34,["68"] = 45,["69"] = 45,["70"] = 45,["71"] = 46,["72"] = 47,["73"] = 49,["74"] = 50,["76"] = 52,["77"] = 45,["78"] = 45,["79"] = 54,["80"] = 54,["81"] = 54,["82"] = 55,["83"] = 56,["84"] = 56,["86"] = 57,["87"] = 58,["88"] = 58,["89"] = 58,["91"] = 58,["93"] = 58,["94"] = 54,["95"] = 54,["96"] = 60,["97"] = 60,["98"] = 60,["99"] = 61,["100"] = 62,["101"] = 62,["103"] = 63,["104"] = 65,["105"] = 65,["106"] = 65,["108"] = 65,["110"] = 65,["111"] = 60,["112"] = 60,["113"] = 27,["117"] = 25});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigMap = ____PetEmoConfig.petEmoConfigMap
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
____exports.DEmoji = __TS__Class()
local DEmoji = ____exports.DEmoji
DEmoji.name = "DEmoji"
__TS__ClassExtends(DEmoji, Dialog)
function DEmoji.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DEmoji.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DEmoji.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        do
            local index = 0
            while index < 4 do
                local idx = index + 1
                self:bindAction(
                    "root.panel.emoji_" .. tostring(idx),
                    "左键-点击",
                    function()
                        local id = archive.petInfo.data.cur_emoji["" .. tostring(idx)]
                        if id == nil or id == 0 or petEmoConfigMap[id] == nil then
                            return
                        end
                        petController.playEmo:execute(LOCAL.PLAYER_ID, id)
                    end
                )
                self:bindSeq(
                    ("root.panel.emoji_" .. tostring(idx)) .. ".seq",
                    function()
                        local id = archive.petInfo.data.cur_emoji["" .. tostring(idx)]
                        local cfg = petEmoConfigMap[id]
                        y3.ltimer.wait(
                            0.1,
                            function()
                                self:getUI(("root.panel.emoji_" .. tostring(idx)) .. ".seq"):play_ui_sequence(true)
                            end
                        )
                        if cfg == nil then
                            return 0
                        end
                        return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                    end
                )
                self:bindImage(
                    ("root.panel.emoji_" .. tostring(idx)) .. ".icon",
                    function()
                        local id = archive.petInfo.data.cur_emoji["" .. tostring(idx)]
                        local cfg = petEmoConfigMap[id]
                        if cfg == nil then
                            return 134230199
                        end
                        return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
                    end
                )
                self:bindVisible(
                    ("root.panel.emoji_" .. tostring(idx)) .. ".icon",
                    function()
                        local id = archive.petInfo.data.cur_emoji["" .. tostring(idx)]
                        if id == nil or id == 0 or petEmoConfigMap[id] == nil then
                            return true
                        end
                        local cfg = petEmoConfigMap[id]
                        local ____temp_0
                        if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                            ____temp_0 = cfg.enType == 1
                        else
                            ____temp_0 = cfg.type == 1
                        end
                        return ____temp_0
                    end
                )
                self:bindVisible(
                    ("root.panel.emoji_" .. tostring(idx)) .. ".seq",
                    function()
                        local id = archive.petInfo.data.cur_emoji["" .. tostring(idx)]
                        if id == nil or id == 0 or petEmoConfigMap[id] == nil then
                            return false
                        end
                        local cfg = petEmoConfigMap[id]
                        local ____temp_1
                        if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                            ____temp_1 = cfg.enType == 2
                        else
                            ____temp_1 = cfg.type == 2
                        end
                        return ____temp_1
                    end
                )
                index = index + 1
            end
        end
    end)
end
return ____exports
