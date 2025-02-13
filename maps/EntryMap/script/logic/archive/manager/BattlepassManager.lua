local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 9,["24"] = 9,["25"] = 9,["27"] = 11,["28"] = 9,["29"] = 24,["30"] = 25,["31"] = 24,["32"] = 28,["33"] = 29,["34"] = 29,["35"] = 29,["36"] = 29,["37"] = 30,["38"] = 28,["39"] = 33,["40"] = 34,["41"] = 35,["42"] = 36,["43"] = 38,["44"] = 39,["45"] = 40,["46"] = 41,["48"] = 43,["49"] = 43,["50"] = 43,["51"] = 43,["53"] = 46,["54"] = 46,["55"] = 46,["56"] = 46,["57"] = 33,["58"] = 49,["59"] = 50,["60"] = 51,["61"] = 51,["62"] = 51,["63"] = 51,["64"] = 52,["65"] = 49,["66"] = 55,["67"] = 56,["68"] = 57,["69"] = 57,["70"] = 57,["71"] = 57,["72"] = 58,["73"] = 55,["74"] = 61,["75"] = 62,["76"] = 63,["77"] = 63,["78"] = 63,["79"] = 63,["80"] = 64,["82"] = 65,["83"] = 65,["84"] = 66,["85"] = 67,["87"] = 65,["90"] = 70,["91"] = 61,["92"] = 77,["93"] = 78,["94"] = 79,["95"] = 79,["96"] = 79,["97"] = 79,["98"] = 79,["99"] = 79,["100"] = 79,["101"] = 80,["102"] = 77,["103"] = 88,["104"] = 89,["105"] = 90,["106"] = 91,["107"] = 88,["108"] = 99,["109"] = 100,["110"] = 101,["111"] = 102,["112"] = 99,["113"] = 110,["114"] = 111,["115"] = 112,["116"] = 110,["117"] = 119,["118"] = 120,["119"] = 121,["120"] = 122,["121"] = 123,["122"] = 124,["123"] = 127,["124"] = 128,["125"] = 129,["127"] = 131,["128"] = 131,["130"] = 132,["131"] = 132,["132"] = 132,["133"] = 132,["134"] = 133,["135"] = 134,["137"] = 136,["138"] = 137,["139"] = 138,["142"] = 140,["143"] = 140,["144"] = 141,["145"] = 140,["150"] = 131,["153"] = 146,["155"] = 147,["156"] = 147,["158"] = 148,["159"] = 148,["160"] = 148,["161"] = 148,["162"] = 149,["163"] = 150,["165"] = 152,["166"] = 153,["167"] = 154,["170"] = 156,["171"] = 156,["172"] = 157,["173"] = 156,["178"] = 147,["183"] = 165,["184"] = 166,["185"] = 168,["186"] = 169,["188"] = 171,["189"] = 172,["190"] = 173,["192"] = 176,["193"] = 176,["194"] = 176,["195"] = 176,["196"] = 177,["197"] = 178,["199"] = 180,["200"] = 181,["201"] = 182,["204"] = 184,["205"] = 184,["206"] = 185,["207"] = 186,["208"] = 184,["211"] = 188,["215"] = 191,["216"] = 193,["217"] = 194,["219"] = 196,["220"] = 197,["221"] = 198,["223"] = 201,["224"] = 201,["225"] = 201,["226"] = 201,["227"] = 202,["228"] = 203,["230"] = 205,["231"] = 206,["232"] = 207,["235"] = 209,["236"] = 209,["237"] = 210,["238"] = 211,["239"] = 209,["242"] = 213,["248"] = 218,["249"] = 119,["250"] = 226,["251"] = 227,["252"] = 227,["253"] = 226,["254"] = 235,["255"] = 236,["256"] = 237,["257"] = 238,["258"] = 239,["259"] = 240,["260"] = 241,["261"] = 242,["262"] = 243,["264"] = 245,["265"] = 245,["266"] = 245,["267"] = 245,["268"] = 246,["270"] = 249,["271"] = 250,["272"] = 250,["273"] = 250,["274"] = 250,["275"] = 250,["277"] = 252,["278"] = 252,["279"] = 252,["280"] = 252,["281"] = 235,["282"] = 260,["283"] = 261,["284"] = 261,["285"] = 260,["286"] = 269,["287"] = 270,["288"] = 270,["289"] = 269,["290"] = 278,["291"] = 279,["292"] = 279,["293"] = 278,["294"] = 289,["295"] = 289,["296"] = 298,["297"] = 298,["298"] = 308,["299"] = 308,["300"] = 312,["301"] = 313,["302"] = 315,["303"] = 316,["304"] = 318,["305"] = 319,["308"] = 322,["309"] = 323,["310"] = 324,["311"] = 312,["312"] = 327,["313"] = 328,["314"] = 329,["315"] = 329,["316"] = 329,["317"] = 330,["318"] = 330,["319"] = 329,["320"] = 329,["321"] = 327,["322"] = 334,["323"] = 335,["324"] = 336,["326"] = 334,["327"] = 340,["328"] = 341,["329"] = 340,["330"] = 345});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____BattlepassRewardConfig = include("logic.configs.BattlepassRewardConfig")
local battlepassRewardConfigList = ____BattlepassRewardConfig.battlepassRewardConfigList
local ____BattlepassSeasonConfig = include("logic.configs.BattlepassSeasonConfig")
local battlepassSeasonConfigList = ____BattlepassSeasonConfig.battlepassSeasonConfigList
local battlepassSeasonConfigMap = ____BattlepassSeasonConfig.battlepassSeasonConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.BattlepassManager = __TS__Class()
local BattlepassManager = ____exports.BattlepassManager
BattlepassManager.name = "BattlepassManager"
function BattlepassManager.prototype.____constructor(self)
    self.data = vue.reactive({second = 0})
