local ____lualib = include("lualib_bundle")
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["26"] = 16,["27"] = 17,["28"] = 17,["29"] = 17,["30"] = 18,["31"] = 19,["32"] = 20,["33"] = 21,["35"] = 24,["36"] = 25,["37"] = 28,["38"] = 29,["39"] = 30,["40"] = 31,["42"] = 34,["43"] = 34,["44"] = 34,["45"] = 35,["46"] = 36,["47"] = 37,["48"] = 34,["49"] = 34,["50"] = 40,["51"] = 40,["52"] = 40,["53"] = 40,["54"] = 42,["55"] = 43,["56"] = 44,["58"] = 47,["59"] = 48,["60"] = 49,["61"] = 51,["63"] = 54,["64"] = 54,["65"] = 54,["66"] = 54,["67"] = 55,["68"] = 56,["69"] = 57,["71"] = 59,["72"] = 60,["73"] = 61,["74"] = 63,["76"] = 66,["77"] = 17,["78"] = 17,["79"] = 16});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____BlessController = include("logic.controllers.BlessController")
local blessController = ____BlessController.blessController
local ____BlessData = include("logic.models.BlessData")
local BlessData = ____BlessData.BlessData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 选择祝福
-- 
-- @param params 当params参数为空，随机选择一个祝福
function ____exports.selBless(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local player = datas.players[self.playerId]:getSingle(PlayerData)
            if player.canSelBless == nil then
                self:log(function() return "当前无可选的祝福" end)
                return false
            end
            local blessData = datas.players[self.playerId]:getSingle(BlessData)
            if params and params.selByOldTag and #blessData.have > 0 then
                local tagScore = {}
                for ____, b in ipairs(blessData.have) do
                    local config = blessConfigMap[b.configId]
                    tagScore[config.tag] = (tagScore[config.tag] or 0) + 1
                end
                local canSel = __TS__ArraySort(
                    __TS__ArraySlice(player.canSelBless),
                    function(____, a, b)
                        local ai = tagScore[a.tag] or 0
                        local bi = tagScore[b.tag] or 0
                        return bi - ai
                    end
                )
                canSel = __TS__ArrayFilter(
                    canSel,
                    function(____, a) return not a.banAI end
                )
                if #canSel == 0 then
                    self:log(function() return "根据tag选择祝福 可选祝福都不适合AI" end)
                    return false
                end
                local sel = canSel[1]
                local selPos = __TS__ArrayIndexOf(player.canSelBless, sel)
                blessController:selBless(self.playerId, selPos)
                self:log(function() return (((("根据tag选择祝福 " .. tostring(sel.name)) .. "(") .. tostring(sel.id)) .. ") tagScore:") .. tostring(tagScore[sel.tag] or 0) end)
            else
                local canSel = __TS__ArrayFilter(
                    player.canSelBless,
                    function(____, a) return not a.banAI end
                )
                if #canSel == 0 then
                    self:log(function() return "随机选择祝福 可选祝福都不适合AI" end)
                    return false
                end
                local sel = random:randomList(canSel)
                local selPos = __TS__ArrayIndexOf(player.canSelBless, sel)
                blessController:selBless(self.playerId, selPos)
                self:log(function() return ((("随机选择祝福 " .. tostring(sel.name)) .. "(") .. tostring(sel.id)) .. ")" end)
            end
            return true
        end
    )
end
return ____exports
