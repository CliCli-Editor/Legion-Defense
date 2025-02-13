local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 5,["12"] = 5,["13"] = 6,["14"] = 6,["15"] = 7,["16"] = 7,["17"] = 8,["18"] = 8,["19"] = 12,["20"] = 16,["21"] = 16,["23"] = 22,["24"] = 22,["25"] = 22,["26"] = 22,["28"] = 22,["29"] = 24,["30"] = 25,["31"] = 22,["32"] = 26,["33"] = 28,["35"] = 33,["36"] = 33,["37"] = 34,["38"] = 35,["39"] = 33,["43"] = 40,["44"] = 40,["45"] = 41,["46"] = 42,["47"] = 40,["50"] = 46,["51"] = 26,["52"] = 49,["53"] = 50,["54"] = 49,["55"] = 53,["56"] = 53,["57"] = 57,["58"] = 57,["59"] = 60,["60"] = 60,["61"] = 63,["62"] = 63,["63"] = 66,["66"] = 68,["67"] = 68,["68"] = 68,["69"] = 68,["71"] = 67,["74"] = 70,["76"] = 67,["78"] = 66,["79"] = 74,["80"] = 75,["81"] = 76,["82"] = 77,["84"] = 74,["85"] = 84,["86"] = 85,["87"] = 86,["88"] = 87,["89"] = 87,["90"] = 89,["91"] = 89,["92"] = 90,["93"] = 84,["94"] = 93,["95"] = 94,["96"] = 95,["97"] = 96,["98"] = 93,["99"] = 100,["100"] = 101,["101"] = 102,["102"] = 103,["104"] = 107,["105"] = 107,["106"] = 100,["107"] = 109,["108"] = 110,["109"] = 111,["110"] = 112,["112"] = 116,["113"] = 109});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____CodeConfig = include("logic.configs.CodeConfig")
local codeConfigList = ____CodeConfig.codeConfigList
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigList = ____GoodsConfig.goodsConfigList
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.ResourceType = ResourceType or ({})
____exports.ResourceType.Gold = 1
____exports.ResourceType[____exports.ResourceType.Gold] = "Gold"
--- 玩家信息存档
____exports.ArchiveShopInfo = __TS__Class()
local ArchiveShopInfo = ____exports.ArchiveShopInfo
ArchiveShopInfo.name = "ArchiveShopInfo"
__TS__ClassExtends(ArchiveShopInfo, ArchiveBaseProto)
function ArchiveShopInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveShopInfo"
    self.slot = 6
end
function ArchiveShopInfo.prototype.default(self)
    local data = {version = 1, shops = {}, codes = {}}
    do
        local index = 0
        while index < #goodsConfigList do
            local element = goodsConfigList[index + 1]
            data.shops["" .. tostring(element.id)] = {buy_count = 0, count = 0}
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #codeConfigList do
            local element = codeConfigList[index + 1]
            data.codes["" .. tostring(element.id)] = {count = 0}
            index = index + 1
        end
    end
    return data
end
function ArchiveShopInfo.prototype.startGame(self)
    self:preLoad()
end
function ArchiveShopInfo.prototype.escape(self)
end
function ArchiveShopInfo.prototype.endGame(self)
end
function ArchiveShopInfo.prototype.afterEndGame(self)
end
function ArchiveShopInfo.prototype.init(self)
end
function ArchiveShopInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncShopInfo:execute(
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
function ArchiveShopInfo.prototype.tryCreateItem(self, id)
    local id_str = "" .. tostring(id)
    if self.data.shops[id_str] == nil then
        self.data.shops[id_str] = S({buy_count = 0, count = 0})
    end
end
function ArchiveShopInfo.prototype.buy(self, id)
    self:tryCreateItem(id)
    local id_str = "" .. tostring(id)
    local ____self_data_shops_id_str_0, ____buy_count_1 = self.data.shops[id_str], "buy_count"
    ____self_data_shops_id_str_0[____buy_count_1] = ____self_data_shops_id_str_0[____buy_count_1] + 1
    local ____require_result_2 = include("logic.utils.TraceLogUtils")
    local traceLogUtils = ____require_result_2.traceLogUtils
    traceLogUtils:onBuy(id)
end
function ArchiveShopInfo.prototype.getItem(self, id)
    self:tryCreateItem(id)
    local id_str = "" .. tostring(id)
    return self.data.shops[id_str]
end
function ArchiveShopInfo.prototype.exchange(self, id)
    local id_str = "" .. tostring(id)
    if self.data.codes[id_str] == nil then
        self.data.codes[id_str] = S({count = 0})
    end
    local ____self_data_codes_id_str_3, ____count_4 = self.data.codes[id_str], "count"
    ____self_data_codes_id_str_3[____count_4] = ____self_data_codes_id_str_3[____count_4] + 1
end
function ArchiveShopInfo.prototype.getCodeItem(self, id)
    local id_str = "" .. tostring(id)
    if self.data.codes[id_str] == nil then
        self.data.codes[id_str] = S({count = 0})
    end
    return self.data.codes[id_str]
end
return ____exports
