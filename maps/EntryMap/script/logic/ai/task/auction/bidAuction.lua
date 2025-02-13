local ____lualib = include("lualib_bundle")
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["27"] = 15,["28"] = 38,["29"] = 38,["30"] = 38,["31"] = 39,["32"] = 40,["33"] = 42,["34"] = 44,["35"] = 44,["36"] = 44,["37"] = 44,["38"] = 46,["39"] = 47,["40"] = 48,["42"] = 51,["43"] = 52,["44"] = 52,["45"] = 52,["46"] = 52,["48"] = 54,["49"] = 55,["50"] = 56,["52"] = 59,["53"] = 60,["54"] = 61,["55"] = 62,["56"] = 63,["57"] = 64,["62"] = 71,["63"] = 71,["64"] = 71,["65"] = 72,["66"] = 73,["67"] = 76,["68"] = 77,["69"] = 78,["70"] = 79,["72"] = 81,["73"] = 82,["75"] = 86,["76"] = 87,["77"] = 89,["78"] = 71,["79"] = 71,["80"] = 91,["82"] = 94,["83"] = 95,["84"] = 96,["86"] = 99,["87"] = 100,["88"] = 101,["89"] = 102,["90"] = 103,["92"] = 106,["93"] = 107,["94"] = 108,["95"] = 109,["96"] = 110,["98"] = 112,["99"] = 113,["100"] = 114,["101"] = 115,["102"] = 116,["103"] = 117,["104"] = 118,["105"] = 119,["107"] = 121,["108"] = 122,["109"] = 123,["110"] = 124,["111"] = 125,["112"] = 126,["114"] = 128,["115"] = 128,["116"] = 128,["117"] = 128,["118"] = 128,["119"] = 129,["121"] = 132,["122"] = 38,["123"] = 38,["124"] = 15});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local ____AuctionController = include("logic.controllers.AuctionController")
local auctionController = ____AuctionController.auctionController
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
--- 出价，必须选择价格高的
function ____exports.bidAuction(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local player = datas.players[self.playerId]:getSingle(PlayerData)
            local auctionData = datas.global:getSingle(AuctionData)
            local equip
            local list = __TS__ArrayFilter(
                auctionData.equips,
                function(____, a) return not a.confirm[self.playerId] end
            )
            if #list == 0 then
                self:log(function() return "装备已全部出价" end)
                return false
            end
            if params.id ~= nil then
                equip = __TS__ArrayFind(
                    list,
                    function(____, a) return a.cfgId == params.id end
                )
            else
                local genreScore = {}
                for ____, g in ipairs(player.genre) do
                    genreScore[g] = (genreScore[g] or 0) + 100
                end
                local teammateScore = {}
                for ____, eq in ipairs(auctionData.equips) do
                    for ____, teammatePlayerId in ipairs(playerIdList) do
                        if player2King[self.playerId] == player2King[teammatePlayerId] then
                            if eq.confirm[teammatePlayerId] then
                                teammateScore[eq.cfgId] = (teammateScore[eq.cfgId] or 0) + 1
                            end
                        end
                    end
                end
                __TS__ArraySort(
                    list,
                    function(____, a, b)
                        local equipA = equipConfigMap[a.cfgId]
                        local equipB = equipConfigMap[b.cfgId]
                        local aScore = 0
                        local bScore = 0
                        for ____, genre in ipairs(equipA.genre) do
                            aScore = aScore + (genreScore[genre] or 0)
                        end
                        for ____, genre in ipairs(equipB.genre) do
                            bScore = bScore + (genreScore[genre] or 0)
                        end
                        aScore = aScore + (10 - (teammateScore[a.cfgId] or 0))
                        bScore = bScore + (10 - (teammateScore[b.cfgId] or 0))
                        return bScore - aScore
                    end
                )
                equip = list[1]
            end
            if equip == nil then
                self:log(function() return "无法找到指定的暗拍装备" end)
                return false
            end
            local equipIndex = __TS__ArrayIndexOf(auctionData.equips, equip)
            local equipConfig = equipConfigMap[equip.cfgId]
            local maxPrice = 0
            for ____, p in ipairs(equip.price) do
                maxPrice = math.max(p.price, maxPrice)
            end
            if params.strategy == "随机" or maxPrice == 0 and params.strategy == "倍数" then
                local gold = math.floor(random:randomRange(params.random == nil and 1 or params.random[1], params.random == nil and player.gold or params.random[2]))
                if gold > player.gold then
                    self:log(function() return (("出价失败，准备出价 " .. tostring(gold)) .. "，但只有 ") .. tostring(player.gold) end)
                    return false
                end
                auctionController:auction(self.playerId, equipIndex, gold)
                self:log(function() return (((("对装备" .. tostring(equipConfig.name)) .. "(") .. tostring(equipConfig.id)) .. ")，随机出价 ") .. tostring(gold) end)
            elseif params.strategy == "倍数" then
                local m = params.multiple == nil and 1 or params.multiple[1] + (params.multiple[2] - params.multiple[1]) * math.random()
                local gold = math.floor(math.min(player.gold, maxPrice * m))
                if gold <= 0 then
                    self:log(function() return "无效出价 0" end)
                    return false
                end
                auctionController:auction(self.playerId, equipIndex, gold)
                self:log(function() return (((((((("对装备" .. tostring(equipConfig.name)) .. "(") .. tostring(equipConfig.id)) .. ")，进行倍数出价 ") .. tostring(gold)) .. "，参考价格") .. tostring(maxPrice)) .. "，倍数") .. tostring(m) end)
            elseif params.strategy == "全部金币" then
                if player.gold < 1 then
                    self:log(function() return "出价全部金币失败，身上一分钱都没了" end)
                    return false
                end
                auctionController:auction(
                    self.playerId,
                    equipIndex,
                    math.floor(player.gold)
                )
                self:log(function() return ((((("对装备" .. tostring(equipConfig.name)) .. "(") .. tostring(equipConfig.id)) .. ")，出价 ") .. tostring(math.floor(player.gold))) .. "，ALL IN" end)
            end
            return true
        end
    )
end
return ____exports
