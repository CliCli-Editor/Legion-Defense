local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 16,["40"] = 16,["41"] = 17,["42"] = 17,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["48"] = 19,["49"] = 20,["50"] = 19,["51"] = 39,["52"] = 40,["53"] = 41,["54"] = 39,["55"] = 44,["56"] = 45,["57"] = 46,["58"] = 47,["59"] = 52,["61"] = 54,["63"] = 44,["64"] = 62,["65"] = 63,["66"] = 62,["67"] = 66,["68"] = 67,["69"] = 68,["70"] = 68,["71"] = 69,["72"] = 70,["75"] = 73,["76"] = 74,["78"] = 76,["79"] = 76,["81"] = 76,["82"] = 76,["84"] = 76,["85"] = 77,["88"] = 66,["89"] = 82,["90"] = 83,["92"] = 83,["93"] = 83,["95"] = 83,["96"] = 84,["97"] = 84,["99"] = 84,["101"] = 85,["103"] = 82,["104"] = 90,["105"] = 91,["106"] = 92,["107"] = 93,["109"] = 99,["110"] = 91,["111"] = 101,["112"] = 101,["114"] = 101,["116"] = 90,["117"] = 104,["118"] = 105,["119"] = 106,["120"] = 106,["121"] = 106,["122"] = 107,["123"] = 108,["124"] = 109,["126"] = 111,["127"] = 106,["128"] = 106,["129"] = 113,["130"] = 113,["131"] = 113,["132"] = 113,["133"] = 113,["134"] = 113,["135"] = 114,["136"] = 115,["137"] = 116,["139"] = 118,["140"] = 113,["141"] = 113,["142"] = 120,["143"] = 104,["144"] = 123,["145"] = 123,["146"] = 127,["147"] = 128,["148"] = 128,["149"] = 128,["150"] = 129,["151"] = 128,["152"] = 128,["153"] = 133,["154"] = 133,["155"] = 133,["156"] = 134,["157"] = 134,["159"] = 135,["160"] = 135,["162"] = 136,["163"] = 137,["164"] = 137,["166"] = 138,["167"] = 133,["168"] = 133,["169"] = 140,["170"] = 140,["171"] = 140,["172"] = 141,["173"] = 141,["175"] = 142,["176"] = 142,["178"] = 143,["179"] = 144,["180"] = 144,["182"] = 145,["183"] = 140,["184"] = 140,["185"] = 147,["186"] = 147,["187"] = 147,["188"] = 148,["189"] = 148,["191"] = 149,["192"] = 149,["194"] = 150,["195"] = 151,["196"] = 151,["198"] = 152,["199"] = 147,["200"] = 147,["201"] = 154,["202"] = 154,["203"] = 154,["204"] = 155,["205"] = 155,["207"] = 156,["208"] = 156,["210"] = 157,["211"] = 158,["212"] = 158,["214"] = 159,["215"] = 154,["216"] = 154,["217"] = 161,["218"] = 161,["219"] = 161,["220"] = 162,["221"] = 162,["223"] = 163,["224"] = 163,["226"] = 164,["227"] = 165,["228"] = 165,["230"] = 166,["231"] = 161,["232"] = 161,["233"] = 168,["234"] = 168,["235"] = 168,["236"] = 169,["237"] = 169,["239"] = 170,["240"] = 170,["242"] = 171,["243"] = 172,["244"] = 172,["246"] = 173,["247"] = 168,["248"] = 168,["249"] = 176,["250"] = 176,["251"] = 176,["252"] = 177,["253"] = 177,["255"] = 178,["256"] = 178,["258"] = 179,["259"] = 180,["260"] = 180,["262"] = 181,["263"] = 181,["264"] = 181,["265"] = 176,["266"] = 176,["267"] = 184,["268"] = 184,["269"] = 184,["270"] = 185,["271"] = 185,["273"] = 186,["274"] = 186,["276"] = 187,["277"] = 188,["278"] = 188,["280"] = 189,["281"] = 190,["282"] = 190,["283"] = 190,["285"] = 190,["287"] = 190,["288"] = 190,["289"] = 190,["291"] = 190,["292"] = 191,["293"] = 191,["295"] = 192,["296"] = 192,["298"] = 194,["299"] = 194,["300"] = 184,["301"] = 184,["302"] = 197,["303"] = 197,["304"] = 197,["305"] = 198,["306"] = 198,["308"] = 199,["309"] = 199,["311"] = 200,["312"] = 201,["313"] = 201,["315"] = 202,["316"] = 197,["317"] = 197,["318"] = 204,["319"] = 204,["320"] = 204,["321"] = 205,["322"] = 205,["324"] = 206,["325"] = 206,["327"] = 207,["328"] = 208,["329"] = 208,["331"] = 209,["332"] = 204,["333"] = 204,["334"] = 211,["335"] = 211,["336"] = 211,["337"] = 212,["338"] = 212,["340"] = 213,["341"] = 213,["343"] = 214,["344"] = 215,["345"] = 215,["347"] = 216,["348"] = 211,["349"] = 211,["350"] = 218,["351"] = 218,["352"] = 218,["353"] = 219,["354"] = 219,["356"] = 220,["357"] = 220,["359"] = 221,["360"] = 222,["361"] = 222,["363"] = 223,["364"] = 218,["365"] = 218,["366"] = 127,["367"] = 282,["368"] = 283,["369"] = 283,["370"] = 283,["371"] = 284,["372"] = 283,["373"] = 283,["374"] = 287,["375"] = 288,["376"] = 288,["378"] = 289,["379"] = 289,["381"] = 290,["382"] = 290,["384"] = 291,["385"] = 292,["386"] = 293,["387"] = 293,["388"] = 293,["389"] = 293,["390"] = 294,["392"] = 296,["393"] = 297,["394"] = 298,["395"] = 287,["396"] = 302,["397"] = 302,["398"] = 302,["399"] = 303,["400"] = 303,["402"] = 304,["403"] = 305,["404"] = 305,["406"] = 306,["407"] = 302,["408"] = 302,["409"] = 308,["410"] = 308,["411"] = 308,["412"] = 309,["413"] = 309,["415"] = 310,["416"] = 311,["417"] = 311,["419"] = 312,["420"] = 308,["421"] = 308,["422"] = 314,["423"] = 314,["424"] = 314,["425"] = 315,["426"] = 315,["428"] = 316,["429"] = 317,["430"] = 317,["432"] = 318,["433"] = 314,["434"] = 314,["435"] = 320,["436"] = 320,["437"] = 320,["438"] = 321,["439"] = 321,["441"] = 322,["442"] = 323,["443"] = 323,["445"] = 324,["446"] = 320,["447"] = 320,["448"] = 326,["449"] = 326,["450"] = 326,["451"] = 327,["452"] = 327,["454"] = 328,["455"] = 329,["456"] = 329,["458"] = 330,["459"] = 326,["460"] = 326,["461"] = 332,["462"] = 332,["463"] = 332,["464"] = 333,["465"] = 333,["467"] = 334,["468"] = 335,["469"] = 335,["471"] = 336,["472"] = 332,["473"] = 332,["474"] = 350,["475"] = 350,["476"] = 350,["477"] = 351,["478"] = 351,["480"] = 352,["481"] = 353,["482"] = 353,["484"] = 354,["485"] = 354,["486"] = 354,["487"] = 350,["488"] = 350,["489"] = 357,["490"] = 357,["491"] = 357,["492"] = 358,["493"] = 358,["494"] = 358,["496"] = 359,["497"] = 359,["498"] = 359,["499"] = 359,["500"] = 359,["501"] = 359,["503"] = 359,["504"] = 357,["505"] = 357,["506"] = 362,["507"] = 362,["508"] = 362,["509"] = 363,["510"] = 363,["512"] = 364,["513"] = 365,["514"] = 365,["516"] = 366,["517"] = 362,["518"] = 362,["519"] = 368,["520"] = 368,["521"] = 368,["522"] = 369,["523"] = 369,["525"] = 370,["526"] = 371,["527"] = 371,["529"] = 372,["530"] = 368,["531"] = 368,["532"] = 374,["533"] = 374,["534"] = 374,["535"] = 375,["536"] = 375,["538"] = 376,["539"] = 377,["540"] = 377,["542"] = 378,["543"] = 374,["544"] = 374,["545"] = 380,["546"] = 380,["547"] = 380,["548"] = 381,["549"] = 381,["551"] = 382,["552"] = 383,["553"] = 383,["555"] = 384,["556"] = 380,["557"] = 380,["558"] = 282,["559"] = 478,["560"] = 479,["561"] = 479,["562"] = 479,["563"] = 480,["564"] = 482,["565"] = 483,["566"] = 484,["567"] = 481,["568"] = 486,["569"] = 479,["570"] = 487,["571"] = 488,["572"] = 479,["573"] = 479,["574"] = 478,["575"] = 491,["576"] = 492,["577"] = 492,["578"] = 492,["579"] = 493,["580"] = 494,["581"] = 495,["584"] = 496,["585"] = 496,["586"] = 496,["587"] = 496,["588"] = 496,["589"] = 501,["590"] = 502,["593"] = 505,["594"] = 492,["595"] = 506,["596"] = 507,["597"] = 492,["598"] = 492,["599"] = 491});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap_role = ____SkinConfig.skinConfigMap_role
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____EquipData = include("logic.models.EquipData")
local EquipData = ____EquipData.EquipData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local _____84DD = ____Property["蓝"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2King = ____PlayerUtils.player2King
local ____DEquipInfo = include("logic.dialogs.infos.DEquipInfo")
local DEquipInfo = ____DEquipInfo.DEquipInfo
local ____DSelfTalentInfo = include("logic.dialogs.infos.DSelfTalentInfo")
local DSelfTalentInfo = ____DSelfTalentInfo.DSelfTalentInfo
____exports.DOtherInfo = __TS__Class()
local DOtherInfo = ____exports.DOtherInfo
DOtherInfo.name = "DOtherInfo"
__TS__ClassExtends(DOtherInfo, Dialog)
function DOtherInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {playerId = 0, isHero = false, unitData = nil}}
end
function DOtherInfo.prototype.onCreate(self)
    self:initHeroInfoView()
    self:initMonsterInfoView()
