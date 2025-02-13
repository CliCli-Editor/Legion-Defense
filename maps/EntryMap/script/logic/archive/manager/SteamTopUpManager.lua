local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 10,["23"] = 10,["24"] = 12,["25"] = 12,["26"] = 13,["27"] = 13,["28"] = 13,["29"] = 14,["30"] = 14,["31"] = 15,["32"] = 15,["33"] = 17,["34"] = 17,["35"] = 30,["36"] = 30,["37"] = 30,["38"] = 30,["39"] = 30,["40"] = 30,["41"] = 30,["42"] = 30,["43"] = 30,["44"] = 30,["45"] = 30,["46"] = 30,["47"] = 43,["48"] = 44,["49"] = 44,["50"] = 44,["51"] = 44,["52"] = 44,["53"] = 44,["54"] = 44,["55"] = 44,["56"] = 43,["57"] = 54,["58"] = 54,["59"] = 54,["60"] = 54,["61"] = 54,["62"] = 54,["63"] = 54,["64"] = 54,["65"] = 43,["66"] = 64,["67"] = 64,["68"] = 64,["69"] = 64,["70"] = 64,["71"] = 64,["72"] = 64,["73"] = 64,["74"] = 43,["75"] = 74,["76"] = 74,["77"] = 74,["78"] = 74,["79"] = 74,["80"] = 74,["81"] = 74,["82"] = 74,["83"] = 43,["84"] = 87,["85"] = 87,["86"] = 87,["88"] = 89,["89"] = 99,["90"] = 98,["91"] = 105,["92"] = 106,["95"] = 109,["96"] = 110,["97"] = 110,["98"] = 110,["99"] = 111,["100"] = 112,["101"] = 112,["102"] = 112,["103"] = 112,["104"] = 110,["105"] = 110,["106"] = 105,["107"] = 120,["108"] = 121,["109"] = 128,["110"] = 129,["111"] = 130,["112"] = 130,["113"] = 130,["114"] = 131,["115"] = 132,["117"] = 134,["118"] = 137,["119"] = 138,["120"] = 138,["121"] = 138,["122"] = 139,["123"] = 138,["124"] = 138,["125"] = 141,["126"] = 141,["127"] = 141,["128"] = 142,["129"] = 141,["130"] = 141,["131"] = 144,["132"] = 144,["133"] = 144,["134"] = 145,["135"] = 144,["136"] = 144,["137"] = 130,["138"] = 130,["139"] = 120,["140"] = 150,["141"] = 151,["142"] = 153,["143"] = 154,["144"] = 155,["145"] = 156,["148"] = 160,["149"] = 162,["150"] = 162,["151"] = 162,["152"] = 162,["153"] = 163,["154"] = 163,["155"] = 163,["156"] = 163,["157"] = 163,["158"] = 163,["159"] = 163,["160"] = 163,["161"] = 164,["162"] = 165,["163"] = 165,["164"] = 165,["166"] = 165,["167"] = 165,["168"] = 165,["169"] = 165,["170"] = 165,["171"] = 165,["172"] = 165,["173"] = 165,["174"] = 162,["175"] = 162,["176"] = 150,["177"] = 173,["178"] = 175,["179"] = 175,["180"] = 176,["181"] = 180,["182"] = 181,["183"] = 173,["184"] = 186,["185"] = 187,["186"] = 188,["187"] = 189,["189"] = 191,["191"] = 194,["192"] = 194,["193"] = 194,["194"] = 195,["195"] = 196,["196"] = 197,["197"] = 198,["200"] = 202,["202"] = 203,["203"] = 204,["204"] = 205,["205"] = 205,["206"] = 205,["207"] = 205,["208"] = 205,["209"] = 205,["210"] = 205,["211"] = 206,["213"] = 208,["215"] = 202,["216"] = 211,["217"] = 212,["218"] = 211,["219"] = 194,["220"] = 194,["221"] = 186,["222"] = 218,["223"] = 220,["224"] = 221,["225"] = 223,["226"] = 224,["227"] = 225,["228"] = 228,["229"] = 229,["230"] = 230,["231"] = 231,["232"] = 232,["233"] = 233,["234"] = 234,["235"] = 235,["237"] = 238,["238"] = 239,["239"] = 239,["240"] = 239,["241"] = 241,["242"] = 241,["243"] = 241,["244"] = 241,["245"] = 242,["246"] = 243,["247"] = 244,["248"] = 245,["249"] = 246,["252"] = 250,["253"] = 252,["254"] = 252,["255"] = 252,["256"] = 252,["257"] = 252,["258"] = 252,["259"] = 252,["260"] = 241,["261"] = 241,["262"] = 239,["263"] = 239,["265"] = 257,["266"] = 258,["267"] = 258,["268"] = 258,["269"] = 258,["271"] = 218,["272"] = 267,["273"] = 269,["275"] = 271,["276"] = 271,["277"] = 272,["278"] = 272,["279"] = 273,["280"] = 273,["285"] = 281,["286"] = 282,["287"] = 283,["288"] = 284,["289"] = 285,["290"] = 286,["291"] = 287,["292"] = 288,["298"] = 296,["299"] = 297,["300"] = 298,["301"] = 299,["302"] = 300,["303"] = 301,["304"] = 302,["306"] = 304,["309"] = 307,["310"] = 308,["311"] = 308,["312"] = 308,["313"] = 308,["314"] = 310,["315"] = 311,["316"] = 314,["317"] = 314,["319"] = 316,["320"] = 319,["322"] = 271,["325"] = 323,["326"] = 267,["327"] = 330,["328"] = 331,["329"] = 332,["331"] = 334,["332"] = 335,["334"] = 337,["335"] = 337,["336"] = 338,["337"] = 330,["338"] = 344,["339"] = 345,["340"] = 344,["341"] = 349,["342"] = 350,["345"] = 353,["346"] = 349,["347"] = 359,["348"] = 360,["349"] = 362,["351"] = 363,["352"] = 363,["353"] = 364,["354"] = 365,["355"] = 366,["356"] = 367,["357"] = 363,["360"] = 369,["363"] = 371,["364"] = 371,["365"] = 372,["366"] = 373,["367"] = 371,["371"] = 376,["373"] = 377,["374"] = 377,["375"] = 378,["376"] = 379,["377"] = 380,["378"] = 381,["379"] = 377,["383"] = 359,["384"] = 387});
local ____exports = {}
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local ____SteamBoxConfig = include("logic.configs.SteamBoxConfig")
local steamBoxConfigMap_quality = ____SteamBoxConfig.steamBoxConfigMap_quality
local ____SteamGoodsConfig = include("logic.configs.SteamGoodsConfig")
local steamGoodsConfigMap = ____SteamGoodsConfig.steamGoodsConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DLotteryResult = include("logic.dialogs.storages.shop.DLotteryResult")
local DLotteryResult = ____DLotteryResult.DLotteryResult
local ____LocalData = include("logic.localData.LocalData")
local ShopType = ____LocalData.ShopType
local localData = ____LocalData.localData
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local codeMessageMap = {
    [1900] = function() return i18n["local"](i18n, "订单重复") end,
    [1901] = function() return i18n["local"](i18n, "发货内部错误") end,
    [1902] = function() return i18n["local"](i18n, "商品未配置") end,
    [1903] = function() return i18n["local"](i18n, "商品配置下架") end,
    [1904] = function() return i18n["local"](i18n, "扩展信息无效") end,
    [1905] = function() return i18n["local"](i18n, "商品限购") end,
    [1906] = function() return i18n["local"](i18n, "商品配置不存在") end,
    [1907] = function() return i18n["local"](i18n, "平台道具配置不存在") end,
    [1908] = function() return i18n["local"](i18n, "平台道具不足") end,
    [1909] = function() return i18n["local"](i18n, "商城代币不足") end
}
____exports.topUpLevels = {{
    id = 10002,
    priceCNY = 6,
    priceUSD = 0.8235,
    priceJPY = 126.9102,
    priceKRW = 1182.42,
    priceHKD = 6.4026,
    priceTWD = 26.7642,
    icon = 134241120
}, {
    id = 10004,
    priceCNY = 30,
    priceUSD = 4.1174,
    priceJPY = 634.551,
    priceKRW = 5912.1,
    priceHKD = 32.013,
    priceTWD = 133.821,
    icon = 134241120
}, {
    id = 10005,
    priceCNY = 60,
    priceUSD = 8.2349,
    priceJPY = 1269.102,
    priceKRW = 11824.2,
    priceHKD = 64.026,
    priceTWD = 267.642,
    icon = 134241120
}, {
    id = 10006,
    priceCNY = 100,
    priceUSD = 13.7248,
    priceJPY = 2115.17,
    priceKRW = 19707,
    priceHKD = 106.71,
    priceTWD = 446.07,
    icon = 134241120
}}
____exports.SteamTopUpManager = __TS__Class()
local SteamTopUpManager = ____exports.SteamTopUpManager
SteamTopUpManager.name = "SteamTopUpManager"
function SteamTopUpManager.prototype.____constructor(self)
    self.data = vue.reactive({count = 0})
    self:refreshBalance()
