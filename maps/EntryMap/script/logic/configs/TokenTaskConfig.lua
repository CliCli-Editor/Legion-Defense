local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 12,["12"] = 12,["13"] = 12,["14"] = 12,["15"] = 12,["16"] = 12,["17"] = 12,["18"] = 12,["19"] = 12,["20"] = 14,["21"] = 14,["22"] = 14,["24"] = 19,["25"] = 27,["26"] = 32,["27"] = 37,["28"] = 42,["29"] = 47,["30"] = 52,["31"] = 14,["32"] = 56,["33"] = 57,["34"] = 88,["35"] = 90,["36"] = 91,["37"] = 91,["38"] = 91,["39"] = 91,["40"] = 91,["41"] = 92,["42"] = 93,["44"] = 94,["45"] = 94,["46"] = 95,["47"] = 96,["48"] = 97,["49"] = 98,["51"] = 101,["52"] = 94,["55"] = 104,["57"] = 105,["58"] = 107,["60"] = 90});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local fields = {
    "id",
    "taskType",
    "exp",
    "taskName",
    "taskDes",
    "condition1",
    "conditionArg1"
}
____exports.TokenTaskConfig = __TS__Class()
local TokenTaskConfig = ____exports.TokenTaskConfig
TokenTaskConfig.name = "TokenTaskConfig"
function TokenTaskConfig.prototype.____constructor(self)
    self.id = 0
    self.taskType = 0
    self.exp = 0
    self.taskName = ""
    self.taskDes = ""
    self.condition1 = {}
    self.conditionArg1 = {}
