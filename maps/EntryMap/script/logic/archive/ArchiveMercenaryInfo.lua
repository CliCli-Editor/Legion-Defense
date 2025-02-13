local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 9,["17"] = 9,["18"] = 10,["19"] = 10,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["25"] = 13,["26"] = 15,["27"] = 17,["28"] = 13,["29"] = 19,["30"] = 20,["32"] = 25,["33"] = 25,["34"] = 26,["35"] = 27,["36"] = 25,["39"] = 34,["40"] = 19,["41"] = 37,["42"] = 37,["43"] = 41,["45"] = 42,["46"] = 42,["47"] = 43,["48"] = 44,["49"] = 45,["51"] = 42,["54"] = 41,["55"] = 54,["56"] = 54,["57"] = 57,["58"] = 57,["59"] = 60,["62"] = 62,["63"] = 62,["64"] = 62,["65"] = 62,["67"] = 61,["70"] = 64,["72"] = 61,["74"] = 60,["75"] = 67,["76"] = 67,["77"] = 71,["78"] = 72,["79"] = 73,["82"] = 76,["83"] = 77,["85"] = 83,["86"] = 84,["87"] = 85,["90"] = 88,["91"] = 88,["92"] = 89,["93"] = 71,["94"] = 91,["95"] = 92,["96"] = 93,["99"] = 96,["100"] = 97,["102"] = 103,["103"] = 104,["104"] = 91,["105"] = 106,["106"] = 107,["107"] = 108,["108"] = 109,["110"] = 111,["111"] = 112,["113"] = 114,["114"] = 115,["115"] = 116,["116"] = 117,["117"] = 118,["119"] = 120,["120"] = 106,["121"] = 123,["122"] = 124,["123"] = 125,["126"] = 128,["129"] = 131,["130"] = 132,["131"] = 133,["132"] = 134,["135"] = 137,["136"] = 123});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS = ____SafeTableUtils.LoopS
____exports.ArchiveMercenaryInfo = __TS__Class()
local ArchiveMercenaryInfo = ____exports.ArchiveMercenaryInfo
ArchiveMercenaryInfo.name = "ArchiveMercenaryInfo"
__TS__ClassExtends(ArchiveMercenaryInfo, ArchiveBaseProto)
function ArchiveMercenaryInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.slot = 8
    self.name = "ArchiveMercenaryInfo"
end
function ArchiveMercenaryInfo.prototype.default(self)
    local data = {version = 1, skins = {}}
    do
        local index = 0
        while index < #mercenaryConfigList do
            local element = mercenaryConfigList[index + 1]
            data.skins["" .. tostring(element.id)] = {id = element.id, cur_skin = 0, unlock_skin = {}}
            index = index + 1
        end
    end
    return data
end
function ArchiveMercenaryInfo.prototype.init(self)
end
function ArchiveMercenaryInfo.prototype.startGame(self)
    do
        local index = 0
        while index < #mercenaryConfigList do
            local element = mercenaryConfigList[index + 1]
            if self.data.skins["" .. tostring(element.id)] == nil then
                self.data.skins["" .. tostring(element.id)] = LoopS({id = element.id, cur_skin = 0, unlock_skin = {}})
            end
            index = index + 1
        end
    end
end
function ArchiveMercenaryInfo.prototype.escape(self)
end
function ArchiveMercenaryInfo.prototype.afterEndGame(self)
end
function ArchiveMercenaryInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncMercenaryInfo:execute(
                y3.player.LOCAL_PLAYER.id,
                self:pbEncode()
            ))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function ArchiveMercenaryInfo.prototype.endGame(self)
end
function ArchiveMercenaryInfo.prototype.unlockSkin(self, mercenaryId, skinId)
    if mercenaryConfigMap[mercenaryId] == nil then
        console:error("佣兵不存在", mercenaryId)
        return
    end
    if self.data.skins["" .. tostring(mercenaryId)] == nil then
        self.data.skins["" .. tostring(mercenaryId)] = LoopS({id = mercenaryId, cur_skin = 0, unlock_skin = {}})
    end
    local data = self.data.skins["" .. tostring(mercenaryId)]
    if __TS__ArrayIndexOf(data.unlock_skin, skinId) ~= -1 then
        console:log("已拥有")
        return
    end
    local ____self_data_skins_index_unlock_skin_0 = self.data.skins["" .. tostring(mercenaryId)].unlock_skin
    ____self_data_skins_index_unlock_skin_0[#____self_data_skins_index_unlock_skin_0 + 1] = skinId
    self:upload()
end
function ArchiveMercenaryInfo.prototype.useSkin(self, mercenaryId, skinId)
    if mercenaryConfigMap[mercenaryId] == nil then
        console:error("佣兵不存在", mercenaryId)
        return
    end
    if self.data.skins["" .. tostring(mercenaryId)] == nil then
        self.data.skins["" .. tostring(mercenaryId)] = {id = mercenaryId, cur_skin = 0, unlock_skin = {}}
    end
    self.data.skins["" .. tostring(mercenaryId)].cur_skin = skinId
    self:upload()
end
function ArchiveMercenaryInfo.prototype.hasSkin(self, mercenaryId, skinId)
    if mercenaryConfigMap[mercenaryId] == nil then
        console:error("佣兵不存在", mercenaryId)
        return false
    end
    if self.data.skins["" .. tostring(mercenaryId)] == nil then
        return false
    end
    local data = self.data.skins["" .. tostring(mercenaryId)]
    local idx = __TS__ArrayIndexOf(data.unlock_skin, skinId)
    if idx == -1 then
        console:log("未拥有")
        return false
    end
    return true
end
function ArchiveMercenaryInfo.prototype.disableSkin(self, mercenaryId, skinId)
    if mercenaryConfigMap[mercenaryId] == nil then
        console:error("佣兵不存在", mercenaryId)
        return
    end
    if self.data.skins["" .. tostring(mercenaryId)] == nil then
        return
    end
    local data = self.data.skins["" .. tostring(mercenaryId)]
    local idx = __TS__ArrayIndexOf(data.unlock_skin, skinId)
    if idx == -1 then
        console:log("未拥有")
        return
    end
    __TS__ArraySplice(data.unlock_skin, idx, 1)
end
return ____exports