end
function SteamTopUpManager.prototype.refreshBalance(self)
    if not steamUtils:isSteam() then
        return
    end
    print("刷新余额")
    LOCAL.PLAYER:request_mall_goods_info(
        "10000",
        function(info)
            self.data.count = info.left_token
            print(
                "余额：",
                JSON:stringify(info)
            )
        end
    )
end
function SteamTopUpManager.prototype.topUp(self, level)
    local id = level.id
    print("尝试充值", id)
    DTips:show(i18n["local"](i18n, "即将打开Steam充值页面，请稍后~"))
    LOCAL.PLAYER:request_buy_mall_coin(
        tostring(id),
        function(s, sn, err)
            if s then
                DTips:show(i18n["local"](i18n, "充值成功"))
            end
            print("充值结束", s, sn, err)
            self:refreshBalance()
            y3.ctimer.wait(
                1,
                function()
                    self:refreshBalance()
                end
            )
            y3.ctimer.wait(
                2,
                function()
                    self:refreshBalance()
                end
            )
            y3.ctimer.wait(
                3,
                function()
                    self:refreshBalance()
                end
            )
        end
    )
end
function SteamTopUpManager.prototype.buy(self, config, callback)
    local steamId = config.steamId
    if self.data.count < config.price then
        print("点券余额不足，请充值")
        DTips:show(i18n["local"](i18n, "点券余额不足，请充值"))
        self:showTopUp()
        return
    end
    print("开始购买 request_mall_purchase_goods", config.name.value, config.steamId, config.y3Id)
    LOCAL.PLAYER:request_mall_purchase_goods(
        1,
        steamId,
        function(suc, code)
            print(
                "购买结果 request_mall_purchase_goods",
                config.name.value,
                config.steamId,
                config.y3Id,
                suc,
                code
            )
            self:refreshBalance()
            local ____callback_4 = callback
            local ____suc_2 = suc
            local ____code_3 = code
            local ____this_1
            ____this_1 = codeMessageMap
            local ____opt_0 = ____this_1[code]
            ____callback_4(
                nil,
                ____suc_2,
                ____code_3,
                ____opt_0 and ____opt_0(____this_1) or i18n["local"](i18n, "未知错误")
            )
        end
    )
