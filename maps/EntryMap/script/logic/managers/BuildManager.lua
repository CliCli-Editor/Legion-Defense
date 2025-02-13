local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 15,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 19,["50"] = 22,["51"] = 22,["52"] = 22,["54"] = 24,["55"] = 26,["56"] = 28,["57"] = 37,["58"] = 38,["59"] = 200,["60"] = 22,["61"] = 40,["62"] = 41,["63"] = 41,["64"] = 41,["65"] = 41,["66"] = 42,["69"] = 44,["70"] = 45,["73"] = 46,["76"] = 47,["79"] = 48,["80"] = 49,["81"] = 50,["82"] = 54,["84"] = 56,["85"] = 56,["86"] = 56,["87"] = 56,["88"] = 57,["89"] = 61,["92"] = 41,["93"] = 41,["94"] = 65,["95"] = 65,["96"] = 65,["97"] = 65,["98"] = 65,["99"] = 65,["100"] = 70,["101"] = 70,["102"] = 70,["103"] = 70,["104"] = 70,["105"] = 40,["106"] = 75,["107"] = 76,["110"] = 79,["111"] = 80,["112"] = 81,["115"] = 84,["116"] = 85,["117"] = 86,["118"] = 87,["119"] = 88,["120"] = 75,["121"] = 91,["122"] = 92,["125"] = 93,["126"] = 94,["127"] = 95,["128"] = 96,["131"] = 99,["132"] = 91,["133"] = 102,["134"] = 103,["135"] = 104,["136"] = 105,["137"] = 107,["138"] = 108,["139"] = 102,["140"] = 111,["141"] = 112,["142"] = 113,["143"] = 114,["144"] = 115,["145"] = 116,["147"] = 118,["148"] = 119,["149"] = 120,["151"] = 122,["152"] = 123,["153"] = 124,["155"] = 126,["156"] = 127,["157"] = 128,["158"] = 129,["160"] = 131,["161"] = 132,["162"] = 133,["164"] = 135,["165"] = 111,["166"] = 138,["167"] = 139,["168"] = 140,["169"] = 141,["170"] = 142,["171"] = 143,["172"] = 144,["173"] = 145,["175"] = 148,["177"] = 151,["180"] = 154,["181"] = 155,["182"] = 156,["183"] = 157,["184"] = 158,["186"] = 160,["187"] = 160,["188"] = 160,["189"] = 160,["190"] = 160,["191"] = 160,["194"] = 163,["195"] = 163,["196"] = 163,["197"] = 163,["198"] = 163,["199"] = 163,["201"] = 165,["202"] = 165,["203"] = 165,["204"] = 166,["205"] = 167,["206"] = 165,["207"] = 165,["208"] = 140,["209"] = 171,["210"] = 172,["211"] = 172,["212"] = 172,["213"] = 173,["214"] = 174,["215"] = 172,["216"] = 172,["217"] = 171,["218"] = 138,["219"] = 178,["220"] = 179,["221"] = 180,["222"] = 181,["223"] = 182,["224"] = 178,["225"] = 185,["226"] = 186,["227"] = 187,["228"] = 188,["229"] = 189,["230"] = 185,["231"] = 192,["232"] = 193,["233"] = 194,["234"] = 195,["235"] = 196,["236"] = 192,["237"] = 201,["238"] = 203,["239"] = 204,["240"] = 205,["242"] = 208,["243"] = 209,["244"] = 210,["245"] = 211,["247"] = 213,["249"] = 215,["250"] = 217,["251"] = 218,["253"] = 201,["254"] = 222,["255"] = 224,["256"] = 225,["257"] = 226,["259"] = 228,["260"] = 229,["261"] = 230,["262"] = 231,["264"] = 233,["265"] = 222,["266"] = 236,["267"] = 236,["268"] = 241,["270"] = 242,["271"] = 242,["272"] = 243,["273"] = 244,["274"] = 245,["275"] = 242,["278"] = 247,["279"] = 248,["280"] = 249,["282"] = 251,["283"] = 252,["284"] = 253,["285"] = 254,["286"] = 255,["287"] = 256,["288"] = 241,["289"] = 258,["290"] = 259,["291"] = 260,["292"] = 261,["293"] = 262,["294"] = 263,["296"] = 265,["297"] = 266,["298"] = 267,["299"] = 268,["300"] = 269,["303"] = 272,["304"] = 258,["305"] = 275,["306"] = 276,["307"] = 277,["308"] = 278,["309"] = 279,["310"] = 280,["312"] = 282,["313"] = 283,["314"] = 284,["315"] = 285,["316"] = 286,["319"] = 289,["320"] = 275,["321"] = 292,["322"] = 293,["323"] = 294,["324"] = 295,["325"] = 296,["326"] = 297,["328"] = 299,["330"] = 301,["331"] = 302,["333"] = 304,["334"] = 305,["335"] = 306,["336"] = 292,["337"] = 308,["338"] = 309,["339"] = 310,["340"] = 311,["341"] = 312,["342"] = 313,["344"] = 315,["345"] = 316,["347"] = 319,["348"] = 320,["349"] = 321,["350"] = 308,["355"] = 31,["359"] = 325});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____MercenaryController = include("logic.controllers.MercenaryController")
local mercenaryController = ____MercenaryController.mercenaryController
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameRandomEventType = ____GameData.GameRandomEventType
local GameStatus = ____GameData.GameStatus
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
local ____EffectUtils = include("logic.utils.EffectUtils")
local EffectUtils = ____EffectUtils.EffectUtils
local ____GridUtils = include("logic.utils.GridUtils")
local GridUtils = ____GridUtils.GridUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
____exports.BuildManager = __TS__Class()
local BuildManager = ____exports.BuildManager
BuildManager.name = "BuildManager"
function BuildManager.prototype.____constructor(self)
    self.cfgId = -1
    self.unitId = 0
    self.building = false
    self.wait_a_frame = false
    self.effectList = {}
    self.blinkEffect = nil
