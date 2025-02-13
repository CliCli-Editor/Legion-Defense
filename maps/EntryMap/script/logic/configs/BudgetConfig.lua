local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 30,["15"] = 38,["16"] = 15,["17"] = 42,["18"] = 43,["19"] = 44,["20"] = 80,["21"] = 82,["22"] = 83,["23"] = 83,["24"] = 83,["25"] = 83,["26"] = 83,["27"] = 84,["28"] = 85,["30"] = 86,["31"] = 86,["32"] = 87,["33"] = 88,["34"] = 89,["35"] = 90,["37"] = 93,["38"] = 94,["40"] = 96,["42"] = 86,["46"] = 101,["47"] = 103,["49"] = 82});
local ____exports = {}
local fields = {"id", "wood", "eventAdd", "breakThrough"}
____exports.BudgetConfig = __TS__Class()
local BudgetConfig = ____exports.BudgetConfig
BudgetConfig.name = "BudgetConfig"
function BudgetConfig.prototype.____constructor(self)
    self.id = 0
    self.wood = 0
    self.eventAdd = 0
    self.breakThrough = 0
end
____exports.budgetConfigList = {}
____exports.budgetConfigMap = {}
____exports.map = ____exports.budgetConfigMap
local encryptModelData = "/ABbu4HR7C80blbmTODcoKDmM6Fv07U1vNu2rdIO2IHjFbq5D+if/4VnusQiPxZJ8lgF66bDkBUe6kgu15GV7m53MYv46MMlnlHR6olkG4QDIZrCOexmExxS+38yQNza7pqii1MyW9Y9GTIWhtQ4Xj+GIERodtSvS0dQc/z0sLVAS9/PCr1HdiFiHZQQXX74eZCfnKLXBxvUzmyg5RqA7SC8QT0K/PTStV0GoEWYho8tAE7chow5iwMX8U6qQ9MLkDi+Alvc235SJzBiQA9EWQoO1ydV2KhutHsmTfsv/mmglF5cXVAHzIuStGjf5H58CpO50GIkZaGQHpaXw2prZ/OWhtJ9aO8K7duqYvhcfO2aL5iTsc+hRB8dMk9RO6/EQU20i4K5kRRaz07QXY/e/GCcrIwS2sIP46NXOFdYJKRGBa4EC/mFi+uyShb/kz7RQAsd2A2YdG5LYng7qNX7WyMmd1bk7l+3ZqnGM9uVx0CY98oRhtv+3xNw21Sn4jXNSdDFq8JNmMjtR9d4j+GswMUBJbgKan1O0E6NMdYVGhe2IS0eVrQoSPA+S4ITZSDqZn/hcKx1lN/HICSIzSFe7F/R2mB/JXOBMl1w2m/Y/Lk="
function ____exports.BudgetConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "budgetiWu%C6F0WV&UcD@0#v^RmZz)KK",
        string.sub("budget&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.BudgetConfig)
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
        local ____exports_budgetConfigList_0 = ____exports.budgetConfigList
        ____exports_budgetConfigList_0[#____exports_budgetConfigList_0 + 1] = obj
        ____exports.budgetConfigMap[obj.id] = obj
    end
end
return ____exports