end
function SteamTopUpManager.prototype.showTopUp(self)
    local ____require_result_5 = include("logic.dialogs.storages.DShop")
    local DShop = ____require_result_5.DShop
    dialogs:showRepeat(DShop, {})
    localData.shop.subTabIndex = 3
    localData.shop.tabIndex = ShopType.STEAM_TOP_UP
end
function SteamTopUpManager.prototype.buyTreasureChest(self, ____type, cb)
    local config
    if ____type == "silver" then
        config = steamGoodsConfigMap[3]
    else
        config = steamGoodsConfigMap[4]
    end
    self:buy(
        config,
        function(____, suc, code, error_msg)
            if not suc then
                local msg = i18n:format("购买失败，请联系管理员，错误码：${code} ${error_msg}", {code = code, error_msg = error_msg})
                DTips:show(msg)
                print(msg)
                return
            end
            local function checkLoop()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    local r = __TS__Await(self:checkTreasureChest())
                    while not r.result do
                        __TS__Await(__TS__New(
                            __TS__Promise,
                            function(____, r) return y3.ltimer.wait(
                                0.5,
                                function() return r(nil) end
                            ) end
                        ))
                        r = __TS__Await(self:checkTreasureChest())
                    end
                    cb(nil, r.result, r.showResultAction)
                end)
            end
            checkLoop(nil):catch(function(____, e)
                console:error(e)
            end)
        end
    )
