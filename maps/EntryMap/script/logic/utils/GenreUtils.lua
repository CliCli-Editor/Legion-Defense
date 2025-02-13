local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 12,["30"] = 12,["31"] = 12,["33"] = 14,["34"] = 17,["35"] = 20,["36"] = 12,["37"] = 24,["38"] = 25,["40"] = 27,["41"] = 27,["42"] = 28,["43"] = 27,["47"] = 30,["48"] = 30,["49"] = 31,["50"] = 30,["53"] = 33,["54"] = 34,["55"] = 35,["56"] = 36,["57"] = 37,["59"] = 39,["60"] = 39,["61"] = 39,["62"] = 39,["63"] = 40,["64"] = 40,["65"] = 40,["66"] = 41,["67"] = 41,["68"] = 40,["69"] = 40,["70"] = 43,["71"] = 43,["72"] = 44,["75"] = 24,["76"] = 50,["77"] = 51,["78"] = 52,["79"] = 53,["80"] = 56,["81"] = 57,["83"] = 59,["84"] = 59,["86"] = 60,["87"] = 65,["88"] = 65,["89"] = 65,["90"] = 66,["91"] = 66,["93"] = 67,["94"] = 67,["96"] = 68,["97"] = 65,["98"] = 65,["99"] = 73,["100"] = 74,["101"] = 75,["103"] = 81,["104"] = 83,["105"] = 85,["107"] = 86,["108"] = 86,["109"] = 87,["110"] = 88,["111"] = 90,["112"] = 91,["113"] = 92,["115"] = 96,["116"] = 97,["117"] = 98,["120"] = 102,["121"] = 103,["122"] = 86,["125"] = 107,["126"] = 108,["127"] = 109,["130"] = 59,["134"] = 113,["135"] = 113,["136"] = 114,["137"] = 115,["138"] = 113,["141"] = 117,["142"] = 119,["143"] = 50,["144"] = 125,["145"] = 126,["146"] = 127,["147"] = 129,["148"] = 132,["149"] = 133,["150"] = 134,["151"] = 135,["153"] = 137,["154"] = 137,["156"] = 139,["157"] = 139,["159"] = 142,["160"] = 142,["162"] = 143,["163"] = 143,["165"] = 144,["166"] = 144,["171"] = 151,["172"] = 153,["173"] = 155,["174"] = 156,["175"] = 157,["176"] = 158,["177"] = 159,["178"] = 160,["180"] = 169,["181"] = 125,["182"] = 177,["184"] = 178,["185"] = 178,["186"] = 179,["187"] = 180,["188"] = 181,["190"] = 178,["193"] = 184,["194"] = 177,["195"] = 187,["196"] = 187,["197"] = 191,["198"] = 192,["199"] = 193,["200"] = 198,["201"] = 200,["202"] = 202,["203"] = 204,["204"] = 206,["206"] = 208,["207"] = 208,["208"] = 209,["209"] = 210,["210"] = 208,["213"] = 213,["215"] = 214,["216"] = 214,["217"] = 216,["219"] = 217,["220"] = 217,["221"] = 218,["222"] = 220,["223"] = 221,["224"] = 223,["225"] = 224,["226"] = 224,["228"] = 225,["229"] = 225,["231"] = 227,["233"] = 230,["234"] = 217,["237"] = 233,["238"] = 235,["239"] = 235,["241"] = 236,["242"] = 236,["244"] = 237,["245"] = 237,["247"] = 214,["250"] = 241,["251"] = 242,["252"] = 242,["253"] = 244,["255"] = 248,["256"] = 191,["257"] = 256});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigList = ____GenreConfig.genreConfigList
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
local ____GenreRandomRuleConfig = include("logic.configs.GenreRandomRuleConfig")
local genreRandomRuleConfigList = ____GenreRandomRuleConfig.genreRandomRuleConfigList
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
____exports.GenreUtils = __TS__Class()
local GenreUtils = ____exports.GenreUtils
GenreUtils.name = "GenreUtils"
function GenreUtils.prototype.____constructor(self)
    self.genreConfigMap = {}
    self.genreConfigMap_genre = {}
    self.genreConfigMap_rarity = {}
