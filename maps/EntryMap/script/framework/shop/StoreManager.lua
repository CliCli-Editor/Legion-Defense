local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 4,["10"] = 4,["12"] = 4,["13"] = 11,["14"] = 12,["15"] = 11,["16"] = 20,["17"] = 21,["18"] = 20,["19"] = 28,["20"] = 29,["21"] = 29,["22"] = 29,["23"] = 30,["24"] = 29,["25"] = 29,["26"] = 28,["27"] = 37,["28"] = 38,["29"] = 38,["30"] = 38,["31"] = 39,["32"] = 38,["33"] = 38,["34"] = 37});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.StoreManager = __TS__Class()
local StoreManager = ____exports.StoreManager
StoreManager.name = "StoreManager"
function StoreManager.prototype.____constructor(self)
end
function StoreManager.prototype.get_count(self, platformId)
    return LOCAL.PLAYER:get_store_item_number(platformId)
end
function StoreManager.prototype.use_count(self, platformId, count)
    LOCAL.PLAYER:use_store_item(count, platformId)
end
function StoreManager.prototype.event(self, callback)
    LOCAL.PLAYER:event(
        "玩家-使用平台道具",
        function(trg, data)
            callback(nil, data)
        end
    )
end
function StoreManager.prototype.change(self, callback)
    LOCAL.PLAYER:event(
        "玩家-持有平台道具",
        function(trg, data)
            callback(nil, data)
        end
    )
end
return ____exports
