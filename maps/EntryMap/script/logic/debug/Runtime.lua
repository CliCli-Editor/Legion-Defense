local ____lualib = include("lualib_bundle")
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 279,["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 27,["26"] = 28,["27"] = 28,["28"] = 28,["29"] = 33,["30"] = 33,["31"] = 33,["32"] = 33,["33"] = 33,["34"] = 33,["35"] = 33,["36"] = 33,["37"] = 33,["38"] = 33,["39"] = 28,["40"] = 44,["41"] = 44,["42"] = 44,["43"] = 44,["44"] = 44,["45"] = 44,["46"] = 28,["47"] = 28,["48"] = 52,["49"] = 27,["50"] = 55,["51"] = 56,["52"] = 57,["53"] = 57,["54"] = 57,["55"] = 57,["56"] = 69,["57"] = 55,["58"] = 72,["59"] = 73,["60"] = 74,["61"] = 74,["62"] = 74,["63"] = 77,["64"] = 77,["65"] = 77,["66"] = 78,["67"] = 78,["68"] = 80,["69"] = 81,["70"] = 81,["71"] = 82,["72"] = 82,["73"] = 82,["74"] = 83,["75"] = 83,["76"] = 83,["77"] = 86,["78"] = 86,["79"] = 86,["80"] = 86,["81"] = 83,["82"] = 82,["83"] = 81,["84"] = 78,["85"] = 78,["86"] = 92,["87"] = 77,["88"] = 74,["89"] = 74,["90"] = 74,["91"] = 97,["92"] = 72,["93"] = 100,["94"] = 101,["95"] = 102,["96"] = 102,["97"] = 102,["98"] = 105,["99"] = 105,["100"] = 105,["101"] = 106,["102"] = 106,["103"] = 108,["104"] = 109,["105"] = 109,["106"] = 110,["107"] = 110,["108"] = 110,["109"] = 111,["110"] = 111,["111"] = 111,["112"] = 114,["113"] = 114,["114"] = 114,["115"] = 114,["116"] = 111,["117"] = 110,["118"] = 109,["119"] = 106,["120"] = 106,["121"] = 120,["122"] = 105,["123"] = 102,["124"] = 102,["125"] = 102,["126"] = 125,["127"] = 100,["128"] = 128,["129"] = 129,["130"] = 129,["131"] = 129,["132"] = 129,["133"] = 129,["134"] = 129,["135"] = 129,["136"] = 129,["137"] = 129,["138"] = 129,["139"] = 129,["140"] = 129,["141"] = 129,["142"] = 129,["143"] = 129,["144"] = 129,["145"] = 129,["146"] = 129,["147"] = 129,["148"] = 129,["149"] = 129,["150"] = 129,["151"] = 129,["152"] = 129,["153"] = 129,["154"] = 129,["155"] = 129,["156"] = 129,["157"] = 129,["158"] = 170,["159"] = 170,["160"] = 170,["161"] = 173,["162"] = 173,["163"] = 173,["164"] = 174,["165"] = 174,["166"] = 174,["167"] = 174,["168"] = 178,["169"] = 173,["170"] = 170,["171"] = 170,["172"] = 170,["173"] = 183,["174"] = 128,["175"] = 186,["176"] = 187,["177"] = 188,["178"] = 190,["179"] = 190,["180"] = 190,["181"] = 190,["182"] = 191,["183"] = 191,["184"] = 191,["185"] = 191,["186"] = 192,["187"] = 192,["188"] = 192,["189"] = 192,["190"] = 193,["191"] = 193,["192"] = 193,["193"] = 193,["194"] = 195,["195"] = 195,["196"] = 195,["197"] = 198,["198"] = 199,["199"] = 199,["200"] = 200,["201"] = 200,["202"] = 200,["203"] = 201,["204"] = 204,["205"] = 200,["206"] = 199,["207"] = 206,["208"] = 207,["209"] = 207,["210"] = 209,["211"] = 209,["212"] = 209,["213"] = 209,["214"] = 209,["215"] = 209,["216"] = 207,["217"] = 199,["218"] = 198,["219"] = 213,["220"] = 213,["221"] = 214,["222"] = 214,["223"] = 214,["224"] = 216,["225"] = 215,["226"] = 218,["227"] = 214,["228"] = 213,["229"] = 220,["230"] = 221,["231"] = 221,["232"] = 223,["233"] = 223,["234"] = 223,["235"] = 223,["236"] = 223,["237"] = 223,["238"] = 221,["239"] = 213,["240"] = 198,["241"] = 227,["242"] = 227,["243"] = 228,["244"] = 228,["245"] = 228,["246"] = 229,["247"] = 232,["248"] = 228,["249"] = 227,["250"] = 234,["251"] = 235,["252"] = 235,["253"] = 237,["254"] = 237,["255"] = 237,["256"] = 237,["257"] = 237,["258"] = 237,["259"] = 235,["260"] = 227,["261"] = 198,["262"] = 241,["263"] = 241,["264"] = 242,["265"] = 242,["266"] = 242,["267"] = 243,["268"] = 246,["269"] = 242,["270"] = 241,["271"] = 248,["272"] = 249,["273"] = 249,["274"] = 251,["275"] = 251,["276"] = 251,["277"] = 251,["278"] = 251,["279"] = 251,["280"] = 249,["281"] = 241,["282"] = 198,["283"] = 256,["284"] = 256,["285"] = 257,["286"] = 257,["287"] = 257,["288"] = 258,["289"] = 261,["290"] = 257,["291"] = 256,["292"] = 263,["293"] = 264,["294"] = 264,["295"] = 266,["296"] = 266,["297"] = 266,["298"] = 266,["299"] = 266,["300"] = 266,["301"] = 264,["302"] = 256,["303"] = 198,["304"] = 195,["305"] = 195,["306"] = 195,["307"] = 275,["308"] = 186,["309"] = 279,["310"] = 280,["311"] = 282,["312"] = 283,["313"] = 284,["314"] = 286,["315"] = 287,["316"] = 288,["318"] = 290,["320"] = 293,["321"] = 294,["322"] = 294,["323"] = 296,["324"] = 296,["325"] = 296,["326"] = 294,["327"] = 294,["330"] = 311,["331"] = 311,["332"] = 311,["333"] = 311,["334"] = 311,["335"] = 311,["336"] = 325,["338"] = 329,["339"] = 330,["340"] = 332,["341"] = 333,["342"] = 333,["343"] = 333,["344"] = 333,["345"] = 333,["346"] = 334,["347"] = 334,["348"] = 334,["349"] = 334,["351"] = 341,["352"] = 347,["354"] = 350,["355"] = 351,["357"] = 353,["358"] = 353,["359"] = 354,["360"] = 355,["361"] = 353,["364"] = 360,["365"] = 367,["367"] = 370,["368"] = 371,["369"] = 373,["370"] = 374,["372"] = 379,["373"] = 379,["374"] = 379,["375"] = 379,["376"] = 379,["377"] = 379,["378"] = 392,["380"] = 9,["381"] = 10,["382"] = 11,["383"] = 11,["384"] = 13,["385"] = 13,["386"] = 13,["387"] = 11,["388"] = 15,["389"] = 16,["390"] = 16,["391"] = 17,["392"] = 17,["393"] = 17,["394"] = 17,["395"] = 16,["396"] = 11,["397"] = 11,["398"] = 24,["399"] = 9,["400"] = 453,["401"] = 454,["402"] = 454,["403"] = 455,["404"] = 453,["405"] = 458,["406"] = 459,["407"] = 459,["408"] = 460,["409"] = 458,["410"] = 463,["411"] = 464,["412"] = 464,["413"] = 466,["414"] = 466,["415"] = 466,["416"] = 467,["418"] = 467,["421"] = 469,["423"] = 463,["424"] = 473,["425"] = 474,["426"] = 474,["427"] = 475,["428"] = 476,["429"] = 477,["431"] = 479,["432"] = 480,["434"] = 473,["435"] = 484,["436"] = 485,["437"] = 485,["438"] = 486,["439"] = 484,["440"] = 489,["441"] = 490,["442"] = 490,["443"] = 491,["444"] = 489,["445"] = 494,["446"] = 495,["447"] = 495,["448"] = 496,["449"] = 494,["450"] = 499,["451"] = 500,["452"] = 500,["453"] = 501,["454"] = 499,["455"] = 504,["456"] = 505,["457"] = 505,["458"] = 506,["459"] = 507,["461"] = 504});
local ____exports = {}
local genUnitEffects, genUnitStatus, genUnitTag, genStatistics
local ____DebugRoom = include("framework.debug.DebugRoom")
local genButton = ____DebugRoom.genButton
local getSimpleButton = ____DebugRoom.getSimpleButton
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local player2Color = ____PlayerUtils.player2Color
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigList = ____EffectConfig.effectConfigList
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____Property = include("logic.models.Property")
local PropertiesList = ____Property.PropertiesList
local ValuesList = ____Property.ValuesList
local ____Status = include("logic.models.Status")
local StateList = ____Status.StateList
local ____utils = include("framework.fight.utils")
local optimizePrecision = ____utils.optimizePrecision
function ____exports.genUnitView(self, unit)
    local view = {
        name = unit:getName(),
        buttons = {getSimpleButton(nil, "删除", "delUnitInRuntime", unit.id)},
        children = {
            ____exports.genUnitLevel(nil, unit),
            ____exports.genUnitBaseProperties(nil, unit),
            ____exports.genUnitDefaultValues(nil, unit),
            ____exports.genUnitFormula(nil, unit),
            ____exports.genUnitSkill(nil, unit),
            genUnitEffects(nil, unit),
            genUnitStatus(nil, unit),
            genUnitTag(nil, unit),
            genStatistics(nil, unit)
        },
        draw = {
            name = ((unit:getName() .. "(") .. tostring(unit.id)) .. ")",
            pos = unit:getPosition(),
            color = player2Color[unit.playerId],
            moveId = unit.id,
            moveAction = "moveUnitInRuntime"
        }
    }
    return view
end
function ____exports.genUnitLevel(self, unit)
    local level = unit:getLevel()
    local view = {
        name = ("等级" .. "：") .. tostring(level),
        buttons = {{name = "等级", action = "modifyLevelInRuntime", form = {title = "修改等级", tips = "请输入正整数", fields = {{name = "单位id", type = "readonly", defaultValue = unit.id}, {name = "等级", type = "number", defaultValue = level}}}}}
    }
    return view
end
function ____exports.genUnitBaseProperties(self, unit)
    local properties = unit.activeData.properties
    local view = {
        name = "属性",
        buttons = {},
        children = __TS__ArrayMap(
            PropertiesList,
            function(____, a)
                local v = {
                    name = ((a.name .. "：") .. tostring(unit:p(a.key))) .. ("(" .. tostring(properties[a.key] or 0)) .. ")",
                    buttons = {{
                        name = "修改",
                        action = "modifyPropertyInRuntime",
                        form = {
                            title = "修改属性",
                            tips = "请输入正整数",
                            fields = {
                                {name = "单位id", type = "readonly", defaultValue = unit.id},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, properties[a.key])
                                }
                            }
                        }
                    }}
                }
                return v
            end
        ),
        isFolded = true
    }
    return view
