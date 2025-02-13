local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 7,["17"] = 7,["18"] = 7,["20"] = 7,["21"] = 10,["22"] = 11,["23"] = 12,["24"] = 13,["25"] = 13,["27"] = 15,["28"] = 15,["29"] = 15,["30"] = 15,["31"] = 16,["32"] = 17,["34"] = 19,["35"] = 10,["36"] = 23,["37"] = 24,["38"] = 25,["39"] = 26,["40"] = 26,["42"] = 28,["43"] = 28,["44"] = 28,["45"] = 28,["46"] = 29,["47"] = 30,["49"] = 32,["51"] = 33,["52"] = 33,["53"] = 34,["54"] = 35,["55"] = 33,["58"] = 37,["59"] = 23,["60"] = 41,["63"] = 45,["66"] = 43,["72"] = 41,["73"] = 49,["76"] = 53,["79"] = 51,["85"] = 49,["86"] = 57,["89"] = 61,["92"] = 59,["98"] = 57,["99"] = 64,["102"] = 68,["105"] = 66,["111"] = 64,["112"] = 75});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____vipConfig = include("logic.configs.vipConfig")
local vipConfigMap = ____vipConfig.vipConfigMap
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
____exports.VipManager = __TS__Class()
local VipManager = ____exports.VipManager
VipManager.name = "VipManager"
function VipManager.prototype.____constructor(self)
end
function VipManager.prototype.has(self, ____type, playerId)
    local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
    local vipInfo = archiveData and archiveData.vipInfo
    if vipInfo == nil then
        return false
    end
    local list = __TS__ArrayFilter(
        vipInfo.vips,
        function(____, a) return vipConfigMap[a.cfgId].vipEffect == ____type and not a.disable end
    )
    if #list == 0 then
        return false
    end
    return true
end
function VipManager.prototype.getValue(self, ____type, playerId)
    local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
    local vipInfo = archiveData and archiveData.vipInfo
    if vipInfo == nil then
        return 0
    end
    local list = __TS__ArrayFilter(
        vipInfo.vips,
        function(____, a) return vipConfigMap[a.cfgId].vipEffect == ____type and not a.disable end
    )
    if #list == 0 then
        return 0
    end
    local v = 0
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            v = v + vipConfigMap[element.cfgId].value
            index = index + 1
        end
    end
    return v
end
function VipManager.prototype.use(self, ____type)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.vipInfo:use(____type)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function VipManager.prototype.check(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.vipInfo:check()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function VipManager.prototype.add(self, cfgId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.vipInfo:add(cfgId)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function VipManager.prototype.disable(self, cfgId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.vipInfo:disable(cfgId)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
____exports.vipManager = __TS__New(____exports.VipManager)
return ____exports
