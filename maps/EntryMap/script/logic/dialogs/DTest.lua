local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 18,["30"] = 19,["31"] = 20,["32"] = 19,["33"] = 18,["34"] = 24,["36"] = 26,["37"] = 26,["38"] = 26,["39"] = 26,["40"] = 26,["41"] = 27,["42"] = 28,["43"] = 29,["46"] = 32,["47"] = 33,["50"] = 35,["51"] = 26,["52"] = 26,["53"] = 37,["54"] = 37,["55"] = 37,["56"] = 37,["57"] = 37,["58"] = 38,["59"] = 37,["60"] = 37,["61"] = 40,["62"] = 40,["63"] = 40,["64"] = 40,["65"] = 40,["67"] = 41,["68"] = 41,["69"] = 42,["70"] = 43,["72"] = 41,["75"] = 46,["76"] = 40,["77"] = 40,["79"] = 24});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____bind = include("framework.ui.bind")
local bindAction = ____bind.bindAction
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DDebug = include("logic.dialogs.DDebug")
local DDebug = ____DDebug.DDebug
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
____exports.DTest = __TS__Class()
local DTest = ____exports.DTest
DTest.name = "DTest"
__TS__ClassExtends(DTest, Dialog)
function DTest.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DTest.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DTest.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        bindAction(
            self,
            "pre.button_2",
            "左键-点击",
            function()
                local fullPath = "DTest.pre.input_field_1"
                local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
                if ui == nil then
                    return
                end
                local text = ui:get_input_field_content()
                if not y3.game.is_debug_mode() and (not text or text ~= "9013") then
                    return
                end
                self:hide()
            end
        )
        bindAction(
            self,
            "pre.testBtn",
            "左键-点击",
            function()
                dialogs:show(DDebug, {})
            end
        )
        bindAction(
            self,
            "clearBtn",
            "左键-点击",
            function()
                do
                    local i = 1
                    while i <= 50 do
                        if i ~= 5 then
                            y3.save_data.save_string(y3.player.LOCAL_PLAYER, i, "")
                        end
                        i = i + 1
                    end
                end
                DTips:show(i18n["local"](i18n, "清除存档"))
            end
        )
    end)
end
return ____exports