end
function ____exports.genUnitDefaultValues(self, unit)
    local values = unit.activeData.values
    local view = {
        name = "值",
        buttons = {},
        children = __TS__ArrayMap(
            ValuesList,
            function(____, a)
                local v = {
                    name = (a.name .. "：") .. tostring(values[a.key] or 0),
                    buttons = {{
                        name = "修改",
                        action = "modifyValueInRuntime",
                        form = {
                            title = "修改值",
                            tips = "请输入正整数",
                            fields = {
                                {name = "单位id", type = "readonly", defaultValue = unit.id},
                                {name = "属性id", type = "readonly", defaultValue = a.key},
                                {
                                    name = a.name,
                                    type = "number",
                                    defaultValue = optimizePrecision(nil, values[a.key])
                                }
                            }
                        }
                    }}
                }
                return v
            end
        ),
        isFolded = true
    }
    return view
end
function ____exports.genUnitFormula(self, unit)
    local formula = {
        {"物理伤害", 1},
        {"法术伤害", 2},
        {"固定伤害", 3},
        {"真实伤害", 4},
        {"绝对伤害", 5},
        {"回血值", 101},
        {"回血值_无恢复效果影响", -101},
        {"闪避公式", 102},
        {"法术闪避公式", 103},
        {"展示面板_物理攻击", 1001},
        {"展示面板_暴击", 1002},
        {"展示面板_攻速", 1003},
        {"展示面板_闪避", 1004},
        {"展示面板_血量上限", 1005},
        {"展示面板_回蓝速度", 1006},
        {"展示面板_暴击伤害", 1007},
        {"展示面板_毒系数", 1008},
        {"展示面板_恢复系数", 1013},
        {"展示面板_大招伤害增加", 1014},
        {"展示面板_总物理防御系数", 1015},
        {"展示面板_总法术防御系数", 1016},
        {"展示面板_精准", 1017},
        {"展示面板_物理防御系数", 1018},
        {"展示面板_法术防御系数", 1019},
        {"展示面板_法术攻击", 1020},
        {"展示面板_物理防御", 1021},
        {"展示面板_法术防御", 1022}
    }
    local view = {
        name = "公式值",
        buttons = {},
        children = __TS__ArrayMap(
            formula,
            function(____, a)
                local v = {
                    name = ((a[1] .. ("(" .. tostring(a[2])) .. ")") .. "：") .. tostring(unit:f(a[2])),
                    buttons = {}
                }
                return v
            end
        ),
        isFolded = true
    }
    return view