end
function BuildManager.prototype.init(self)
    LOCAL.PLAYER:event(
        "鼠标-按下单位",
        y3.const.MouseKey.LEFT,
        function(trg, data)
            if not self.building then
                return
            end
            local gameData = datas.global:getSingle(GameData)
            if gameData.gameStatus ~= GameStatus["准备回合"] then
                return
            end
            if data.player.id ~= LOCAL.PLAYER_ID then
                return
            end
            if self.wait_a_frame then
                return
            end
            console:log("鼠标-按下单位")
            local hero = LOCAL.PLAYER_DATA:getSingle(UnitData)
            if data.unit.id == (hero and hero.entity.y3Unit.id) then
                self:buildWithId(data.unit.id)
            else
                local unitdata = __TS__ArrayFind(
                    LOCAL.PLAYER_DATA:getAll(UnitData),
                    function(____, a) return a.entity.y3Unit.id == data.unit.id and a.type == UnitType.MERCENARY end
                )
                if unitdata ~= nil then
                    self:buildWithId(data.unit.id)
                end
            end
        end
    )
    LOCAL.PLAYER:event(
        "鼠标-抬起单位",
        y3.const.MouseKey.LEFT,
        function(trg, data)
        end
    )
    LOCAL.PLAYER:event(
        "鼠标-移动",
        function(trg, data)
        end
    )
end
function BuildManager.prototype.build(self, cfgId)
    if not self:check(cfgId) then
        return
    end
    local pos = GridUtils:check(LOCAL.PLAYER_ID, 0, 4, 4)
    if pos == nil then
        DTips:show(i18n["local"](i18n, "没有地方可以创建佣兵了！！！"))
        return
    end
    self.cfgId = cfgId
    self.unitId = 0
    local cfg = mercenaryConfigMap[cfgId]
    uiController.lookAtCenter:execute(LOCAL.PLAYER_ID):catch(function(____, e) return console:error(e) end)
    petController.buildByCfgId:execute(LOCAL.PLAYER_ID, cfg.buildId):catch(function(____, e) return console:error(e) end)
