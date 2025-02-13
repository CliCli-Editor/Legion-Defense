local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 15,["16"] = 15,["17"] = 15,["19"] = 20,["20"] = 26,["21"] = 31,["22"] = 36,["23"] = 42,["24"] = 49,["25"] = 15,["26"] = 53,["27"] = 54,["28"] = 55,["29"] = 57,["30"] = 77,["31"] = 79,["32"] = 80,["33"] = 80,["34"] = 80,["35"] = 80,["36"] = 80,["37"] = 81,["38"] = 82,["40"] = 83,["41"] = 83,["42"] = 84,["43"] = 85,["44"] = 86,["45"] = 87,["47"] = 90,["48"] = 91,["50"] = 93,["52"] = 83,["56"] = 98,["57"] = 100,["58"] = 103,["59"] = 105,["60"] = 106,["61"] = 107,["62"] = 107,["63"] = 107,["65"] = 109,["68"] = 79});
local ____exports = {}
local fields = {
    "id",
    "vipEffect",
    "des",
    "value",
    "limitType",
    "limitValue"
}
____exports.vipConfig = __TS__Class()
local vipConfig = ____exports.vipConfig
vipConfig.name = "vipConfig"
function vipConfig.prototype.____constructor(self)
    self.id = 0
    self.vipEffect = 0
    self.des = vue.ref("")
    self.value = 0
    self.limitType = 0
    self.limitValue = 0
end
____exports.vipConfigList = {}
____exports.vipConfigMap = {}
____exports.map = ____exports.vipConfigMap
____exports.vipConfigMap_vipEffect = {}
local encryptModelData = "S/QdUyBtLZZ1cfzuzyQJs7Sc9GjiUdN9bXJSq/BWMj4gqmvo6mfDZQKTGhZ/p41HeOAWgIHdCg05WLeK6xoSBvJV+0QygL/hMAm5ncBed34LuzlBhnT57P8TH4+GLUPEizNrtA442qIViFCGex01lMwOqBmD7DBdnkXKau2+W0m4iXss1M2U4nP2Gr5nv1vYTvLTPT7uNkFrd3CE06aPXTjMjh3uykyLud+HPuoWor9NNVGBCw2nAzJBS8N4RUT/Y+ln1pGfKZufWzK/XFfs+zjNXfhu2Yp2ql+oGJu4oaIBXeXTQtSaN73/K+BbdIlGh+ADXCUfWFl59FSdvZ1jvQdSckFVrAjH5W6nvVOppRNHK03mJuchkgBXkwcDqwojqsBsC5K9oGoT6Gc148S9xDr/O7z2mICRGj5qsf+rrAQzxCYH7eYfM24eO1cTdCHYYtBQEDt59hYWVqpTxIVJCbZ8eIuKsq4ecajPZvmgJSG0byuy7ads8/5q048WeFfSgxYYLJAGkHOvVQSMuZTvHTkh5++R/oCc93MyhlRCuiFwy9kQ07XSyjiihrNr18ngJE0pv0XTy3S0ysJ7OEH7scwLkojJ7JQFU9h8VQgE+urNBVzBA+ZXSp6ne7YoEOoGa8yTGekP0J73mun+wTWgsku+OeBwbiCq45dpr5sE1amTUERvvOwWHnOldcNpJRA4mz4IjJpQEv2N+GhhR90NjC8NAkob/3oDWvdFQ8vW/OlXB+U4w+XO1T3ie1ueG6s7QDUVTNAmCHqQcFROXMGRIj9HJ6BxjqUCzsdxDyDGDyL9qBK/Z5Df8UVCwx4+ycFLT+ige/dn5nuyCghmuksJ8deqh3KFnORP1+xKvyolYvT+0p0TXDlNniECKKvGMAjwXBlDvq3l9fyKN9zz73CwpA=="
function ____exports.vipConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "vipiWu%C6F0WV&UcD@0#v^RmZz)KKV~1",
        string.sub("vip&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.vipConfig)
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
        local ____exports_vipConfigList_0 = ____exports.vipConfigList
        ____exports_vipConfigList_0[#____exports_vipConfigList_0 + 1] = obj
        ____exports.vipConfigMap[obj.id] = obj
        if obj.vipEffect ~= nil and obj.vipEffect ~= nil then
            local list = ____exports.vipConfigMap_vipEffect[obj.vipEffect]
            if not list then
                local ____temp_1 = {}
                ____exports.vipConfigMap_vipEffect[obj.vipEffect] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