end
function ____exports.genUnitSkill(self, unit)
    local skills = __TS__ObjectValues(unit.skills)
    local simpleSkills = __TS__ObjectValues(unit.simpleSkills)
    local hidden = __TS__ArrayFilter(
        skills,
        function(____, a) return a.type == "隐藏" end
    )
    local normal = __TS__ArrayFilter(
        skills,
        function(____, a) return a.type == "普通" end
    )
    local command = __TS__ArrayFilter(
        skills,
        function(____, a) return a.type == "命令" end
    )
    local hero = __TS__ArrayFilter(
        skills,
        function(____, a) return a.type == "英雄" end
    )
    local view = {
        name = "技能",
        buttons = {},
        children = {
            {
                name = "隐藏技能",
                children = __TS__ArrayMap(
                    hidden,
                    function(____, a)
                        local v = {name = a.ability:get_name()}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置隐藏技能", "setHiddenSkills"):filed("单位", "readonly", unit.id):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ArrayMap(
                            hidden,
                            function(____, a) return a.skillName end
                        ),
                        ","
                    )
                ):get()}
            },
            {
                name = "普通技能",
                children = __TS__ArrayMap(
                    normal,
                    function(____, a)
                        local ____opt_0 = a.ability
                        local v = {name = ____opt_0 and ____opt_0:get_name() or "未知"}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置普通技能", "setNormalSkills"):filed("单位", "readonly", unit.id):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ArrayMap(
                            normal,
                            function(____, a) return a.skillName end
                        ),
                        ","
                    )
                ):get()}
            },
            {
                name = "命令技能",
                children = __TS__ArrayMap(
                    command,
                    function(____, a)
                        local v = {name = a.ability:get_name()}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置命令技能", "setCommandSkills"):filed("单位", "readonly", unit.id):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ArrayMap(
                            command,
                            function(____, a) return a.skillName end
                        ),
                        ","
                    )
                ):get()}
            },
            {
                name = "英雄技能",
                children = __TS__ArrayMap(
                    hero,
                    function(____, a)
                        local v = {name = a.ability:get_name()}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置英雄技能", "setHeroSkills"):filed("单位", "readonly", unit.id):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ArrayMap(
                            hero,
                            function(____, a) return a.skillName end
                        ),
                        ","
                    )
                ):get()}
            },
            {
                name = "简单技能",
                children = __TS__ArrayMap(
                    simpleSkills,
                    function(____, a)
                        local v = {name = a.skillName}
                        return v
                    end
                ),
                buttons = {genButton(nil, "设置简单技能", "setSimpleSkills"):filed("单位", "readonly", unit.id):filed(
                    "技能列表",
                    "string",
                    table.concat(
                        __TS__ArrayMap(
                            simpleSkills,
                            function(____, a) return a.skillName end
                        ),
                        ","
                    )
                ):get()}
            }
        },
        isFolded = true
    }
    return view
