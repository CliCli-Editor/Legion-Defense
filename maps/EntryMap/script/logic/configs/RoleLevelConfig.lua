local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 30,["15"] = 15,["16"] = 34,["17"] = 35,["18"] = 36,["19"] = 92,["20"] = 94,["21"] = 95,["22"] = 95,["23"] = 95,["24"] = 95,["25"] = 95,["26"] = 96,["27"] = 97,["29"] = 98,["30"] = 98,["31"] = 99,["32"] = 100,["33"] = 101,["34"] = 102,["36"] = 105,["37"] = 106,["39"] = 108,["41"] = 98,["45"] = 113,["46"] = 115,["48"] = 94});
local ____exports = {}
local fields = {"id", "level", "exp"}
____exports.RoleLevelConfig = __TS__Class()
local RoleLevelConfig = ____exports.RoleLevelConfig
RoleLevelConfig.name = "RoleLevelConfig"
function RoleLevelConfig.prototype.____constructor(self)
    self.id = 0
    self.level = 0
    self.exp = 0
end
____exports.roleLevelConfigList = {}
____exports.roleLevelConfigMap = {}
____exports.map = ____exports.roleLevelConfigMap
local encryptModelData = "u5nH4kgpPW7JPOy3B1heZy1dNaMer5uyX3eLUwf+gBHxyoRNgmqttVQS5S8g365AwG6hJeIxQwxgG6PKjwH7U9pmOGa0qcSKnY/34pP3SQvRUmfTgjg3MobGJcUtlPOV6lmJpuKEcam8+i12CFR+uZPaMSUcFRbHNcwsZRO/D8QFWL1rWUv3yxJFKBczyHTWU5XmsSDHTDfs2ovgnDLUxmEiHrLNLhjcsn5bVanbyAetVisGauJoxcvwclpCZkrm3W7PYCrQ17PgiXZ5Pn8l3Vn4LiXJk2PNRUEe9edHATBPHqBJTGhZg+fae1+N7KTF8OO2Xb/H0DjjNiybolx/1nUU99G72yKqUhMx7zK5I3Z4DR94YlfTGrDFOBFtszMUMzEllF4Pq2LNGnB6EqSDiW915zpiX73eFkBOK6PrWZ7HPuWqX5GbmA3OBl2SrnYO/eYzDObdL/bly8mQ+DLcH0iNiY0E83rieoalzzYaqW9Pl1QReBliIt62LJfG4eLtI8wzV1BPPmGcE1/3FC/YXsgzxc9KDyoaJm6cTnPJd4+fq0s6R46Nx+5oToSAucJwZlNosUzfZio5JsgrTIZHtuyJDsVc+BOXbF6TOvA0VZaptZVDYl7sw5QNOt5GThgymZPR/XQ7gbCRM0s2VZ6xXpAkp6zxeWSIVlRsExIYKrhNKOhZgTTFLBmRqehjE2w5M3tmGQOdM+AxrumLa9RzrDEGtsviyG/RiLHqQ958pp/oLGE74r2ikcjGrej6fSVmvyzqvejvE7JTmGOgDrVBRhiFa8VdtLS6NNucR7dTnys="
function ____exports.RoleLevelConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "roleleveliWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("rolelevel&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RoleLevelConfig)
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
        local ____exports_roleLevelConfigList_0 = ____exports.roleLevelConfigList
        ____exports_roleLevelConfigList_0[#____exports_roleLevelConfigList_0 + 1] = obj
        ____exports.roleLevelConfigMap[obj.id] = obj
    end
end
return ____exports
