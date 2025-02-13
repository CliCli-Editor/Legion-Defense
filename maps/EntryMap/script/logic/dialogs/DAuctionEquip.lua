local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 12,["29"] = 12,["30"] = 13,["31"] = 13,["32"] = 16,["33"] = 16,["34"] = 16,["35"] = 16,["37"] = 16,["38"] = 17,["39"] = 99,["40"] = 145,["41"] = 147,["42"] = 147,["43"] = 147,["44"] = 147,["45"] = 147,["46"] = 147,["47"] = 147,["48"] = 147,["49"] = 16,["50"] = 26,["51"] = 27,["52"] = 28,["53"] = 27,["54"] = 26,["55"] = 37,["57"] = 38,["58"] = 38,["59"] = 38,["60"] = 38,["61"] = 39,["62"] = 38,["63"] = 38,["64"] = 41,["65"] = 41,["66"] = 41,["67"] = 41,["68"] = 42,["69"] = 41,["70"] = 41,["71"] = 45,["72"] = 45,["73"] = 45,["74"] = 46,["75"] = 45,["76"] = 45,["77"] = 48,["78"] = 48,["79"] = 48,["80"] = 49,["81"] = 48,["82"] = 48,["83"] = 52,["84"] = 52,["85"] = 52,["86"] = 53,["87"] = 52,["88"] = 52,["89"] = 69,["90"] = 69,["91"] = 69,["92"] = 70,["93"] = 69,["94"] = 69,["95"] = 72,["96"] = 72,["97"] = 72,["98"] = 73,["99"] = 72,["100"] = 72,["102"] = 76,["103"] = 76,["104"] = 77,["105"] = 78,["106"] = 79,["107"] = 76,["111"] = 37,["112"] = 83,["113"] = 84,["114"] = 84,["115"] = 84,["116"] = 84,["117"] = 84,["118"] = 84,["119"] = 84,["120"] = 84,["121"] = 84,["122"] = 83,["123"] = 100,["126"] = 104,["127"] = 105,["128"] = 107,["129"] = 108,["130"] = 109,["131"] = 109,["132"] = 109,["133"] = 109,["134"] = 110,["135"] = 110,["136"] = 109,["137"] = 109,["138"] = 112,["139"] = 112,["140"] = 112,["141"] = 113,["142"] = 114,["143"] = 115,["144"] = 116,["145"] = 117,["147"] = 119,["149"] = 121,["150"] = 112,["151"] = 112,["153"] = 102,["156"] = 124,["158"] = 102,["160"] = 100,["161"] = 128,["162"] = 130,["163"] = 131,["164"] = 131,["165"] = 131,["166"] = 131,["167"] = 132,["168"] = 132,["169"] = 133,["170"] = 134,["172"] = 131,["173"] = 131,["174"] = 128,["175"] = 138,["176"] = 139,["177"] = 140,["178"] = 141,["180"] = 138,["181"] = 157,["182"] = 158,["183"] = 158,["184"] = 158,["185"] = 159,["186"] = 160,["187"] = 158,["188"] = 158,["189"] = 163,["190"] = 164,["191"] = 165,["192"] = 166,["193"] = 166,["195"] = 167,["196"] = 168,["197"] = 169,["199"] = 172,["200"] = 173,["201"] = 174,["202"] = 175,["203"] = 176,["204"] = 177,["205"] = 178,["207"] = 181,["208"] = 182,["210"] = 185,["211"] = 185,["212"] = 185,["213"] = 185,["214"] = 185,["215"] = 190,["216"] = 190,["217"] = 190,["218"] = 185,["219"] = 185,["220"] = 185,["221"] = 185,["222"] = 185,["223"] = 163,["224"] = 197,["225"] = 197,["226"] = 197,["227"] = 198,["228"] = 198,["229"] = 197,["230"] = 197,["231"] = 200,["232"] = 200,["233"] = 200,["234"] = 201,["235"] = 201,["236"] = 200,["237"] = 200,["238"] = 203,["239"] = 203,["240"] = 203,["241"] = 204,["242"] = 204,["243"] = 203,["244"] = 203,["245"] = 206,["246"] = 206,["247"] = 206,["248"] = 207,["249"] = 207,["250"] = 207,["251"] = 207,["253"] = 207,["254"] = 206,["255"] = 206,["256"] = 209,["257"] = 209,["258"] = 209,["259"] = 210,["260"] = 210,["261"] = 210,["262"] = 210,["264"] = 210,["265"] = 209,["266"] = 209,["267"] = 212,["268"] = 212,["269"] = 212,["270"] = 213,["271"] = 213,["272"] = 213,["273"] = 213,["275"] = 213,["276"] = 212,["277"] = 212,["278"] = 215,["279"] = 215,["280"] = 215,["281"] = 216,["283"] = 216,["284"] = 216,["286"] = 216,["287"] = 215,["288"] = 215,["289"] = 219,["290"] = 219,["291"] = 219,["292"] = 219,["293"] = 220,["294"] = 221,["295"] = 221,["296"] = 221,["297"] = 221,["298"] = 221,["299"] = 221,["300"] = 221,["301"] = 219,["302"] = 219,["303"] = 219,["304"] = 223,["305"] = 223,["306"] = 223,["307"] = 223,["308"] = 224,["309"] = 224,["310"] = 224,["311"] = 224,["312"] = 223,["313"] = 223,["314"] = 223,["315"] = 227,["316"] = 227,["317"] = 227,["318"] = 227,["319"] = 228,["320"] = 229,["321"] = 229,["322"] = 229,["323"] = 229,["324"] = 229,["325"] = 229,["326"] = 229,["327"] = 227,["328"] = 227,["329"] = 227,["330"] = 231,["331"] = 231,["332"] = 231,["333"] = 231,["334"] = 232,["335"] = 232,["336"] = 232,["337"] = 232,["338"] = 231,["339"] = 231,["340"] = 231,["341"] = 235,["342"] = 235,["343"] = 235,["344"] = 235,["345"] = 236,["346"] = 237,["347"] = 237,["348"] = 237,["349"] = 237,["350"] = 237,["351"] = 237,["352"] = 237,["353"] = 235,["354"] = 235,["355"] = 235,["356"] = 239,["357"] = 239,["358"] = 239,["359"] = 239,["360"] = 240,["361"] = 240,["362"] = 240,["363"] = 240,["364"] = 239,["365"] = 239,["366"] = 239,["367"] = 243,["368"] = 243,["369"] = 243,["370"] = 243,["371"] = 244,["372"] = 244,["373"] = 244,["374"] = 244,["375"] = 243,["376"] = 243,["377"] = 247,["378"] = 247,["379"] = 247,["380"] = 248,["381"] = 248,["383"] = 248,["384"] = 248,["386"] = 248,["387"] = 247,["388"] = 247,["389"] = 251,["390"] = 251,["391"] = 251,["392"] = 252,["393"] = 251,["394"] = 251,["395"] = 254,["396"] = 254,["397"] = 254,["398"] = 255,["399"] = 254,["400"] = 254,["401"] = 257,["402"] = 257,["403"] = 257,["404"] = 258,["405"] = 257,["406"] = 257,["407"] = 260,["408"] = 260,["409"] = 260,["410"] = 261,["411"] = 260,["412"] = 260,["413"] = 263,["414"] = 263,["415"] = 263,["416"] = 264,["417"] = 263,["418"] = 263,["419"] = 266,["420"] = 266,["421"] = 266,["422"] = 267,["423"] = 266,["424"] = 266,["425"] = 271,["426"] = 271,["427"] = 271,["428"] = 271,["430"] = 272,["433"] = 273,["434"] = 274,["437"] = 275,["438"] = 276,["439"] = 278,["442"] = 281,["443"] = 282,["446"] = 286,["447"] = 286,["448"] = 286,["449"] = 286,["450"] = 286,["451"] = 288,["452"] = 289,["455"] = 271,["456"] = 271,["457"] = 292,["458"] = 292,["459"] = 292,["460"] = 293,["462"] = 293,["463"] = 293,["465"] = 293,["466"] = 292,["467"] = 292,["468"] = 296,["469"] = 296,["470"] = 296,["471"] = 297,["472"] = 298,["473"] = 298,["475"] = 299,["476"] = 300,["478"] = 302,["479"] = 303,["480"] = 303,["482"] = 304,["483"] = 296,["484"] = 296,["486"] = 307,["487"] = 307,["488"] = 308,["489"] = 309,["490"] = 310,["491"] = 310,["492"] = 310,["493"] = 311,["494"] = 310,["495"] = 310,["496"] = 313,["497"] = 313,["498"] = 313,["499"] = 314,["500"] = 315,["501"] = 315,["503"] = 316,["504"] = 317,["505"] = 317,["507"] = 318,["508"] = 319,["509"] = 319,["511"] = 320,["512"] = 313,["513"] = 313,["514"] = 322,["515"] = 322,["516"] = 322,["517"] = 323,["518"] = 324,["519"] = 324,["521"] = 325,["522"] = 326,["523"] = 326,["525"] = 327,["526"] = 328,["527"] = 328,["529"] = 329,["530"] = 330,["532"] = 332,["534"] = 322,["535"] = 322,["536"] = 335,["537"] = 335,["538"] = 335,["539"] = 336,["540"] = 337,["541"] = 337,["543"] = 338,["544"] = 339,["545"] = 339,["547"] = 340,["548"] = 341,["549"] = 341,["551"] = 342,["552"] = 335,["553"] = 335,["554"] = 307,["557"] = 157});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local ____AuctionController = include("logic.controllers.AuctionController")
local auctionController = ____AuctionController.auctionController
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
____exports.DAuctionEquip = __TS__Class()
local DAuctionEquip = ____exports.DAuctionEquip
DAuctionEquip.name = "DAuctionEquip"
__TS__ClassExtends(DAuctionEquip, Dialog)
function DAuctionEquip.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {}, isResult = false, isShow = true, time = 10}
    self.timer = nil
    self.prices = vue.ref({
        [0] = 0,
        [1] = 0,
        [2] = 0,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0
    })
