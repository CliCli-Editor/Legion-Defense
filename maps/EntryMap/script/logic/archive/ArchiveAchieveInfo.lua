local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 10,["26"] = 10,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["32"] = 12,["33"] = 13,["34"] = 14,["35"] = 12,["36"] = 15,["37"] = 16,["38"] = 15,["39"] = 27,["40"] = 29,["41"] = 32,["42"] = 27,["43"] = 36,["44"] = 36,["45"] = 40,["46"] = 40,["47"] = 43,["48"] = 43,["49"] = 46,["50"] = 46,["51"] = 49,["52"] = 49,["53"] = 52,["56"] = 54,["57"] = 54,["58"] = 54,["59"] = 54,["61"] = 53,["64"] = 56,["66"] = 53,["68"] = 52,["69"] = 64,["70"] = 65,["71"] = 66,["74"] = 69,["75"] = 69,["76"] = 69,["77"] = 69,["78"] = 69,["79"] = 64,["80"] = 80,["81"] = 81,["82"] = 83,["85"] = 86,["86"] = 88,["87"] = 89,["88"] = 90,["89"] = 90,["91"] = 80,["92"] = 94,["93"] = 95,["94"] = 96,["95"] = 97,["97"] = 99,["98"] = 99,["100"] = 100,["101"] = 94,["102"] = 102,["103"] = 103,["104"] = 104,["105"] = 105,["107"] = 107,["108"] = 107,["110"] = 108,["111"] = 108,["113"] = 109,["114"] = 102,["115"] = 112,["116"] = 113,["118"] = 114,["119"] = 114,["121"] = 115,["122"] = 116,["123"] = 116,["125"] = 117,["126"] = 118,["127"] = 119,["128"] = 120,["132"] = 114,["135"] = 123,["136"] = 124,["138"] = 112,["139"] = 131,["140"] = 132,["141"] = 133,["142"] = 134,["143"] = 135,["146"] = 138,["147"] = 131,["148"] = 146,["150"] = 148,["151"] = 187,["152"] = 149,["154"] = 150,["156"] = 151,["158"] = 152,["159"] = 152,["160"] = 152,["161"] = 152,["162"] = 153,["164"] = 154,["166"] = 155,["168"] = 156,["170"] = 157,["171"] = 157,["172"] = 157,["173"] = 157,["174"] = 158,["176"] = 159,["178"] = 160,["179"] = 160,["180"] = 160,["181"] = 160,["182"] = 161,["184"] = 162,["186"] = 163,["187"] = 163,["188"] = 163,["189"] = 163,["190"] = 164,["192"] = 165,["194"] = 166,["195"] = 166,["196"] = 166,["197"] = 166,["198"] = 167,["200"] = 168,["202"] = 169,["203"] = 169,["204"] = 169,["205"] = 169,["206"] = 170,["208"] = 171,["210"] = 172,["211"] = 172,["212"] = 172,["213"] = 172,["214"] = 173,["216"] = 174,["218"] = 175,["219"] = 175,["220"] = 175,["221"] = 175,["222"] = 176,["224"] = 177,["226"] = 178,["227"] = 178,["228"] = 178,["229"] = 178,["230"] = 179,["232"] = 180,["234"] = 181,["235"] = 181,["236"] = 181,["237"] = 181,["238"] = 182,["240"] = 183,["242"] = 184,["243"] = 184,["244"] = 184,["245"] = 184,["246"] = 185,["248"] = 186,["250"] = 187,["251"] = 188,["252"] = 188,["253"] = 188,["254"] = 188,["255"] = 189,["256"] = 190,["257"] = 191,["259"] = 193,["260"] = 194,["261"] = 195,["263"] = 196,["265"] = 197,["266"] = 197,["267"] = 198,["269"] = 199,["271"] = 200,["272"] = 200,["273"] = 200,["274"] = 200,["275"] = 200,["276"] = 201,["278"] = 202,["280"] = 203,["283"] = 205,["287"] = 208,["288"] = 146,["293"] = 24});
local ____exports = {}
local ____PlatformManager = include("framework.shop.PlatformManager")
local platformManager = ____PlatformManager.platformManager
local PlatFormRoleCommunityType = ____PlatformManager.PlatFormRoleCommunityType
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____AchieveConfig = include("logic.configs.AchieveConfig")
local achieveConfigList = ____AchieveConfig.achieveConfigList
local achieveConfigMap = ____AchieveConfig.achieveConfigMap
local ____CodeConfig = include("logic.configs.CodeConfig")
local codeConfigList = ____CodeConfig.codeConfigList
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
local ____VipEnum = include("logic.archive.manager.VipEnum")
local AchieveConditionType = ____VipEnum.AchieveConditionType
____exports.ArchiveAchieveInfo = __TS__Class()
local ArchiveAchieveInfo = ____exports.ArchiveAchieveInfo
ArchiveAchieveInfo.name = "ArchiveAchieveInfo"
__TS__ClassExtends(ArchiveAchieveInfo, ArchiveBaseProto)
function ArchiveAchieveInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveAchieveInfo"
    self.slot = 9
