local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 20,["19"] = 25,["20"] = 30,["21"] = 35,["22"] = 40,["23"] = 15,["24"] = 44,["25"] = 45,["26"] = 46,["27"] = 53,["28"] = 55,["29"] = 56,["30"] = 56,["31"] = 56,["32"] = 56,["33"] = 56,["34"] = 57,["35"] = 58,["37"] = 59,["38"] = 59,["39"] = 60,["40"] = 61,["41"] = 62,["42"] = 63,["44"] = 66,["45"] = 67,["47"] = 69,["49"] = 59,["53"] = 74,["54"] = 76,["56"] = 55});
local ____exports = {}
local fields = {
    "id",
    "name",
    "blessEffects",
    "a",
    "b"
}
____exports.SystemMsgConfig = __TS__Class()
local SystemMsgConfig = ____exports.SystemMsgConfig
SystemMsgConfig.name = "SystemMsgConfig"
function SystemMsgConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.blessEffects = vue.ref("")
    self.a = 0
    self.b = 0
end
____exports.systemMsgConfigList = {}
____exports.systemMsgConfigMap = {}
____exports.map = ____exports.systemMsgConfigMap
local encryptModelData = "EKKXv3DXYYSXwJq1edsUD99dpWWo/fiEc3N92N20UcLYg1xpeC6bc0D8+SMxVSzsODfJQygqPUsGrJLgI60evg=="
function ____exports.SystemMsgConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "systemmsgiWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("systemmsg&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SystemMsgConfig)
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
        local ____exports_systemMsgConfigList_0 = ____exports.systemMsgConfigList
        ____exports_systemMsgConfigList_0[#____exports_systemMsgConfigList_0 + 1] = obj
        ____exports.systemMsgConfigMap[obj.id] = obj
    end
end
return ____exports