end
function genUnitEffects(self, unit)
    local effects = {}
    for effectId in pairs(unit.effects) do
        local effect = unit.effects[effectId]
        local effectConfig = effectConfigMap[effectId]
        local effectList
        if effect.id ~= nil then
            effectList = {effect}
        else
            effectList = effect
        end
        for ____, e in ipairs(effectList) do
            effects[#effects + 1] = {
                name = (((effectId .. "-") .. (effectConfig and effectConfig.name or "动态effect")) .. "*") .. tostring(e.activeData.quantity),
                buttons = {
                    genButton(nil, "修改数量", "modifyEffectQuantityInRuntime"):filed("id", "readonly", unit.id):filed("effectId", "readonly", effectId):filed("数量", "number", e.activeData.quantity):get(),
                    genButton(nil, "删除", "delEffectInRuntime"):filed("id", "readonly", unit.id):filed("effectId", "readonly", effectId):get()
                }
            }
        end
    end
    local view = {
        name = "效果",
        buttons = {genButton(nil, "添加", "addEffectInRuntime"):filed("id", "readonly", unit.id):filed("效果", "list", effectConfigList[1].id, "EffectConfig"):filed("数量", "number", 1):get()},
        children = effects,
        isFolded = true
    }
    return view
end
function genUnitStatus(self, unit)
    local status = {}
    for stateId in pairs(unit.baseStatus) do
        local ____opt_4 = __TS__ArrayFind(
            StateList,
            function(____, a) return a.key == stateId end
        )
        local name = ____opt_4 and ____opt_4.name or "未知"
        status[#status + 1] = {
            name = (name .. ":") .. tostring(unit:checkState(stateId)),
            buttons = {}
        }
    end
    local view = {name = "状态", children = status, isFolded = true}
    return view
