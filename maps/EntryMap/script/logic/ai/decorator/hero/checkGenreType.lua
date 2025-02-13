local ____lualib = include("lualib_bundle")
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["16"] = 12,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 14,["21"] = 15,["22"] = 16,["23"] = 17,["24"] = 19,["25"] = 20,["26"] = 21,["28"] = 23,["31"] = 27,["32"] = 28,["33"] = 29,["34"] = 30,["35"] = 31,["36"] = 32,["37"] = 33,["39"] = 36,["40"] = 38,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 13,["45"] = 13,["46"] = 13,["47"] = 12});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 检查玩家英雄流派类型
function ____exports.checkGenreType(self, genreType, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerData = player:getSingle(PlayerData)
            local atk = 0
            local def = 0
            for ____, g in ipairs(playerData.hero.heroGenre) do
                if __TS__ArrayIndexOf(defaultConfig["进攻类流派"], g) ~= -1 then
                    atk = atk + 1
                else
                    def = def + 1
                end
            end
            local r = false
            if atk == 0 and genreType == "防防" then
                r = true
            elseif def == 0 and genreType == "攻攻" then
                r = true
            elseif atk ~= 0 and def ~= 0 and genreType == "攻防" then
                r = true
            end
            self:log(function() return (("检查流派类型 " .. genreType) .. " ") .. tostring(r) end)
            return r
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