end
function DOtherInfo.show(self, playerId, unitData, isHero)
    if dialogs:isShowed(____exports.DOtherInfo) then
        dialogs:get(____exports.DOtherInfo):removeListener()
        dialogs:get(____exports.DOtherInfo).data.params = {playerId = playerId, isHero = isHero, unitData = unitData}
        dialogs:get(____exports.DOtherInfo):addListener()
    else
        dialogs:show(____exports.DOtherInfo, {playerId = playerId, isHero = isHero, unitData = unitData})
    end
end
function DOtherInfo.hide(self)
    dialogs:hide(____exports.DOtherInfo)
end
function DOtherInfo.hideEnemyHero(self)
    if dialogs:isShowed(____exports.DOtherInfo) then
        local ____opt_0 = dialogs:get(____exports.DOtherInfo).data.params
        local playerId = ____opt_0 and ____opt_0.playerId
        if playerId == nil then
            self:hide()
            return
        end
        if player2King[LOCAL.PLAYER_ID] ~= player2King[playerId] then
            self:hide()
        end
        local ____opt_2 = dialogs:get(____exports.DOtherInfo).data.params
        local ____temp_6 = (____opt_2 and ____opt_2.unitData) == nil
        if not ____temp_6 then
            local ____opt_4 = dialogs:get(____exports.DOtherInfo).data.params
            ____temp_6 = (____opt_4 and ____opt_4.unitData.entity) == nil
        end
        if ____temp_6 then
            self:hide()
        end
    end
