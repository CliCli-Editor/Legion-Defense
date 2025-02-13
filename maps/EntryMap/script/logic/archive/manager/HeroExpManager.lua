local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["23"] = 8,["24"] = 10,["27"] = 31,["30"] = 12,["31"] = 13,["33"] = 15,["34"] = 16,["35"] = 17,["37"] = 20,["38"] = 21,["39"] = 23,["41"] = 25,["42"] = 25,["43"] = 26,["44"] = 27,["45"] = 25,["48"] = 29,["54"] = 11,["57"] = 10,["58"] = 35,["59"] = 36,["60"] = 36,["62"] = 37,["63"] = 37,["65"] = 38,["66"] = 38,["68"] = 39,["69"] = 39,["71"] = 40,["72"] = 40,["74"] = 41,["75"] = 41,["77"] = 42,["78"] = 42,["80"] = 43,["81"] = 43,["83"] = 44,["84"] = 44,["86"] = 45,["87"] = 45,["89"] = 46,["90"] = 46,["92"] = 47,["93"] = 47,["95"] = 48,["96"] = 48,["98"] = 49,["99"] = 49,["101"] = 50,["102"] = 35,["103"] = 53,["104"] = 54,["105"] = 54,["107"] = 55,["108"] = 55,["110"] = 56,["111"] = 56,["113"] = 57,["114"] = 57,["116"] = 58,["117"] = 58,["119"] = 59,["120"] = 59,["122"] = 60,["123"] = 60,["125"] = 61,["126"] = 61,["128"] = 62,["129"] = 62,["131"] = 63,["132"] = 63,["134"] = 64,["135"] = 64,["137"] = 65,["138"] = 65,["140"] = 66,["141"] = 67,["143"] = 71,["144"] = 53,["145"] = 73,["146"] = 73,["147"] = 73,["149"] = 74,["150"] = 75,["151"] = 76,["152"] = 77,["153"] = 78,["154"] = 79,["155"] = 79,["157"] = 80,["159"] = 85,["160"] = 86,["161"] = 86,["163"] = 87,["165"] = 91,["166"] = 92,["167"] = 92,["169"] = 93,["171"] = 95,["172"] = 96,["173"] = 96,["175"] = 97,["177"] = 101,["178"] = 102,["179"] = 102,["181"] = 103,["183"] = 106,["184"] = 73,["185"] = 109,["186"] = 110,["187"] = 111,["188"] = 112,["190"] = 114,["191"] = 115,["192"] = 116,["193"] = 117,["194"] = 117,["197"] = 119,["198"] = 120,["199"] = 120,["201"] = 122,["202"] = 109,["203"] = 124,["204"] = 125,["205"] = 126,["206"] = 127,["208"] = 129,["209"] = 130,["210"] = 131,["211"] = 132,["212"] = 132,["215"] = 134,["216"] = 135,["217"] = 135,["219"] = 136,["220"] = 124,["221"] = 139,["222"] = 140,["223"] = 141,["224"] = 142,["226"] = 144,["227"] = 139,["228"] = 149});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroExpConfig = include("logic.configs.HeroExpConfig")
local heroExpConfigList = ____HeroExpConfig.heroExpConfigList
local ____HeroExpRewardConfig = include("logic.configs.HeroExpRewardConfig")
local heroExpRewardConfigMap = ____HeroExpRewardConfig.heroExpRewardConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.HeroExpManager = __TS__Class()
local HeroExpManager = ____exports.HeroExpManager
HeroExpManager.name = "HeroExpManager"
function HeroExpManager.prototype.____constructor(self)
end
function HeroExpManager.prototype.reward(self, id, level)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if not self:canReward(id, level) then
                return true, false
            end
            local data = archive.playerInfo:getHeroInfo(id)
            if data == nil then
                return true, false
            end
            local pre = data.cur_lv
            local cfg = heroExpRewardConfigMap[id]
            archive.playerInfo:getLevelReward(id, level)
            do
                local index = pre + 1
                while index < level + 1 do
                    local reward = self:getReward(cfg, index)
                    rewardManager:rewardItem(reward[1], reward[2])
                    index = index + 1
                end
            end
            archive.playerInfo:sync()
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function HeroExpManager.prototype.getExpIcon(self, level)
    if level == 0 then
        return 0
    end
    if level == 1 then
        return 134259076
    end
    if level == 2 then
        return 134242707
    end
    if level == 3 then
        return 134272092
    end
    if level == 4 then
        return 134276032
    end
    if level == 5 then
        return 134256187
    end
    if level == 6 then
        return 134278163
    end
    if level == 7 then
        return 134241517
    end
    if level == 8 then
        return 134275682
    end
    if level == 9 then
        return 134222070
    end
    if level == 10 then
        return 134224338
    end
    if level == 11 then
        return 134264357
    end
    if level == 12 then
        return 134255414
    end
    if level == 13 then
        return 134232074
    end
    return 0
