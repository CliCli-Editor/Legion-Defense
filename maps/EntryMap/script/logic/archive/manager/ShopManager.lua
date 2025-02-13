local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__New = ____lualib.__TS__New
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 14,["34"] = 16,["35"] = 16,["36"] = 17,["37"] = 17,["38"] = 19,["39"] = 19,["40"] = 20,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 22,["46"] = 22,["47"] = 24,["48"] = 24,["49"] = 24,["51"] = 24,["52"] = 31,["55"] = 35,["58"] = 33,["64"] = 31,["65"] = 38,["66"] = 39,["69"] = 42,["70"] = 43,["71"] = 44,["72"] = 45,["73"] = 46,["74"] = 47,["76"] = 49,["78"] = 51,["79"] = 52,["80"] = 54,["81"] = 56,["82"] = 38,["83"] = 58,["84"] = 59,["85"] = 60,["86"] = 61,["87"] = 62,["89"] = 64,["90"] = 65,["91"] = 66,["92"] = 67,["93"] = 67,["94"] = 67,["95"] = 67,["96"] = 67,["97"] = 68,["98"] = 69,["100"] = 71,["102"] = 73,["103"] = 58,["104"] = 76,["105"] = 77,["106"] = 78,["109"] = 81,["110"] = 83,["112"] = 86,["114"] = 76,["115"] = 94,["116"] = 95,["117"] = 96,["118"] = 97,["120"] = 99,["121"] = 100,["122"] = 101,["124"] = 104,["125"] = 94,["126"] = 107,["127"] = 108,["128"] = 109,["129"] = 109,["131"] = 110,["132"] = 111,["134"] = 113,["135"] = 107,["136"] = 121,["137"] = 122,["138"] = 123,["139"] = 124,["141"] = 126,["142"] = 127,["144"] = 129,["145"] = 130,["147"] = 132,["148"] = 121,["149"] = 135,["150"] = 136,["151"] = 137,["152"] = 138,["154"] = 140,["155"] = 141,["156"] = 135,["157"] = 144,["160"] = 148,["163"] = 146,["169"] = 144,["170"] = 151,["171"] = 152,["172"] = 153,["173"] = 153,["174"] = 153,["175"] = 153,["176"] = 154,["177"] = 155,["180"] = 158,["181"] = 159,["182"] = 160,["183"] = 161,["187"] = 165,["188"] = 166,["189"] = 167,["190"] = 168,["191"] = 168,["192"] = 168,["193"] = 168,["194"] = 169,["198"] = 173,["199"] = 174,["200"] = 175,["203"] = 178,["204"] = 179,["205"] = 180,["208"] = 183,["209"] = 184,["210"] = 185,["211"] = 186,["212"] = 151,["213"] = 189,["214"] = 190,["215"] = 191,["216"] = 191,["217"] = 191,["218"] = 191,["219"] = 192,["220"] = 193,["222"] = 195,["223"] = 196,["224"] = 189,["225"] = 199,["226"] = 200,["227"] = 201,["228"] = 202,["229"] = 203,["230"] = 204,["231"] = 205,["234"] = 208,["235"] = 209,["236"] = 210,["237"] = 211,["238"] = 212,["241"] = 216,["243"] = 217,["244"] = 218,["246"] = 220,["247"] = 221,["248"] = 222,["252"] = 225,["254"] = 226,["255"] = 227,["257"] = 229,["258"] = 230,["259"] = 231,["263"] = 234,["265"] = 235,["266"] = 236,["268"] = 238,["269"] = 239,["270"] = 240,["274"] = 243,["276"] = 244,["277"] = 245,["279"] = 247,["280"] = 248,["281"] = 249,["285"] = 252,["287"] = 253,["288"] = 254,["290"] = 256,["291"] = 257,["292"] = 258,["296"] = 261,["298"] = 262,["299"] = 263,["301"] = 265,["302"] = 266,["303"] = 267,["307"] = 270,["308"] = 199,["309"] = 275});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____CodeConfig = include("logic.configs.CodeConfig")
local codeConfigList = ____CodeConfig.codeConfigList
local ____GoodsConfig = include("logic.configs.GoodsConfig")
local goodsConfigMap = ____GoodsConfig.goodsConfigMap
local ____KKPlayerNameConfig = include("logic.configs.KKPlayerNameConfig")
local kKPlayerNameConfigMap = ____KKPlayerNameConfig.kKPlayerNameConfigMap
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigMap = ____PetConfig.petConfigMap
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigMap = ____PetEffectConfig.petEffectConfigMap
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigMap = ____PetEmoConfig.petEmoConfigMap
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigMap = ____PetHaloConfig.petHaloConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigMap = ____PetWingConfig.petWingConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap = ____SkinConfig.skinConfigMap
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____NewbieTaskManager = include("logic.archive.manager.NewbieTaskManager")
local NewbieTaskTrigger = ____NewbieTaskManager.NewbieTaskTrigger
local newbieTaskManager = ____NewbieTaskManager.newbieTaskManager
local ____HallBgConfig = include("logic.configs.HallBgConfig")
local hallBgConfigMap = ____HallBgConfig.hallBgConfigMap
____exports.ShopManager = __TS__Class()
local ShopManager = ____exports.ShopManager
ShopManager.name = "ShopManager"
function ShopManager.prototype.____constructor(self)
end
function ShopManager.prototype.buy(self, id)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_buy(id)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function ShopManager.prototype._buy(self, id)
    if self:isLimit(id) or not self:isEnough(id) then
        return
    end
    local cfg = goodsConfigMap[id]
    if cfg.cost == 2 then
        archive.playerInfo:consumeDiamond(cfg.price)
        newbieTaskManager:trigger(NewbieTaskTrigger.BUY_USE_DIAMOND)
    elseif cfg.cost == 102 then
        archive.playerInfo:consumeScore(cfg.price)
    else
        archive.playerInfo:consumeGold(cfg.price)
    end
    archive.shopInfo:buy(id)
    self:reward(id)
    newbieTaskManager:trigger(NewbieTaskTrigger.BUY)
    archive:sync()
