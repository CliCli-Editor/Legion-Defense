local ____lualib = include("lualib_bundle")
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["16"] = 12,["17"] = 25,["18"] = 25,["19"] = 25,["20"] = 26,["21"] = 27,["22"] = 28,["23"] = 30,["24"] = 32,["25"] = 33,["26"] = 34,["27"] = 35,["28"] = 36,["30"] = 38,["31"] = 39,["34"] = 42,["35"] = 43,["37"] = 45,["38"] = 46,["39"] = 47,["40"] = 48,["41"] = 49,["43"] = 51,["46"] = 54,["47"] = 54,["48"] = 54,["49"] = 54,["50"] = 54,["51"] = 54,["52"] = 54,["53"] = 55,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 12});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____GenreData = include("logic.models.GenreData")
local GenreData = ____GenreData.GenreData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 判断卡池剩余
function ____exports.cardPoolLeft(self, params, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerData = player:getSingle(PlayerData)
            local genreData = datas.global:getSingle(GenreData)
            local logs = {}
            if params.lessThan then
                for ____, g in ipairs(playerData.genre) do
                    local percent = genreData.genrePool[g].total == 0 and 0 or genreData.genrePool[g].left / genreData.genrePool[g].total
                    if percent < params.percent then
                        self:log(function() return (((("流派" .. tostring(g)) .. "卡池剩余") .. tostring(percent)) .. "，小于") .. tostring(params.percent) end)
                    else
                        self:log(function() return ((((("流派" .. tostring(g)) .. "卡池剩余") .. tostring(percent)) .. "，大于") .. tostring(params.percent)) .. "，条件未达成" end)
                        return false
                    end
                end
                self:log(function() return ("流派卡都小于" .. tostring(params.percent)) .. "条件达成" end)
                return true
            else
                for ____, g in ipairs(playerData.genre) do
                    local percent = genreData.genrePool[g].total == 0 and 0 or genreData.genrePool[g].left / genreData.genrePool[g].total
                    if percent >= params.percent then
                        self:log(function() return ((((("流派" .. tostring(g)) .. "卡池剩余") .. tostring(percent)) .. "，大于等于") .. tostring(params.percent)) .. "，条件达成" end)
                        return true
                    else
                        logs[#logs + 1] = function() return ((((("流派" .. tostring(g)) .. "卡池剩余") .. tostring(percent)) .. "，小于") .. tostring(params.percent)) .. "，条件未达成" end
                    end
                end
                self:log(function() return "流派卡条件未达成" .. table.concat(
                    __TS__ArrayMap(
                        logs,
                        function(____, a) return a(nil) end
                    ),
                    ";"
                ) end)
                return false
            end
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
