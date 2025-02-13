local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 13,["12"] = 15,["13"] = 15,["14"] = 15,["16"] = 24,["17"] = 32,["18"] = 37,["19"] = 15,["20"] = 41,["21"] = 42,["22"] = 51,["23"] = 53,["24"] = 54,["25"] = 54,["26"] = 54,["27"] = 54,["28"] = 54,["29"] = 55,["30"] = 56,["32"] = 57,["33"] = 57,["34"] = 58,["35"] = 59,["36"] = 60,["37"] = 61,["39"] = 64,["40"] = 57,["43"] = 67,["45"] = 68,["46"] = 70,["48"] = 53});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local fields = {"id", "type", "des"}
____exports.ArchiveDesConfig = __TS__Class()
local ArchiveDesConfig = ____exports.ArchiveDesConfig
ArchiveDesConfig.name = "ArchiveDesConfig"
function ArchiveDesConfig.prototype.____constructor(self)
    self.id = 0
    self.type = ""
    self.des = ""
end
____exports.archiveDesConfigList = {}
____exports.archiveDesConfigMap = {}
local encryptModelData = "ijh30+Ar+QYC7NBYIZ2/MwQzk0Vb3+JMVY5T8oHxP5S3921jjLJt7mGooHDVjKQvDsIdKNzIUcvxiDGptaVuqrN70gJm/6eGs/VBHmMnKSW3we4/xTE/7Bu/+RaFfFeW8Hfim/SGyL2lth7++s8yIHT9Rr+rZ7FbcvzOGE2XWcM8g6NYMR+Tsxs6yid5Sk44"
function ____exports.ArchiveDesConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "archivedesiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("archivedes&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.ArchiveDesConfig)
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
        local ____exports_archiveDesConfigList_0 = ____exports.archiveDesConfigList
        ____exports_archiveDesConfigList_0[#____exports_archiveDesConfigList_0 + 1] = obj
        ____exports.archiveDesConfigMap[obj.id] = obj
    end
end
return ____exports
