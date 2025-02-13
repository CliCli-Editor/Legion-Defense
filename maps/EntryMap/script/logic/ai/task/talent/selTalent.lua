local ____lualib = include("lualib_bundle")
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["20"] = 13,["21"] = 14,["22"] = 14,["23"] = 14,["24"] = 15,["25"] = 16,["26"] = 17,["27"] = 18,["28"] = 19,["30"] = 22,["31"] = 23,["32"] = 24,["33"] = 25,["34"] = 26,["36"] = 28,["37"] = 29,["38"] = 31,["39"] = 32,["40"] = 34,["41"] = 35,["42"] = 36,["45"] = 39,["46"] = 40,["47"] = 41,["50"] = 45,["51"] = 47,["52"] = 48,["53"] = 49,["54"] = 50,["55"] = 51,["56"] = 53,["57"] = 54,["59"] = 57,["60"] = 58,["63"] = 63,["64"] = 14,["65"] = 14,["66"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 刷新英雄卡池
-- 触发指定选择，否则根据天赋匹配度选择
function ____exports.selTalent(self, sel)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local playerData = datas.players[self.playerId]:getSingle(PlayerData)
            local nextLevel = defaultConfig["天赋等级"][#playerData.talent + 1] or 999
            if not (playerData.level >= nextLevel) then
                self:log(function() return (("玩家等级需要达到 " .. tostring(nextLevel)) .. " 才可选择天赋，当前等级") .. tostring(playerData.level) end)
                return false
            end
            if sel ~= nil then
                local selId = sel == "left" and 1 or 2
                local config = playerData.talentConfigList[#playerData.talent * 2 + (selId - 1) + 1]
                playerController:selTalent(self.playerId, selId)
                self:log(function() return (((("选择天赋 " .. sel) .. " ") .. tostring(config.id)) .. " ") .. tostring(config.describe) end)
            else
                local left = playerData.talentConfigList[#playerData.talent * 2 + 1]
                local right = playerData.talentConfigList[#playerData.talent * 2 + 1 + 1]
                local leftScore = 0
                local rightScore = 0
                for ____, g in ipairs(left.genre) do
                    if __TS__ArrayIndexOf(playerData.genre, g) ~= -1 then
                        leftScore = leftScore + 1
                    end
                end
                for ____, g in ipairs(right.genre) do
                    if __TS__ArrayIndexOf(playerData.genre, g) ~= -1 then
                        rightScore = rightScore + 1
                    end
                end
                if leftScore == rightScore then
                    local sel = random:randomList({1, 2})
                    local config = sel == 1 and left or right
                    playerController:selTalent(self.playerId, sel)
                    self:log(function() return (((((("score相同，随机选择天赋 " .. tostring(sel)) .. " ") .. tostring(config.id)) .. " ") .. tostring(config.describe)) .. " score=") .. tostring(leftScore) end)
                elseif leftScore > rightScore then
                    playerController:selTalent(self.playerId, 1)
                    self:log(function() return (((((((("选择左边天赋 " .. tostring(sel)) .. " ") .. tostring(left.id)) .. " ") .. tostring(left.describe)) .. " score=") .. tostring(leftScore)) .. ">") .. tostring(rightScore) end)
                else
                    playerController:selTalent(self.playerId, 2)
                    self:log(function() return (((((((("选择右边天赋 " .. tostring(sel)) .. " ") .. tostring(right.id)) .. " ") .. tostring(right.describe)) .. " score=") .. tostring(leftScore)) .. "<") .. tostring(rightScore) end)
                end
            end
            return true
        end
    )
end
return ____exports