end
function BuildManager.prototype.buildQuickly(self, cfgId)
    if not self:check(cfgId) then
        return
    end
    local cfg = mercenaryConfigMap[cfgId]
    local pos = GridUtils:check(LOCAL.PLAYER_ID, 0, 4, 4)
    if pos == nil then
        DTips:show(i18n["local"](i18n, "没有地方可以创建佣兵了！！！"))
        return
    end
    mercenaryController.hire:execute(LOCAL.PLAYER_ID, cfg.id):catch(function(____, e) return console:error(e) end)
end
function BuildManager.prototype.buildWithId(self, unitId)
    self.unitId = unitId
    self.cfgId = -1
    self:showMovingEffect()
    y3.unit.get_by_id(self.unitId):get_model()
    petController.build:execute(LOCAL.PLAYER_ID, self.unitId)
end
function BuildManager.prototype.check(self, cfgId)
    local gameData = datas.global:getSingle(GameData)
    local cfg = mercenaryConfigMap[cfgId]
    if not self:checkLocked(cfg) then
        DTips:show(self:getLockTips(cfg))
        return false
    end
    if gameData.gameStatus ~= GameStatus["准备回合"] then
        DTips:show(i18n["local"](i18n, "准备阶段才可以雇佣佣兵"))
        return false
    end
    if gameData.mode == GameMode.KOF or gameData.mode == GameMode["兔羊大战"] or gameData.mode == GameMode["三v三混战"] then
        DTips:show(i18n["local"](i18n, "当前回合不可以雇佣佣兵"))
        return false
    end
    local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
    local price = math.floor(cfg.price * (1 + playerData.mercenaryDiscard) + playerData.mercenaryDiscardValue + 0.5)
    if gameData.randomEventType == GameRandomEventType["佣兵狂潮"] then
        price = price * 0.5
    end
    if playerData.wood < price then
        DTips:show(i18n["local"](i18n, "水晶不足"))
        return false
    end
    return true
end
function BuildManager.prototype.startListener(self)
    local pet = LOCAL.PLAYER_DATA:getSingle(PetData)
    pet.build_callback = function(____, point)
        local area = self:getArea()
        self:hideMovingEffect()
        if not area:is_point_in_area(point) then
            local gameData = datas.global:getSingle(GameData)
            if gameData.mode == GameMode["终极大战"] then
            else
                uiController.lookAtCenter:execute(LOCAL.PLAYER_ID)
            end
            DTips:show(i18n["local"](i18n, "超出战斗区域，无法移动"))
            return
        end
        self.wait_a_frame = true
        if self.cfgId > 0 then
            local pos = GridUtils:check(LOCAL.PLAYER_ID, 0, 4, 4)
            if pos == nil then
                DTips:show(i18n["local"](i18n, "没有地方可以创建佣兵了！！！"))
            else
                mercenaryController.hire:execute(
                    LOCAL.PLAYER_ID,
                    self.cfgId,
                    point:get_x(),
                    point:get_y()
                ):catch(function(____, e) return console:error(e) end)
            end
        else
            playerController.moveTo:execute(
                LOCAL.PLAYER_ID,
                self.unitId,
                point:get_x(),
                point:get_y()
            ):catch(function(____, e) return console:error(e) end)
        end
        y3.ltimer.wait_frame(
            2,
            function(t)
                t:remove()
                self.wait_a_frame = false
            end
        )
    end
    pet.select_callback = function()
        y3.ltimer.wait_frame(
            2,
            function(t)
                t:remove()
                self:hideMovingEffect()
            end
        )
    end
end
function BuildManager.prototype.stopListener(self)
    local pet = LOCAL.PLAYER_DATA:getSingle(PetData)
    pet.build_callback = nil
    pet.select_callback = nil
    effectController.remove_buff:execute(self.unitId, 134232984)
end
function BuildManager.prototype.enter(self)
    console:log("building building enter")
    self.building = true
    self:showEffect()
    self:startListener()
end
function BuildManager.prototype.exit(self)
    console:log("building building exit")
    self.building = false
    self:hideEffect()
    self:stopListener()