end
function DOtherInfo.prototype.removeListener(self)
    local ____temp_9 = self.deathListener ~= nil
    if ____temp_9 then
        local ____opt_7 = self.data.params
        ____temp_9 = (____opt_7 and ____opt_7.unitData) ~= nil
    end
    if ____temp_9 then
        local ____opt_12 = self.data.params
        local ____opt_10 = ____opt_12 and ____opt_12.unitData.entity
        if ____opt_10 ~= nil then
            ____opt_10:off("单位-即将死亡", self.deathListener)
        end
        self.deathListener = nil
    end
end
function DOtherInfo.prototype.addListener(self)
    self.deathListener = function()
        if dialogs:isShowed(____exports.DOtherInfo) then
            dialogs:get(____exports.DOtherInfo).data.params = {playerId = 0, isHero = false, unitData = nil}
        end
        dialogs:hide(____exports.DOtherInfo)
    end
    local ____opt_16 = self.data.params
    local ____opt_14 = ____opt_16 and ____opt_16.unitData.entity
    if ____opt_14 ~= nil then
        ____opt_14:on("单位-即将死亡", self.deathListener)
    end
end
function DOtherInfo.prototype.onShow(self)
    local gameData = datas.global:getSingle(GameData)
    self:watch(
        function() return gameData.gameStatus end,
        function(____, v)
            if v == GameStatus["准备回合"] then
                ____exports.DOtherInfo:hideEnemyHero()
                return true
            end
            return false
        end
    )
    self:watch(
        function()
            local ____opt_18 = self.data.params
            return ____opt_18 and ____opt_18.unitData
        end,
        function(____, v)
            if v == nil or v.entity == nil then
                ____exports.DOtherInfo:hideEnemyHero()
                return true
            end
            return false
        end
    )
    self:addListener()
