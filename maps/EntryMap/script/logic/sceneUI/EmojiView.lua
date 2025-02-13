local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 5,["16"] = 5,["18"] = 5,["19"] = 6,["20"] = 15,["21"] = 17,["22"] = 56,["23"] = 5,["24"] = 19,["25"] = 20,["26"] = 21,["27"] = 22,["28"] = 22,["29"] = 22,["30"] = 23,["31"] = 23,["33"] = 24,["34"] = 25,["35"] = 25,["36"] = 25,["38"] = 25,["40"] = 25,["41"] = 22,["42"] = 22,["43"] = 27,["44"] = 27,["45"] = 27,["46"] = 28,["47"] = 28,["49"] = 29,["50"] = 30,["51"] = 30,["52"] = 30,["54"] = 30,["56"] = 30,["57"] = 27,["58"] = 27,["59"] = 32,["60"] = 32,["61"] = 32,["62"] = 33,["63"] = 33,["65"] = 34,["66"] = 36,["67"] = 37,["69"] = 40,["70"] = 32,["71"] = 32,["72"] = 42,["73"] = 42,["74"] = 42,["75"] = 43,["76"] = 43,["78"] = 44,["79"] = 45,["80"] = 45,["81"] = 45,["82"] = 46,["83"] = 45,["84"] = 45,["85"] = 48,["86"] = 49,["88"] = 52,["89"] = 42,["90"] = 42,["91"] = 19,["92"] = 57,["93"] = 58,["94"] = 59,["96"] = 61,["97"] = 61,["98"] = 61,["99"] = 61,["100"] = 62,["102"] = 62,["104"] = 63,["105"] = 64,["106"] = 65,["107"] = 61,["108"] = 61,["109"] = 57});
local ____exports = {}
local ____SceneUI = include("framework.ui.SceneUI")
local SceneUI = ____SceneUI.SceneUI
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigMap = ____PetEmoConfig.petEmoConfigMap
____exports.EmojiView = __TS__Class()
local EmojiView = ____exports.EmojiView
EmojiView.name = "EmojiView"
__TS__ClassExtends(EmojiView, SceneUI)
function EmojiView.prototype.____constructor(self, ...)
    SceneUI.prototype.____constructor(self, ...)
    self.data = vue.reactive({params = {emoji = 0}})
    self.unitId = 0
    self.ui = nil
    self.timer = nil
end
function EmojiView.prototype.onCreate(self)
    self:getUI("root"):set_pos(0, 100)
    self:getUI("root"):set_visible(true)
    self:bindVisible(
        "root.emo1",
        function()
            if self.data.params.emoji == 0 then
                return false
            end
            local cfg = petEmoConfigMap[self.data.params.emoji]
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
        "root.emo2",
        function()
            if self.data.params.emoji == 0 then
                return false
            end
            local cfg = petEmoConfigMap[self.data.params.emoji]
            local ____temp_1
            if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                ____temp_1 = cfg.enType == 2
            else
                ____temp_1 = cfg.type == 2
            end
            return ____temp_1
        end
    )
    self:bindImage(
        "root.emo1.emo1",
        function()
            if self.data.params.emoji == 0 then
                return 0
            end
            local cfg = petEmoConfigMap[self.data.params.emoji]
            if cfg == nil then
                return 0
            end
            return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
        end
    )
    self:bindSeq(
        "root.emo2",
        function()
            if self.data.params.emoji == 0 then
                return 0
            end
            local cfg = petEmoConfigMap[self.data.params.emoji]
            y3.ltimer.wait(
                0.1,
                function()
                    self:getUI("root.emo2"):play_ui_sequence(true)
                end
            )
            if cfg == nil then
                return 0
            end
            return i18n.currentLang == "en" and cfg.enIcon ~= 0 and cfg.enIcon or cfg.icon
        end
    )
end
function EmojiView.prototype.onEnable(self)
    if self.timer ~= nil then
        self.timer:remove()
    end
    self.timer = y3.ltimer.loop_count(
        2,
        1,
        function()
            local ____opt_2 = self.timer
            if ____opt_2 ~= nil then
                ____opt_2:remove()
            end
            self.timer = nil
            self.data.params.emoji = 0
            self:hide()
        end
    )
end
return ____exports
