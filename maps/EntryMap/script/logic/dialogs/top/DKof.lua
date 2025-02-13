local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 11,["29"] = 13,["30"] = 13,["31"] = 14,["32"] = 14,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["43"] = 19,["44"] = 20,["45"] = 223,["46"] = 378,["47"] = 395,["48"] = 19,["49"] = 22,["52"] = 32,["55"] = 24,["56"] = 27,["57"] = 28,["58"] = 29,["64"] = 22,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 40,["69"] = 40,["70"] = 40,["71"] = 41,["72"] = 40,["73"] = 40,["74"] = 56,["75"] = 56,["76"] = 56,["77"] = 57,["78"] = 57,["80"] = 58,["81"] = 59,["82"] = 56,["83"] = 56,["84"] = 61,["85"] = 61,["86"] = 61,["87"] = 62,["88"] = 62,["90"] = 63,["91"] = 64,["92"] = 61,["93"] = 61,["94"] = 67,["95"] = 67,["96"] = 67,["97"] = 68,["98"] = 67,["99"] = 67,["100"] = 70,["101"] = 70,["102"] = 70,["103"] = 71,["104"] = 70,["105"] = 70,["106"] = 73,["107"] = 73,["108"] = 73,["109"] = 74,["110"] = 73,["111"] = 73,["112"] = 82,["113"] = 82,["114"] = 82,["115"] = 83,["116"] = 84,["117"] = 84,["119"] = 85,["120"] = 86,["121"] = 86,["123"] = 87,["124"] = 82,["125"] = 82,["126"] = 89,["127"] = 89,["128"] = 89,["129"] = 90,["130"] = 91,["131"] = 91,["133"] = 92,["134"] = 93,["135"] = 93,["137"] = 94,["138"] = 95,["139"] = 95,["140"] = 89,["141"] = 89,["142"] = 98,["143"] = 98,["144"] = 98,["145"] = 99,["146"] = 100,["147"] = 100,["149"] = 101,["150"] = 101,["152"] = 102,["153"] = 103,["154"] = 103,["156"] = 104,["157"] = 105,["158"] = 98,["159"] = 98,["160"] = 108,["161"] = 108,["162"] = 108,["163"] = 109,["164"] = 110,["165"] = 110,["167"] = 111,["168"] = 111,["170"] = 112,["171"] = 113,["172"] = 113,["174"] = 114,["175"] = 116,["176"] = 108,["177"] = 108,["178"] = 119,["179"] = 119,["180"] = 119,["181"] = 120,["182"] = 121,["183"] = 121,["185"] = 122,["186"] = 123,["187"] = 123,["189"] = 124,["190"] = 119,["191"] = 119,["192"] = 126,["193"] = 126,["194"] = 126,["195"] = 127,["196"] = 128,["197"] = 128,["199"] = 129,["200"] = 130,["201"] = 130,["203"] = 131,["204"] = 132,["205"] = 132,["206"] = 126,["207"] = 126,["208"] = 136,["209"] = 136,["210"] = 136,["211"] = 137,["212"] = 138,["213"] = 138,["215"] = 139,["216"] = 139,["218"] = 140,["219"] = 141,["220"] = 141,["222"] = 143,["223"] = 145,["224"] = 136,["225"] = 136,["226"] = 149,["227"] = 149,["228"] = 149,["229"] = 150,["230"] = 151,["231"] = 151,["233"] = 152,["234"] = 152,["236"] = 153,["237"] = 154,["238"] = 154,["240"] = 156,["241"] = 158,["242"] = 149,["243"] = 149,["244"] = 163,["245"] = 163,["246"] = 163,["247"] = 164,["248"] = 165,["249"] = 165,["251"] = 166,["252"] = 167,["253"] = 167,["255"] = 168,["256"] = 163,["257"] = 163,["258"] = 170,["259"] = 170,["260"] = 170,["261"] = 171,["262"] = 172,["263"] = 172,["265"] = 173,["266"] = 174,["267"] = 174,["269"] = 175,["270"] = 170,["271"] = 170,["272"] = 178,["273"] = 178,["274"] = 178,["275"] = 179,["276"] = 180,["277"] = 180,["279"] = 181,["280"] = 182,["281"] = 182,["283"] = 183,["284"] = 178,["285"] = 178,["286"] = 185,["287"] = 185,["288"] = 185,["289"] = 186,["290"] = 187,["291"] = 187,["293"] = 188,["294"] = 189,["295"] = 189,["297"] = 190,["298"] = 185,["299"] = 185,["300"] = 193,["301"] = 193,["302"] = 193,["303"] = 194,["304"] = 195,["305"] = 195,["307"] = 196,["308"] = 193,["309"] = 193,["310"] = 198,["311"] = 198,["312"] = 198,["313"] = 199,["314"] = 200,["315"] = 200,["317"] = 201,["318"] = 198,["319"] = 198,["320"] = 204,["321"] = 204,["322"] = 204,["323"] = 205,["324"] = 206,["325"] = 206,["327"] = 207,["328"] = 204,["329"] = 204,["330"] = 209,["331"] = 209,["332"] = 209,["333"] = 210,["334"] = 211,["335"] = 211,["337"] = 212,["338"] = 209,["339"] = 209,["340"] = 37,["341"] = 216,["342"] = 217,["343"] = 218,["344"] = 218,["345"] = 218,["346"] = 218,["347"] = 219,["348"] = 219,["349"] = 218,["350"] = 218,["351"] = 216,["352"] = 225,["353"] = 226,["354"] = 228,["355"] = 228,["356"] = 228,["357"] = 229,["358"] = 228,["359"] = 228,["360"] = 232,["361"] = 232,["362"] = 232,["363"] = 233,["364"] = 232,["365"] = 232,["366"] = 236,["367"] = 236,["368"] = 236,["369"] = 237,["370"] = 236,["371"] = 236,["372"] = 239,["373"] = 239,["374"] = 239,["375"] = 240,["376"] = 239,["377"] = 239,["378"] = 242,["379"] = 242,["380"] = 242,["381"] = 243,["382"] = 242,["383"] = 242,["384"] = 245,["385"] = 245,["386"] = 245,["387"] = 246,["388"] = 245,["389"] = 245,["390"] = 248,["391"] = 248,["392"] = 248,["393"] = 249,["394"] = 248,["395"] = 248,["396"] = 252,["398"] = 253,["399"] = 253,["400"] = 254,["402"] = 254,["404"] = 255,["406"] = 255,["408"] = 253,["411"] = 252,["412"] = 259,["414"] = 260,["415"] = 260,["416"] = 261,["417"] = 262,["419"] = 264,["420"] = 264,["421"] = 265,["422"] = 266,["423"] = 266,["424"] = 266,["425"] = 267,["426"] = 268,["427"] = 268,["429"] = 269,["430"] = 269,["432"] = 271,["433"] = 271,["435"] = 272,["436"] = 272,["438"] = 274,["439"] = 274,["441"] = 275,["442"] = 275,["444"] = 277,["445"] = 266,["446"] = 266,["447"] = 279,["448"] = 279,["449"] = 279,["450"] = 280,["451"] = 281,["452"] = 281,["454"] = 282,["455"] = 282,["457"] = 284,["458"] = 284,["460"] = 285,["461"] = 285,["463"] = 287,["464"] = 287,["466"] = 288,["467"] = 288,["469"] = 289,["470"] = 289,["472"] = 290,["473"] = 291,["474"] = 279,["475"] = 279,["476"] = 293,["477"] = 293,["478"] = 293,["479"] = 294,["480"] = 295,["481"] = 295,["483"] = 296,["484"] = 296,["486"] = 298,["487"] = 298,["489"] = 299,["490"] = 299,["492"] = 301,["493"] = 301,["495"] = 302,["496"] = 302,["498"] = 303,["499"] = 303,["501"] = 304,["502"] = 305,["503"] = 306,["504"] = 306,["505"] = 293,["506"] = 293,["507"] = 309,["508"] = 309,["509"] = 309,["510"] = 310,["511"] = 309,["512"] = 309,["513"] = 264,["516"] = 260,["520"] = 314,["521"] = 314,["522"] = 315,["523"] = 316,["524"] = 317,["525"] = 317,["526"] = 317,["527"] = 318,["528"] = 318,["529"] = 318,["531"] = 318,["533"] = 318,["534"] = 317,["535"] = 317,["536"] = 320,["537"] = 320,["538"] = 320,["539"] = 321,["540"] = 322,["541"] = 322,["543"] = 323,["544"] = 324,["545"] = 320,["546"] = 320,["547"] = 326,["548"] = 326,["549"] = 326,["550"] = 327,["551"] = 328,["552"] = 328,["554"] = 329,["555"] = 330,["556"] = 331,["557"] = 331,["558"] = 326,["559"] = 326,["560"] = 314,["563"] = 335,["564"] = 336,["565"] = 336,["566"] = 336,["567"] = 336,["568"] = 337,["569"] = 338,["570"] = 336,["571"] = 336,["572"] = 340,["573"] = 340,["574"] = 340,["575"] = 340,["576"] = 341,["577"] = 342,["578"] = 340,["579"] = 340,["580"] = 344,["581"] = 344,["582"] = 344,["583"] = 344,["584"] = 345,["585"] = 346,["586"] = 344,["587"] = 344,["589"] = 349,["590"] = 349,["591"] = 349,["592"] = 349,["593"] = 350,["594"] = 351,["595"] = 349,["596"] = 349,["597"] = 353,["598"] = 353,["599"] = 353,["600"] = 353,["601"] = 354,["602"] = 355,["603"] = 353,["604"] = 353,["605"] = 357,["606"] = 357,["607"] = 357,["608"] = 357,["609"] = 358,["610"] = 359,["611"] = 357,["612"] = 357,["614"] = 225,["615"] = 367,["616"] = 368,["617"] = 369,["618"] = 369,["619"] = 369,["620"] = 369,["621"] = 370,["622"] = 370,["623"] = 369,["624"] = 369,["625"] = 367,["626"] = 374,["627"] = 375,["628"] = 374,["629"] = 379,["630"] = 380,["631"] = 381,["632"] = 381,["633"] = 381,["634"] = 382,["635"] = 384,["636"] = 385,["637"] = 386,["638"] = 386,["639"] = 386,["640"] = 386,["642"] = 388,["643"] = 388,["644"] = 388,["645"] = 388,["648"] = 381,["649"] = 381,["650"] = 379,["651"] = 396,["652"] = 397,["653"] = 399,["654"] = 399,["655"] = 399,["656"] = 400,["657"] = 401,["659"] = 404,["661"] = 399,["662"] = 399,["663"] = 407,["664"] = 407,["665"] = 407,["666"] = 407,["668"] = 409,["669"] = 409,["670"] = 410,["671"] = 411,["672"] = 411,["673"] = 411,["674"] = 412,["675"] = 411,["676"] = 411,["677"] = 409,["680"] = 416,["681"] = 416,["682"] = 416,["683"] = 417,["684"] = 418,["685"] = 418,["687"] = 419,["688"] = 420,["689"] = 420,["691"] = 421,["692"] = 416,["693"] = 416,["694"] = 423,["695"] = 423,["696"] = 423,["697"] = 424,["698"] = 425,["699"] = 425,["701"] = 426,["702"] = 427,["703"] = 427,["705"] = 428,["706"] = 423,["707"] = 423,["708"] = 396,["709"] = 432,["710"] = 434,["713"] = 438,["714"] = 439,["715"] = 439,["716"] = 439,["717"] = 439,["718"] = 440,["719"] = 440,["720"] = 439,["721"] = 439,["722"] = 432,["723"] = 444,["724"] = 445,["725"] = 444});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____KofController = include("logic.controllers.KofController")
local kofController = ____KofController.kofController
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local ____KofData = include("logic.models.KofData")
local KofData = ____KofData.KofData
local KofMode = ____KofData.KofMode
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
____exports.DKof = __TS__Class()
local DKof = ____exports.DKof
DKof.name = "DKof"
__TS__ClassExtends(DKof, Dialog)
function DKof.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.selectTime = vue.ref(15)
    self.winnerTime = vue.ref(0)
    self.roundTime = vue.ref(0)