end
function SteamTopUpManager.prototype.checkTreasureChest(self)
    local silver = steamGoodsConfigMap[3]
    local gold = steamGoodsConfigMap[4]
    local silverCount = LOCAL.PLAYER:get_store_item_number(silver.y3Id)
    local goldCount = LOCAL.PLAYER:get_store_item_number(gold.y3Id)
    print("尝试打开宝箱 get_store_item_number", silverCount, goldCount)
    local config = nil
    local ____type = nil
    if silverCount > 0 then
        config = silver
        ____type = "silver"
    elseif goldCount > 0 then
        config = gold
        ____type = "gold"
    end
    if config ~= nil then
        return __TS__New(
            __TS__Promise,
            function(____, resolve)
                LOCAL.PLAYER:request_use_item(
                    1,
                    config.y3Id,
                    function(suc)
                        if not suc then
                            local msg = i18n:format("扣除道具失败，请联系管理员，ID=${id}", {id = config.y3Id})
                            DTips:show(msg)
                            print(msg)
                            resolve(nil, {result = false})
                            return
                        end
                        local result = self:rewardTreasureChest(____type == "silver" and 1 or 10)
                        resolve(
                            nil,
                            {
                                result = true,
                                showResultAction = function() return dialogs:show(DLotteryResult, {result = result}) end
                            }
                        )
                    end
                )
            end
        )
    else
        print("无可打开的宝箱")
        return __TS__New(
            __TS__Promise,
            function(____, r) return r(nil, {result = false}) end
        )
    end
end
function SteamTopUpManager.prototype.rewardTreasureChest(self, count)
    local result = {}
    do
        local i = 0
        while i < count do
            local ____archive_steamData_data_6, ____ssr_7 = archive.steamData.data, "ssr"
            ____archive_steamData_data_6[____ssr_7] = ____archive_steamData_data_6[____ssr_7] + 1
            local ____archive_steamData_data_8, ____sr_9 = archive.steamData.data, "sr"
            ____archive_steamData_data_8[____sr_9] = ____archive_steamData_data_8[____sr_9] + 1
            --- 0=N
            -- 1=R
            -- 2=SR
            -- 3=SSR
            local quality = 0
            if archive.steamData.data.ssr >= 100 then
                quality = 3
                archive.steamData.data.ssr = 0
                archive.steamData.data.sr = 0
            elseif archive.steamData.data.sr >= 10 then
                quality = 2
                archive.steamData.data.sr = 0
            else
                --- SSR：	1.50%
                -- SR：	4%
                -- R	25%
                -- N	69.50%
                local r = localRandom:random()
                if r <= 0.015 then
                    quality = 3
                elseif r <= 0.055 then
                    quality = 2
                elseif r <= 0.305 then
                    quality = 1
                else
                    quality = 0
                end
            end
            local list = steamBoxConfigMap_quality[quality]
            local box = localRandom:randomWeight(
                list,
                function(____, a) return a.weight end
            )
            if self:hasBox(box) then
                result[#result + 1] = {box = box, isHave = true}
                local ____archive_steamData_data_10, ____point_11 = archive.steamData.data, "point"
                ____archive_steamData_data_10[____point_11] = ____archive_steamData_data_10[____point_11] + box.point
            else
                result[#result + 1] = {box = box, isHave = false}
                self:getBoxReward(box)
            end
            i = i + 1
        end
    end
    return result
end
function SteamTopUpManager.prototype.costBoxPoint(self, config)
    if archive.steamData.data.point < config.pointPrice then
        error("积分不足无法兑换", 0)
    end
    if self:hasBox(config) then
        error("宝箱道具已拥有", 0)
    end
    local ____archive_steamData_data_12, ____point_13 = archive.steamData.data, "point"
    ____archive_steamData_data_12[____point_13] = ____archive_steamData_data_12[____point_13] - config.pointPrice
    self:getBoxReward(config)
end
function SteamTopUpManager.prototype.hasBox(self, config)
    return archive.steamData.data.boxBought["" .. tostring(config.id)] == true
end
function SteamTopUpManager.prototype.addBox(self, config)
    if config.consumeType == 1 then
        return
    end
    archive.steamData.data.boxBought["" .. tostring(config.id)] = true
end
function SteamTopUpManager.prototype.getBoxReward(self, config)
    if config.consumeType == 0 or config.consumeType == 2 then
        if not self:hasBox(config) then
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
            self:addBox(config)
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
    end
end
____exports.steamTopUpManager = __TS__New(____exports.SteamTopUpManager)
return ____exports
