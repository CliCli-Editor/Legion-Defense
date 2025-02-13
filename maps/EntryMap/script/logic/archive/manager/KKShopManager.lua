local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 12,["30"] = 43,["33"] = 17,["34"] = 18,["35"] = 19,["36"] = 20,["37"] = 22,["38"] = 23,["39"] = 25,["40"] = 26,["41"] = 27,["42"] = 29,["43"] = 30,["46"] = 33,["47"] = 34,["49"] = 36,["50"] = 38,["51"] = 38,["52"] = 38,["53"] = 38,["54"] = 39,["55"] = 40,["61"] = 16,["64"] = 11,["65"] = 11,["66"] = 48,["67"] = 48,["68"] = 48,["69"] = 49,["74"] = 67,["77"] = 54,["78"] = 55,["79"] = 56,["80"] = 57,["81"] = 58,["82"] = 59,["84"] = 61,["85"] = 63,["86"] = 63,["87"] = 63,["88"] = 63,["89"] = 64,["90"] = 65,["96"] = 53,["99"] = 48,["100"] = 48,["101"] = 9,["102"] = 74,["104"] = 75,["105"] = 75,["107"] = 76,["108"] = 76,["109"] = 77,["110"] = 78,["111"] = 79,["112"] = 80,["113"] = 76,["116"] = 75,["119"] = 74,["120"] = 85,["121"] = 86,["122"] = 87,["123"] = 89,["125"] = 90,["126"] = 90,["127"] = 91,["128"] = 92,["129"] = 93,["130"] = 94,["131"] = 90,["134"] = 96,["137"] = 98,["138"] = 98,["139"] = 99,["140"] = 100,["141"] = 98,["145"] = 103,["146"] = 105,["147"] = 106,["148"] = 108,["150"] = 109,["151"] = 109,["152"] = 110,["153"] = 111,["154"] = 112,["155"] = 113,["156"] = 109,["159"] = 115,["162"] = 117,["163"] = 117,["164"] = 118,["165"] = 119,["166"] = 117,["171"] = 124,["172"] = 126,["174"] = 127,["175"] = 127,["176"] = 128,["177"] = 129,["178"] = 130,["179"] = 131,["180"] = 127,["183"] = 133,["186"] = 85,["187"] = 145,["190"] = 156,["193"] = 147,["194"] = 148,["195"] = 150,["196"] = 151,["197"] = 152,["199"] = 154,["205"] = 145,["206"] = 165,["207"] = 166,["208"] = 167,["212"] = 185,["215"] = 170,["216"] = 171,["217"] = 172,["218"] = 173,["219"] = 174,["220"] = 175,["221"] = 176,["222"] = 177,["225"] = 180,["226"] = 181,["227"] = 182,["228"] = 183,["234"] = 169,["237"] = 187,["238"] = 165,["239"] = 192});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____KkGoodsConfig = include("logic.configs.KkGoodsConfig")
local kkGoodsConfigList = ____KkGoodsConfig.kkGoodsConfigList
local kkGoodsConfigMap_y3Id = ____KkGoodsConfig.kkGoodsConfigMap_y3Id
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
____exports.KKShopManager = __TS__Class()
local KKShopManager = ____exports.KKShopManager
KKShopManager.name = "KKShopManager"
function KKShopManager.prototype.____constructor(self)
    y3.game:event(
        "玩家-平台道具变化",
        function(trg, data)
            if LOCAL.PLAYER_ID ~= data.player.id then
                return
            end
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    print("-------------------------------------------------------")
                    print("平台道具变化", data.store_key, data.store_item_change_count)
                    local configList = kkGoodsConfigMap_y3Id[data.store_key]
                    if configList == nil or #configList == 0 then
                        if steamUtils:isSteam() then
                            if data.store_key == 134276678 then
                                print("收到银宝箱")
                                return true
                            elseif data.store_key == 134228766 then
                                print("收到金宝箱")
                                return true
                            end
                        end
                        print("无法找到平台道具商品", data.store_key)
                        return true
                    end
                    local config = configList[1]
                    print(
                        "在局内获得商品 " .. tostring(config.name),
                        data.store_item_change_count
                    )
                    self:refreshKKShopItem(config, data.store_item_change_count)
                    print("-------------------------------------------------------")
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
    )
    y3.game:event(
        "玩家-使用平台道具",
        function(trg, data)
            if LOCAL.PLAYER_ID ~= data.player.id then
                return
            end
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    print("-------------------------------------------------------")
                    print("使用平台道具", data.store_key, data.use_cnt)
                    local configList = kkGoodsConfigMap_y3Id[data.store_key]
                    if configList == nil or #configList == 0 then
                        print("无法找到平台道具商品", data.store_key)
                        return true
                    end
                    local config = configList[1]
                    print(
                        "消耗掉的商品 " .. tostring(config.name),
                        data.use_cnt
                    )
                    self:consumeKKShopItem(config, data.use_cnt)
                    print("-------------------------------------------------------")
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
    )
