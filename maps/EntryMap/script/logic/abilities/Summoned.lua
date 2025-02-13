local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 6,["30"] = 6,["31"] = 7,["32"] = 7,["33"] = 8,["34"] = 8,["35"] = 9,["36"] = 9,["37"] = 11,["38"] = 13,["39"] = 13,["40"] = 16,["41"] = 18,["42"] = 19,["43"] = 20,["44"] = 21,["45"] = 22,["46"] = 23,["47"] = 25,["48"] = 27,["49"] = 29,["51"] = 32,["52"] = 34,["55"] = 39,["56"] = 41,["57"] = 42,["59"] = 44,["60"] = 45,["62"] = 47,["63"] = 48,["65"] = 50,["66"] = 51,["68"] = 53,["69"] = 54,["71"] = 56,["72"] = 57,["74"] = 59,["75"] = 60,["77"] = 62,["78"] = 63,["80"] = 65,["81"] = 66,["83"] = 68,["84"] = 69,["86"] = 71,["87"] = 72,["89"] = 74,["90"] = 75,["92"] = 77,["93"] = 78,["95"] = 80,["96"] = 81,["98"] = 83,["100"] = 86,["102"] = 90,["103"] = 91,["104"] = 92,["105"] = 93,["106"] = 94,["107"] = 94,["108"] = 95,["109"] = 96,["110"] = 96,["112"] = 98,["113"] = 98,["115"] = 100,["116"] = 101,["117"] = 102,["118"] = 102,["120"] = 105,["121"] = 107,["122"] = 108,["123"] = 109,["124"] = 109,["125"] = 110,["126"] = 111,["127"] = 111,["128"] = 112,["129"] = 113,["131"] = 116,["132"] = 117,["133"] = 117,["136"] = 121,["137"] = 122,["138"] = 123,["139"] = 123,["142"] = 127,["143"] = 128,["144"] = 128,["145"] = 128,["146"] = 128,["148"] = 128,["149"] = 133,["150"] = 135,["151"] = 137,["152"] = 11,["153"] = 140,["154"] = 143,["155"] = 144,["156"] = 145,["157"] = 145,["158"] = 146,["159"] = 147,["160"] = 148,["161"] = 149,["162"] = 150,["163"] = 151,["164"] = 153,["165"] = 155,["167"] = 158,["168"] = 160,["170"] = 163,["171"] = 164,["172"] = 165,["173"] = 166,["174"] = 167,["175"] = 167,["176"] = 168,["177"] = 169,["178"] = 169,["180"] = 171,["181"] = 171,["183"] = 173,["184"] = 174,["185"] = 175,["186"] = 175,["188"] = 178,["189"] = 180,["190"] = 181,["191"] = 182,["192"] = 182,["193"] = 183,["194"] = 184,["195"] = 184,["196"] = 185,["197"] = 186,["199"] = 189,["200"] = 190,["201"] = 190,["204"] = 194,["205"] = 195,["206"] = 196,["207"] = 196,["209"] = 198,["210"] = 199,["211"] = 199,["214"] = 203,["215"] = 204,["216"] = 204,["217"] = 204,["218"] = 204,["220"] = 204,["221"] = 209,["222"] = 211,["223"] = 213,["224"] = 140,["225"] = 216,["226"] = 217,["229"] = 220,["230"] = 221,["231"] = 222,["232"] = 223,["233"] = 224,["234"] = 225,["236"] = 228,["237"] = 229,["238"] = 230,["239"] = 230,["240"] = 230,["241"] = 230,["242"] = 230,["243"] = 230,["244"] = 230,["245"] = 233,["246"] = 234,["248"] = 216});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____Property = include("logic.models.Property")
local map2numbers = ____Property.map2numbers
local numbers2map = ____Property.numbers2map
local propertyConfig2PropertyNumbers = ____Property.propertyConfig2PropertyNumbers
local _____5355_4F4D_7C7B_578BID = ____Property["单位类型ID"]
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local _____6218_573AID = ____Property["战场ID"]
local _____653B_51FB = ____Property["攻击"]
local _____653B_51FB_901F_5EA6 = ____Property["攻击速度"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6BCF_79D2_56DE_84DD = ____Property["每秒回蓝"]
local _____6BD2_7CFB_6570 = ____Property["毒系数"]
local _____6CD5_672F_4F24_5BB3_62B5_6297 = ____Property["法术伤害抵抗"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_4F24_5BB3_62B5_6297 = ____Property["物理伤害抵抗"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____79FB_52A8_901F_5EA6 = ____Property["移动速度"]
local _____95EA_907F_7387 = ____Property["闪避率"]
local _____989D_5916_66B4_51FB_4F24_5BB3 = ____Property["额外暴击伤害"]
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local getFactions = ____PlayerUtils.getFactions
____exports["召唤"] = function(self, owner, config, limitExistTime, killOnParentDied)
    local ____opt_0 = datas.players[owner.playerId]
    local playerData = ____opt_0 and ____opt_0:getSingle(PlayerData)
    local params = owner:clone()
    local skinCfg = heroSkinManager:getSummonSkinCfg(config.id, owner.playerId)
    params.roleId = skinCfg ~= nil and skinCfg.role or config.role
    params.normalSkills = {}
    params.commandSkills = {}
    params.heroSkills = {}
    params.simpleSKills = {}
    local ownerPropertyMap = numbers2map(nil, params.baseProperties)
    if config.level ~= 0 then
        params.level = config.level
    end
    if config.property ~= nil then
        params.baseProperties = propertyConfig2PropertyNumbers(nil, config.property, params.level)
    end
    do
        local proMap = numbers2map(nil, params.baseProperties)
        if config.hpChange ~= 0 then
            proMap[_____57FA_7840_8840_91CF_4E0A_9650] = ownerPropertyMap[_____57FA_7840_8840_91CF_4E0A_9650] * config.hpChange
        end
        if config.attackChange ~= 0 then
            proMap[_____653B_51FB] = ownerPropertyMap[_____653B_51FB] * config.attackChange
        end
        if config.criticalChange ~= 0 then
            proMap[_____66B4_51FB_7387] = ownerPropertyMap[_____66B4_51FB_7387] * config.criticalChange
        end
        if config.extraCriticalChange ~= 0 then
            proMap[_____989D_5916_66B4_51FB_4F24_5BB3] = ownerPropertyMap[_____989D_5916_66B4_51FB_4F24_5BB3] * config.extraCriticalChange
        end
        if config.missChange ~= 0 then
            proMap[_____95EA_907F_7387] = ownerPropertyMap[_____95EA_907F_7387] * config.missChange
        end
        if config.atkSpeedChange ~= 0 then
            proMap[_____653B_51FB_901F_5EA6] = ownerPropertyMap[_____653B_51FB_901F_5EA6] * config.atkSpeedChange
        end
        if config.physicalDefChange ~= 0 then
            proMap[_____7269_7406_4F24_5BB3_62B5_6297] = ownerPropertyMap[_____7269_7406_4F24_5BB3_62B5_6297] * config.physicalDefChange
        end
        if config.magicDefChange ~= 0 then
            proMap[_____6CD5_672F_4F24_5BB3_62B5_6297] = ownerPropertyMap[_____6CD5_672F_4F24_5BB3_62B5_6297] * config.magicDefChange
        end
        if config.mpRecoverChange ~= 0 then
            proMap[_____6BCF_79D2_56DE_84DD] = ownerPropertyMap[_____6BCF_79D2_56DE_84DD] * config.mpRecoverChange
        end
        if config.moveSpeedChange ~= 0 then
            proMap[_____79FB_52A8_901F_5EA6] = ownerPropertyMap[_____79FB_52A8_901F_5EA6] * config.moveSpeedChange
        end
        if config.apAttackChange ~= 0 then
            proMap[_____6CD5_672F_653B_51FB] = ownerPropertyMap[_____6CD5_672F_653B_51FB] * config.apAttackChange
        end
        if config.defChange ~= 0 then
            proMap[_____7269_7406_9632_5FA1] = ownerPropertyMap[_____7269_7406_9632_5FA1] * config.defChange
        end
        if config.apDefChange ~= 0 then
            proMap[_____6CD5_672F_9632_5FA1] = ownerPropertyMap[_____6CD5_672F_9632_5FA1] * config.apDefChange
        end
        if config.poisonChange ~= 0 then
            proMap[_____6BD2_7CFB_6570] = ownerPropertyMap[_____6BD2_7CFB_6570] * config.poisonChange
        else
            proMap[_____6BD2_7CFB_6570] = ownerPropertyMap[_____6BD2_7CFB_6570]
        end
        params.baseProperties = map2numbers(nil, proMap)
    end
    params.tags = {UnitTag["召唤物"]}
    params.defaultValues[_____5355_4F4D_7C7B_578BID] = UnitOrder.MONSTER
    local factions = getFactions(nil, owner.playerId)
    if factions == -1 then
        local ____params_tags_2 = params.tags
        ____params_tags_2[#____params_tags_2 + 1] = UnitTag["派系A"]
    elseif factions == 1 then
        local ____params_tags_3 = params.tags
        ____params_tags_3[#____params_tags_3 + 1] = UnitTag["派系B"]
    else
        local ____params_tags_4 = params.tags
        ____params_tags_4[#____params_tags_4 + 1] = UnitTag["中立敌对"]
    end
    local battleGroundId = owner.activeData.values[_____6218_573AID]
    if battleGroundId ~= 0 and battleGroundId ~= nil then
        local ____params_tags_5 = params.tags
        ____params_tags_5[#____params_tags_5 + 1] = "战场" .. tostring(battleGroundId)
    end
    params.effects = {}
    for ____, skill in ipairs(config.skills) do
        if skill.skillPos == 1 then
            local ____params_normalSkills_6 = params.normalSkills
            ____params_normalSkills_6[#____params_normalSkills_6 + 1] = skill.abilityName
        elseif skill.skillPos == 2 then
            local ____params_commandSkills_7 = params.commandSkills
            ____params_commandSkills_7[#____params_commandSkills_7 + 1] = skill.abilityName
        elseif skill.skillPos == 3 then
            params.simpleSKills[skill.abilityName] = 1
        end
        for ____, effect in ipairs(skill.effects) do
            local ____params_effects_8 = params.effects
            ____params_effects_8[#____params_effects_8 + 1] = {id = effect.id, quantity = 1}
        end
    end
    if playerData ~= nil then
        for ____, buff in ipairs(playerData.membersBuff) do
            local ____params_effects_9 = params.effects
            ____params_effects_9[#____params_effects_9 + 1] = {id = buff, quantity = 1}
        end
    end
    params.limitExistTime = limitExistTime
    local ____params_11 = params
    local ____killOnParentDied_10 = killOnParentDied
    if ____killOnParentDied_10 == nil then
        ____killOnParentDied_10 = true
    end
    ____params_11.killOnParentDied = ____killOnParentDied_10
    params.destroyOnDied = true
    params.destroyParticle = {particleId = 134219616, duration = 1, scale = 1}
    return params
end
____exports["召唤佣兵"] = function(self, owner, config, limitExistTime, killOnParentDied)
    local params = owner:clone()
    local playerId = owner.playerId
    local ____opt_12 = datas.players[playerId]
    local playerData = ____opt_12 and ____opt_12:getSingle(PlayerData)
    local skinCfg = heroSkinManager:getMercenarySkinCfg(config.id, playerId)
    params.roleId = skinCfg ~= nil and skinCfg.role or config.role
    params.normalSkills = {}
    params.commandSkills = {}
    params.heroSkills = {}
    params.simpleSKills = {}
    if config.level ~= 0 then
        params.level = config.level
    end
    if config.property ~= nil then
        params.baseProperties = propertyConfig2PropertyNumbers(nil, config.property, params.level)
    end
    params.tags = {UnitTag["召唤物"]}
    params.defaultValues[_____5355_4F4D_7C7B_578BID] = UnitOrder.MONSTER
    local factions = getFactions(nil, owner.playerId)
    if factions == -1 then
        local ____params_tags_14 = params.tags
        ____params_tags_14[#____params_tags_14 + 1] = UnitTag["派系A"]
    elseif factions == 1 then
        local ____params_tags_15 = params.tags
        ____params_tags_15[#____params_tags_15 + 1] = UnitTag["派系B"]
    else
        local ____params_tags_16 = params.tags
        ____params_tags_16[#____params_tags_16 + 1] = UnitTag["中立敌对"]
    end
    local battleGroundId = owner.activeData.values[_____6218_573AID]
    if battleGroundId ~= 0 and battleGroundId ~= nil then
        local ____params_tags_17 = params.tags
        ____params_tags_17[#____params_tags_17 + 1] = "战场" .. tostring(battleGroundId)
    end
    params.effects = {}
    for ____, skill in ipairs(config.skill) do
        if skill.skillPos == 1 then
            local ____params_normalSkills_18 = params.normalSkills
            ____params_normalSkills_18[#____params_normalSkills_18 + 1] = skill.abilityName
        elseif skill.skillPos == 2 then
            local ____params_commandSkills_19 = params.commandSkills
            ____params_commandSkills_19[#____params_commandSkills_19 + 1] = skill.abilityName
        elseif skill.skillPos == 3 then
            params.simpleSKills[skill.abilityName] = 1
        end
        for ____, effect in ipairs(skill.effects) do
            local ____params_effects_20 = params.effects
            ____params_effects_20[#____params_effects_20 + 1] = {id = effect.id, quantity = 1}
        end
    end
    if playerData ~= nil then
        for ____, buff in ipairs(playerData.membersBuff) do
            local ____params_effects_21 = params.effects
            ____params_effects_21[#____params_effects_21 + 1] = {id = buff, quantity = 1}
        end
        for ____, buff in ipairs(playerData.mercenaryMemberBuff) do
            local ____params_effects_22 = params.effects
            ____params_effects_22[#____params_effects_22 + 1] = {id = buff, quantity = 1}
        end
    end
    params.limitExistTime = limitExistTime
    local ____params_24 = params
    local ____killOnParentDied_23 = killOnParentDied
    if ____killOnParentDied_23 == nil then
        ____killOnParentDied_23 = true
    end
    ____params_24.killOnParentDied = ____killOnParentDied_23
    params.destroyOnDied = true
    params.destroyParticle = {particleId = 134219616, duration = 1, scale = 1}
    return params
end
function ____exports.refreshBattleGroundIdFromParent(self, unit)
    if unit.parent == nil then
        return
    end
    local oldBattleGroundId = unit.activeData.values[_____6218_573AID]
    local newBattleGroundId = unit.parent.activeData.values[_____6218_573AID]
    local oldTag = "战场" .. tostring(oldBattleGroundId or "无")
    local newTag = "战场" .. tostring(newBattleGroundId)
    if oldBattleGroundId ~= nil then
        unit:removeTag(unit, oldTag)
    end
    unit.activeData.values[_____6218_573AID] = newBattleGroundId
    unit:addTag(unit, newTag)
    console:log(
        unit:getName(),
        "战场改变",
        oldTag,
        "->",
        newTag
    )
    for ____, child in ipairs(unit.children) do
        ____exports.refreshBattleGroundIdFromParent(nil, child)
    end
end
return ____exports
