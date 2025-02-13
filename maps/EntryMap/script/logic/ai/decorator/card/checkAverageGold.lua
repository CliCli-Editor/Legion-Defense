local ____lualib = include("lualib_bundle")
local __TS__ArrayReduce = ____lualib.__TS__ArrayReduce
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 4,["20"] = 13,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 16,["25"] = 18,["26"] = 19,["27"] = 21,["29"] = 22,["30"] = 23,["31"] = 24,["33"] = 26,["34"] = 27,["36"] = 29,["41"] = 33,["42"] = 34,["43"] = 34,["44"] = 34,["45"] = 33,["46"] = 35,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 37,["51"] = 38,["52"] = 39,["54"] = 41,["55"] = 43,["56"] = 15,["57"] = 15,["58"] = 15,["59"] = 15,["60"] = 15,["61"] = 15,["62"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
--- 检查平均金币数量
-- * 优先采用队友人类玩家
-- * 当队友都是AI时，则使用敌对人类玩家
-- > 当剩余金币>当平均值时，返回true
function ____exports.checkAverageGold(self, params, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]:getSingle(PlayerData)
            local selfPlayers = {}
            local targetPlayers = {}
            for ____, playerId in ipairs(playerIdList) do
                do
                    local playerData = datas.players[playerId]:getSingle(PlayerData)
                    if playerData.behaveTree ~= nil then
                        goto __continue4
                    end
                    if player2King[playerId] == player2King[self.playerId] then
                        selfPlayers[#selfPlayers + 1] = playerData.gold
                    else
                        targetPlayers[#targetPlayers + 1] = playerData.gold
                    end
                end
                ::__continue4::
            end
            local gold = #selfPlayers == 0 and __TS__ArrayReduce(
                targetPlayers,
                function(____, a, b) return a + b end,
                0
            ) / #targetPlayers or __TS__ArrayReduce(
                selfPlayers,
                function(____, a, b) return a + b end,
                0
            ) / #selfPlayers
            if player.gold > gold then
                self:log(function() return ((((("玩家参考金币， " .. (#selfPlayers > 0 and "队友" or "敌对")) .. "平均值(") .. tostring(gold)) .. ") 玩家剩余金币(") .. tostring(player.gold)) .. ") 达成" end)
                return true
            end
            self:log(function() return ((((("玩家参考金币， " .. (#selfPlayers > 0 and "队友" or "敌对")) .. "平均值(") .. tostring(gold)) .. ") 玩家剩余金币(") .. tostring(player.gold)) .. ") 未达成" end)
            return false
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
