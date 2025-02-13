local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["17"] = 11,["18"] = 32,["19"] = 32,["20"] = 32,["21"] = 33,["22"] = 34,["23"] = 35,["24"] = 37,["25"] = 37,["26"] = 37,["27"] = 37,["28"] = 39,["29"] = 40,["30"] = 41,["31"] = 42,["33"] = 45,["34"] = 45,["35"] = 45,["36"] = 46,["37"] = 47,["38"] = 48,["39"] = 49,["42"] = 52,["43"] = 45,["44"] = 45,["45"] = 55,["46"] = 56,["47"] = 57,["49"] = 59,["50"] = 60,["51"] = 60,["52"] = 60,["53"] = 60,["54"] = 61,["55"] = 62,["57"] = 64,["58"] = 65,["59"] = 65,["60"] = 65,["61"] = 65,["62"] = 66,["63"] = 67,["66"] = 71,["67"] = 32,["68"] = 32,["69"] = 32,["70"] = 32,["71"] = 32,["72"] = 32,["73"] = 11});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
--- 判断某张卡是否在卡池中
function ____exports.hasCardInPool(self, params, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerData = player:getSingle(PlayerData)
            local playerGenreData = player:getSingle(PlayerGenreData)
            local cards = __TS__ArrayFilter(
                playerGenreData.canSelGenre,
                function(____, a) return not a.sellout end
            )
            if params.playerGenre ~= nil then
                local matchingMap = {}
                for ____, d in ipairs(playerData.genre) do
                    matchingMap[d] = true
                end
                cards = __TS__ArrayFilter(
                    cards,
                    function(____, a)
                        local i = 0
                        for ____, gid in ipairs(a.genre.genre) do
                            if matchingMap[gid] then
                                i = i + 1
                            end
                        end
                        return i > 0
                    end
                )
                if #cards > 0 then
                    self:log(function() return ("找到'" .. tostring(#cards)) .. "'张符合流派的卡" end)
                    return true
                end
            elseif params.genreId ~= nil then
                if __TS__ArrayFind(
                    cards,
                    function(____, a) return a.genre.id == params.genreId end
                ) ~= nil then
                    self:log(function() return ("找到ID为'" .. tostring(params.genreId)) .. "'的卡" end)
                    return true
                end
            elseif params.rarity ~= nil then
                if __TS__ArrayFind(
                    cards,
                    function(____, a) return a.genre.rarity == params.rarity end
                ) ~= nil then
                    self:log(function() return ("找到稀有度为'" .. tostring(params.rarity)) .. "'的卡" end)
                    return true
                end
            end
            return false
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