end
function ShopManager.prototype.have(self, id)
    local cfg = goodsConfigMap[id]
    if cfg.type == 2 then
        local info = archive.playerInfo:getHeroInfo(cfg.propId.indexId)
        return info and info.isHave
    end
    if cfg.type == 3 then
        local skin = skinConfigMap[cfg.propId.indexId]
        local info = archive.playerInfo:getHeroInfo(skin.hero)
        local ____opt_2 = info
        local find = ____opt_2 and __TS__ArrayFindIndex(
            info and info.unlock_skin,
            function(____, a) return a == skin.id end
        )
        if find ~= nil and find ~= -1 then
            return true
        end
        return false
    end
    return false
end
function ShopManager.prototype.reward(self, id)
    local cfg = goodsConfigMap[id]
    if cfg == nil then
        return
    end
    if cfg._propId ~= 0 then
        rewardManager:rewardItem(cfg._propId, cfg.propCount)
    else
        rewardManager:drop(cfg._dropId)
    end
end
function ShopManager.prototype.isLimit(self, id)
    local cfg = goodsConfigMap[id]
    if cfg == nil then
        return true
    end
    local info = archive.shopInfo:getItem(id)
    if info == nil or cfg.limitCount > 0 and info.buy_count >= cfg.limitCount then
        return true
    end
    return false
end
function ShopManager.prototype.getIcon(self, cfgId)
    local cfg = goodsConfigMap[cfgId]
    if cfg == nil then
        return 0
    end
    if cfg.icon == -1 then
        return getPropIcon(nil, cfg.propId.id)
    end
    return cfg.icon
end
function ShopManager.prototype.isEnough(self, id)
    local cfg = goodsConfigMap[id]
    if cfg == nil then
        return false
    end
    if cfg.cost == 2 then
        return archive.playerInfo:isDiamondEnough(cfg.price)
    end
    if cfg.cost == 0 then
        return archive.playerInfo:isEnough(1, cfg.price)
    end
    return archive.playerInfo:isEnough(cfg.cost, cfg.price)
end
function ShopManager.prototype.getBuyCount(self, id)
    local cfg = goodsConfigMap[id]
    if cfg == nil then
        return 0
    end
    local info = archive.shopInfo:getItem(id)
    return info.buy_count
