local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 15,["22"] = 20,["23"] = 25,["24"] = 32,["25"] = 37,["26"] = 42,["27"] = 47,["28"] = 52,["29"] = 57,["30"] = 62,["31"] = 15,["32"] = 66,["33"] = 67,["34"] = 68,["35"] = 98,["36"] = 100,["37"] = 101,["38"] = 101,["39"] = 101,["40"] = 101,["41"] = 101,["42"] = 102,["43"] = 103,["45"] = 104,["46"] = 104,["47"] = 105,["48"] = 106,["49"] = 107,["50"] = 108,["52"] = 111,["53"] = 112,["55"] = 114,["57"] = 104,["61"] = 119,["62"] = 121,["64"] = 100});
local ____exports = {}
local fields = {
    "id",
    "levelRange",
    "rule",
    "level1",
    "level2",
    "level3",
    "level4",
    "level5",
    "level6"
}
____exports.AutomaticSelectionRuleConfig = __TS__Class()
local AutomaticSelectionRuleConfig = ____exports.AutomaticSelectionRuleConfig
AutomaticSelectionRuleConfig.name = "AutomaticSelectionRuleConfig"
function AutomaticSelectionRuleConfig.prototype.____constructor(self)
    self.id = 0
    self.levelRange = {}
    self.rule = 0
    self.level1 = 0
    self.level2 = 0
    self.level3 = 0
    self.level4 = 0
    self.level5 = 0
    self.level6 = 0
end
____exports.automaticSelectionRuleConfigList = {}
____exports.automaticSelectionRuleConfigMap = {}
____exports.map = ____exports.automaticSelectionRuleConfigMap
local encryptModelData = "rcu8+PPuuPryEEqz32VKIoFCECNTGtSICBXI/TgKw++3K75YF2m9jMh+tTvlngT1OOe/hBuQsgjXQyU4Zf4r1rJ9dmF5RhkXPDOYQBFJuKP2dO6zNJNSKR6ou+st1QTq2k3wVUgTMTGZTsaS9IB4sWxaVIFq6X6XQg0hW48Nb0i4gShvovyEwF1lSupIOHay+YmQLC4OoPfJIVhCkUA8iEFPwaPQOUkAtaylxUnQobnQoaZcveXAUdN3AurAfW2A+O7SJ7J8FJQOA9C+BZOAPPnmCde5DTGQlHLDVKFCeh36v6z+vgA9rQ2ndYiWE3NqhetmG3cOBiCt6fCI3NwD7PQytvGKzbL75F+ubdHyDs/+tpWLZlcpaJ3ly7wRgHxSWLLYArS4Z+QxlkvH4lb1/f7BtpTATHU5xmfdTCiN2nouGtFHxWI3xlFvCQvU9dKCRiDeiG14XEeghlqVj249KRAquuvpkmvVp6fK+uhm8vAn6kQrdjS1AE129SwfEYlVMxzHAtHXz8w6z92PeHrvhA/0FMmeLUraj3f+LRyOd9BMEBPsE26ELpAucI9GcR52xUYbCPA4qCkGOjjWhko0PpB5IR+mkMv+XzNfNfuyHbjoGMrkjZrD+v4KiEUfrp8bfZ/lcbSEXg8i89sr9xzZAyIiYiOyg0GMhP4wO0A/a2iga/3UmyO62uxKTSs9WY9d+xcig0GIlNhzZBpMWKUwCpyfj6VFGRs3TdiQ3Z4zMguTDfxgxPD+6rMAQJsfQeQ/yklnlb9Zpjg7CWCRYDKx6OdZcXc6JqQNHXKGH082lpQfk7e76716NQDVOduS1BhW"
function ____exports.AutomaticSelectionRuleConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "automaticselectionruleiWu%C6F0WV",
        string.sub("automaticselectionrule&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.AutomaticSelectionRuleConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                if type(value) == "string" and obj[key].value ~= nil then
                    obj[key].value = value
                else
                    obj[key] = value
                end
                i = i + 1
            end
        end
        local ____exports_automaticSelectionRuleConfigList_0 = ____exports.automaticSelectionRuleConfigList
        ____exports_automaticSelectionRuleConfigList_0[#____exports_automaticSelectionRuleConfigList_0 + 1] = obj
        ____exports.automaticSelectionRuleConfigMap[obj.id] = obj
    end
end
return ____exports