end
function DAuctionEquip.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DAuctionEquip.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindAction(
            "root.show",
            "左键-点击",
            function()
                self.data.isShow = true
            end
        )
        self:bindAction(
            "root.center.hide",
            "左键-点击",
            function()
                self.data.isShow = false
            end
        )
        self:bindVisible(
            "root.center",
            function()
                return self.data.isShow == true
            end
        )
        self:bindVisible(
            "background",
            function()
                return self.data.isShow == true
            end
        )
        self:bindVisible(
            "root.show",
            function()
                return self.data.isShow == false
            end
        )
        self:bindText(
            "root.center.time",
            function()
                return i18n["local"](i18n, "倒计时：") .. tostring(self.data.time)
            end
        )
        self:bindVisible(
            "root.center.time",
            function()
                return self.data.time > 0
            end
        )
        do
            local index = 0
            while index < 4 do
                local path = "root.center.item_" .. tostring(index + 1)
                local i = index
                self:createUI(path, i)
                index = index + 1
            end
        end
    end)
end
function DAuctionEquip.prototype.updateUI(self)
    self.prices.value = {
        [0] = 0,
        [1] = 0,
        [2] = 0,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0
    }
end
function DAuctionEquip.prototype.onShow(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            self.data.isShow = true
            self:updateUI()
            local auctionData = datas.global:getSingle(AuctionData)
            self.data.time = 30
            self.timer = y3.ltimer.loop_count(
                1,
                self.data.time,
                function(timer, count)
                    local ____self_data_0, ____time_1 = self.data, "time"
                    ____self_data_0[____time_1] = ____self_data_0[____time_1] - 1
                end
            )
            self:watchOnce(
                function() return auctionData.showResult end,
                function(____, value)
                    if value then
                        self.data.isShow = true
                        if self.timer ~= nil then
                            self.timer:remove()
                            self.timer = nil
                        end
                        self:waitToHide()
                    end
                    return value
                end
            )
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function DAuctionEquip.prototype.waitToHide(self)
    self.data.time = 10
    self.timer = y3.ltimer.loop_count(
        1,
        10,
        function(timer, count)
            local ____self_data_2, ____time_3 = self.data, "time"
            ____self_data_2[____time_3] = ____self_data_2[____time_3] - 1
            if self.data.time <= 0 then
                self:hide()
            end
        end
    )
end
function DAuctionEquip.prototype.onHide(self)
    if self.timer ~= nil then
        self.timer:remove()
        self.timer = nil
    end
end
function DAuctionEquip.prototype.createUI(self, path, index)
    self:bindVisible(
        path,
        function()
            local auctionData = datas.global:getSingle(AuctionData)
            return #auctionData.equips > index
        end
    )
    local data = self:compute(function()
        local auctionData = datas.global:getSingle(AuctionData)
        local info = auctionData.equips[index + 1]
        if info == nil then
            return nil
        end
        local config = equipConfigMap[info.cfgId]
        if not config then
            return nil
        end
        local base_price = 0
        if config.quality == 1 then
            base_price = 0
        elseif config.quality == 2 then
            base_price = 0
        elseif config.quality == 3 then
            base_price = 0
        end
        if self.prices.value[index] < base_price then
            self.prices.value[index] = base_price
        end
        return {
            config = config,
            base_price = base_price,
            showResult = info.showResult,
            current_price = self.prices.value[index],
            final_price = __TS__ArrayFind(
                info.price,
                function(____, a) return a.playerId == LOCAL.PLAYER_ID end
            ) or 0,
            show = info.showResult,
            wait = info.confirm[LOCAL.PLAYER_ID] ~= nil and info.confirm[LOCAL.PLAYER_ID] ~= false and not info.showResult,
            buy = (info.confirm[LOCAL.PLAYER_ID] == nil or info.confirm[LOCAL.PLAYER_ID] == false) and not info.showResult
        }
    end)
    self:bindText(
        path .. ".info.title",
        function()
            local ____opt_4 = data.value
            return ____opt_4 and ____opt_4.config.name.value or ""
        end
    )
    self:bindText(
        path .. ".info.des",
        function()
            local ____opt_6 = data.value
            return ____opt_6 and ____opt_6.config.des.value or ""
        end
    )
    self:bindImage(
        path .. ".info.icon",
        function()
            local ____opt_8 = data.value
            return ____opt_8 and ____opt_8.config.icon or 0
        end
    )
    self:bindVisible(
        path .. ".info.wait",
        function()
            local ____opt_10 = data.value
            local ____temp_12 = ____opt_10 and ____opt_10.wait
            if ____temp_12 == nil then
                ____temp_12 = false
            end
            return ____temp_12
        end
    )
    self:bindVisible(
        path .. ".info.buy",
        function()
            local ____opt_13 = data.value
            local ____temp_15 = ____opt_13 and ____opt_13.buy
            if ____temp_15 == nil then
                ____temp_15 = false
            end
            return ____temp_15
        end
    )
    self:bindVisible(
        path .. ".info.show",
        function()
            local ____opt_16 = data.value
            local ____temp_18 = ____opt_16 and ____opt_16.show
            if ____temp_18 == nil then
                ____temp_18 = false
            end
            return ____temp_18
        end
    )
    self:bindText(
        path .. ".info.buy.price",
        function()
            local ____opt_19 = data.value
            if ____opt_19 ~= nil then
                local ____opt_20 = data.value
                ____opt_19 = tostring(____opt_20 and ____opt_20.current_price)
            end
            return ____opt_19 or ""
        end
    )
    self:bindAction(
        path .. ".info.buy.add1",
        "左键-点击",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local ____self_prices_value_25 = self.prices.value
            local ____index_26 = index
            local ____opt_23 = data.value
            ____self_prices_value_25[____index_26] = math.max(
                ____opt_23 and ____opt_23.base_price or 0,
                math.min(playerData.gold, self.prices.value[index] + 1)
            )
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.add1",
        "右键-点击",
        function()
            local ____self_prices_value_29 = self.prices.value
            local ____index_30 = index
            local ____opt_27 = data.value
            ____self_prices_value_29[____index_30] = math.max(____opt_27 and ____opt_27.base_price or 0, self.prices.value[index] - 1)
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.add2",
        "左键-点击",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local ____self_prices_value_33 = self.prices.value
            local ____index_34 = index
            local ____opt_31 = data.value
            ____self_prices_value_33[____index_34] = math.max(
                ____opt_31 and ____opt_31.base_price or 0,
                math.min(playerData.gold, self.prices.value[index] + 10)
            )
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.add2",
        "右键-点击",
        function()
            local ____self_prices_value_37 = self.prices.value
            local ____index_38 = index
            local ____opt_35 = data.value
            ____self_prices_value_37[____index_38] = math.max(____opt_35 and ____opt_35.base_price or 0, self.prices.value[index] - 10)
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.add3",
        "左键-点击",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local ____self_prices_value_41 = self.prices.value
            local ____index_42 = index
            local ____opt_39 = data.value
            ____self_prices_value_41[____index_42] = math.max(
                ____opt_39 and ____opt_39.base_price or 0,
                math.min(playerData.gold, self.prices.value[index] + 100)
            )
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.add3",
        "右键-点击",
        function()
            local ____self_prices_value_45 = self.prices.value
            local ____index_46 = index
            local ____opt_43 = data.value
            ____self_prices_value_45[____index_46] = math.max(____opt_43 and ____opt_43.base_price or 0, self.prices.value[index] - 100)
        end,
        0.1
    )
    self:bindAction(
        path .. ".info.buy.clear",
        "左键-点击",
        function()
            local ____self_prices_value_49 = self.prices.value
            local ____index_50 = index
            local ____opt_47 = data.value
            ____self_prices_value_49[____index_50] = ____opt_47 and ____opt_47.base_price or 0
        end
    )
    self:bindVisible(
        path .. ".sure.disable",
        function()
            local ____opt_51 = data.value
            local ____temp_55 = (____opt_51 and ____opt_51.buy) == nil
            if not ____temp_55 then
                local ____opt_53 = data.value
                ____temp_55 = (____opt_53 and ____opt_53.buy) == false
            end
            return ____temp_55
        end
    )
    self:bindText(
        path .. ".info.bg.title",
        function()
            return i18n["local"](i18n, "装备")
        end
    )
    self:bindText(
        path .. ".info.isMy.label_15",
        function()
            return i18n["local"](i18n, "暗拍成功")
        end
    )
    self:bindText(
        path .. ".info.buy.clear.title",
        function()
            return i18n["local"](i18n, "清空")
        end
    )
    self:bindText(
        path .. ".sure.title",
        function()
            return i18n["local"](i18n, "确定出价")
        end
    )
    self:bindText(
        path .. ".sure.disable.title",
        function()
            return i18n["local"](i18n, "已出价")
        end
    )
    self:bindText(
        path .. ".info.buy.title",
        function()
            return i18n["local"](i18n, "当前出价：")
        end
    )
    self:bindAction(
        path .. ".sure",
        "左键-点击",
        function(____, _, player)
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if player.id ~= LOCAL.PLAYER_ID then
                    return ____awaiter_resolve(nil)
                end
                local price = self.prices.value[index]
                if price == nil then
                    return ____awaiter_resolve(nil)
                end
                local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
                if playerData.gold < price then
                    DTips:show(i18n["local"](i18n, "金币不足"))
                    return ____awaiter_resolve(nil)
                end
                if price < 0 then
                    DTips:show(i18n["local"](i18n, "金币不能小于0"))
                    return ____awaiter_resolve(nil)
                end
                local newPrice = __TS__Await(auctionController.auction:execute(
                    LOCAL.PLAYER_ID,
                    index,
                    math.floor(price)
                ):catch(function(____, e) return console:error(e) end))
                if newPrice ~= nil then
                    self.prices.value[index] = newPrice
                end
            end)
        end
    )
    self:bindText(
        path .. ".info.wait.price",
        function()
            local ____opt_56 = data.value
            if ____opt_56 ~= nil then
                local ____opt_57 = data.value
                ____opt_56 = tostring(____opt_57 and ____opt_57.current_price)
            end
            return ____opt_56 or ""
        end
    )
    self:bindVisible(
        path .. ".info.isMy",
        function()
            local auctionData = datas.global:getSingle(AuctionData)
            if #auctionData.equips == 0 then
                return false
            end
            if not auctionData.showResult then
                return false
            end
            local info = auctionData and auctionData.equips[index + 1]
            if info == nil then
                return false
            end
            return info.winner == LOCAL.PLAYER_ID
        end
    )
    do
        local kk = 0
        while kk < 6 do
            local i = kk
            local p_ui = (path .. ".info.show.list.player_") .. tostring(kk + 1)
            self:bindVisible(
                p_ui,
                function()
                    return #playerIdList > i
                end
            )
            self:bindText(
                p_ui .. ".name",
                function()
                    local auctionData = datas.global:getSingle(AuctionData)
                    if #auctionData.equips == 0 then
                        return ""
                    end
                    local info = auctionData and auctionData.equips[index + 1]
                    if info == nil then
                        return ""
                    end
                    local player = info.price[i + 1]
                    if player == nil then
                        return ""
                    end
                    return y3.player.get_by_id(player.playerId):get_name()
                end
            )
            self:bindTextColor(
                p_ui .. ".name",
                function()
                    local auctionData = datas.global:getSingle(AuctionData)
                    if #auctionData.equips == 0 then
                        return UIUtils:toColor("#f8fcff")
                    end
                    local info = auctionData and auctionData.equips[index + 1]
                    if info == nil then
                        return UIUtils:toColor("#f8fcff")
                    end
                    local player = info.price[i + 1]
                    if player == nil then
                        return UIUtils:toColor("#f8fcff")
                    end
                    if player.playerId == LOCAL.PLAYER_ID then
                        return UIUtils:toColor("#f28e1c")
                    else
                        return UIUtils:toColor("#f8fcff")
                    end
                end
            )
            self:bindText(
                p_ui .. ".price",
                function()
                    local auctionData = datas.global:getSingle(AuctionData)
                    if #auctionData.equips == 0 then
                        return ""
                    end
                    local info = auctionData and auctionData.equips[index + 1]
                    if info == nil then
                        return ""
                    end
                    local player = info.price[i + 1]
                    if player == nil then
                        return ""
                    end
                    return tostring(player.price)
                end
            )
            kk = kk + 1
        end
    end
end
return ____exports