end
function ShopManager.prototype.code(self, code)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_code(code)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function ShopManager.prototype._code(self, code)
    code = string.lower(code)
    local cfg = __TS__ArrayFind(
        codeConfigList,
        function(____, a) return string.lower(a.code) == code end
    )
    if cfg == nil then
        DTips:show(i18n["local"](i18n, "兑换码不存在"))
        return
    end
    if cfg.type == 1 and not y3.game.is_debug_mode() then
        local name = LOCAL.PLAYER:get_platform_name()
        if name ~= "birnfly#4180" and name ~= "xpf#9160" and name ~= "Dynasty#1160" then
            DTips:show(i18n["local"](i18n, "兑换码不存在!"))
            return
        end
    end
    if cfg.type == 3 then
        local players = kKPlayerNameConfigMap[cfg.player]
        local name = LOCAL.PLAYER:get_platform_name()
        if __TS__ArrayFindIndex(
            players.names,
            function(____, a) return a == name end
        ) == -1 then
            DTips:show(i18n["local"](i18n, "兑换码不存在!"))
            return
        end
    end
    local cur = __TS__New(Date):getTime() / 1000
    if cfg.startTime > cur or cfg.endTime < cur then
        DTips:show(i18n["local"](i18n, "兑换码已过期"))
        return
    end
    local data = archive.shopInfo:getCodeItem(cfg.id)
    if cfg.count <= data.count then
        DTips:show(i18n["local"](i18n, "已兑换，请勿重复兑换"))
        return
    end
    archive.shopInfo:exchange(cfg.id)
    self:reward(cfg.rewardId)
    archive:sync()
    DTips:show(i18n["local"](i18n, "兑换成功"))
end
function ShopManager.prototype.isCodeExcharge(self, code)
    code = string.lower(code)
    local cfg = __TS__ArrayFind(
        codeConfigList,
        function(____, a) return string.lower(a.code) == code end
    )
    if cfg == nil then
        return false
    end
    local data = archive.shopInfo:getCodeItem(cfg.id)
    return cfg.count <= data.count
end
function ShopManager.prototype.getCurrentDecorateCount(self)
    local decorate = 0
    for key in pairs(archive.playerInfo.data.heroes) do
        local heroData = archive.playerInfo.data.heroes[key]
        for ____, skinId in ipairs(heroData.unlock_skin) do
            local skinConfig = skinConfigMap[skinId]
            decorate = decorate + skinConfig.decorate
        end
    end
    for key in pairs(archive.mercenaryData.skins) do
        local skinData = archive.mercenaryData.skins[key]
        for ____, skinId in ipairs(skinData.unlock_skin) do
            local skinConfig = skinMercenaryConfigMap[skinId]
            decorate = decorate + skinConfig.decorate
        end
    end
    for petKey in pairs(archive.petData.skins) do
        do
            if archive.petData.skins[petKey] ~= true then
                goto __continue57
            end
            local petId = __TS__ParseInt(petKey)
            local pet = petConfigMap[petId]
            decorate = decorate + pet.decorate
        end
        ::__continue57::
    end
    for petKey in pairs(archive.petData.wings) do
        do
            if archive.petData.wings[petKey] ~= true then
                goto __continue60
            end
            local petId = __TS__ParseInt(petKey)
            local pet = petWingConfigMap[petId]
            decorate = decorate + pet.decorate
        end
        ::__continue60::
    end
    for petKey in pairs(archive.petData.halos) do
        do
            if archive.petData.halos[petKey] ~= true then
                goto __continue63
            end
            local petId = __TS__ParseInt(petKey)
            local pet = petHaloConfigMap[petId]
            decorate = decorate + pet.decorate
        end
        ::__continue63::
    end
    for petKey in pairs(archive.petData.emojies) do
        do
            if archive.petData.emojies[petKey] ~= true then
                goto __continue66
            end
            local petId = __TS__ParseInt(petKey)
            local pet = petEmoConfigMap[petId]
            decorate = decorate + pet.decorate
        end
        ::__continue66::
    end
    for petKey in pairs(archive.petData.effects) do
        do
            if archive.petData.effects[petKey] ~= true then
                goto __continue69
            end
            local petId = __TS__ParseInt(petKey)
            local pet = petEffectConfigMap[petId]
            decorate = decorate + pet.decorate
        end
        ::__continue69::
    end
    for bgKey in pairs(archive.playerData.hall_bg) do
        do
            if archive.playerData.hall_bg[bgKey] ~= true then
                goto __continue72
            end
            local bgId = __TS__ParseInt(bgKey)
            local bg = hallBgConfigMap[bgId]
            decorate = decorate + bg.decorate
        end
        ::__continue72::
    end
    return decorate
end
____exports.shopManager = __TS__New(____exports.ShopManager)
return ____exports
