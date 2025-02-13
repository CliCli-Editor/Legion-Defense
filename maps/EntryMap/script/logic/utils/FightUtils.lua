local ____lualib = include("lualib_bundle")
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayIncludes = ____lualib.__TS__ArrayIncludes
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 14,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 18,["41"] = 19,["42"] = 19,["43"] = 20,["44"] = 20,["45"] = 21,["46"] = 21,["52"] = 30,["53"] = 30,["54"] = 30,["56"] = 31,["57"] = 32,["58"] = 34,["59"] = 35,["60"] = 36,["61"] = 37,["62"] = 38,["63"] = 39,["64"] = 40,["66"] = 43,["67"] = 44,["69"] = 47,["70"] = 49,["71"] = 49,["72"] = 49,["73"] = 49,["74"] = 49,["75"] = 49,["76"] = 49,["77"] = 49,["78"] = 49,["79"] = 49,["80"] = 49,["81"] = 49,["82"] = 61,["83"] = 61,["84"] = 61,["85"] = 61,["86"] = 49,["87"] = 49,["88"] = 49,["89"] = 49,["90"] = 49,["91"] = 49,["92"] = 49,["93"] = 68,["94"] = 69,["95"] = 70,["96"] = 71,["97"] = 68,["98"] = 73,["100"] = 76,["101"] = 77,["102"] = 78,["103"] = 79,["104"] = 76,["105"] = 81,["106"] = 81,["107"] = 81,["108"] = 81,["109"] = 81,["110"] = 81,["111"] = 81,["112"] = 81,["113"] = 81,["114"] = 81,["116"] = 30,["117"] = 85,["118"] = 86,["119"] = 87,["120"] = 88,["121"] = 89,["122"] = 89,["123"] = 89,["124"] = 89,["125"] = 89,["126"] = 89,["127"] = 89,["128"] = 90,["129"] = 91,["130"] = 92,["131"] = 93,["132"] = 94,["133"] = 95,["134"] = 96,["135"] = 97,["136"] = 98,["137"] = 99,["138"] = 100,["139"] = 101,["140"] = 101,["141"] = 102,["142"] = 102,["143"] = 102,["144"] = 102,["146"] = 104,["148"] = 106,["150"] = 108,["151"] = 109,["152"] = 110,["153"] = 111,["154"] = 112,["155"] = 113,["156"] = 114,["159"] = 117,["160"] = 118,["161"] = 119,["163"] = 120,["164"] = 120,["165"] = 121,["166"] = 121,["167"] = 121,["168"] = 121,["169"] = 122,["170"] = 123,["172"] = 120,["177"] = 129,["178"] = 130,["179"] = 131,["181"] = 132,["182"] = 132,["183"] = 133,["184"] = 134,["185"] = 135,["187"] = 135,["189"] = 132,["193"] = 138,["195"] = 139,["196"] = 139,["197"] = 140,["198"] = 141,["199"] = 142,["201"] = 142,["203"] = 139,["208"] = 146,["210"] = 146,["212"] = 147,["213"] = 148,["214"] = 149,["215"] = 85,["216"] = 152,["217"] = 153,["218"] = 154,["219"] = 155,["220"] = 156,["221"] = 156,["222"] = 156,["223"] = 156,["224"] = 156,["225"] = 156,["226"] = 156,["227"] = 157,["228"] = 158,["229"] = 159,["230"] = 160,["231"] = 161,["232"] = 162,["233"] = 163,["234"] = 164,["235"] = 165,["236"] = 166,["237"] = 167,["238"] = 168,["239"] = 168,["240"] = 169,["241"] = 169,["242"] = 169,["243"] = 169,["245"] = 171,["247"] = 173,["249"] = 175,["250"] = 176,["251"] = 177,["252"] = 178,["253"] = 179,["254"] = 180,["255"] = 181,["258"] = 184,["259"] = 185,["262"] = 189,["263"] = 190,["264"] = 191,["266"] = 192,["267"] = 192,["268"] = 193,["269"] = 194,["270"] = 195,["272"] = 195,["274"] = 192,["278"] = 198,["280"] = 199,["281"] = 199,["282"] = 200,["283"] = 201,["284"] = 202,["286"] = 202,["288"] = 199,["293"] = 206,["295"] = 206,["297"] = 207,["298"] = 208,["299"] = 209,["300"] = 152,["302"] = 215,["303"] = 216,["304"] = 217,["306"] = 219,["307"] = 215,["308"] = 222,["309"] = 223,["310"] = 224,["311"] = 225,["312"] = 226,["314"] = 228,["315"] = 228,["316"] = 228,["317"] = 228,["318"] = 228,["319"] = 228,["320"] = 228,["321"] = 229,["322"] = 230,["323"] = 231,["329"] = 237,["330"] = 222,["343"] = 253,["344"] = 260,["345"] = 260,["347"] = 265,["348"] = 266,["349"] = 267,["350"] = 268,["352"] = 271,["353"] = 271,["354"] = 271,["355"] = 271,["356"] = 271,["357"] = 271,["358"] = 271,["359"] = 271,["360"] = 271,["361"] = 271,["362"] = 271,["363"] = 271,["364"] = 271,["365"] = 285,["366"] = 253,["375"] = 297,["376"] = 305,["379"] = 308,["380"] = 309,["381"] = 310,["382"] = 311,["384"] = 313,["385"] = 314,["386"] = 315,["387"] = 316,["389"] = 318,["392"] = 322,["393"] = 322,["394"] = 322,["395"] = 322,["396"] = 322,["397"] = 322,["398"] = 322,["399"] = 322,["400"] = 322,["401"] = 322,["402"] = 322,["403"] = 322,["404"] = 336,["405"] = 297,["406"] = 339,["407"] = 340,["408"] = 341,["409"] = 339,["410"] = 345,["411"] = 346,["412"] = 347,["413"] = 348,["414"] = 349,["415"] = 350,["416"] = 350,["417"] = 350,["418"] = 350,["419"] = 350,["420"] = 350,["421"] = 350,["422"] = 350,["423"] = 350,["424"] = 351,["425"] = 351,["426"] = 352,["427"] = 353,["429"] = 355,["430"] = 356,["431"] = 357,["432"] = 358,["433"] = 359,["437"] = 345,["438"] = 365,["439"] = 366,["440"] = 367,["442"] = 369,["443"] = 370,["445"] = 372,["446"] = 373,["447"] = 374,["449"] = 376,["450"] = 377,["451"] = 378,["453"] = 380,["454"] = 365,["455"] = 383,["456"] = 384,["457"] = 384,["458"] = 384,["459"] = 384,["460"] = 385,["461"] = 386,["463"] = 388,["464"] = 383,["465"] = 391,["466"] = 392,["467"] = 392,["468"] = 392,["469"] = 392,["470"] = 393,["471"] = 394,["473"] = 396,["474"] = 397,["475"] = 398,["477"] = 401,["478"] = 402,["480"] = 403,["481"] = 403,["483"] = 404,["484"] = 405,["485"] = 406,["487"] = 408,["488"] = 408,["489"] = 408,["490"] = 408,["491"] = 408,["492"] = 408,["493"] = 408,["494"] = 408,["496"] = 408,["497"] = 408,["498"] = 408,["499"] = 408,["500"] = 408,["501"] = 408,["502"] = 408,["505"] = 403,["508"] = 410,["509"] = 391,["510"] = 413,["511"] = 414,["512"] = 414,["513"] = 414,["514"] = 414,["515"] = 415,["516"] = 416,["518"] = 419,["519"] = 420,["520"] = 421,["522"] = 422,["523"] = 422,["525"] = 423,["526"] = 424,["527"] = 425,["529"] = 427,["530"] = 427,["531"] = 427,["532"] = 427,["533"] = 427,["534"] = 427,["535"] = 427,["536"] = 427,["538"] = 427,["539"] = 427,["540"] = 427,["541"] = 427,["542"] = 427,["543"] = 427,["544"] = 427,["547"] = 422,["550"] = 429,["551"] = 413,["552"] = 432,["553"] = 433,["554"] = 434,["555"] = 435,["557"] = 437,["558"] = 438,["559"] = 432,["560"] = 441,["561"] = 442,["562"] = 443,["563"] = 444,["564"] = 445,["565"] = 446,["566"] = 447,["567"] = 441,["568"] = 450,["569"] = 451,["570"] = 452,["572"] = 454,["573"] = 455,["574"] = 450,["575"] = 458,["576"] = 460,["577"] = 461,["578"] = 462,["579"] = 463,["580"] = 464,["581"] = 465,["582"] = 466,["583"] = 467,["584"] = 468,["586"] = 470,["587"] = 471,["589"] = 474,["590"] = 475,["591"] = 477,["592"] = 458,["593"] = 480,["594"] = 480,["595"] = 480,["596"] = 480,["597"] = 480,["598"] = 480,["599"] = 480,["600"] = 480,["601"] = 480,["602"] = 480,["603"] = 480,["604"] = 480,["605"] = 480,["606"] = 480,["607"] = 480,["608"] = 480,["609"] = 480,["610"] = 480,["611"] = 480});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____Summoned = include("logic.abilities.Summoned")
local _____53EC_5524 = ____Summoned["召唤"]
local _____53EC_5524_4F63_5175 = ____Summoned["召唤佣兵"]
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigList = ____SkinConfig.skinConfigList
local ____SummonedConfig = include("logic.configs.SummonedConfig")
local summonedConfigMap = ____SummonedConfig.summonedConfigMap
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____Property = include("logic.models.Property")
local _____53EC_5524_7269_7C7B_578B = ____Property["召唤物类型"]
local _____6218_573AID = ____Property["战场ID"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local PlayerId = ____PlayerUtils.PlayerId
____exports["护盾类型"] = 护盾类型 or ({})
____exports["护盾类型"]["通用护盾"] = 11
____exports["护盾类型"][____exports["护盾类型"]["通用护盾"]] = "通用护盾"
____exports["护盾类型"]["物理护盾"] = 12
____exports["护盾类型"][____exports["护盾类型"]["物理护盾"]] = "物理护盾"
____exports["护盾类型"]["法术护盾"] = 13
____exports["护盾类型"][____exports["护盾类型"]["法术护盾"]] = "法术护盾"
--- 添加护盾
-- 
-- @param shieldType 护盾类型
-- @param shieldValue 护盾值
-- @param shieldTime 护盾持续时间
function ____exports.addShield(self, unit, source, shieldValue, shieldTime, shieldType)
    if shieldType == nil then
        shieldType = ____exports["护盾类型"]["通用护盾"]
    end
    local effectId = genEffectId(nil)
    local fight = unit.fight
    local propertyId = 53
    if shieldType == ____exports["护盾类型"]["通用护盾"] then
        propertyId = 53
    elseif shieldType == ____exports["护盾类型"]["物理护盾"] then
        propertyId = 54
    elseif shieldType == ____exports["护盾类型"]["法术护盾"] then
        propertyId = 55
    end
    if unit.fight.callbacks ~= nil then
        unit.fight.callbacks:onAddShield(unit, source, propertyId, shieldValue)
    end
    if shieldTime == nil then
        local config = {
            id = effectId,
            name = "自动减层护盾",
            group = {100, 10, shieldType},
            overlay = 2,
            maxQuantity = 0,
            mutexIds = {},
            mutexLogic = 0,
            properties = {propertyId, shieldValue},
            status = {},
            timer = 1,
            canTrigger = function(____, utils, unit, effect) return effect.activeData.times > 0 end,
            doTrigger = function(____, utils, unit, effect) return effect:updateProperties(
                effect,
                53,
                math.ceil(effect:p(53) * 0.9)
            ) end,
            event = {},
            onEvent = nil,
            intercept = {},
            doIntercept = nil,
            endLogic = nil
        }
        fight.report:using(function(____, r)
            r:log((((((r:getSourceName(source) .. "向单位") .. r:getSourceName(unit)) .. " 添加 #dodgerblue 自动减层护盾 id #yellow ") .. tostring(effectId)) .. " 值为 #green ") .. tostring(shieldValue))
            r:getSourceName(source)
            r:getSourceName(unit)
        end)
        return unit:addEffect(source, config, 1)
    else
        fight.report:using(function(____, r)
            r:log((((((r:getSourceName(source) .. "向单位") .. r:getSourceName(unit)) .. " 添加 #dodgerblue 护盾 id #yellow ") .. tostring(effectId)) .. " 值为 #green ") .. tostring(shieldValue))
            r:getSourceName(source)
            r:getSourceName(unit)
        end)
        return unit:addTimeLimitProperties(
            source,
            effectId,
            2,
            {propertyId, shieldValue},
            {},
            {100, 10, shieldType},
            shieldTime,
            1
        )
    end
end
function ____exports.summon(self, owner, id, duration, hpPercent, ____type, limitCount, pos, killOnParentDied)
    local fight = owner.fight
    local percent = hpPercent or 1
    local summonConfig = summonedConfigMap[id]
    local summonParams = _____53EC_5524(
        nil,
        owner,
        summonConfig,
        duration,
        killOnParentDied
    )
    if pos == nil then
        local angle = owner:getAngle()
        local randomAngle = math.random(angle + 90, angle + 270)
        local randomDistance = math.random(300, 500)
        local p = owner:getPosition()
        local ax = p.x
        local ay = p.y
        local vx = math.sin(randomAngle * math.pi / 180)
        local vy = math.cos(randomAngle * math.pi / 180)
        local offsetPoint = {x = ax + vx * randomDistance, y = ay + vy * randomDistance}
        local y3Point = y3.point.create(offsetPoint.x, offsetPoint.y)
        local ____opt_0 = owner.y3Unit
        if (____opt_0 and ____opt_0:can_blink_to(y3Point)) == false then
            offsetPoint = {
                x = owner:getPosition().x,
                y = owner:getPosition().y
            }
        end
        summonParams.pos = {x = offsetPoint.x, y = offsetPoint.y}
    else
        summonParams.pos = pos
    end
    local typeX = ____type or 0
    if limitCount ~= nil then
        local childrens = owner.children
        local countx = 0
        for ____, c in ipairs(childrens) do
            if c:isAlive() and c:getValue(_____53EC_5524_7269_7C7B_578B) == typeX then
                countx = countx + 1
            end
        end
        if countx >= limitCount then
            console:log("召唤物达到上限", id, limitCount, countx)
            local cx = countx - limitCount + 1
            do
                local i = 0
                while i < cx do
                    local index = __TS__ArrayFindIndex(
                        owner.children,
                        function(____, c) return c:isAlive() and c:getValue(_____53EC_5524_7269_7C7B_578B) == typeX end
                    )
                    if index >= 0 then
                        owner.children[index + 1]:destroy(owner)
                    end
                    i = i + 1
                end
            end
        end
    end
    local summonEntity = fight:createUnitEntity(summonParams)
    local skinCfg = heroSkinManager:getSummonSkinCfg(summonConfig.id, owner.playerId)
    if skinCfg ~= nil and skinCfg.changeFrom ~= nil and #skinCfg.changeFrom > 0 and skinCfg.changeTo ~= nil and #skinCfg.changeTo > 0 and #skinCfg.changeTo == #skinCfg.changeFrom then
        do
            local i = 0
            while i < #skinCfg.changeFrom do
                local changeFrom = skinCfg.changeFrom[i + 1]
                local changeTo = skinCfg.changeTo[i + 1]
                local ____opt_2 = summonEntity.y3Unit
                if ____opt_2 ~= nil then
                    ____opt_2:change_animation(changeFrom, changeTo)
                end
                i = i + 1
            end
        end
    else
        if summonConfig.changeFrom ~= nil and #summonConfig.changeFrom > 0 and summonConfig.changeTo ~= nil and #summonConfig.changeTo > 0 and #summonConfig.changeTo == #summonConfig.changeFrom then
            do
                local index = 0
                while index < #summonConfig.changeFrom do
                    local from = summonConfig.changeFrom[index + 1]
                    local to = summonConfig.changeTo[index + 1]
                    local ____opt_4 = summonEntity.y3Unit
                    if ____opt_4 ~= nil then
                        ____opt_4:change_animation(from, to)
                    end
                    index = index + 1
                end
            end
        end
    end
    local ____opt_6 = summonEntity.y3Unit
    if ____opt_6 ~= nil then
        ____opt_6:set_hp(summonEntity:formula(1005) * percent)
    end
    summonEntity:setValue(_____53EC_5524_7269_7C7B_578B, typeX)
    owner:genStatistics("自己召唤次数")
    return summonEntity
end
function ____exports.summonMercenary(self, owner, id, duration, hpPercent, ____type, limitCount, pos, killOnParentDied)
    local fight = owner.fight
    local percent = hpPercent or 1
    local summonConfig = mercenaryConfigMap[id]
    local summonParams = _____53EC_5524_4F63_5175(
        nil,
        owner,
        summonConfig,
        duration,
        killOnParentDied
    )
    if pos == nil then
        local angle = owner:getAngle()
        local randomAngle = math.random(angle + 90, angle + 270)
        local randomDistance = math.random(300, 500)
        local p = owner:getPosition()
        local ax = p.x
        local ay = p.y
        local vx = math.sin(randomAngle * math.pi / 180)
        local vy = math.cos(randomAngle * math.pi / 180)
        local offsetPoint = {x = ax + vx * randomDistance, y = ay + vy * randomDistance}
        local y3Point = y3.point.create(offsetPoint.x, offsetPoint.y)
        local ____opt_8 = owner.y3Unit
        if (____opt_8 and ____opt_8:can_blink_to(y3Point)) == false then
            offsetPoint = {
                x = owner:getPosition().x,
                y = owner:getPosition().y
            }
        end
        summonParams.pos = {x = offsetPoint.x, y = offsetPoint.y}
    else
        summonParams.pos = pos
    end
    local typeX = ____type or 0
    if limitCount ~= nil then
        local childrens = owner.children
        local countx = 0
        for ____, c in ipairs(childrens) do
            if c:isAlive() and c:getValue(_____53EC_5524_7269_7C7B_578B) == typeX then
                countx = countx + 1
            end
        end
        if countx >= limitCount then
            return nil
        end
    end
    local summonEntity = fight:createUnitEntity(summonParams)
    local skinCfg = heroSkinManager:getMercenarySkinCfg(summonConfig.id, owner.playerId)
    if skinCfg ~= nil and skinCfg.changeFrom ~= nil and #skinCfg.changeFrom > 0 and skinCfg.changeTo ~= nil and #skinCfg.changeTo > 0 and #skinCfg.changeTo == #skinCfg.changeFrom then
        do
            local i = 0
            while i < #skinCfg.changeFrom do
                local changeFrom = skinCfg.changeFrom[i + 1]
                local changeTo = skinCfg.changeTo[i + 1]
                local ____opt_10 = summonEntity.y3Unit
                if ____opt_10 ~= nil then
                    ____opt_10:change_animation(changeFrom, changeTo)
                end
                i = i + 1
            end
        end
    else
        if summonConfig.changeFrom ~= nil and #summonConfig.changeFrom > 0 and summonConfig.changeTo ~= nil and #summonConfig.changeTo > 0 and #summonConfig.changeTo == #summonConfig.changeFrom then
            do
                local index = 0
                while index < #summonConfig.changeFrom do
                    local from = summonConfig.changeFrom[index + 1]
                    local to = summonConfig.changeTo[index + 1]
                    local ____opt_12 = summonEntity.y3Unit
                    if ____opt_12 ~= nil then
                        ____opt_12:change_animation(from, to)
                    end
                    index = index + 1
                end
            end
        end
    end
    local ____opt_14 = summonEntity.y3Unit
    if ____opt_14 ~= nil then
        ____opt_14:set_hp(summonEntity:formula(1005) * percent)
    end
    summonEntity:setValue(_____53EC_5524_7269_7C7B_578B, typeX)
    owner:genStatistics("自己召唤次数")
    return summonEntity
end
--- 获取单位祖先
function ____exports.getAncestor(self, unit)
    while (unit and unit.parent) ~= nil do
        unit = unit.parent
    end
    return unit
end
function ____exports.getHeroFromMercenary(self, unit)
    if unit ~= nil then
        local playerId = unit.playerId
        if datas ~= nil and datas.players[playerId] ~= nil and datas.players[playerId]:getSingle(UnitData) then
            unit = datas.players[playerId]:getSingle(UnitData):getWritableEntity()
        else
            local targets = unit:findTargets(
                {"友军"},
                nil,
                nil,
                0,
                2000
            )
            for ____, t in ipairs(targets) do
                if t:checkTag(UnitTag["玩家英雄"]) then
                    unit = t
                    break
                end
            end
        end
    end
    return unit
end
--- 添加粒子效果
-- 
-- @param 粒子ID 特效id
-- @param 目标 点
-- @param 角度 方向
-- @param 缩放 缩放
-- @param 持续时间 持续时间
-- @param 高度 高度，只有当 `target` 的类型为点时有效
-- @param 插槽 特效挂节点，只有当 `target` 的类型为单位时有效
-- @param 跟随旋转模式 跟随单位旋转的模式，只有当 `target` 的类型为单位时有效
-- @param 跟随缩放 是否跟随单位缩放，只有当 `target` 的类型为单位时有效
-- @param 是否立即销毁 销毁时，是否有过度
function ____exports.addParticle(self, _____7C92_5B50ID, _____76EE_6807, _____89D2_5EA6, _____7F29_653E, _____6301_7EED_65F6_95F4, _____9AD8_5EA6, _____63D2_69FD, _____8DDF_968F_65CB_8F6C_6A21_5F0F, _____8DDF_968F_7F29_653E, _____662F_5426_7ACB_5373_9500_6BC1)
    if _____63D2_69FD == nil then
        _____63D2_69FD = "hit_point"
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    elseif _____76EE_6807.x ~= nil then
        _____76EE_6807 = y3.point.create(_____76EE_6807.x, _____76EE_6807.y)
    end
    local particle = y3.particle.create({
        type = _____7C92_5B50ID,
        target = _____76EE_6807,
        angle = _____89D2_5EA6,
        scale = _____7F29_653E,
        time = _____6301_7EED_65F6_95F4,
        height = _____9AD8_5EA6,
        socket = _____63D2_69FD,
        follow_rotation = _____8DDF_968F_65CB_8F6C_6A21_5F0F,
        follow_scale = _____8DDF_968F_7F29_653E,
        immediate = _____662F_5426_7ACB_5373_9500_6BC1,
        detach = nil
    })
    return particle
end
--- 添加链接效果
-- 
-- @param 粒子ID 特效id
-- @param 时间 持续时间
-- @param source 源
-- @param target 目标
-- @param source_height 源高度，只有当 `source` 的类型为点时有效
-- @param target_height 目标高度，只有当 `target` 的类型为点时有效
function ____exports.addBeamLink(self, _____7C92_5B50ID, _____65F6_95F4, source, target, source_height, target_height)
    if source == nil or target == nil then
        return
    end
    if source.activeData ~= nil then
        source = source.y3Unit
    elseif source.x ~= nil then
        source = y3.point.create(source.x, source.y)
    end
    if target.activeData ~= nil then
        target = target.y3Unit
    elseif target.x ~= nil then
        source = y3.point.create(target.x, target.y)
    end
    if source == nil or target == nil then
        return
    end
    local beamLink = y3.beam.create({
        key = _____7C92_5B50ID,
        source = source,
        target = target,
        source_socket = "hit_point",
        source_height = source_height,
        target_socket = "hit_point",
        target_height = target_height,
        time = _____65F6_95F4,
        immediate = false,
        follow_scale = nil
    })
    return beamLink
end
function ____exports.randomList(self, itemList)
    local index = math.floor(math.random() * #itemList)
    return itemList[index + 1]
end
function ____exports.removeRandomDebuff(self, source, unit, reduceIds, reducePercent)
    local effects = unit:findOwnedEffects({20})
    if effects and #effects > 0 then
        local effect = ____exports.randomList(nil, effects)
        if effect ~= nil then
            ____exports.addParticle(
                nil,
                101960,
                unit:getPosition(),
                nil,
                1,
                1,
                10
            )
            local ____opt_18 = reduceIds
            if not (____opt_18 and __TS__ArrayIncludes(reduceIds, effect.id)) then
                console:log("净化移除effect", effect.id)
                effect:remove(source)
            else
                console:log("净化减少effect层数", effect.id, reducePercent)
                console:log("净化前层数", effect.activeData.quantity)
                local p = reducePercent or 1
                effect:modifyQuantity(source, effect.activeData.quantity * -1 * p)
                console:log("净化后层数", effect.activeData.quantity)
            end
        end
    end
end
function ____exports.getTotalWoodCost(self, playerId)
    if playerId == PlayerId.LEFT_KING or playerId == PlayerId.RIGHT_KING or playerId == PlayerId.NEUTRAL_AND_FRIENDLY or playerId == PlayerId.NEUTRAL_AND_HOSTILE or playerId == PlayerId.OBSERVER or playerId == PlayerId.JUDGE then
        return 0
    end
    if datas == nil or datas.players == nil or datas.players[playerId] == nil then
        return 0
    end
    local playerStatisticsData = datas.players[playerId]:getSingle(PlayerStatisticsData)
    if playerStatisticsData == nil then
        return 0
    end
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    if playerData == nil then
        return 0
    end
    return math.max(playerStatisticsData.wood - playerData.wood, 0)
end
function ____exports.getSkillSkinParticleIds(self, unit, skillIndex)
    local cfg = __TS__ArrayFind(
        skinConfigList,
        function(____, a) return a.role == unit.roleId end
    )
    if cfg == nil or cfg.skillEffect == nil or cfg.skillEffect[skillIndex + 1] == nil then
        return {}
    end
    return cfg.skillEffect[skillIndex + 1].particleId
end
function ____exports.getMercenarySkinAnimeArgs(self, unit)
    local cfg = __TS__ArrayFind(
        mercenaryConfigList,
        function(____, a) return a.name == unit:getName() end
    )
    if cfg == nil then
        return {}
    end
    local skinCfg = heroSkinManager:getMercenarySkinCfg(cfg.id, unit.playerId)
    if skinCfg == nil or skinCfg.animeArgs == nil then
        return {}
    end
    local l = #skinCfg.animeArgs
    local ret = {}
    do
        local i = 0
        while i < l do
            do
                local aniName, playSpeed, startTime, endTime, loop = table.unpack(skinCfg.animeArgs[i + 1])
                if aniName == nil then
                    goto __continue81
                end
                local ____ret_25 = ret
                local ____aniName_21 = aniName
                local ____temp_22 = playSpeed or 1
                local ____temp_23 = startTime or 0
                local ____temp_24 = endTime or -1
                local ____loop_20 = loop
                if ____loop_20 == nil then
                    ____loop_20 = false
                end
                ____ret_25[#____ret_25 + 1] = {
                    aniName = ____aniName_21,
                    playSpeed = ____temp_22,
                    startTime = ____temp_23,
                    endTime = ____temp_24,
                    loop = ____loop_20
                }
            end
            ::__continue81::
            i = i + 1
        end
    end
    return ret
end
function ____exports.getHeroSkinAnimeArgs(self, unit)
    local skinCfg = __TS__ArrayFind(
        skinConfigList,
        function(____, a) return a.role == unit.roleId end
    )
    if skinCfg == nil or skinCfg.animeArgs == nil then
        return {}
    end
    local l = #skinCfg.animeArgs
    console:log("获取皮肤动画参数", unit.roleId, l)
    local ret = {}
    do
        local i = 0
        while i < l do
            do
                local aniName, playSpeed, startTime, endTime, loop = table.unpack(skinCfg.animeArgs[i + 1])
                if aniName == nil then
                    goto __continue86
                end
                local ____ret_31 = ret
                local ____aniName_27 = aniName
                local ____temp_28 = playSpeed or 1
                local ____temp_29 = startTime or 0
                local ____temp_30 = endTime or -1
                local ____loop_26 = loop
                if ____loop_26 == nil then
                    ____loop_26 = false
                end
                ____ret_31[#____ret_31 + 1] = {
                    aniName = ____aniName_27,
                    playSpeed = ____temp_28,
                    startTime = ____temp_29,
                    endTime = ____temp_30,
                    loop = ____loop_26
                }
            end
            ::__continue86::
            i = i + 1
        end
    end
    return ret
end
function ____exports.getGolds(self, playerId)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    if playerData == nil then
        return 0
    end
    local gold = playerData.gold or 0
    return math.max(0, gold)
end
function ____exports.getKingDefenceState(self, unit)
    local battleGroundId = unit:getValue(_____6218_573AID)
    local leftIdMax = 3
    local rightIdMin = 5
    local isLeftKingDefence = battleGroundId == BattleGroundId.LEFT_KING and unit.playerId <= leftIdMax
    local isRightKingDefence = battleGroundId == BattleGroundId.RIGHT_KING and unit.playerId >= rightIdMin
    return isLeftKingDefence or isRightKingDefence
end
function ____exports.getGenreTags(self, unit, genreId)
    if datas == nil or datas.players == nil then
        return 0
    end
    local playerGenre = datas.players[unit.playerId]:getSingle(PlayerGenreData)
    return playerGenre and playerGenre.genreTagCount[genreId] or 0
end
function ____exports.offsetPoint(self, _____521D_59CB_70B9, _____65CB_8F6C_89D2_5EA6, _____504F_79FB)
    local ax = 0
    local ay = 0
    if _____521D_59CB_70B9.activeData ~= nil then
        local p = _____521D_59CB_70B9:getPosition()
        ax = p.x
        ay = p.y
    elseif _____521D_59CB_70B9.get_x ~= nil then
        ax = _____521D_59CB_70B9:get_x()
        ay = _____521D_59CB_70B9:get_y()
    else
        ax = _____521D_59CB_70B9.x
        ay = _____521D_59CB_70B9.y
    end
    local vx = math.sin(_____65CB_8F6C_89D2_5EA6 * math.pi / 180)
    local vy = math.cos(_____65CB_8F6C_89D2_5EA6 * math.pi / 180)
    return {x = ax + vx * _____504F_79FB, y = ay + vy * _____504F_79FB}
end
____exports.fightUtils = {
    addShield = ____exports.addShield,
    summon = ____exports.summon,
    getAncestor = ____exports.getAncestor,
    getHeroFromMercenary = ____exports.getHeroFromMercenary,
    addParticle = ____exports.addParticle,
    addBeamLink = ____exports.addBeamLink,
    summonMercenary = ____exports.summonMercenary,
    randomList = ____exports.randomList,
    removeRandomDebuff = ____exports.removeRandomDebuff,
    getTotalWoodCost = ____exports.getTotalWoodCost,
    getSkillSkinParticleIds = ____exports.getSkillSkinParticleIds,
    getMercenarySkinAnimeArgs = ____exports.getMercenarySkinAnimeArgs,
    getHeroSkinAnimeArgs = ____exports.getHeroSkinAnimeArgs,
    getGolds = ____exports.getGolds,
    getKingDefenceState = ____exports.getKingDefenceState,
    getGenreTags = ____exports.getGenreTags,
    offsetPoint = ____exports.offsetPoint
}
return ____exports