end
function HeroExpManager.prototype.getReward(self, cfg, level)
    if level == 1 then
        return cfg.reward1
    end
    if level == 2 then
        return cfg.reward2
    end
    if level == 3 then
        return cfg.reward3
    end
    if level == 4 then
        return cfg.reward4
    end
    if level == 5 then
        return cfg.reward5
    end
    if level == 6 then
        return cfg.reward6
    end
    if level == 7 then
        return cfg.reward7
    end
    if level == 8 then
        return cfg.reward8
    end
    if level == 9 then
        return cfg.reward9
    end
    if level == 10 then
        return cfg.reward10
    end
    if level == 11 then
        return cfg.reward11
    end
    if level == 12 then
        return cfg.reward12
    end
    if cfg["reward" .. tostring(level)] ~= nil then
        return cfg["reward" .. tostring(level)]
    end
    return cfg.reward1
end
function HeroExpManager.prototype.canReward(self, id, level, showTip)
    if showTip == nil then
        showTip = false
    end
    local data = archive.playerInfo:getHeroInfo(id)
    console:log("cur_lv", data and data.cur_lv)
    console:log("lv", data and data.lv)
    console:log("level", level)
    if data == nil then
        if showTip then
            DTips:show(i18n["local"](i18n, "异常."))
        end
        return false
    end
    if data.cur_lv >= level then
        if showTip then
            DTips:show(i18n["local"](i18n, "已领取"))
        end
        return false
    end
    if data.lv < level then
        if showTip then
            DTips:show(i18n["local"](i18n, "未解锁"))
        end
        return false
    end
    if data.cur_lv == data.lv then
        if showTip then
            DTips:show(i18n["local"](i18n, "已领取"))
        end
        return false
    end
    if data.cur_lv > data.lv then
        if showTip then
            DTips:show(i18n["local"](i18n, "异常"))
        end
        return false
    end
    return true
end
function HeroExpManager.prototype.currentProgress(self, id)
    local data = archive.playerInfo:getHeroInfo(id)
    if data == nil then
        return 0
    end
    local score = 0
    if data.lv ~= 0 then
        local cfg = heroExpConfigList[data.lv + 1]
        if cfg ~= nil then
            score = cfg.score
        end
    end
    local cfg2 = heroExpConfigList[data.lv + 1 + 1]
    if cfg2 == nil then
        return 1
    end
    return (data.exp - score) / (cfg2.score - score) * 100
end
function HeroExpManager.prototype.currentRate(self, id)
    local data = archive.playerInfo:getHeroInfo(id)
    if data == nil then
        return "0/0"
    end
    local score = 0
    if data.lv ~= 0 then
        local cfg = heroExpConfigList[data.lv + 1]
        if cfg ~= nil then
            score = cfg.score
        end
    end
    local cfg2 = heroExpConfigList[data.lv + 1 + 1]
    if cfg2 == nil then
        return "0/0"
    end
    return (tostring(data.exp - score) .. "/") .. tostring(cfg2.score - score)
end
function HeroExpManager.prototype.getLevel(self, id)
    local data = archive.playerInfo:getHeroInfo(id)
    if data == nil then
        return 0
    end
    return data.lv
end
____exports.heroExpManager = __TS__New(____exports.HeroExpManager)
return ____exports
