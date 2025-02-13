local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["13"] = 3,["14"] = 5,["15"] = 1,["16"] = 10,["17"] = 11,["18"] = 12,["19"] = 13,["21"] = 15,["22"] = 10,["23"] = 21,["24"] = 22,["25"] = 23,["26"] = 24,["27"] = 25,["28"] = 25,["29"] = 25,["30"] = 25,["31"] = 25,["33"] = 27,["34"] = 21,["35"] = 30,["36"] = 31,["37"] = 30,["38"] = 41,["39"] = 42,["40"] = 41,["45"] = 35,["49"] = 46});
local ____exports = {}
____exports.I18N = __TS__Class()
local I18N = ____exports.I18N
I18N.name = "I18N"
function I18N.prototype.____constructor(self)
    self.data = {}
    self._currentLang = vue.ref("zh")
end
I18N.prototype["local"] = function(self, str)
    local map = self.data[self._currentLang.value]
    if map == nil then
        return str
    end
    return map[__TS__StringReplaceAll(str, "\r\n", "\n")] or str
end
function I18N.prototype.format(self, str, data)
    str = self["local"](self, str)
    for k in pairs(data) do
        local v = data[k]
        str = __TS__StringReplaceAll(
            str,
            ("${" .. k) .. "}",
            tostring(v)
        )
    end
    return str
end
function I18N.prototype.setLang(self, lang)
    self._currentLang.value = lang
end
function I18N.prototype.register(self, lang, data)
    self.data[lang] = data
end
__TS__SetDescriptor(
    I18N.prototype,
    "currentLang",
    {get = function(self)
        return self._currentLang.value
    end},
    true
)
____exports.i18n = __TS__New(____exports.I18N)
return ____exports