end
function GenreUtils.prototype.init(self)
    local genreData = datas.global:getSingle(GenreData)
    do
        local index = 0
        while index <= 12 do
            self.genreConfigMap_genre[index] = {}
            index = index + 1
        end
    end
    do
        local index = 1
        while index <= 4 do
            self.genreConfigMap_rarity[index] = {}
            index = index + 1
        end
    end
    for ____, cfg in ipairs(genreConfigList) do
        local g1 = cfg.genre[1]
        local g2 = -1
        if #cfg.genre == 2 then
            g2 = cfg.genre[2]
        end
        if __TS__ArrayFindIndex(
            genreData.disableList,
            function(____, a) return a == g1 or a == g2 end
        ) == -1 then
            __TS__ArrayForEach(
                cfg.genre,
                function(____, a)
                    local ____self_genreConfigMap_genre_a_0 = self.genreConfigMap_genre[a]
                    ____self_genreConfigMap_genre_a_0[#____self_genreConfigMap_genre_a_0 + 1] = cfg
                end
            )
            local ____self_genreConfigMap_rarity_cfg_rarity_1 = self.genreConfigMap_rarity[cfg.rarity]
            ____self_genreConfigMap_rarity_cfg_rarity_1[#____self_genreConfigMap_rarity_cfg_rarity_1 + 1] = cfg
            self.genreConfigMap[cfg.id] = cfg
        end
    end
end
function GenreUtils.prototype.getTotalWeight(self, playerId)
    local genreData = datas.global:getSingle(GenreData)
    local playerGenre = datas.players[playerId]:getSingle(PlayerGenreData)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local totalWeight = 0
    local tempWeights = {}
    do
        local index = 0
        while index < #genreData.enableList do
            do
                local element = genreData.enableList[index + 1]
                local list = __TS__ArrayFilter(
                    self.genreConfigMap_genre[element],
                    function(____, a)
                        if a.rarity == 2 and playerData.card2_rate == 0 then
                            return false
                        end
                        if a.rarity == 3 and playerData.card3_rate == 0 then
                            return false
                        end
                        return genreData.skillCount[a.id] ~= nil and genreData.skillCount[a.id] ~= 0 and (playerGenre.skillLevels[a.id] == nil or playerGenre.skillLevels[a.id] < a.maxLevel)
                    end
                )
                if #list == 0 then
                    tempWeights[element] = 0
                    goto __continue13
                end
                local totalTag = playerGenre.genreTagCount[element]
                local cfg = genreLevelConfigMap_genre[element][1]
                local weight = cfg.weightBase
                do
                    local k = 1
                    while k < #cfg.weightInterval do
                        local element = cfg.weightInterval[k + 1]
                        local before = cfg.weightInterval[k]
                        local w = 0
                        if playerData.behaveTree ~= nil and __TS__ArrayIndexOf(playerData.genre, cfg.genre) ~= -1 then
                            w = playerGenre.weightChange
                        end
                        if element > totalTag then
                            local step = totalTag - before - 1
                            weight = weight + step * (cfg.weightChange[k] + w)
                            break
                        end
                        local step = element - before - 1
                        weight = weight + step * (cfg.weightChange[k] + w)
                        k = k + 1
                    end
                end
                weight = math.min(cfg.weightMax, weight)
                tempWeights[element] = weight
                totalWeight = totalWeight + weight
            end
            ::__continue13::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #genreData.enableList do
            local element = genreData.enableList[index + 1]
            tempWeights[element] = tempWeights[element] / totalWeight * 100
            index = index + 1
        end
    end
    totalWeight = 100
    return {totalWeight = totalWeight, tempWeights = tempWeights}
end
function GenreUtils.prototype.getAGenreWeight(self, playerId, genre)
    local genreData = datas.global:getSingle(GenreData)
    local playerGenre = datas.players[playerId]:getSingle(PlayerGenreData)
    local list = self.genreConfigMap_genre[genre]
    local count1 = 0
    local count2 = 0
    local count3 = 0
    for ____, cfg in ipairs(list) do
        do
            if genreData.skillCountWithout[cfg.id] == 0 then
                goto __continue23
            end
            if playerGenre.skillLevels[cfg.id] ~= nil and playerGenre.skillLevels[cfg.id] >= cfg.maxLevel then
                goto __continue23
            end
            if cfg.rarity == 1 then
                count1 = 1
            end
            if cfg.rarity == 2 then
                count2 = 1
            end
            if cfg.rarity == 3 then
                count3 = 1
            end
        end
        ::__continue23::
    end
    local totalTag = playerGenre.genreTagCount[genre]
    local cfg = self:getRule(totalTag)
    local weight1 = count1 == 1 and cfg.rarity1 or 0
    local weight2 = count2 == 1 and cfg.rarity2 or 0
    local weight3 = count3 == 1 and cfg.rarity3 or 0
    local totalWeight = weight1 + weight2 + weight3
    if totalWeight == 0 then
        return {weight1 = 0, weight2 = 0, weight3 = 0, totalWeight = 0}
    end
    return {weight1 = weight1 / totalWeight * 100, weight2 = weight2 / totalWeight * 100, weight3 = weight3 / totalWeight * 100, totalWeight = 100}
end
function GenreUtils.prototype.getRule(self, tag)
    do
        local index = 1
        while index < #genreRandomRuleConfigList do
            local element = genreRandomRuleConfigList[index + 1]
            if element.tagNumber > tag then
                return genreRandomRuleConfigList[index]
            end
            index = index + 1
        end
    end
    return genreRandomRuleConfigList[#genreRandomRuleConfigList]
end
function GenreUtils.prototype.getTags(self)
end
function GenreUtils.prototype.getRate(self)
    local genreData = datas.global:getSingle(GenreData)
    local playerGenre = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerGenreData)
    local weight1 = 0
    local weight2 = 0
    local weight3 = 0
    local totalWeights = self:getTotalWeight(LOCAL.PLAYER_ID)
    local genreWeights = {}
    do
        local index = 0
        while index < #genreData.enableList do
            local genre = genreData.enableList[index + 1]
            genreWeights[genre] = self:getAGenreWeight(LOCAL.PLAYER_ID, genre)
            index = index + 1
        end
    end
    local total = 0
    do
        local i = 0
        while i < 3 do
            local weight = 0
            do
                local g = 0
                while g < #genreData.enableList do
                    local genre = genreData.enableList[g + 1]
                    local r = 0
                    if genreWeights[genre].totalWeight ~= 0 then
                        local w = genreWeights[genre].weight1
                        if i == 1 then
                            w = genreWeights[genre].weight2
                        end
                        if i == 2 then
                            w = genreWeights[genre].weight3
                        end
                        r = w / genreWeights[genre].totalWeight
                    end
                    weight = weight + r * totalWeights.tempWeights[genre] / totalWeights.totalWeight
                    g = g + 1
                end
            end
            total = total + weight
            if i == 0 then
                weight1 = weight
            end
            if i == 1 then
                weight2 = weight
            end
            if i == 2 then
                weight3 = weight
            end
            i = i + 1
        end
    end
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_2 = bigBlessData and bigBlessData.bigBless
    if (____opt_2 and ____opt_2.id) == 11 then
        weight3 = weight3 * 2
    end
    return {weight1 = weight1, weight2 = weight2, weight3 = weight3}
end
____exports.genreUtils = __TS__New(____exports.GenreUtils)
return ____exports
