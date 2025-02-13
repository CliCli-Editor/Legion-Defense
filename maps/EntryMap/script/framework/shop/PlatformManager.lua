local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 5,["10"] = 6,["11"] = 6,["12"] = 7,["13"] = 7,["14"] = 8,["15"] = 8,["16"] = 9,["17"] = 9,["18"] = 10,["19"] = 10,["20"] = 11,["21"] = 11,["22"] = 12,["23"] = 12,["24"] = 15,["25"] = 15,["26"] = 15,["28"] = 15,["29"] = 21,["30"] = 22,["31"] = 21,["32"] = 30,["33"] = 31,["34"] = 30,["35"] = 39,["36"] = 40,["37"] = 39,["38"] = 47,["39"] = 48,["40"] = 47,["41"] = 55,["42"] = 56,["43"] = 55,["44"] = 63,["45"] = 66,["46"] = 66,["47"] = 67,["48"] = 63,["49"] = 73,["50"] = 74,["51"] = 73,["52"] = 78});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.PlatFormRoleCommunityType = PlatFormRoleCommunityType or ({})
____exports.PlatFormRoleCommunityType["发帖累计获赞"] = 0
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["发帖累计获赞"]] = "发帖累计获赞"
____exports.PlatFormRoleCommunityType["精华帖数量"] = 1
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["精华帖数量"]] = "精华帖数量"
____exports.PlatFormRoleCommunityType["回复帖子的次数"] = 2
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["回复帖子的次数"]] = "回复帖子的次数"
____exports.PlatFormRoleCommunityType["帖子收到的欢乐数"] = 3
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["帖子收到的欢乐数"]] = "帖子收到的欢乐数"
____exports.PlatFormRoleCommunityType["是否在社区发过贴"] = 4
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["是否在社区发过贴"]] = "是否在社区发过贴"
____exports.PlatFormRoleCommunityType["是否版主"] = 5
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["是否版主"]] = "是否版主"
____exports.PlatFormRoleCommunityType["社区主题数量"] = 6
____exports.PlatFormRoleCommunityType[____exports.PlatFormRoleCommunityType["社区主题数量"]] = "社区主题数量"
____exports.PlatformManager = __TS__Class()
local PlatformManager = ____exports.PlatformManager
PlatformManager.name = "PlatformManager"
function PlatformManager.prototype.____constructor(self)
end
function PlatformManager.prototype.isBookmarkMap(self)
    return LOCAL.PLAYER.handle:api_is_bookmark_current_map()
end
function PlatformManager.prototype.getCommunityValue(self, ____type)
    return LOCAL.PLAYER.handle:api_get_community_value(____type) or 0
end
function PlatformManager.prototype.getMapLevel(self)
    return LOCAL.PLAYER.handle:api_get_map_level() or 0
end
function PlatformManager.prototype.getMapStartCount(self)
    return LOCAL.PLAYER.handle:api_get_played_times() or 0
end
function PlatformManager.prototype.getSigninCount(self)
    return LOCAL.PLAYER.handle:api_get_sign_in_days_of_platform(0) or 0
end
function PlatformManager.prototype.getTotalConsume(self)
    local ____require_result_0 = include("logic.archive.manager.KKShopManager")
    local kkShopManager = ____require_result_0.kkShopManager
    return kkShopManager:getShopSponsorPoint()
end
function PlatformManager.prototype.getMapScore(self)
    return y3.game.get_global_archive("地图评分")
end
____exports.platformManager = __TS__New(____exports.PlatformManager)
return ____exports
