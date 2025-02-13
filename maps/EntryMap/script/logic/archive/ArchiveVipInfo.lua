local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["28"] = 11,["29"] = 12,["30"] = 13,["31"] = 11,["32"] = 14,["33"] = 15,["34"] = 14,["35"] = 24,["36"] = 25,["37"] = 24,["38"] = 28,["39"] = 28,["40"] = 32,["41"] = 32,["42"] = 35,["43"] = 35,["44"] = 38,["45"] = 38,["46"] = 41,["47"] = 41,["48"] = 44,["51"] = 46,["52"] = 46,["53"] = 46,["54"] = 46,["56"] = 45,["59"] = 48,["61"] = 45,["63"] = 44,["64"] = 54,["65"] = 55,["66"] = 55,["67"] = 55,["68"] = 55,["69"] = 56,["70"] = 57,["72"] = 59,["73"] = 54,["74"] = 63,["75"] = 65,["76"] = 65,["77"] = 65,["78"] = 65,["79"] = 66,["80"] = 67,["82"] = 69,["84"] = 70,["85"] = 70,["86"] = 71,["87"] = 72,["88"] = 70,["91"] = 74,["92"] = 63,["93"] = 79,["94"] = 80,["95"] = 80,["96"] = 80,["97"] = 80,["99"] = 81,["100"] = 81,["101"] = 82,["102"] = 83,["103"] = 84,["104"] = 86,["105"] = 87,["106"] = 88,["107"] = 89,["110"] = 81,["113"] = 79,["114"] = 95,["115"] = 96,["117"] = 97,["118"] = 97,["120"] = 98,["121"] = 99,["122"] = 99,["124"] = 101,["125"] = 102,["126"] = 104,["127"] = 105,["128"] = 106,["129"] = 107,["134"] = 97,["137"] = 95,["138"] = 113,["139"] = 114,["140"] = 114,["141"] = 114,["142"] = 114,["143"] = 115,["144"] = 113,["145"] = 118,["146"] = 119,["147"] = 121,["148"] = 122,["149"] = 122,["150"] = 122,["151"] = 122,["152"] = 122,["153"] = 122,["154"] = 122,["155"] = 122,["156"] = 130,["157"] = 131,["158"] = 132,["159"] = 133,["161"] = 135,["162"] = 135,["163"] = 136,["164"] = 137,["166"] = 121,["167"] = 141,["168"] = 141,["169"] = 141,["170"] = 141,["171"] = 142,["172"] = 143,["174"] = 145,["175"] = 146,["176"] = 147,["178"] = 149,["179"] = 150,["180"] = 151,["183"] = 118,["188"] = 21});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____vipConfig = include("logic.configs.vipConfig")
local vipConfigMap = ____vipConfig.vipConfigMap
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
local ____VipEnum = include("logic.archive.manager.VipEnum")
local VipLimitType = ____VipEnum.VipLimitType
local VipType = ____VipEnum.VipType
____exports.ArchiveVipInfo = __TS__Class()
local ArchiveVipInfo = ____exports.ArchiveVipInfo
ArchiveVipInfo.name = "ArchiveVipInfo"
__TS__ClassExtends(ArchiveVipInfo, ArchiveBaseProto)
function ArchiveVipInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveVipInfo"
    self.slot = 10
end
function ArchiveVipInfo.prototype.default(self)
    return {version = 1, vips = {}}
end
function ArchiveVipInfo.prototype.startGame(self)
    local ____ = self.data
end
function ArchiveVipInfo.prototype.start(self)
end
function ArchiveVipInfo.prototype.endGame(self)
end
function ArchiveVipInfo.prototype.escape(self)
end
function ArchiveVipInfo.prototype.init(self)
end
function ArchiveVipInfo.prototype.afterEndGame(self)
end
function ArchiveVipInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncVipInfo:execute(
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
function ArchiveVipInfo.prototype.has(self, ____type)
    local list = __TS__ArrayFilter(
        self.data.vips,
        function(____, a) return vipConfigMap[a.cfgId].vipEffect == ____type and not a.disable end
    )
    if #list == 0 then
        return false
    end
    return true
end
function ArchiveVipInfo.prototype.getValue(self, ____type)
    local list = __TS__ArrayFilter(
        self.data.vips,
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
function ArchiveVipInfo.prototype.use(self, ____type)
    local list = __TS__ArrayFilter(
        self.data.vips,
        function(____, a) return vipConfigMap[a.cfgId].vipEffect == ____type and not a.disable end
    )
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            local cfg = vipConfigMap[element.cfgId]
            if cfg.limitType == VipLimitType["生效次数"] then
                element.use_count = element.use_count + 1
                if element.use_count >= cfg.limitValue then
                    element.disable = true
                    element.end_time = Date:now() / 1000
                end
            end
            index = index + 1
        end
    end
end
function ArchiveVipInfo.prototype.check(self)
    local list = self.data.vips
    do
        local index = 0
        while index < #list do
            do
                local element = list[index + 1]
                if element.disable then
                    goto __continue25
                end
                local cfg = vipConfigMap[element.cfgId]
                if cfg.limitType == VipLimitType["生效次数"] and element.use_count < cfg.limitValue then
                    element.use_count = element.use_count + 1
                    if element.use_count >= cfg.limitValue then
                        element.disable = true
                        element.end_time = Date:now() / 1000
                    end
                end
            end
            ::__continue25::
            index = index + 1
        end
    end
end
function ArchiveVipInfo.prototype.disable(self, cfgId)
    local vip = __TS__ArrayFind(
        self.data.vips,
        function(____, a) return a.cfgId == cfgId end
    )
    vip.disable = true
end
function ArchiveVipInfo.prototype.add(self, cfgId)
    local cfg = vipConfigMap[cfgId]
    local function create()
        local item = S({
            cfgId = cfg.id,
            use_count = 0,
            max_count = 0,
            disable = false,
            end_time = 0,
            sum_count = 1
        })
        if cfg.limitType == VipLimitType["生效时间"] then
            item.end_time = Date:now() / 1000 + cfg.limitValue * 3600 * 24 * 1000
        elseif cfg.limitType == VipLimitType["生效次数"] then
            item.max_count = cfg.limitValue
        end
        local ____self_data_vips_0 = self.data.vips
        ____self_data_vips_0[#____self_data_vips_0 + 1] = item
        if cfg.vipEffect == VipType["每日登录获取钻石"] then
            self.archive.playerInfo:dailyReward()
        end
    end
    local item = __TS__ArrayFind(
        self.data.vips,
        function(____, a) return a.cfgId == cfg.id end
    )
    if item == nil then
        create(nil)
    else
        if cfg.limitType == VipLimitType["生效次数"] then
            item.use_count = 0
            item.max_count = item.max_count
        end
        item.disable = false
        if cfg.vipEffect == VipType["每日登录获取钻石"] then
            self.archive.playerInfo:dailyReward()
        end
    end
end
__TS__SetDescriptor(
    ArchiveVipInfo.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
return ____exports