end
function KKShopManager.prototype.consumeKKShopItem(self, config, count)
    do
        local i = 0
        while i < count do
            do
                local i = 0
                while i < #config.propId do
                    local pro = config.propId[i + 1]
                    local c = config.propCount[i + 1] or 0
                    rewardManager:rewardItem(pro.id, c)
                    console:log("获得消耗类道具", pro.id, pro.name, c)
                    i = i + 1
                end
            end
            i = i + 1
        end
    end
end
function KKShopManager.prototype.refreshKKShopItem(self, config, count)
    if count > 0 then
        if config.consumeType == 0 then
            if not archive.kkShop:has(config.y3Id) then
                do
                    local i = 0
                    while i < #config.propId do
                        local pro = config.propId[i + 1]
                        local count = config.propCount[i + 1] or 0
                        print("获得道具", pro.id, count)
                        rewardManager:rewardItem(pro.id, count)
                        i = i + 1
                    end
                end
                archive.kkShop:add(config.y3Id)
            else
                do
                    local i = 0
                    while i < #config.propId do
                        local pro = config.propId[i + 1]
                        rewardManager:checkItem(pro.id)
                        i = i + 1
                    end
                end
            end
        elseif config.consumeType == 1 then
            y3.player.get_local():use_store_item(count, config.y3Id)
        elseif config.consumeType == 2 then
            if not archive.kkShop:has(config.y3Id) then
                do
                    local i = 0
                    while i < #config.propId do
                        local pro = config.propId[i + 1]
                        local count = config.propCount[i + 1] or 0
                        print("获得道具", pro.id, count)
                        rewardManager:rewardItem(pro.id, count)
                        i = i + 1
                    end
                end
                archive.kkShop:add(config.y3Id)
            else
                do
                    local i = 0
                    while i < #config.propId do
                        local pro = config.propId[i + 1]
                        rewardManager:checkItem(pro.id)
                        i = i + 1
                    end
                end
            end
        end
    elseif count <= 0 and config.consumeType == 2 then
        if archive.kkShop:has(config.y3Id) then
            do
                local i = 0
                while i < #config.propId do
                    local pro = config.propId[i + 1]
                    local count = config.propCount[i + 1] or 0
                    print("失去道具", pro.id, count)
                    rewardManager:costItem(pro.id, count)
                    i = i + 1
                end
            end
            archive.kkShop:remove(config.y3Id)
        end
    end
end
function KKShopManager.prototype.refreshKKShopItems(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            print("-------------------------------------------------------")
            print("进入游戏刷新消耗数据")
            for ____, config in ipairs(kkGoodsConfigList) do
                local count = LOCAL.PLAYER:get_store_item_number(config.y3Id)
                self:refreshKKShopItem(config, count)
            end
            print("-------------------------------------------------------")
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function KKShopManager.prototype.getShopSponsorPoint(self)
    if self.shopSponsorPoint ~= nil then
        return self.shopSponsorPoint
    end
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            print("-------------------------------------------------------")
            print("getShopSponsorPoint计算")
            local total = 0
            for ____, config in ipairs(kkGoodsConfigList) do
                local count = LOCAL.PLAYER:get_store_item_number(config.y3Id)
                if count > 0 then
                    print("点数", config.name, config.sponsor)
                    total = total + config.sponsor
                end
            end
            print("共", total)
            print("-------------------------------------------------------")
            self.shopSponsorPoint = math.floor(total)
            return true, self.shopSponsorPoint
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return 0
end
____exports.kkShopManager = __TS__New(____exports.KKShopManager)
return ____exports
