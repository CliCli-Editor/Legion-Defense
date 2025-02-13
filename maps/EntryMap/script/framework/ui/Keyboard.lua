local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 10,["7"] = 11,["8"] = 11,["9"] = 11,["10"] = 11,["11"] = 12,["12"] = 11,["13"] = 11,["14"] = 14,["15"] = 14,["16"] = 14,["17"] = 14,["18"] = 15,["19"] = 14,["20"] = 14,["21"] = 17,["22"] = 17,["23"] = 17,["24"] = 17,["25"] = 18,["26"] = 17,["27"] = 17,["28"] = 20,["29"] = 20,["30"] = 20,["31"] = 20,["32"] = 21,["33"] = 20,["34"] = 20,["35"] = 10});
local ____exports = {}
____exports.keyboard = vue.reactive({LCTRL = false, LALT = false})
function ____exports.initKeyboard(self)
    y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.LCTRL,
        function()
            ____exports.keyboard.LCTRL = true
        end
    )
    y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.LCTRL,
        function()
            ____exports.keyboard.LCTRL = false
        end
    )
    y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.LALT,
        function()
            ____exports.keyboard.LALT = true
        end
    )
    y3.game:event(
        "本地-键盘-抬起",
        y3.const.KeyboardKey.LALT,
        function()
            ____exports.keyboard.LALT = false
        end
    )
end
return ____exports
