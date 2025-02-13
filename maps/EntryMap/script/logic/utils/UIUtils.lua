local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSubstring = ____lualib.__TS__StringSubstring
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__NumberToFixed = ____lualib.__TS__NumberToFixed
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 2,["14"] = 2,["15"] = 3,["16"] = 4,["17"] = 3,["18"] = 6,["19"] = 7,["20"] = 6,["21"] = 10,["22"] = 11,["23"] = 12,["24"] = 13,["26"] = 14,["27"] = 10,["28"] = 17,["29"] = 18,["30"] = 19,["31"] = 20,["33"] = 22,["34"] = 23,["35"] = 24,["36"] = 28,["37"] = 29,["38"] = 30,["39"] = 32,["40"] = 17,["41"] = 35,["42"] = 37,["43"] = 35,["44"] = 39,["45"] = 40,["46"] = 39,["47"] = 43,["48"] = 44,["49"] = 43,["50"] = 47,["51"] = 48,["52"] = 47,["53"] = 51,["54"] = 52,["55"] = 51,["56"] = 59,["57"] = 59,["58"] = 68,["59"] = 69,["60"] = 70,["62"] = 73,["63"] = 74,["64"] = 75,["65"] = 76,["66"] = 79,["67"] = 81,["68"] = 68});
local ____exports = {}
____exports.UIUtils = __TS__Class()
local UIUtils = ____exports.UIUtils
UIUtils.name = "UIUtils"
function UIUtils.prototype.____constructor(self)
end
function UIUtils.get_width(self, ui)
    return ui:get_width() * y3.ui.get_window_width() / y3.ui.get_screen_width()
end
function UIUtils.get_scale(self)
    return y3.ui.get_window_width() / y3.ui.get_screen_width()
end
function UIUtils.getIconByRoleId(self, id)
    local unit = y3.object.unit[id]
    if unit ~= nil and unit.data ~= nil and unit.data.icon ~= nil then
        return unit.data.icon
    end
    return 0
end
function UIUtils.toColor(self, str)
    local str2 = str .. ""
    if __TS__StringStartsWith(str2, "#") then
        str2 = __TS__StringSubstring(str2, 1)
    end
    local red = __TS__StringSubstring(str2, 0, 2)
    local green = __TS__StringSubstring(str2, 2, 4)
    local blue = __TS__StringSubstring(str2, 4, 6)
    local r = __TS__ParseInt(red, 16) or 255
    local g = __TS__ParseInt(green, 16) or 255
    local b = __TS__ParseInt(blue, 16) or 255
    return {r, g, b, 255}
end
function UIUtils.gotoQQ(self)
    GameAPI.visual_pyexec("import MPlatform;MPlatform.GotoUrl('https://qm.qq.com/cgi-bin/qm/qr?authKey=F4joG8WWLm5vII5BH0JcafatN47Uj6VqISFboNOeVki%2BK4wyJjN%2FBbCdDYFOR3n%2B&k=22hY2omMIIx4ZsZB5sf-A_Dn0t_wqCNF&noverify=0')")
end
function UIUtils.gotoUrl(self, url)
    GameAPI.visual_pyexec(("import MPlatform;MPlatform.GotoUrl('" .. url) .. "')")
end
function UIUtils.setBGMVolume(self, volume)
    GameAPI.visual_pyexec(("import G;G.sound_mgr.set_bgm_volume(" .. tostring(volume)) .. ");")
end
function UIUtils.setSFXVolume(self, volume)
    GameAPI.visual_pyexec(("import G;G.sound_mgr.set_sfx_volume(" .. tostring(volume)) .. ");")
end
function UIUtils.setVOVolume(self, volume)
    GameAPI.visual_pyexec(("import G;G.sound_mgr.set_vo_volume(" .. tostring(volume)) .. ");")
end
function UIUtils.SetOnlyDrawUIs(self, value)
end
function UIUtils.formatNumber(self, num)
    if num < 100000 then
        return tostring(num)
    end
    local chars = {"K", "M", "B", "T"}
    local charIndex = math.floor(math.log(num) / 2.302585092994046 / 3) - 1
    local char = chars[charIndex + 1]
    local scaledNum = num / 10 ^ ((charIndex + 1) * 3)
    local formattedNum = scaledNum % 1 ~= 0 and __TS__NumberToFixed(scaledNum, 1) or tostring(scaledNum)
    return formattedNum .. char
end
return ____exports