end
function BattlepassManager.prototype.getCfg(self, battlepassId)
    return battlepassSeasonConfigMap[battlepassId]
end
function BattlepassManager.prototype.getRewardCfgs(self, battlepassId)
    local cfgs = __TS__ArrayFilter(
        battlepassRewardConfigList,
        function(____, a) return a.battlepassId == battlepassId end
    )
    return cfgs
end
function BattlepassManager.prototype.getRewardCfg(self, battlepassId, level)
    local rewardCfg = self:getUncycleRewardCfgs(battlepassId)
    local cycleRewardCfgs = self:getCycleRewardCfgs(battlepassId)
    local uncycleMaxRewardLevel = self:getUncycleMaxRewardLevel(battlepassId)
    if level > uncycleMaxRewardLevel then
        level = (level - uncycleMaxRewardLevel) % #cycleRewardCfgs
        if level == 0 then
            level = #cycleRewardCfgs
        end
        return __TS__ArrayFind(
            cycleRewardCfgs,
            function(____, a) return a.level == level end
        )
    end
    return __TS__ArrayFind(
        rewardCfg,
        function(____, a) return a.level == level end
    )
end
function BattlepassManager.prototype.getUncycleRewardCfgs(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    local cfgs = __TS__ArrayFilter(
        battlepassRewardConfigList,
        function(____, a) return a.battlepassId == battlepassId and a.battlepassRewardGroup == cfg.battlepassRewardGroup1 end
    )
    return cfgs
end
function BattlepassManager.prototype.getCycleRewardCfgs(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    local cfgs = __TS__ArrayFilter(
        battlepassRewardConfigList,
        function(____, a) return a.battlepassId == battlepassId and a.battlepassRewardGroup == cfg.battlepassRewardGroup2 end
    )
    return cfgs
end
function BattlepassManager.prototype.getUncycleMaxRewardLevel(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    local cfgs = __TS__ArrayFilter(
        battlepassRewardConfigList,
        function(____, a) return a.battlepassId == battlepassId and a.battlepassRewardGroup == cfg.battlepassRewardGroup1 end
    )
    local maxLevel = 0
    do
        local index = 0
        while index < #cfgs do
            if maxLevel < cfgs[index + 1].level then
                maxLevel = cfgs[index + 1].level
            end
            index = index + 1
        end
    end
    return maxLevel
end
function BattlepassManager.prototype.getOpenBattlepass(self)
    local now = Date:now() / 1000
    local ids = __TS__ArrayMap(
        __TS__ArrayFilter(
            battlepassSeasonConfigList,
            function(____, a) return a.startTime <= now and a.endTime >= now end
        ),
        function(____, a) return a.id end
    )
    return ids
end
function BattlepassManager.prototype.isOpen(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    local now = Date:now() / 1000
    return cfg.startTime <= now and cfg.endTime >= now
end
function BattlepassManager.prototype.getRemainTime(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    local now = Date:now() / 1000
    return cfg.endTime - now > 0 and cfg.endTime - now or 0
end
function BattlepassManager.prototype.isPayed(self, battlepassId)
    local cfg = self:getCfg(battlepassId)
    return archive.playerInfo:getResource(cfg.battlePassPayedItem) > 0
end
function BattlepassManager.prototype.reward(self, battlepassId)
    local nowLevel = self:getLevel(battlepassId)
    local nowGetFreeLevel = self:getAlreadyGetFreeLevel(battlepassId)
    local nowGetPayLevel = self:getAlreadyGetPayLevel(battlepassId)
    local isPayed = self:isPayed(battlepassId)
    local uncycleMaxRewardLevel = self:getUncycleMaxRewardLevel(battlepassId)
    if nowGetFreeLevel < uncycleMaxRewardLevel or nowGetPayLevel < uncycleMaxRewardLevel then
        local rewardCfgs = self:getUncycleRewardCfgs(battlepassId)
        local maxLevel = nowLevel > uncycleMaxRewardLevel and uncycleMaxRewardLevel or nowLevel
        do
            local index = nowGetFreeLevel + 1
            while index <= maxLevel do
                do
                    local rewardCfg = __TS__ArrayFind(
                        rewardCfgs,
                        function(____, a) return a.level == index end
                    )
                    if rewardCfg == nil then
                        goto __continue27
                    end
                    if #rewardCfg.propId ~= #rewardCfg.num then
                        console:error("战令奖励配置错误", rewardCfg.id)
                        goto __continue27
                    end
                    do
                        local i = 0
                        while i < #rewardCfg.propId do
                            rewardManager:rewardItem(rewardCfg.propId[i + 1].id, rewardCfg.num[i + 1])
                            i = i + 1
                        end
                    end
                end
                ::__continue27::
                index = index + 1
            end
        end
        if isPayed then
            do
                local index = nowGetPayLevel + 1
                while index <= maxLevel do
                    do
                        local rewardCfg = __TS__ArrayFind(
                            rewardCfgs,
                            function(____, a) return a.level == index end
                        )
                        if rewardCfg == nil then
                            goto __continue33
                        end
                        if #rewardCfg.payPropId ~= #rewardCfg.payNum then
                            console:error("战令奖励配置错误", rewardCfg.id)
                            goto __continue33
                        end
                        do
                            local i = 0
                            while i < #rewardCfg.payPropId do
                                rewardManager:rewardItem(rewardCfg.payPropId[i + 1].id, rewardCfg.payNum[i + 1])
                                i = i + 1
                            end
                        end
                    end
                    ::__continue33::
                    index = index + 1
                end
            end
        end
    end
    if nowLevel > uncycleMaxRewardLevel then
        local cycleRewardCfgs = self:getCycleRewardCfgs(battlepassId)
        local index = (nowGetFreeLevel > uncycleMaxRewardLevel and nowGetFreeLevel or uncycleMaxRewardLevel) + 1
        while index <= nowLevel do
            do
                local level = (index - uncycleMaxRewardLevel) % #cycleRewardCfgs
                if level == 0 then
                    level = #cycleRewardCfgs
                end
                local rewardCfg = __TS__ArrayFind(
                    cycleRewardCfgs,
                    function(____, a) return a.level == level end
                )
                if rewardCfg == nil then
                    goto __continue39
                end
                if #rewardCfg.propId ~= #rewardCfg.num then
                    console:error("战令奖励配置错误", rewardCfg.id)
                    goto __continue39
                end
                do
                    local i = 0
                    while i < #rewardCfg.propId do
                        console:log("发放战令奖励", level, rewardCfg.propId[i + 1].id, rewardCfg.num[i + 1])
                        rewardManager:rewardItem(rewardCfg.propId[i + 1].id, rewardCfg.num[i + 1])
                        i = i + 1
                    end
                end
                index = index + 1
            end
            ::__continue39::
        end
        if isPayed then
            local index2 = (nowGetPayLevel > uncycleMaxRewardLevel and nowGetPayLevel or uncycleMaxRewardLevel) + 1
            while index2 <= nowLevel do
                do
                    local level = (index2 - uncycleMaxRewardLevel) % #cycleRewardCfgs
                    if level == 0 then
                        level = #cycleRewardCfgs
                    end
                    local rewardCfg = __TS__ArrayFind(
                        cycleRewardCfgs,
                        function(____, a) return a.level == level end
                    )
                    if rewardCfg == nil then
                        goto __continue46
                    end
                    if #rewardCfg.payPropId ~= #rewardCfg.payNum then
                        console:error("战令奖励配置错误", rewardCfg.id)
                        goto __continue46
                    end
                    do
                        local i = 0
                        while i < #rewardCfg.payPropId do
                            console:log("发放战令奖励", rewardCfg.payPropId[i + 1].id)
                            rewardManager:rewardItem(rewardCfg.payPropId[i + 1].id, rewardCfg.payNum[i + 1])
                            i = i + 1
                        end
                    end
                    index2 = index2 + 1
                end
                ::__continue46::
            end
        end
    end
    archive.playerInfo:battlePassLevelUp(battlepassId, nowLevel)
end
function BattlepassManager.prototype.getExp(self, battlepassId)
    local ____opt_0 = archive.playerData.battlePass["" .. tostring(battlepassId)]
    return ____opt_0 and ____opt_0.exp or 0
end
function BattlepassManager.prototype.getNeedExp(self, battlepassId)
    local nowLevel = self:getLevel(battlepassId)
    local rewardCfgs = self:getUncycleRewardCfgs(battlepassId)
    local cycleRewardCfgs = self:getCycleRewardCfgs(battlepassId)
    local uncycleMaxRewardLevel = self:getUncycleMaxRewardLevel(battlepassId)
    if nowLevel > uncycleMaxRewardLevel then
        local nextLevel = (nowLevel - uncycleMaxRewardLevel) % #cycleRewardCfgs
        if nextLevel == 0 then
            nextLevel = #cycleRewardCfgs
        end
        local rewardCfg = __TS__ArrayFind(
            cycleRewardCfgs,
            function(____, a) return a.level == nextLevel end
        )
        return rewardCfg.exp
    end
    if nowLevel == 0 then
        local ____opt_2 = __TS__ArrayFind(
            rewardCfgs,
            function(____, a) return a.level == 1 end
        )
        return ____opt_2 and ____opt_2.exp or 0
    end
    return __TS__ArrayFind(
        rewardCfgs,
        function(____, a) return a.level == nowLevel end
    ).exp or 0
end
function BattlepassManager.prototype.getLevel(self, battlepassId)
    local ____opt_4 = archive.playerData.battlePass["" .. tostring(battlepassId)]
    return ____opt_4 and ____opt_4.level or 0
end
function BattlepassManager.prototype.getAlreadyGetFreeLevel(self, battlepassId)
    local ____opt_6 = archive.playerData.battlePass["" .. tostring(battlepassId)]
    return ____opt_6 and ____opt_6.get_level or 0
end
function BattlepassManager.prototype.getAlreadyGetPayLevel(self, battlepassId)
    local ____opt_8 = archive.playerData.battlePass["" .. tostring(battlepassId)]
    return ____opt_8 and ____opt_8.get_level2 or 0
end
function BattlepassManager.prototype.getTaskProgress(self, battlepassId, taskId)
end
function BattlepassManager.prototype.getTaskReward(self, battlepassId, taskId)
end
function BattlepassManager.prototype.getTaskStatus(self, battlepassId, taskId)
end
function BattlepassManager.prototype.buyExp(self, battlePassId)
    local cfg = battlepassSeasonConfigMap[battlePassId]
    local ____type = cfg.payExp[1]
    local value = cfg.payExp[2]
    if rewardManager:getItem(____type) < value then
        DTips:show(i18n["local"](i18n, "钻石不足"))
        return
    end
    rewardManager:costItem(____type, value)
    rewardManager:rewardItem(cfg.expId, cfg.getExp)
    DTips:show(i18n["local"](i18n, "购买成功"))
end
function BattlepassManager.prototype.init(self)
    self.data.second = Date:now() / 1000
    self._timer = y3.timer.loop(
        1,
        function()
            local ____self_data_10, ____second_11 = self.data, "second"
            ____self_data_10[____second_11] = ____self_data_10[____second_11] + 1
        end
    )
end
function BattlepassManager.prototype.stopTimer(self)
    if self._timer then
        self._timer:remove()
    end
end
function BattlepassManager.prototype.getSeconds(self)
    return self.data.second
end
____exports.battlepassManager = __TS__New(____exports.BattlepassManager)
return ____exports
