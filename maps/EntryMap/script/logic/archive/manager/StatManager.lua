local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 7,["21"] = 7,["22"] = 8,["23"] = 9,["24"] = 8,["25"] = 13,["26"] = 14,["27"] = 15,["30"] = 19,["31"] = 20,["32"] = 21,["33"] = 23,["35"] = 25,["36"] = 25,["38"] = 26,["39"] = 27,["40"] = 27,["42"] = 28,["45"] = 25,["48"] = 30,["49"] = 13,["50"] = 32,["51"] = 33,["52"] = 32,["53"] = 37});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SevenDaysConfig = include("logic.configs.SevenDaysConfig")
local sevenDaysConfigMap = ____SevenDaysConfig.sevenDaysConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.StatManager = __TS__Class()
local StatManager = ____exports.StatManager
StatManager.name = "StatManager"
function StatManager.prototype.____constructor(self)
end
function StatManager.prototype.start(self)
    archive.statInfo:start()
end
function StatManager.prototype.signIn(self)
    if not archive.statInfo:canSignIn() then
        DTips:show(i18n["local"](i18n, "已签到"))
        return
    end
    local data = archive.statInfo:getSignInData()
    local pre = data and data.reward_count or 0
    local cur = data.signin_count or 0
    archive.statInfo:signIn()
    do
        local index = pre + 1
        while index < cur + 1 do
            do
                local cfg = sevenDaysConfigMap[index]
                if cfg == nil then
                    goto __continue6
                end
                rewardManager:rewardItem(cfg.propId.id, cfg.num)
            end
            ::__continue6::
            index = index + 1
        end
    end
    archive:sync()
end
function StatManager.prototype.canSignIn(self)
    return archive.statInfo:canSignIn()
end
____exports.statManager = __TS__New(____exports.StatManager)
return ____exports
