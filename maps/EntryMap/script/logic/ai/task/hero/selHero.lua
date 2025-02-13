local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 7,["22"] = 13,["23"] = 19,["24"] = 19,["25"] = 19,["26"] = 20,["27"] = 21,["28"] = 22,["29"] = 24,["32"] = 29,["33"] = 30,["34"] = 31,["36"] = 34,["37"] = 36,["38"] = 37,["39"] = 38,["40"] = 39,["41"] = 40,["42"] = 41,["43"] = 42,["44"] = 43,["47"] = 46,["51"] = 51,["52"] = 51,["53"] = 51,["54"] = 51,["55"] = 52,["56"] = 52,["57"] = 52,["58"] = 53,["59"] = 53,["60"] = 54,["61"] = 55,["62"] = 56,["65"] = 59,["66"] = 60,["67"] = 61,["70"] = 65,["71"] = 52,["72"] = 52,["73"] = 68,["74"] = 69,["77"] = 78,["78"] = 79,["79"] = 79,["80"] = 79,["81"] = 79,["82"] = 19,["83"] = 19,["84"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____6267_884C = ____BehaveTree["执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
--- 选择英雄
function ____exports.selHero(self, params)
    return _____6267_884C(
        nil,
        function()
            local genreData = datas.global:getSingle(GenreData)
            local player = datas.players[self.playerId]
            local playerData = player:getSingle(PlayerData)
            if playerData.hero ~= nil then
                return
            end
            local disableMap = {}
            for ____, d in ipairs(genreData.disableList) do
                disableMap[d] = 1
            end
            local heros = {}
            for ____, playerId in ipairs(playerIdList) do
                if playerId ~= self.playerId and player2King[playerId] == player2King[self.playerId] then
                    local teammatePlayer = datas.players[self.playerId]
                    local teammatePlayerData = teammatePlayer:getSingle(PlayerData)
                    if teammatePlayerData.hero ~= nil then
                        if params and params.lowerTeammateHeroWeight then
                            for ____, genre in ipairs(teammatePlayerData.hero.heroGenre) do
                                disableMap[genre] = (disableMap[genre] or 0) + 1
                            end
                        end
                        heros[teammatePlayerData.hero.id] = true
                    end
                end
            end
            local heroList = __TS__ArrayFilter(
                playerData.canSelHeros,
                function(____, a) return heros[a.id] ~= true end
            )
            __TS__ArraySort(
                heroList,
                function(____, a, b)
                    local ai = 0
                    local bi = 0
                    for ____, gid in ipairs(a.heroGenre) do
                        if disableMap[gid] then
                            ai = ai + disableMap[gid]
                        end
                    end
                    for ____, gid in ipairs(b.heroGenre) do
                        if disableMap[gid] then
                            bi = bi + disableMap[gid]
                        end
                    end
                    return ai - bi
                end
            )
            local heroConfig = heroList[1]
            if heroConfig == nil then
                return
            end
            self:log(function() return ("选择英雄 " .. ("降低队友英雄权重：" .. tostring(params and params.lowerTeammateHeroWeight)) .. " ") .. heroConfig.name end)
            playerController:selHero(
                self.playerId,
                __TS__ArrayIndexOf(playerData.canSelHeros, heroConfig)
            )
        end
    )
end
return ____exports
