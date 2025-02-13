local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 15,["22"] = 20,["23"] = 25,["24"] = 31,["25"] = 37,["26"] = 44,["27"] = 49,["28"] = 57,["29"] = 66,["30"] = 71,["31"] = 15,["32"] = 75,["33"] = 76,["34"] = 77,["35"] = 104,["36"] = 106,["37"] = 107,["38"] = 107,["39"] = 107,["40"] = 107,["41"] = 107,["42"] = 108,["43"] = 109,["45"] = 110,["46"] = 110,["47"] = 111,["48"] = 112,["49"] = 113,["50"] = 114,["52"] = 117,["53"] = 118,["55"] = 120,["57"] = 110,["61"] = 125,["62"] = 127,["64"] = 106});
local ____exports = {}
local fields = {
    "id",
    "des",
    "consumeGold",
    "consumeWood",
    "limit",
    "limitArgs",
    "promoteType",
    "promoteArgs",
    "gather"
}
____exports.TechnologyConfig = __TS__Class()
local TechnologyConfig = ____exports.TechnologyConfig
TechnologyConfig.name = "TechnologyConfig"
function TechnologyConfig.prototype.____constructor(self)
    self.id = 0
    self.des = vue.ref("")
    self.consumeGold = 0
    self.consumeWood = 0
    self.limit = 0
    self.limitArgs = {}
    self.promoteType = 0
    self.promoteArgs = 0
    self.gather = 0
end
____exports.technologyConfigList = {}
____exports.technologyConfigMap = {}
____exports.map = ____exports.technologyConfigMap
local encryptModelData = "PbBaMAhzn+xmdVrOtR/ZAw9d60FiNBUFH5/xWd/mTef0SAadtCpcCkIaETJGb3FPYG/GdiM0JUzWTglrcV8egwVesfsQp8KViVEnWhUSEkWrBhS17y07E7T9BjtHIS5YW11Rkt0ZYC/KmsCwnQHFFl2vQ4OYGb50LySLzn/e7MdPzFOqkR+A9JGrJC6CzPh/DuexKzKvvAhMxjjIWL2BHPZtAdlWdvAeIhXHtTPFE/tD++afLrCSUwlpxO0C92qYz8rgXrrwtVHsGhbpZ7M+xd1+AkJImZpamGZG16HsFaI6i0YcUF0w0J3dzoo2yETAd7GfGYKHbnLHlZ/xYpLEG3pL9qLMFahlCB5HArjeHtCD/JR7h5+xtDOX+/aJOm2dN3tkijGEJrTqouIbGMg6fmK7I49oPqRVC0sxVUFPS/Ow0kOsub1aYkqi2QNvphwDqLvMKp25635VoAJ3EyaKIscmHkW9idtUz2hAxA0/lND6y0XSonW0I6frtjgFb/Jq+6gJsddN2+mUihGJWtDdHkBNpruHvPfR7foJITCYvEJLwsWlGxNYuCHFqRdP0v1Ke0niNpuiG1k8+F0aHJHFF4aLjW3vC5lIaH7fznFyW68rKLIX8lW8J5PpzzI1mKOodoqViyX9botEJNACL/eFyAkc0HHN4pU2sxzNPZXP2YMi4nvz5y8wfquJoGLahzpoFPNTtZJyrHkPyKMkLm3r8b7W/a/Zwh1R6W5ZAC8NI4l52pRTFyF80oXs8TDqcudySZ1HDbzGrDc3aIjuYjz4GehF065/C5lAUJMHsVLy+yEPGoSdTE94AG5bMuJLHa0+3GKmd0QS9pBrjQCv5FzqOtd1FNHFp+7+5DFofRrRLZPMIfrmpyjpwMgyA9LY30WmqJqwkLcUP4CVxZNezC+IVaXS/VTSMEnsvtLqqPzcotOo54Jw1/KPpLqLy3Wj5aQGbJ3wE0dyvibDz76R+eamzxQJ5NSDyOKeECVN8n8uXENzj62wOmX751XsAlFQEUZ99yVnZMFM4shou/ULJ8g0yxoos+CVTiYrZRM142V1GS8hoYzkVCGgcwBuVXLTcZkpCm31zprWrR3MpvlwhbzqcInRwjFznooqB76S0CfS1f1XLLFNC+sQW7dG0IAHwYAOXUxqGV+jdqQZuVFId4NP03QBtejmlw0nl3QkF2IpAmrYRdHFxqMJ4wWOZK8gVNm3M1Z1tl1pegpZoZyaJdYfrI+yXM8yrUybCQEpYv6VHngZKss7nvAcqQ/iwfoSIUjy8L3uxiHBkxzaYYdb1qOT6GKzlYO/6R45a1MU6ybSpSEsJXd4OhGhllqs9AdzRq3WfBiP+mDml0WFZqUX+CgbMc/UbcSuzdvdQvWSSjbOKeelhy3WfuITGLL3i/wvpiBRhzLCvBQku/C821PicvjPNAPyoaJCrbtuXFxYXgxL13YJAVTh1E5Fmi3nE4MM5lyw"
function ____exports.TechnologyConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "technologyiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("technology&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TechnologyConfig)
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
        local ____exports_technologyConfigList_0 = ____exports.technologyConfigList
        ____exports_technologyConfigList_0[#____exports_technologyConfigList_0 + 1] = obj
        ____exports.technologyConfigMap[obj.id] = obj
    end
end
return ____exports
