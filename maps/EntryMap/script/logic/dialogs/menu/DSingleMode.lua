local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["32"] = 13,["33"] = 14,["34"] = 13,["35"] = 26,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 28,["40"] = 27,["41"] = 27,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 31,["46"] = 33,["49"] = 36,["50"] = 38,["51"] = 38,["52"] = 38,["53"] = 38,["54"] = 38,["55"] = 38,["56"] = 38,["57"] = 40,["58"] = 40,["59"] = 40,["60"] = 41,["61"] = 40,["62"] = 40,["63"] = 30,["64"] = 30,["65"] = 44,["66"] = 44,["67"] = 44,["68"] = 45,["69"] = 46,["72"] = 50,["73"] = 44,["74"] = 44,["75"] = 53,["76"] = 54,["77"] = 55,["78"] = 55,["79"] = 56,["80"] = 57,["81"] = 58,["82"] = 58,["83"] = 58,["84"] = 58,["85"] = 58,["86"] = 58,["87"] = 58,["88"] = 59,["89"] = 58,["90"] = 58,["91"] = 55,["92"] = 61,["93"] = 62,["94"] = 63,["95"] = 63,["96"] = 63,["97"] = 63,["98"] = 63,["99"] = 63,["100"] = 63,["101"] = 64,["102"] = 63,["103"] = 63,["104"] = 55,["105"] = 55,["106"] = 68,["107"] = 69,["108"] = 69,["109"] = 70,["110"] = 71,["111"] = 72,["112"] = 72,["113"] = 72,["114"] = 72,["115"] = 72,["116"] = 72,["117"] = 72,["118"] = 73,["119"] = 72,["120"] = 72,["121"] = 69,["122"] = 75,["123"] = 76,["124"] = 77,["125"] = 77,["126"] = 77,["127"] = 77,["128"] = 77,["129"] = 77,["130"] = 77,["131"] = 78,["132"] = 77,["133"] = 77,["134"] = 69,["135"] = 69,["136"] = 83,["137"] = 83,["138"] = 83,["139"] = 84,["140"] = 83,["141"] = 83,["142"] = 87,["143"] = 87,["144"] = 87,["145"] = 88,["146"] = 87,["147"] = 87,["148"] = 26});
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
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DMatching = include("logic.dialogs.menu.DMatching")
local DMatching = ____DMatching.DMatching
local ____DSingleFight = include("logic.dialogs.menu.DSingleFight")
local DSingleFight = ____DSingleFight.DSingleFight
____exports.DSingleMode = __TS__Class()
local DSingleMode = ____exports.DSingleMode
DSingleMode.name = "DSingleMode"
__TS__ClassExtends(DSingleMode, Dialog)
function DSingleMode.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {effect = "none"}
end
function DSingleMode.prototype.onCreate(self)
    self:bindClick(
        "bg.exit",
        function()
            self:hide()
        end
    )
    self:bindClick(
        "bg.guide",
        function()
            if bob.data.teamInfo ~= nil then
                DTips:show(i18n["local"](i18n, "仅可单人进入引导关卡"))
                return
            end
            self.data.effect = "guide"
            dialogs:show(
                DMatching,
                {
                    showCancel = false,
                    message = i18n["local"](i18n, "即将进入引导关卡")
                }
            )
            y3.ctimer.wait(
                3,
                function()
                    gameModeUtils:restartGame(1007)
                end
            )
        end
    )
    self:bindClick(
        "bg.fight",
        function()
            if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                DTips:show(i18n["local"](i18n, "仅限队长选择游戏模式"))
                return
            end
            dialogs:show(DSingleFight, {})
        end
    )
    local animTime = 0.1
    local guideId = -1
    self:bindMouse(
        "bg.guide",
        function(____, ui)
            tween:stop(guideId)
            guideId = tween["do"](
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
            tween:stop(guideId)
            guideId = tween["do"](
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
    local fightId = -1
    self:bindMouse(
        "bg.fight",
        function(____, ui)
            tween:stop(fightId)
            fightId = tween["do"](
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
            tween:stop(fightId)
            fightId = tween["do"](
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
        "bg.guide.effect",
        function()
            return self.data.effect == "guide"
        end
    )
    self:bindVisible(
        "bg.fight.effect",
        function()
            return self.data.effect == "fight"
        end
    )
end
return ____exports