end
function DKof.prototype.onCreate(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:initTop()
            self:initSelect()
            self:initWinner()
            self:initRound()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function DKof.prototype.initTop(self)
    local gameData = datas.global:getSingle(GameData)
    local kofData = datas.global:getSingle(KofData)
    self:bindVisible(
        "KofLevelInfo",
        function()
            return gameData.mode == GameMode.KOF
        end
    )
    self:bindProgress(
        "KofLevelInfo.left.hp",
        function()
            if kofData.teamAFightId == nil or kofData.teamAFightId == 0 then
                return 100
            end
            local unitData = datas.players[kofData.teamAFightId]:getSingle(UnitData)
            return math.floor(unitData.entity:v(_____8840) / unitData.entity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindProgress(
        "KofLevelInfo.right.hp",
        function()
            if kofData.teamBFightId == nil or kofData.teamBFightId == 0 then
                return 100
            end
            local unitData = datas.players[kofData.teamBFightId]:getSingle(UnitData)
            return math.floor(unitData.entity:v(_____8840) / unitData.entity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindText(
        "KofLevelInfo.center.time",
        function()
            return tostring(gameLoop.timeLeft.value)
        end
    )
    self:bindVisible(
        "KofLevelInfo.center.fight",
        function()
            return kofData.mode == KofMode["单挑阶段"]
        end
    )
    self:bindVisible(
        "KofLevelInfo.center.ready",
        function()
            return kofData.mode ~= KofMode["单挑阶段"]
        end
    )
    self:bindImage(
        "KofLevelInfo.left.player1.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamARandom == nil or #kofData.teamARandom == 0 then
                return 0
            end
            local id = kofData.teamARandom[kofData.teamAFightPos + 1]
            if id == nil then
                return 0
            end
            return heroSkinManager:getHeroIcon2(id)
        end
    )
    self:bindText(
        "KofLevelInfo.left.heroname",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamARandom == nil or #kofData.teamARandom == 0 then
                return ""
            end
            local id = kofData.teamARandom[kofData.teamAFightPos + 1]
            if id == nil then
                return ""
            end
            local heroA = datas.players[id]:getSingle(UnitData)
            local ____opt_0 = heroA.entity.y3Unit
            return ____opt_0 and ____opt_0:get_name() or ""
        end
    )
    self:bindImage(
        "KofLevelInfo.left.player2.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 2 then
                return 0
            end
            if kofData.teamARandom == nil or #kofData.teamARandom == 0 then
                return 0
            end
            local next = (kofData.teamAFightPos + 1) % #kofData.teamLeft
            if next >= #kofData.teamLeft then
                next = 0
            end
            local playerId = kofData.teamARandom[next + 1]
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindImage(
        "KofLevelInfo.left.player3.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 3 then
                return 0
            end
            if kofData.teamARandom == nil or #kofData.teamARandom == 0 then
                return 0
            end
            local next2 = (kofData.teamAFightPos + 2) % #kofData.teamLeft
            if next2 >= #kofData.teamLeft then
                next2 = 0
            end
            local playerId = kofData.teamARandom[next2 + 1]
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindImage(
        "KofLevelInfo.right.player1.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamBRandom == nil or #kofData.teamBRandom == 0 then
                return 0
            end
            local id = kofData.teamBRandom[kofData.teamBFightPos + 1]
            if id == nil then
                return 0
            end
            return heroSkinManager:getHeroIcon2(id)
        end
    )
    self:bindText(
        "KofLevelInfo.right.heroname",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamBRandom == nil or #kofData.teamBRandom == 0 then
                return ""
            end
            local id = kofData.teamBRandom[kofData.teamBFightPos + 1]
            if id == nil then
                return ""
            end
            local heroB = datas.players[id]:getSingle(UnitData)
            local ____opt_2 = heroB.entity.y3Unit
            return ____opt_2 and ____opt_2:get_name() or ""
        end
    )
    self:bindImage(
        "KofLevelInfo.right.player2.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 2 then
                return 0
            end
            if kofData.teamBRandom == nil or #kofData.teamBRandom == 0 then
                return 0
            end
            local next = (kofData.teamBFightPos + 1) % #kofData.teamRight
            if next >= #kofData.teamRight then
                next = 0
            end
            local playerId = kofData.teamBRandom[next + 1]
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindImage(
        "KofLevelInfo.right.player3.head",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 3 then
                return 0
            end
            if kofData.teamBRandom == nil or #kofData.teamBRandom == 0 then
                return 0
            end
            local next = (kofData.teamBFightPos + 2) % #kofData.teamRight
            if next >= #kofData.teamRight then
                next = 0
            end
            local playerId = kofData.teamBRandom[next + 1]
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindVisible(
        "KofLevelInfo.left.player2.death",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 2 then
                return false
            end
            local next = (kofData.teamAFightPos + 1) % #kofData.teamLeft
            if next >= #kofData.teamLeft then
                next = 0
            end
            return next < kofData.teamAFightPos
        end
    )
    self:bindVisible(
        "KofLevelInfo.left.player3.death",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 3 then
                return false
            end
            local next = (kofData.teamAFightPos + 2) % #kofData.teamLeft
            if next >= #kofData.teamLeft then
                next = 0
            end
            return next < kofData.teamAFightPos
        end
    )
    self:bindVisible(
        "KofLevelInfo.right.player2.death",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 2 then
                return false
            end
            local next = (kofData.teamBFightPos + 1) % #kofData.teamRight
            if next >= #kofData.teamRight then
                next = 0
            end
            return next < kofData.teamBFightPos
        end
    )
    self:bindVisible(
        "KofLevelInfo.right.player3.death",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 3 then
                return false
            end
            local next = (kofData.teamBFightPos + 2) % #kofData.teamRight
            if next >= #kofData.teamRight then
                next = 0
            end
            return next < kofData.teamBFightPos
        end
    )
    self:bindVisible(
        "KofLevelInfo.left.player2",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 2 then
                return false
            end
            return true
        end
    )
    self:bindVisible(
        "KofLevelInfo.left.player3",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamLeft < 3 then
                return false
            end
            return true
        end
    )
    self:bindVisible(
        "KofLevelInfo.right.player2",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 2 then
                return false
            end
            return true
        end
    )
    self:bindVisible(
        "KofLevelInfo.right.player3",
        function()
            local kofData = datas.global:getSingle(KofData)
            if #kofData.teamRight < 3 then
                return false
            end
            return true
        end
    )
end
function DKof.prototype.showSelect(self)
    self.selectTime.value = 15
    y3.ltimer.loop_count(
        1,
        15,
        function()
            local ____self_selectTime_4, ____value_5 = self.selectTime, "value"
            ____self_selectTime_4[____value_5] = ____self_selectTime_4[____value_5] - 1
        end
    )
end
function DKof.prototype.initSelect(self)
    local kofData = datas.global:getSingle(KofData)
    self:bindVisible(
        "select",
        function()
            return kofData.mode == KofMode["选人阶段"]
        end
    )
    self:watch(
        function() return kofData.mode == KofMode["选人阶段"] end,
        function(____, v)
            self:showSelect()
        end
    )
    self:bindVisible(
        "select.left",
        function()
            return player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING
        end
    )
    self:bindVisible(
        "select.right",
        function()
            return player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING
        end
    )
    self:bindVisible(
        "select.left_hide",
        function()
            return player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING
        end
    )
    self:bindVisible(
        "select.right_hide",
        function()
            return player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING
        end
    )
    self:bindText(
        "select.time.time",
        function()
            return tostring(self.selectTime.value)
        end
    )
    local function hideTips()
        do
            local i = 1
            while i <= 3 do
                local ____opt_6 = self:getUI(("select.left.seat" .. tostring(i)) .. ".tips")
                if ____opt_6 ~= nil then
                    ____opt_6:set_visible(false)
                end
                local ____opt_8 = self:getUI(("select.right.seat" .. tostring(i)) .. ".tips")
                if ____opt_8 ~= nil then
                    ____opt_8:set_visible(false)
                end
                i = i + 1
            end
        end
    end
    local isLeft = player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING
    do
        local index = 0
        while index < 3 do
            local idx = index
            local seat = (("select." .. (isLeft and "left" or "right")) .. ".seat") .. tostring(idx + 1)
            do
                local j = 0
                while j < 3 do
                    local jdx = j
                    self:bindVisible(
                        (seat .. ".list.player") .. tostring(jdx + 1),
                        function()
                            local data = kofData.seatLeft1
                            if idx == 0 and isLeft then
                                data = kofData.seatLeft1
                            end
                            if idx == 0 and not isLeft then
                                data = kofData.seatRight1
                            end
                            if idx == 1 and isLeft then
                                data = kofData.seatLeft2
                            end
                            if idx == 1 and not isLeft then
                                data = kofData.seatRight2
                            end
                            if idx == 2 and isLeft then
                                data = kofData.seatLeft3
                            end
                            if idx == 2 and not isLeft then
                                data = kofData.seatRight3
                            end
                            return #data > jdx
                        end
                    )
                    self:bindImage(
                        ((seat .. ".list.player") .. tostring(jdx + 1)) .. ".head",
                        function()
                            local data = kofData.seatLeft1
                            if idx == 0 and isLeft then
                                data = kofData.seatLeft1
                            end
                            if idx == 0 and not isLeft then
                                data = kofData.seatRight1
                            end
                            if idx == 1 and isLeft then
                                data = kofData.seatLeft2
                            end
                            if idx == 1 and not isLeft then
                                data = kofData.seatRight2
                            end
                            if idx == 2 and isLeft then
                                data = kofData.seatLeft3
                            end
                            if idx == 2 and not isLeft then
                                data = kofData.seatRight3
                            end
                            if #data <= jdx then
                                return 0
                            end
                            local playerId = data[jdx + 1]
                            return heroSkinManager:getHeroIcon2(playerId)
                        end
                    )
                    self:bindText(
                        ((seat .. ".list.player") .. tostring(jdx + 1)) .. ".name",
                        function()
                            local data = kofData.seatLeft1
                            if idx == 0 and isLeft then
                                data = kofData.seatLeft1
                            end
                            if idx == 0 and not isLeft then
                                data = kofData.seatRight1
                            end
                            if idx == 1 and isLeft then
                                data = kofData.seatLeft2
                            end
                            if idx == 1 and not isLeft then
                                data = kofData.seatRight2
                            end
                            if idx == 2 and isLeft then
                                data = kofData.seatLeft3
                            end
                            if idx == 2 and not isLeft then
                                data = kofData.seatRight3
                            end
                            if #data <= jdx then
                                return ""
                            end
                            local playerId = data[jdx + 1]
                            local unitData = datas.players[playerId]:getSingle(UnitData)
                            local ____opt_10 = unitData.entity.y3Unit
                            return ____opt_10 and ____opt_10:get_name() or ""
                        end
                    )
                    self:bindText(
                        seat .. ".tips",
                        function()
                            return i18n["local"](i18n, "点击决定出战顺序")
                        end
                    )
                    j = j + 1
                end
            end
            index = index + 1
        end
    end
    do
        local index = 0
        while index < 3 do
            local idx = index
            local seat = (("select." .. (isLeft and "right_hide" or "left_hide")) .. ".players.player") .. tostring(idx + 1)
            self:bindVisible(
                seat,
                function()
                    local ____isLeft_12
                    if isLeft then
                        ____isLeft_12 = #kofData.teamRight > idx
                    else
                        ____isLeft_12 = #kofData.teamLeft > idx
                    end
                    return ____isLeft_12
                end
            )
            self:bindImage(
                seat .. ".head",
                function()
                    local data = isLeft and kofData.teamRight or kofData.teamLeft
                    if #data <= idx then
                        return 0
                    end
                    local playerId = data[idx + 1]
                    return heroSkinManager:getHeroIcon2(playerId)
                end
            )
            self:bindText(
                seat .. ".name",
                function()
                    local data = isLeft and kofData.teamRight or kofData.teamLeft
                    if #data <= idx then
                        return ""
                    end
                    local playerId = data[idx + 1]
                    local unitData = datas.players[playerId]:getSingle(UnitData)
                    local ____opt_13 = unitData.entity.y3Unit
                    return ____opt_13 and ____opt_13:get_name() or ""
                end
            )
            index = index + 1
        end
    end
    if player2King[LOCAL.PLAYER_ID] == BattleGroundId.LEFT_KING then
        self:bindAction(
            "select.left.seat1",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 1)
                hideTips(nil)
            end
        )
        self:bindAction(
            "select.left.seat2",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 2)
                hideTips(nil)
            end
        )
        self:bindAction(
            "select.left.seat3",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 3)
                hideTips(nil)
            end
        )
    else
        self:bindAction(
            "select.right.seat1",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 1)
                hideTips(nil)
            end
        )
        self:bindAction(
            "select.right.seat2",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 2)
                hideTips(nil)
            end
        )
        self:bindAction(
            "select.right.seat3",
            "左键-点击",
            function()
                kofController.selectSeat:execute(LOCAL.PLAYER_ID, 3)
                hideTips(nil)
            end
        )
    end
end
function DKof.prototype.showWinner(self)
    self.winnerTime.value = 3
    y3.ltimer.loop_count(
        1,
        3,
        function()
            local ____self_winnerTime_15, ____value_16 = self.winnerTime, "value"
            ____self_winnerTime_15[____value_16] = ____self_winnerTime_15[____value_16] - 1
        end
    )
end
function DKof.prototype.hideWinner(self)
    self.winnerTime.value = 0
end
function DKof.prototype.initWinner(self)
    local kofData = datas.global:getSingle(KofData)
    self:watch(
        function() return #kofData.deathList end,
        function(____, cur, old)
            if #kofData.deathList > 0 then
                local player = y3.player.get_by_id(kofData.winner)
                if player2King[kofData.winner] == player2King[LOCAL.PLAYER_ID] then
                    DTips:showInGame(i18n:format(
                        "我方玩家${name}对决获胜，我方全队获得200金币",
                        {name = player:get_name()}
                    ))
                else
                    DTips:showInGame(i18n:format(
                        "敌方玩家${name}对决获胜，敌方全队获得200金币",
                        {name = player:get_name()}
                    ))
                end
            end
        end
    )
end
function DKof.prototype.initRound(self)
    local kofData = datas.global:getSingle(KofData)
    self:watch(
        function() return kofData.kofRound end,
        function(____, cur, old)
            if cur > 0 then
                self:showRound()
            else
                self.roundTime.value = 0
            end
        end
    )
    self:bindVisible(
        "round",
        function() return self.roundTime.value > 0 end
    )
    do
        local index = 0
        while index < 7 do
            local k = index + 1
            self:bindVisible(
                "round.round_" .. tostring(k),
                function()
                    return self.data.params.round == k
                end
            )
            index = index + 1
        end
    end
    self:bindImage(
        "round.left.icon",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamBRandom == nil or not #kofData.teamARandom then
                return 0
            end
            local heroAPlayerId = kofData.teamARandom[kofData.teamAFightPos + 1]
            if not heroAPlayerId then
                return 0
            end
            return heroSkinManager:getHeroIcon2(heroAPlayerId)
        end
    )
    self:bindImage(
        "round.right.icon",
        function()
            local kofData = datas.global:getSingle(KofData)
            if kofData.teamBRandom == nil or not #kofData.teamBRandom then
                return 0
            end
            local heroBPlayerId = kofData.teamBRandom[kofData.teamBFightPos + 1]
            if not heroBPlayerId then
                return 0
            end
            return heroSkinManager:getHeroIcon2(heroBPlayerId)
        end
    )
end
function DKof.prototype.showRound(self)
    if not gameLoop.isExit then
        return
    end
    self.roundTime.value = 3
    y3.ltimer.loop_count(
        1,
        3,
        function()
            local ____self_roundTime_17, ____value_18 = self.roundTime, "value"
            ____self_roundTime_17[____value_18] = ____self_roundTime_17[____value_18] - 1
        end
    )
end
function DKof.prototype.hideRound(self)
    self.roundTime.value = 0
end
return ____exports