end
function genUnitTag(self, unit)
    local tags = {}
    do
        local i = 0
        while i < #unit.activeData.tags do
            local name = unit.activeData.tags[i + 1]
            tags[#tags + 1] = {name = tostring(name)}
            i = i + 1
        end
    end
    local view = {name = "标签", buttons = {}, children = tags, isFolded = true}
    return view
end
function genStatistics(self, unit)
    local statistics = {}
    for name in pairs(unit.activeData.statistics) do
        statistics[#statistics + 1] = {name = (name .. ":") .. tostring(unit.activeData.statistics[name])}
    end
    local view = {
        name = "统计",
        buttons = {genButton(nil, "添加", "addStatisticsInRuntime"):filed("id", "readonly", unit.id):filed("统计名称", "string", ""):filed("数量", "number", 1):get()},
        children = statistics,
        isFolded = true
    }
    return view
end
function ____exports.genRuntimeView(self, fight)
    local units = __TS__ObjectValues(fight.allUnitMap)
    local view = {
        name = "单位列表",
        children = __TS__ArrayMap(
            units,
            function(____, a) return ____exports.genUnitView(nil, a) end
        ),
        listRefs = {EffectConfig = __TS__ArrayMap(
            effectConfigList,
            function(____, a)
                return {
                    label = (tostring(a.id) .. "-") .. a.name,
                    value = a.id
                }
            end
        )}
    }
    return view
end
function ____exports.modifyLevelInRuntime(self, unitInstanceId, level)
    local ____opt_6 = self.fight
    local unit = ____opt_6 and ____opt_6.allUnitMap[unitInstanceId]
    unit.activeData.level = level
end
function ____exports.modifyPropertyInRuntime(self, unitInstanceId, key, value)
    local ____opt_8 = self.fight
    local unit = ____opt_8 and ____opt_8.allUnitMap[unitInstanceId]
    unit:updateBaseProperties(unit, {key, value})
end
function ____exports.modifyValueInRuntime(self, unitInstanceId, key, value)
    local ____opt_10 = self.fight
    local unit = ____opt_10 and ____opt_10.allUnitMap[unitInstanceId]
    local ____key_14 = key
    local ____opt_12 = self.fight
    if ____key_14 == (____opt_12 and ____opt_12.hpValueId) then
        local ____opt_15 = unit.y3Unit
        if ____opt_15 ~= nil then
            ____opt_15:set_hp(value)
        end
    else
        unit:setValue(key, value)
    end
end
function ____exports.modifyEffectQuantityInRuntime(self, unitInstanceId, effectId, quantity)
    local ____opt_17 = self.fight
    local unit = ____opt_17 and ____opt_17.allUnitMap[unitInstanceId]
    local effect = unit.effects[effectId]
    if effect ~= nil and effect.id ~= nil then
        effect:modifyQuantity(unit, quantity, true)
    else
        unit:removeEffect(unit, {effectId})
        unit:addEffect(unit, effectId, quantity)
    end
end
function ____exports.delEffectInRuntime(self, unitInstanceId, effectId)
    local ____opt_19 = self.fight
    local unit = ____opt_19 and ____opt_19.allUnitMap[unitInstanceId]
    unit:removeEffect(unit, {effectId})
end
function ____exports.addEffectInRuntime(self, unitInstanceId, effectId, quantity)
    local ____opt_21 = self.fight
    local unit = ____opt_21 and ____opt_21.allUnitMap[unitInstanceId]
    unit:addEffect(unit, effectId, quantity)
end
function ____exports.moveUnitInRuntime(self, unitInstanceId, x, y)
    local ____opt_23 = self.fight
    local unit = ____opt_23 and ____opt_23.allUnitMap[unitInstanceId]
    unit:setPosition({x = x, y = y}, true)
end
function ____exports.addStatisticsInRuntime(self, unitInstanceId, name, quantity)
    local ____opt_25 = self.fight
    local unit = ____opt_25 and ____opt_25.allUnitMap[unitInstanceId]
    unit:genStatistics(name, quantity)
end
function ____exports.delUnitInRuntime(self, id)
    local ____opt_27 = self.fight
    local unit = ____opt_27 and ____opt_27.allUnitMap[id]
    if unit ~= nil then
        unit:destroy(unit)
    end
end
return ____exports
