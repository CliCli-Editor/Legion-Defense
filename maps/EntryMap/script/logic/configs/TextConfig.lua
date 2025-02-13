local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 30,["15"] = 35,["16"] = 15,["17"] = 39,["18"] = 40,["19"] = 41,["20"] = 43,["21"] = 113,["22"] = 115,["23"] = 116,["24"] = 116,["25"] = 116,["26"] = 116,["27"] = 116,["28"] = 117,["29"] = 118,["31"] = 119,["32"] = 119,["33"] = 120,["34"] = 121,["35"] = 122,["36"] = 123,["38"] = 126,["39"] = 127,["41"] = 129,["43"] = 119,["47"] = 134,["48"] = 136,["49"] = 139,["50"] = 141,["51"] = 142,["52"] = 143,["53"] = 143,["54"] = 143,["56"] = 145,["59"] = 115});
local ____exports = {}
local fields = {"id", "showName", "name", "des"}
____exports.TextConfig = __TS__Class()
local TextConfig = ____exports.TextConfig
TextConfig.name = "TextConfig"
function TextConfig.prototype.____constructor(self)
    self.id = 0
    self.showName = vue.ref("")
    self.name = ""
    self.des = vue.ref("")
end
____exports.textConfigList = {}
____exports.textConfigMap = {}
____exports.map = ____exports.textConfigMap
____exports.textConfigMap_name = {}
local encryptModelData = "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"
function ____exports.TextConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "textiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("text&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TextConfig)
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
        local ____exports_textConfigList_0 = ____exports.textConfigList
        ____exports_textConfigList_0[#____exports_textConfigList_0 + 1] = obj
        ____exports.textConfigMap[obj.id] = obj
        if obj.name ~= nil and obj.name ~= nil then
            local list = ____exports.textConfigMap_name[obj.name]
            if not list then
                local ____temp_1 = {}
                ____exports.textConfigMap_name[obj.name] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