end
function BuildManager.prototype.showMovingEffect(self)
    if self.blinkEffect ~= nil then
        self.blinkEffect:remove()
        self.blinkEffect = nil
    end
    local gameData = datas.global:getSingle(GameData)
    local pos = self:getPoint()
    if gameData.mode == GameMode["终极大战"] then
        self.blinkEffect = EffectUtils:add(134236778, pos, 0, 1)
    else
        self.blinkEffect = EffectUtils:add(134278181, pos, 0, 1)
    end
    console:log("show effect ")
    if self.unitId ~= nil and self.unitId ~= 0 and y3.unit.get_by_id(self.unitId) ~= nil then
        effectController.add_buff:execute(self.unitId, 134262027)
    end
end
function BuildManager.prototype.hideMovingEffect(self)
    if self.unitId ~= nil and self.unitId ~= 0 and y3.unit.get_by_id(self.unitId) ~= nil then
        effectController.remove_buff:execute(self.unitId, 134262027)
        effectController.remove_buff:execute(self.unitId, 134232984)
    end
    if self.blinkEffect ~= nil then
        self.blinkEffect:set_scale(0, 0, 0)
        self.blinkEffect:remove()
        self.blinkEffect = nil
    end
    console:log("show effect 2")
end
function BuildManager.prototype.showEffect(self)
end
function BuildManager.prototype.hideEffect(self)
    do
        local index = 0
        while index < #self.effectList do
            local element = self.effectList[index + 1]
            element:set_scale(0, 0, 0)
            EffectUtils:remove(element)
            index = index + 1
        end
    end
    if self.blinkEffect ~= nil then
        self.blinkEffect:remove()
        self.blinkEffect = nil
    end
    self.effectList = {}
    mercenaryController.cancelHire:execute(LOCAL.PLAYER_ID)
    mercenaryController.interestTemp:execute(LOCAL.PLAYER_ID, 0):catch(function(____, e) return console:error(e) end)
    local pet = LOCAL.PLAYER_DATA:getSingle(PetData)
    pet.build_callback = nil
    pet.select_callback = nil
end
function BuildManager.prototype.checkLocked(self, cfg)
    if cfg.unlockType == 1 then
        local level = cfg.unlockArgs[1]
        local gameData = datas.global:getSingle(GameData)
        if gameData.level < level then
            return false
        end
    elseif cfg.unlockType == 2 then
        local level = cfg.unlockArgs[1]
        local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
        if playerData.gatherLevel < level then
            return false
        end
    end
    return true
end
function BuildManager.prototype.getLockTips(self, cfg)
    if cfg.unlockType == 1 then
        local level = cfg.unlockArgs[1]
        local gameData = datas.global:getSingle(GameData)
        if gameData.level < level then
            return i18n:format("游戏关卡第${level}关后解锁", {level = level})
        end
    elseif cfg.unlockType == 2 then
        local level = cfg.unlockArgs[1]
        local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
        if playerData.gatherLevel < level then
            return i18n:format("玩家科技等级${level}级后解锁", {level = level})
        end
    end
    return ""
end
function BuildManager.prototype.getPoint(self)
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local areaId
        if player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        else
            areaId = mapConfig["终极大战左边阵营"]
        end
        local area = y3.area.get_rectangle_by_res_id(areaId)
        return area:get_center_point()
    end
    local posId = mapConfig.playerPoints[LOCAL.PLAYER_ID]
    local pos = y3.point.get_point_by_res_id(posId)
    return pos
end
function BuildManager.prototype.getArea(self)
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local areaId = mapConfig["终极大战左边阵营"]
        if player2King[LOCAL.PLAYER_ID] == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        end
        local area = y3.area.get_rectangle_by_res_id(areaId)
        return area
    end
    local areaId = mapConfig["玩家佣兵据点"][LOCAL.PLAYER_ID]
    local area = y3.area.get_rectangle_by_res_id(areaId)
    return area
end
__TS__SetDescriptor(
    BuildManager.prototype,
    "isBuilding",
    {get = function(self)
        return self.building
    end},
    true
)
____exports.buildManager = __TS__New(____exports.BuildManager)
return ____exports