end
____exports.tokenTaskConfigList = {}
____exports.tokenTaskConfigMap = {}
local encryptModelData = "FSq6LkwAfgH2Nj8IqnBos9TJImYmHPSd02XhxWSb48yxzYZjOkHB63qgmcGvRkrOmsPtiIi2N4T261KyeknHrDbdYtqWyWnzA8Zg/G3mJxm3dRIF1rtjU5xEtUVUv/MlCpKlxO6FoIzGZDEaazPITMN4aeD3/cyIGy6+4ji1OD/UTOdoTaUMNYhQc1TJDGQCdRsFfMbnNsnPpMQ/6q9LXh/qXApSarAbptbFK9ktqrg8jKuz1VLl4fuyQvJS+TudrYT07Z2FH3LIuiF0iav5yQnZNQkton+C+HJS12hMdSNCKuPVT+gtXlcfbH5PQEZ3ExCmOJASYLx/gHQFMxzxjDJxQEIluCEGq/fPbz6YEcUBJ7CPHOKn81ViebrZxpZfv9thoHkvlIko5919u4M8qkCHQUH2jK4C71VyC8X+jS2824IZ+oCR6sUufr1+0F9trEzebOIxZ7ZeGELd+O3Ysw8QOyH6NnNI4H4hv7a0uY5jXqsLUbpuOMBgWHDvOzFMwuE67YWLyhHJ/ORiiIB35chIkS4mMc3R6yskjwjXuh9mtI03gKp9AK8cizdH9T/JKO1WbU4WJulqOr2bcDdmobaf8g2mszozgLcKz79vLb5p7JAi6sIjiMKKD2n+YhPcH9ehcCSqcZ5gQxvOT/Hu7eKyM8R5r6rMb3Cc5cZ7SAD6qbz1QEedus5KhYUQXBde1Gdps0WrfFhWvzTYEFxLRdyV9R4+k/gMpRscR7+xhDuAKDEdB/cBfciYHk6pw1FZIXd5bpYsTe5cWr2WTcG7asvstPBGZWUN0Yl6WuhpO6a8s90T663v1S2k4PVc+6zNC4rVty1SpLFfU3ghuysBo0YcfmQUapv+xDupoazphaum49b182x1Rd0UjzorHXDMjC/LhkiXNyIMDPmsUOdvt3OMnjIwmXWPUG9W7v/wf/Y5Vdld+8Gmzr9RiKhpkajjdaXuqK/3/fUSuwQ+Os4mV/M8uBu0Zqbg++kt0g1PShDixh+FDSHJAbNiORkDIh5gWdW+W0dWgkay54GQqqVG2TBJgD3nwTlSBj3GOL3KgQknMLYH2Lql3ToMYA78HrElBnK4S0lN2ZH+d5K11QPW1vOdnFlsfjpCx4KDQTOBAQr67ZeJE28fhoL7yNj3yOlh2HgvhOs9EHvC2MtTLW3p9LchhbazOasiPabbhgZfGN47OGrxGeJktsi8M/RYz56LXeF+meQEugfAVtFVac80PeUc/UsAhj1nmGz9aOT99KyQ5EHAQaFKyPIaxZuRhVJWaLKmUzexpYz7xch/Mvpsm/O8zLVRrd5CaL+WZgTZ/DAiqFp3wTrTfdCucDasmuDxmCSFn1UKQHg/u4gj7p2kTD+s/94KZuCDgJleMxdiBc34QyjD3/8d3CmhGfsBa2OtJ4tPhEwx9ywVJKfqkRcvHsw6cssE/lbVf6JUxYdEnV5ySLuZi90fdEUjDVKHWXy5LgNffNaWXKT1CWPUtsM0rWp2yklsVAg9rFePIhF2f3x0Bha9MgSgAKy1Y/gE9AvPFJn9ko5fkuvhv+6Hdsh6c64zSSJNLVYHa8f+r3RKGDmdnxP149KmBzHYawv2Fl72ceMmn3C1pHvqx1UyFVHEnIg3KondtxabB5ixusptCxc4qx6eSBPbpxZ+jYmcAjNQup2BFI5s5F+8hD9OcuQHMWwfo8e3kTtmXMXzI4qecXwxjWI+WiGWJhAS+heyq2zU14jp8oUtDNBFt+9r9HDLe56AMvt38ZLSIxz1+I7nMhVsfaFswVUF+CYV8L1L6Uu78MN825WojT+2ejsfVtkHjqjbSfcw69uv+i9B29kPAvpASzd/irNCZR1CqOvryaBBqziTRjlCwlRT2hAWZXM2Z3TlqB3pNy5nAX5kziLeO0hyQI6CH/G1JRAPEbywdPacM05Kj/4Ee00aQPmGAi+I8322ZWN8FzbLNtKF7wUQG3AFX9/FJ7H/Hpd1zjTQn5vO/1gvkh+ef6iw3SWIiih1UpIf8K5fFfTMYaOsEr5xB2Q03X9LOa5yaI9ouz45SoOcUnYDn1qmyYQzlP/eLBo5UeEemT9IiYrFZqm6ynaOo63sVMVOiskM0IfOSMgi3rjcM1YgK5EwMkYBx2OVRybDQioZ//jwGiRipi9PWCQzUaaTfX9g2T0wBinBmW/TowJ5seMVu9NgsLVMu8YhhNui3gDVGB16c1Zj57nW+oWAwwOP950F5YL1mo6SSJAWe8L8Bia40XBKGLcM1ajvVo578hVmcRz2kYrRA0DRvUsZ0PfzqlT/CBiqs/KsbGCVen+AKul12rwzayy2ThjShi3LWyruo+zl54AVoFZ8tytF9vI="
function ____exports.TokenTaskConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "tokentaskiWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("tokentask&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TokenTaskConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                obj[key] = value
                i = i + 1
            end
        end
        obj = LoopS_noVue(obj, quickStrategyIgnoreString)
        local ____exports_tokenTaskConfigList_0 = ____exports.tokenTaskConfigList
        ____exports_tokenTaskConfigList_0[#____exports_tokenTaskConfigList_0 + 1] = obj
        ____exports.tokenTaskConfigMap[obj.id] = obj
    end
end
return ____exports
