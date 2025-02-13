local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 15,["21"] = 15,["22"] = 15,["24"] = 21,["25"] = 26,["26"] = 31,["27"] = 36,["28"] = 41,["29"] = 48,["30"] = 53,["31"] = 60,["32"] = 65,["33"] = 70,["34"] = 75,["35"] = 15,["36"] = 79,["37"] = 80,["38"] = 81,["39"] = 97,["40"] = 99,["41"] = 100,["42"] = 100,["43"] = 100,["44"] = 100,["45"] = 100,["46"] = 101,["47"] = 102,["49"] = 103,["50"] = 103,["51"] = 104,["52"] = 105,["53"] = 106,["54"] = 107,["56"] = 110,["57"] = 111,["59"] = 113,["61"] = 103,["65"] = 118,["66"] = 120,["68"] = 99});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "quality",
    "decorate",
    "type",
    "icon",
    "enType",
    "enIcon",
    "ban",
    "isDefault"
}
____exports.PetEmoConfig = __TS__Class()
local PetEmoConfig = ____exports.PetEmoConfig
PetEmoConfig.name = "PetEmoConfig"
function PetEmoConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = ""
    self.quality = 0
    self.decorate = 0
    self.type = 0
    self.icon = 0
    self.enType = 0
    self.enIcon = 0
    self.ban = 0
    self.isDefault = 0
end
____exports.petEmoConfigList = {}
____exports.petEmoConfigMap = {}
____exports.map = ____exports.petEmoConfigMap
local encryptModelData = "2jy/EQ1pxQiNr8VFrpqpNvlvMvuoDCr+9YpdX+0HD66ZHDJXkT6vf94PQb1h/stimQnNbg/cFbAY7RGMV3g+bhBblqFkj9NBqW5u1Xf7WYvdy4mfwc43/viACVk5NTJbLKd68YpxOwH0lK6qKgj1UP0K4zENTnLCLvaXy1v5TQEczkN+M9p5gAR8gU51hazuRpfEIxRwxSLUNFUMaEG+kdxaaWDZpCNYeD2Cw3F2tlRI4eXTe3YNp8Nk4RtNnC/GGfJzxd/pS/c1W3ssc0uH3LGCDVRAYA7HAX8DRpCoJOAZ3wNMLogbKsvVhFWVAh7oqeVzaebSbtH3vY8MI38aFi0utYPr0YTWqLu4EQDDtGh2bjDH83IVRsKK4rC1JNXnJJqPWGZAfFnf9/w3m24zOOWf4JRzRBtYL8W4/J9YoRjukbkKihcdWJnuER3obaCUfg7NrfRJn5EfSW2c62lLM+wXkzIO4YdDco8sVS/tVKLG2Y35F6HfjPBxext0xZEk8N0keA6c8MuMYYnEFjJkIc/8zDfCpFg5AnxzX5A5GG7Wu5UAzIezuZsmcCllcUoLOl4dqyAX/o4wKJRViB6tYrDB1HeDupqYqz5qf2dWAbH0LZKWpRQ1Pyhb9wJrjJzTfp4DC6awsJpag/lCyZhRx4kzKetb55j4ExiXv3DNKm3KyBHahORkSbUOqa6j1T3fu7egZa1gHIToQBLbrdReMIUB8WTspoX+MU4qVRoLvWaFcqbricewC8c/LcT6L5ll6I+FXYlxNONuaZ5WEds3dvkNFNPg2o+67ZLFOcXLKi11HY0mhKGfR2zBrbHCcmHwY/ZY5KGwwCTgKOHjstJGPAMkZN9BPetfKxV0kd9GgWs="
function ____exports.PetEmoConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "petemoiWu%C6F0WV&UcD@0#v^RmZz)KK",
        string.sub("petemo&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetEmoConfig)
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
        local ____exports_petEmoConfigList_0 = ____exports.petEmoConfigList
        ____exports_petEmoConfigList_0[#____exports_petEmoConfigList_0 + 1] = obj
        ____exports.petEmoConfigMap[obj.id] = obj
    end
end
return ____exports