end
function ArchiveAchieveInfo.prototype.default(self)
    return {version = 1, point = 0, achieves = {}, stats = {}}
end
function ArchiveAchieveInfo.prototype.startGame(self)
    local ____ = self.data
    self:check()
end
function ArchiveAchieveInfo.prototype.start(self)
end
function ArchiveAchieveInfo.prototype.endGame(self)
end
function ArchiveAchieveInfo.prototype.escape(self)
end
function ArchiveAchieveInfo.prototype.init(self)
end
function ArchiveAchieveInfo.prototype.afterEndGame(self)
end
function ArchiveAchieveInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncAchieveInfo:execute(
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
function ArchiveAchieveInfo.prototype.complete(self, id)
    local key = "" .. tostring(id)
    if self.data.achieves[key] ~= nil then
        return
    end
    self.data.achieves[key] = S({
        id = id,
        complete_time = Date:now(),
        reward_time = 0
    })
end
function ArchiveAchieveInfo.prototype.reward(self, id)
    local key = "" .. tostring(id)
    if self.data.achieves[key] == nil or self.data.achieves[key].reward_time > 0 then
        return
    end
    self.data.achieves[key].reward_time = Date:now()
    local cfg = achieveConfigMap[id]
    if cfg.achieveScore > 0 then
        local ____self_data_0, ____point_1 = self.data, "point"
        ____self_data_0[____point_1] = ____self_data_0[____point_1] + cfg.achieveScore
    end
end
function ArchiveAchieveInfo.prototype.isComplete(self, id)
    local key = "" .. tostring(id)
    if self.data.achieves[key] == nil then
        return false
    end
    if self.data.achieves[key].complete_time == nil or self.data.achieves[key].complete_time <= 0 then
        return false
    end
    return true
end
function ArchiveAchieveInfo.prototype.isReward(self, id)
    local key = "" .. tostring(id)
    if self.data.achieves[key] == nil then
        return false
    end
    if self.data.achieves[key].complete_time == nil or self.data.achieves[key].complete_time <= 0 then
        return false
    end
    if self.data.achieves[key].reward_time == nil or self.data.achieves[key].reward_time <= 0 then
        return false
    end
    return true
end
function ArchiveAchieveInfo.prototype.check(self)
    local has = false
    do
        local index = 0
        while index < #achieveConfigList do
            do
                local element = achieveConfigList[index + 1]
                if self:isComplete(element.id) then
                    goto __continue25
                end
                local progress = self:getProgress(element.achieveCondition, element)
                if progress >= (element.achieveValue > 0 and element.achieveValue or 1) then
                    self:complete(element.id)
                    has = true
                end
            end
            ::__continue25::
            index = index + 1
        end
    end
    if has then
        self:sync()
    end
end
function ArchiveAchieveInfo.prototype.getCompleteCount(self)
    local count = 0
    for ____, element in ipairs(achieveConfigList) do
        if self:isComplete(element.id) then
            count = count + 1
        end
    end
    return count
end
function ArchiveAchieveInfo.prototype.getProgress(self, ____type, config)
    repeat
        local ____switch34 = ____type
        local code, cfg, data, shopManager
        local ____cond34 = ____switch34 == AchieveConditionType["获得胜利"]
        if ____cond34 then
            return 0
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["收藏游戏"]
        if ____cond34 then
            console:log(
                "收藏游戏条件",
                platformManager:isBookmarkMap()
            )
            return platformManager:isBookmarkMap() and 1 or 0
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["五星好评"]
        if ____cond34 then
            return 0
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["累计获赞"]
        if ____cond34 then
            console:log(
                "发帖累计获赞条件",
                platformManager:getCommunityValue(PlatFormRoleCommunityType["发帖累计获赞"])
            )
            return platformManager:getCommunityValue(PlatFormRoleCommunityType["发帖累计获赞"])
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["精华帖数"]
        if ____cond34 then
            console:log(
                "精华帖数量条件",
                platformManager:getCommunityValue(PlatFormRoleCommunityType["精华帖数量"])
            )
            return platformManager:getCommunityValue(PlatFormRoleCommunityType["精华帖数量"])
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["回复次数"]
        if ____cond34 then
            console:log(
                "回复帖子的次数条件",
                platformManager:getCommunityValue(PlatFormRoleCommunityType["回复帖子的次数"])
            )
            return platformManager:getCommunityValue(PlatFormRoleCommunityType["回复帖子的次数"])
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["欢乐数量"]
        if ____cond34 then
            console:log(
                "帖子收到的欢乐数条件",
                platformManager:getCommunityValue(PlatFormRoleCommunityType["帖子收到的欢乐数"])
            )
            return platformManager:getCommunityValue(PlatFormRoleCommunityType["帖子收到的欢乐数"])
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["发帖数量"]
        if ____cond34 then
            console:log(
                "是否在社区发过贴条件",
                platformManager:getCommunityValue(PlatFormRoleCommunityType["是否在社区发过贴"])
            )
            return platformManager:getCommunityValue(PlatFormRoleCommunityType["是否在社区发过贴"])
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["地图评分"]
        if ____cond34 then
            console:log(
                "地图评分条件",
                platformManager:getMapScore()
            )
            return platformManager:getMapScore()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["地图等级"]
        if ____cond34 then
            console:log(
                "地图等级条件",
                platformManager:getMapLevel()
            )
            return platformManager:getMapLevel()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["累计启动"]
        if ____cond34 then
            console:log(
                "累计启动条件",
                platformManager:getMapStartCount()
            )
            return platformManager:getMapStartCount()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["签到天数"]
        if ____cond34 then
            console:log(
                "签到天数条件",
                platformManager:getSigninCount()
            )
            return platformManager:getSigninCount()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["累计充值"]
        if ____cond34 then
            console:log(
                "累计充值条件",
                platformManager:getTotalConsume()
            )
            return platformManager:getTotalConsume()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["兑换码WJDJZWY"]
        if ____cond34 then
            code = string.lower("WJDJZWY")
            cfg = __TS__ArrayFind(
                codeConfigList,
                function(____, a) return string.lower(a.code) == code end
            )
            if cfg == nil then
                console:log("兑换码1条件", 0)
                return 0
            end
            data = self.archive.shopInfo:getCodeItem(cfg.id)
            console:log("兑换码1条件", cfg.count, data.count)
            return cfg.count <= data.count and 1 or 0
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["总装饰度"]
        if ____cond34 then
            local ____require_result_2 = include("logic.archive.manager.ShopManager")
            shopManager = ____require_result_2.shopManager
            return shopManager:getCurrentDecorateCount()
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["最高段位"]
        if ____cond34 then
            console:log(
                "config.season",
                config.season,
                self.archive.statInfo.data.highestSeasonScoreInSeason["" .. tostring(config.season)]
            )
            return self.archive.statInfo.data.highestSeasonScoreInSeason["" .. tostring(config.season)] or 0
        end
        ____cond34 = ____cond34 or ____switch34 == AchieveConditionType["通过单人模式第几关"]
        if ____cond34 then
            return self.archive.playerData.singleModeUnlockLevel
        end
        do
            console:warn("成就类型未实现，请联系欣宇的旁边" .. tostring(____type))
            break
        end
    until true
    return 0
end
__TS__SetDescriptor(
    ArchiveAchieveInfo.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
return ____exports
