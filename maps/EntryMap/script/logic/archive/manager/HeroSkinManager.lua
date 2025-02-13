local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 12,["32"] = 12,["33"] = 15,["34"] = 15,["35"] = 15,["37"] = 15,["38"] = 16,["41"] = 27,["44"] = 18,["45"] = 19,["46"] = 19,["47"] = 20,["48"] = 21,["50"] = 24,["51"] = 25,["57"] = 17,["60"] = 16,["61"] = 30,["64"] = 47,["67"] = 32,["68"] = 33,["69"] = 34,["70"] = 35,["72"] = 35,["73"] = 35,["75"] = 35,["76"] = 35,["78"] = 36,["80"] = 36,["81"] = 36,["83"] = 36,["84"] = 36,["86"] = 37,["88"] = 37,["89"] = 37,["91"] = 37,["92"] = 37,["94"] = 38,["95"] = 39,["96"] = 40,["99"] = 43,["100"] = 44,["106"] = 31,["109"] = 30,["110"] = 50,["113"] = 56,["116"] = 53,["117"] = 54,["123"] = 50,["124"] = 59,["127"] = 65,["130"] = 61,["131"] = 62,["137"] = 59,["138"] = 68,["141"] = 74,["144"] = 71,["145"] = 72,["151"] = 68,["152"] = 77,["155"] = 83,["158"] = 80,["159"] = 81,["165"] = 77,["166"] = 86,["169"] = 92,["172"] = 89,["173"] = 90,["179"] = 86,["180"] = 95,["183"] = 101,["186"] = 98,["187"] = 99,["193"] = 95,["194"] = 104,["197"] = 110,["200"] = 107,["201"] = 108,["207"] = 104,["208"] = 114,["209"] = 115,["210"] = 116,["212"] = 118,["214"] = 120,["215"] = 114,["216"] = 123,["219"] = 136,["222"] = 125,["223"] = 126,["225"] = 128,["226"] = 129,["227"] = 130,["229"] = 132,["230"] = 132,["231"] = 133,["232"] = 134,["238"] = 124,["241"] = 138,["242"] = 123,["243"] = 141,["246"] = 161,["249"] = 144,["250"] = 145,["251"] = 146,["252"] = 147,["253"] = 148,["254"] = 149,["256"] = 151,["257"] = 152,["258"] = 153,["259"] = 153,["260"] = 153,["261"] = 153,["263"] = 155,["264"] = 156,["266"] = 158,["267"] = 159,["273"] = 142,["276"] = 163,["277"] = 141,["278"] = 165,["281"] = 180,["284"] = 168,["285"] = 169,["286"] = 170,["287"] = 171,["288"] = 172,["289"] = 172,["290"] = 172,["291"] = 172,["293"] = 174,["294"] = 175,["296"] = 177,["297"] = 178,["303"] = 166,["306"] = 182,["307"] = 165,["308"] = 184,["311"] = 201,["314"] = 187,["315"] = 188,["316"] = 189,["317"] = 190,["318"] = 191,["319"] = 192,["320"] = 193,["321"] = 193,["322"] = 193,["323"] = 193,["325"] = 195,["326"] = 196,["328"] = 198,["329"] = 199,["335"] = 185,["338"] = 203,["339"] = 184,["340"] = 205,["343"] = 231,["346"] = 209,["347"] = 210,["348"] = 211,["350"] = 213,["351"] = 214,["353"] = 217,["354"] = 218,["355"] = 219,["356"] = 219,["357"] = 219,["358"] = 219,["360"] = 221,["361"] = 222,["362"] = 223,["364"] = 225,["367"] = 228,["368"] = 229,["374"] = 207,["377"] = 233,["378"] = 205,["379"] = 236,["382"] = 250,["385"] = 238,["386"] = 239,["387"] = 240,["388"] = 241,["389"] = 242,["390"] = 242,["391"] = 242,["392"] = 242,["394"] = 244,["395"] = 245,["397"] = 247,["398"] = 248,["404"] = 237,["407"] = 253,["408"] = 236,["409"] = 256,["412"] = 263,["415"] = 258,["416"] = 259,["417"] = 260,["418"] = 261,["424"] = 257,["427"] = 265,["428"] = 256,["429"] = 268,["432"] = 286,["435"] = 271,["436"] = 272,["437"] = 273,["439"] = 275,["440"] = 276,["442"] = 278,["443"] = 279,["444"] = 280,["446"] = 282,["447"] = 283,["448"] = 283,["450"] = 284,["456"] = 269,["459"] = 288,["460"] = 268,["461"] = 291,["464"] = 303,["467"] = 293,["468"] = 294,["469"] = 294,["471"] = 295,["472"] = 296,["473"] = 297,["475"] = 299,["476"] = 300,["482"] = 292,["485"] = 305,["486"] = 291,["487"] = 308,["490"] = 322,["493"] = 310,["494"] = 311,["496"] = 313,["497"] = 314,["498"] = 315,["500"] = 317,["501"] = 317,["502"] = 318,["503"] = 319,["509"] = 309,["512"] = 324,["513"] = 308,["514"] = 327,["517"] = 360,["520"] = 330,["521"] = 331,["523"] = 333,["524"] = 334,["525"] = 335,["527"] = 337,["528"] = 338,["529"] = 339,["530"] = 340,["531"] = 341,["532"] = 342,["533"] = 343,["535"] = 345,["536"] = 345,["537"] = 345,["538"] = 346,["539"] = 347,["540"] = 347,["542"] = 345,["543"] = 345,["544"] = 349,["545"] = 349,["546"] = 349,["547"] = 350,["548"] = 351,["551"] = 349,["552"] = 349,["554"] = 356,["560"] = 329,["563"] = 362,["564"] = 327,["565"] = 365,["568"] = 394,["571"] = 367,["572"] = 368,["574"] = 370,["575"] = 371,["576"] = 372,["578"] = 374,["579"] = 375,["580"] = 376,["581"] = 377,["582"] = 378,["583"] = 379,["584"] = 379,["585"] = 379,["586"] = 380,["587"] = 381,["588"] = 382,["590"] = 379,["591"] = 379,["592"] = 385,["593"] = 385,["594"] = 385,["595"] = 386,["596"] = 386,["597"] = 386,["598"] = 386,["599"] = 387,["602"] = 385,["603"] = 385,["605"] = 392,["611"] = 366,["614"] = 396,["615"] = 365,["616"] = 400});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap = ____SkinConfig.skinConfigMap
local skinConfigMap_hero = ____SkinConfig.skinConfigMap_hero
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
local ____SkinSkillConfig = include("logic.configs.SkinSkillConfig")
local skinSkillConfigMap = ____SkinSkillConfig.skinSkillConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
____exports.HeroSkinManager = __TS__Class()
local HeroSkinManager = ____exports.HeroSkinManager
HeroSkinManager.name = "HeroSkinManager"
function HeroSkinManager.prototype.____constructor(self)
end
function HeroSkinManager.prototype.replaceSkin(self, heroId, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local hero = archive.playerInfo:getHeroInfo(heroId)
            local ____opt_0 = hero
            if (____opt_0 and __TS__ArrayIndexOf(hero and hero.unlock_skin, skinId)) == -1 then
                DTips:show(i18n["local"](i18n, "皮肤未解锁"))
                return true
            end
            archive.playerInfo:replaceSkin(heroId, skinId)
            archive:sync()
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function HeroSkinManager.prototype.replaceSkillSkin(self, heroId, idx, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local hero = archive.playerInfo:getHeroInfo(heroId)
            if skinId ~= 0 then
                local unlock = false
                local ____temp_8 = idx == 0
                if ____temp_8 then
                    local ____opt_4 = hero
                    ____temp_8 = (____opt_4 and __TS__ArrayIndexOf(hero and hero.unlock_skill_1, skinId)) ~= -1
                end
                if ____temp_8 then
                    unlock = true
                end
                local ____temp_13 = idx == 1
                if ____temp_13 then
                    local ____opt_9 = hero
                    ____temp_13 = (____opt_9 and __TS__ArrayIndexOf(hero and hero.unlock_skill_2, skinId)) ~= -1
                end
                if ____temp_13 then
                    unlock = true
                end
                local ____temp_18 = idx == 2
                if ____temp_18 then
                    local ____opt_14 = hero
                    ____temp_18 = (____opt_14 and __TS__ArrayIndexOf(hero and hero.unlock_skill_3, skinId)) ~= -1
                end
                if ____temp_18 then
                    unlock = true
                end
                if not unlock then
                    DTips:show(i18n["local"](i18n, "技能皮肤未解锁"))
                    return true
                end
            end
            archive.playerInfo:replaceSkillSkin(heroId, idx, skinId)
            archive:sync()
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function HeroSkinManager.prototype.replaceMercenarySkin(self, mercenaryId, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.mercenaryInfo:useSkin(mercenaryId, skinId)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetSkin(self, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeSkin(skinId)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetWing(self, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeWing(skinId)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetEffect(self, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeEffect(skinId)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetHalo(self, skinId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeHalo(skinId)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetSkill(self, skinId, index)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeSkill(skinId, index)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetEmoji(self, skinId, index)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.petInfo:changeEmoji(skinId, index)
            archive:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function HeroSkinManager.prototype.replacePetTitle(self, id)
    if archive.petInfo.data.current_title == id then
        archive.petInfo:changeTitle(0)
    else
        archive.petInfo:changeTitle(id)
    end
    archive:sync()
end
function HeroSkinManager.prototype.getHeroSkinCfg(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if datas == nil or datas.players[playerId] == nil then
                return true, nil
            end
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            if archiveData == nil or archiveData.playerInfo == nil or archiveData.playerInfo.heroes == nil then
                return true, nil
            end
            local ____opt_19 = archiveData.playerInfo.heroes["" .. tostring(id)]
            local cfgId = ____opt_19 and ____opt_19.cur_skin or 0
            local cfg = skinConfigMap[cfgId]
            return true, cfg
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function HeroSkinManager.prototype.getHeroSkin(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            if hero == nil then
                console:log("英雄id：", id, playerId)
                local hero2 = heroConfigMap[id]
                return true, hero2.role
            end
            local skin = skinConfigMap[hero.cur_skin]
            if skin == nil then
                skin = __TS__ArrayFind(
                    skinConfigMap_hero[id],
                    function(____, a) return a.isDefault end
                )
            end
            if skin ~= nil then
                return true, skin.role
            end
            local hero2 = heroConfigMap[id]
            return true, hero2.role
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
function HeroSkinManager.prototype.getHeroIcon(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            local skin = skinConfigMap[hero.cur_skin]
            if skin == nil then
                skin = __TS__ArrayFind(
                    skinConfigMap_hero[id],
                    function(____, a) return a.isDefault end
                )
            end
            if skin ~= nil then
                return true, skin.icon
            end
            local hero2 = heroConfigMap[id]
            return true, hero2.icon
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
function HeroSkinManager.prototype.getHeroIcon2(self, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local playerData = datas.players[playerId]:getSingle(PlayerData)
            local id = playerData.hero.id
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            local skin = skinConfigMap[hero.cur_skin]
            if skin == nil then
                skin = __TS__ArrayFind(
                    skinConfigMap_hero[id],
                    function(____, a) return a.isDefault end
                )
            end
            if skin ~= nil then
                return true, skin.icon
            end
            local hero2 = heroConfigMap[id]
            return true, hero2.icon
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
function HeroSkinManager.prototype.getHeroPic(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local hero
            if playerId == nil then
                hero = archive.playerInfo:getHeroInfo(id)
            else
                local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
                hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            end
            local skin = skinConfigMap[hero.cur_skin]
            if skin == nil then
                skin = __TS__ArrayFind(
                    skinConfigMap_hero[id],
                    function(____, a) return a.isDefault end
                )
            end
            if skin ~= nil then
                if i18n.currentLang == "en" and skin.enPic ~= 0 then
                    return true, skin.enPic
                else
                    return true, skin.pic
                end
            end
            local hero2 = heroConfigMap[id]
            return true, hero2.pic
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
function HeroSkinManager.prototype.getHeroBuildSkillId(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            local skin = skinConfigMap[hero.cur_skin]
            if skin == nil then
                skin = __TS__ArrayFind(
                    skinConfigMap_hero[id],
                    function(____, a) return a.isDefault end
                )
            end
            if skin ~= nil then
                return true, skin.buildId
            end
            local hero2 = heroConfigMap[id]
            return true, hero2.buildId
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
function HeroSkinManager.prototype.getHeroCurrentSkinCfg(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            local skin = skinConfigMap[hero.cur_skin]
            return true, skin
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function HeroSkinManager.prototype.getHeroSkillSkin(self, id, idx, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local hero
            if playerId == nil then
                hero = archive.playerInfo:getHeroInfo(id)
            else
                local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
                hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            end
            local cfg = heroConfigMap[id]
            if hero.cur_skill[idx + 1] == 0 then
                return true, cfg.skill[idx + 1].icon
            end
            local skin = skinSkillConfigMap[hero.cur_skill[idx + 1]]
            if skin ~= nil then
                return true, skin.icon
            end
            return true, cfg.skill[idx + 1].icon
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
function HeroSkinManager.prototype.getHeroSkillSkinCfg(self, id, idx, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            if archiveData == nil or archiveData.achieveInfo == nil then
                return true, nil
            end
            local hero = archiveData.playerInfo.heroes["" .. tostring(id)]
            if hero == nil or hero.cur_skill[idx + 1] == 0 then
                return true, nil
            end
            local skin = skinSkillConfigMap[hero.cur_skill[idx + 1]]
            return true, skin
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function HeroSkinManager.prototype.getMercenarySkinCfg(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if datas == nil or datas.players[playerId] == nil then
                return true, nil
            end
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            if archiveData == nil or archiveData.mercenaryInfo == nil or archiveData.mercenaryInfo.skins == nil then
                return true, nil
            end
            local ____opt_21 = archiveData.mercenaryInfo.skins["" .. tostring(id)]
            local cfgId = ____opt_21 and ____opt_21.cur_skin or 0
            local cfg = skinMercenaryConfigMap[cfgId]
            return true, cfg
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function HeroSkinManager.prototype.getSummonSkinCfg(self, id, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if datas == nil or datas.players[playerId] == nil then
                return true, nil
            end
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            if archiveData == nil then
                return true, nil
            end
            local heroId = datas.players[playerId]:getSingle(PlayerData).hero.id
            local hero = archiveData.playerInfo.heroes["" .. tostring(heroId)]
            local summonSkinCfg
            local cfgs = {}
            if hero ~= nil then
                if hero.cur_skill[1] == 0 or hero.cur_skill[2] == 0 or hero.cur_skill[3] == 0 then
                    return true, nil
                end
                __TS__ArrayForEach(
                    hero.cur_skill,
                    function(____, v)
                        local cfg = skinSkillConfigMap[v]
                        if cfg ~= nil and cfg.SkinSummoned ~= nil and #cfg.SkinSummoned > 0 then
                            __TS__ArrayConcat(cfgs, cfg.SkinSummoned)
                        end
                    end
                )
                __TS__ArrayForEach(
                    cfgs,
                    function(____, cfg)
                        if cfg.summonedId.id == id then
                            summonSkinCfg = cfg
                            return
                        end
                    end
                )
            end
            return true, summonSkinCfg
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function HeroSkinManager.prototype.getEffectSkinCfg(self, effectId, playerId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if datas == nil or datas.players[playerId] == nil then
                return true, nil
            end
            local archiveData = datas.players[playerId]:getSingle(InGameArchiveData)
            if archiveData == nil then
                return true, nil
            end
            local heroId = datas.players[playerId]:getSingle(PlayerData).hero.id
            local hero = archiveData.playerInfo.heroes["" .. tostring(heroId)]
            local cfgs = {}
            local skinCfg
            if hero ~= nil then
                __TS__ArrayForEach(
                    hero.cur_skill,
                    function(____, v)
                        local cfg = skinSkillConfigMap[v]
                        if cfg ~= nil then
                            cfgs[#cfgs + 1] = cfg
                        end
                    end
                )
                __TS__ArrayForEach(
                    cfgs,
                    function(____, cfg)
                        if __TS__ArrayFindIndex(
                            cfg.effectsId,
                            function(____, a) return a.id == effectId end
                        ) ~= -1 then
                            skinCfg = cfg
                            return
                        end
                    end
                )
            end
            return true, skinCfg
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
____exports.heroSkinManager = __TS__New(____exports.HeroSkinManager)
return ____exports