end
function DOtherInfo.prototype.onHide(self)
end
function DOtherInfo.prototype.initMonsterInfoView(self)
    self:bindVisible(
        "MonsterInfo",
        function()
            return self.data.params.playerId > 0 and not self.data.params.isHero
        end
    )
    self:bindText(
        "MonsterInfo.info.bg2.attr1.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_物理攻击"]) + 0.5))
        end
    )
    self:bindText(
        "MonsterInfo.info.bg2.attr2.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_法术攻击"]) + 0.5))
        end
    )
    self:bindText(
        "MonsterInfo.info.bg3.attr3.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_物理防御"]) + 0.5))
        end
    )
    self:bindText(
        "MonsterInfo.info.bg3.attr4.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_法术防御"]) + 0.5))
        end
    )
    self:bindText(
        "MonsterInfo.info.bg4.attr5.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(unitData.entity:formula(Formula["展示面板_攻速"]) / 100)
        end
    )
    self:bindText(
        "MonsterInfo.info.bg4.attr6.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_闪避"]) * 100 + 0.5)) .. "%"
        end
    )
    self:bindText(
        "MonsterInfo.info.bg1.hero_name",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            if self.data.params.unitData == nil then
                return i18n["local"](i18n, "怪物")
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            local ____opt_22 = unitData.entity
            local ____opt_20 = ____opt_22 and ____opt_22.y3Unit
            return ____opt_20 and ____opt_20:get_name() or i18n["local"](i18n, "怪物")
        end
    )
    self:bindImage(
        "MonsterInfo.info.icon.icon",
        function()
            if self.data.params.playerId <= 0 then
                return 0
            end
            if self.data.params.unitData == nil then
                return 0
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return 0
            end
            if unitData.mercenary ~= nil then
                local ____heroSkinManager_27 = heroSkinManager
                local ____heroSkinManager_getMercenarySkinCfg_28 = heroSkinManager.getMercenarySkinCfg
                local ____opt_24 = unitData.mercenary
                if ____opt_24 ~= nil then
                    ____opt_24 = ____opt_24.id
                end
                local ____opt_24_26 = ____opt_24
                if ____opt_24_26 == nil then
                    ____opt_24_26 = 0
                end
                local cfg = ____heroSkinManager_getMercenarySkinCfg_28(____heroSkinManager_27, ____opt_24_26, self.data.params.playerId)
                if cfg ~= nil then
                    return cfg.icon
                end
                local ____opt_29 = unitData.mercenary
                return ____opt_29 and ____opt_29.icon or 0
            end
            local ____opt_31 = unitData.monster
            return ____opt_31 and ____opt_31.icon or 0
        end
    )
    self:bindText(
        "MonsterInfo.info.hp.cur",
        function()
            if self.data.params.playerId <= 0 then
                return "0/#bbbbbb0"
            end
            if self.data.params.unitData == nil then
                return "0/#bbbbbb0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0/#bbbbbb0"
            end
            return (tostring(math.floor(unitData.entity:v(_____8840) + 0.5)) .. "/#bbbbbb") .. tostring(unitData.entity:formula(Formula["展示面板_血量上限"]))
        end
    )
    self:bindText(
        "MonsterInfo.info.mp.cur",
        function()
            if self.data.params.playerId <= 0 then
                return "0/#bbbbbb100"
            end
            if self.data.params.unitData == nil then
                return "0/#bbbbbb100"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0/#bbbbbb0"
            end
            return tostring(math.floor(unitData.entity:v(_____84DD) + 0.5)) .. "/#bbbbbb100"
        end
    )
    self:bindProgress(
        "MonsterInfo.info.hp",
        function()
            if self.data.params.playerId <= 0 then
                return 0
            end
            if self.data.params.unitData == nil then
                return 0
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return 0
            end
            return math.floor(unitData.entity:v(_____8840) / unitData.entity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindProgress(
        "MonsterInfo.info.mp",
        function()
            if self.data.params.playerId <= 0 then
                return 0
            end
            if self.data.params.unitData == nil then
                return 0
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return 0
            end
            return math.floor(unitData.entity:v(_____84DD) + 0.5)
        end
    )
end
function DOtherInfo.prototype.initHeroInfoView(self)
    self:bindVisible(
        "HeroInfoOther",
        function()
            return self.data.params.playerId > 0 and self.data.params.isHero
        end
    )
    local heroConfig = self:compute(function()
        if self.data.params.playerId <= 0 then
            return nil
        end
        if self.data.params.unitData == nil then
            return nil
        end
        if self.data.params.isHero == nil then
            return nil
        end
        local skinList = skinConfigMap_role[self.data.params.unitData.roleId]
        if skinList == nil then
            local heroConfig = __TS__ArrayFind(
                heroConfigList,
                function(____, a) return a.ban ~= 1 and a.role == self.data.params.unitData.roleId end
            )
            return {heroConfig = heroConfig}
        end
        local skin = skinList[1]
        local hero = heroConfigMap[skin.hero]
        return {heroConfig = hero, skinConfig = skin}
    end)
    self:bindText(
        "HeroInfoOther.info.bg2.attr1.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_物理攻击"]) + 0.5))
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg2.attr2.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_法术攻击"]) + 0.5))
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg3.attr3.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_物理防御"]) + 0.5))
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg3.attr4.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_法术防御"]) + 0.5))
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg4.attr5.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_攻速"]) + 0.5) / 100)
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg4.attr6.value",
        function()
            if self.data.params.playerId <= 0 then
                return "0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0"
            end
            return tostring(math.floor(unitData.entity:formula(Formula["展示面板_闪避"]) * 100 + 0.5)) .. "%"
        end
    )
    self:bindText(
        "HeroInfoOther.info.bg1.hero_name",
        function()
            if self.data.params.playerId <= 0 then
                return ""
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "镜像"
            end
            local ____opt_35 = unitData.entity
            local ____opt_33 = ____opt_35 and ____opt_35.y3Unit
            return ____opt_33 and ____opt_33:get_name() or "镜像"
        end
    )
    self:bindImage(
        "HeroInfoOther.info.icon.icon",
        function()
            local ____opt_37 = heroConfig.value
            if (____opt_37 and ____opt_37.heroConfig) == nil then
                return 0
            end
            local ____opt_41 = heroConfig.value
            local ____opt_39 = ____opt_41 and ____opt_41.skinConfig
            local ____temp_45 = ____opt_39 and ____opt_39.icon
            if ____temp_45 == nil then
                local ____opt_43 = heroConfig.value
                ____temp_45 = ____opt_43 and ____opt_43.heroConfig.icon
            end
            return ____temp_45
        end
    )
    self:bindText(
        "HeroInfoOther.info.hp.cur",
        function()
            if self.data.params.playerId <= 0 then
                return "0/#bbbbbb0"
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return "0/#bbbbbb0"
            end
            return (tostring(math.floor(unitData.entity:v(_____8840) + 0.5)) .. "/#bbbbbb") .. tostring(unitData.entity:formula(Formula["展示面板_血量上限"]))
        end
    )
    self:bindText(
        "HeroInfoOther.info.mp.cur",
        function()
            if self.data.params.playerId <= 0 then
                return "0/#bbbbbb100"
            end
            local unitData = datas.players[self.data.params.playerId]:getSingle(UnitData)
            if unitData == nil or unitData.entity == nil then
                return "0/#bbbbbb100"
            end
            return tostring(math.floor(unitData.entity:v(_____84DD) + 0.5)) .. "/#bbbbbb100"
        end
    )
    self:bindProgress(
        "HeroInfoOther.info.hp",
        function()
            if self.data.params.playerId <= 0 then
                return 0
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return 0
            end
            return math.floor(unitData.entity:v(_____8840) / unitData.entity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindProgress(
        "HeroInfoOther.info.mp",
        function()
            if self.data.params.playerId <= 0 then
                return 0
            end
            local unitData = self.data.params.unitData
            if unitData == nil or unitData.entity == nil then
                return 0
            end
            return math.floor(unitData.entity:v(_____84DD) + 0.5)
        end
    )
end
function DOtherInfo.prototype.talentHelp(self, path)
    self:bindMouse(
        path,
        function()
            local ui = self:getUI(path)
            local ____temp_48 = ui:get_absolute_x() + 600
            local ____temp_49 = ui:get_absolute_y() - 100
            local ____opt_46 = self.data.params
            local params = {x = ____temp_48, y = ____temp_49, playerId = ____opt_46 and ____opt_46.playerId or 0}
            dialogs:show(DSelfTalentInfo, params)
        end,
        function()
            dialogs:hide(DSelfTalentInfo)
        end
    )
end
function DOtherInfo.prototype.equipHelp(self, path, idx)
    self:bindMouse(
        path,
        function()
            local ui = self:getUI(path)
            local list = datas.players[self.data.params.playerId]:getAll(EquipData)
            if #list <= idx then
                return
            end
            local params = {
                x = ui:get_absolute_x() + 145,
                y = ui:get_absolute_y(),
                skillId = list[idx + 1].configId
            }
            if dialogs:isShowed(DEquipInfo) then
                dialogs:get(DEquipInfo).data.params = params
                return
            end
            dialogs:show(DEquipInfo, params)
        end,
        function()
            dialogs:hide(DEquipInfo)
        end
    )
end
return ____exports
