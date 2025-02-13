local ____lualib = include("lualib_bundle")
local __TS__ArrayPush = ____lualib.__TS__ArrayPush
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 85,["20"] = 86,["21"] = 85,["22"] = 89,["23"] = 90,["24"] = 89,["25"] = 92,["26"] = 93,["27"] = 92,["28"] = 96,["29"] = 97,["30"] = 96,["31"] = 100,["32"] = 101,["33"] = 100,["34"] = 104,["35"] = 105,["36"] = 106,["37"] = 107,["38"] = 108,["39"] = 110,["41"] = 112,["42"] = 112,["44"] = 113,["45"] = 114,["46"] = 115,["47"] = 116,["49"] = 117,["50"] = 118,["51"] = 120,["52"] = 121,["54"] = 124,["55"] = 125,["56"] = 126,["59"] = 112,["62"] = 129,["65"] = 133,["66"] = 134,["67"] = 135,["70"] = 139,["71"] = 140,["72"] = 141,["73"] = 142,["74"] = 143,["77"] = 147,["78"] = 148,["79"] = 104,["80"] = 163,["81"] = 163,["82"] = 165,["83"] = 166,["84"] = 167,["85"] = 168,["88"] = 171,["89"] = 171,["90"] = 172,["91"] = 173,["92"] = 174,["93"] = 175,["95"] = 171,["98"] = 179,["99"] = 180,["100"] = 181,["102"] = 184,["103"] = 186,["104"] = 187,["105"] = 188,["106"] = 188,["107"] = 188,["108"] = 189,["109"] = 190,["111"] = 192,["113"] = 188,["114"] = 188,["115"] = 195,["116"] = 197,["117"] = 197,["118"] = 197,["119"] = 197,["120"] = 186,["121"] = 163,["122"] = 205,["123"] = 206,["124"] = 207,["126"] = 209,["127"] = 205,["132"] = 217,["133"] = 218,["134"] = 220,["135"] = 223,["136"] = 224,["137"] = 225,["138"] = 226,["140"] = 228,["142"] = 230,["144"] = 232,["145"] = 233,["146"] = 234,["147"] = 234,["148"] = 234,["149"] = 234,["150"] = 234,["151"] = 234,["152"] = 234,["153"] = 234,["154"] = 235,["155"] = 236,["157"] = 238,["159"] = 241,["161"] = 243,["162"] = 244,["164"] = 246,["165"] = 248,["166"] = 249,["167"] = 251,["168"] = 252,["170"] = 254,["171"] = 255,["172"] = 256,["173"] = 257,["175"] = 259,["178"] = 263,["179"] = 264,["181"] = 264,["182"] = 264,["183"] = 264,["184"] = 264,["185"] = 264,["186"] = 264,["187"] = 264,["189"] = 266,["190"] = 268,["191"] = 269,["192"] = 270,["194"] = 272,["196"] = 275,["197"] = 275,["198"] = 275,["199"] = 275,["200"] = 266,["201"] = 217,["202"] = 284,["203"] = 285,["204"] = 286,["207"] = 289,["208"] = 290,["209"] = 291,["210"] = 292,["211"] = 292,["212"] = 292,["213"] = 293,["214"] = 293,["215"] = 292,["216"] = 292,["217"] = 295,["218"] = 296,["220"] = 298,["221"] = 284,["222"] = 333,["223"] = 334,["224"] = 335,["225"] = 336,["227"] = 333,["228"] = 340,["229"] = 341,["230"] = 342,["231"] = 344,["232"] = 345,["233"] = 345,["234"] = 345,["235"] = 345,["236"] = 344,["237"] = 340,["238"] = 352,["239"] = 353,["240"] = 354,["242"] = 356,["243"] = 358,["244"] = 360,["245"] = 361,["246"] = 362,["247"] = 363,["250"] = 366,["251"] = 367,["252"] = 368,["254"] = 370,["256"] = 373,["257"] = 352,["258"] = 597,["259"] = 598,["260"] = 600,["261"] = 601,["262"] = 602,["263"] = 603,["264"] = 604,["265"] = 605,["266"] = 603,["267"] = 607,["269"] = 609,["272"] = 613,["273"] = 614,["274"] = 615,["275"] = 617,["276"] = 618,["277"] = 619,["278"] = 617,["279"] = 622,["281"] = 625,["282"] = 626,["283"] = 627,["284"] = 625,["285"] = 630,["287"] = 597,["288"] = 636,["289"] = 637,["290"] = 636,["291"] = 8,["292"] = 9,["293"] = 9,["294"] = 9,["295"] = 9,["296"] = 9,["297"] = 9,["298"] = 9,["299"] = 9,["300"] = 9,["301"] = 9,["302"] = 9,["303"] = 9,["304"] = 9,["305"] = 9,["306"] = 8,["307"] = 27,["308"] = 28,["309"] = 30,["310"] = 31,["311"] = 32,["313"] = 33,["314"] = 33,["315"] = 34,["316"] = 35,["317"] = 35,["318"] = 37,["319"] = 37,["320"] = 37,["321"] = 35,["322"] = 35,["323"] = 35,["324"] = 35,["325"] = 35,["326"] = 33,["330"] = 43,["332"] = 45,["334"] = 46,["335"] = 46,["336"] = 47,["337"] = 48,["338"] = 48,["339"] = 48,["340"] = 48,["341"] = 46,["345"] = 56,["347"] = 30,["348"] = 60,["349"] = 61,["350"] = 62,["351"] = 63,["353"] = 66,["354"] = 66,["355"] = 66,["356"] = 66,["357"] = 69,["358"] = 66,["359"] = 66,["360"] = 66,["361"] = 66,["362"] = 66,["363"] = 66,["364"] = 66,["365"] = 66,["366"] = 66,["367"] = 66,["368"] = 82,["369"] = 60,["370"] = 151,["371"] = 152,["374"] = 155,["375"] = 156,["376"] = 157,["377"] = 157,["379"] = 159,["380"] = 160,["381"] = 151,["382"] = 301,["383"] = 302,["386"] = 305,["387"] = 306,["388"] = 301,["389"] = 309,["390"] = 310,["393"] = 313,["394"] = 314,["397"] = 317,["398"] = 318,["399"] = 309,["400"] = 321,["401"] = 322,["404"] = 325,["405"] = 326,["406"] = 327,["407"] = 328,["408"] = 329,["409"] = 329,["412"] = 321,["413"] = 376,["414"] = 377,["415"] = 378,["418"] = 381,["419"] = 382,["420"] = 384,["421"] = 385,["422"] = 386,["423"] = 387,["424"] = 388,["426"] = 391,["427"] = 384,["429"] = 398,["430"] = 399,["432"] = 400,["433"] = 401,["436"] = 403,["438"] = 404,["439"] = 405,["442"] = 407,["444"] = 408,["445"] = 409,["448"] = 411,["450"] = 412,["451"] = 413,["454"] = 415,["456"] = 416,["457"] = 417,["460"] = 419,["462"] = 420,["463"] = 421,["466"] = 423,["468"] = 424,["469"] = 425,["472"] = 427,["474"] = 428,["475"] = 429,["478"] = 431,["480"] = 432,["481"] = 433,["484"] = 435,["486"] = 436,["487"] = 437,["491"] = 441,["495"] = 376,["496"] = 447,["497"] = 448,["498"] = 450,["501"] = 454,["502"] = 455,["503"] = 457,["504"] = 458,["505"] = 459,["508"] = 463,["509"] = 463,["510"] = 463,["511"] = 463,["512"] = 464,["513"] = 465,["515"] = 457,["517"] = 469,["518"] = 470,["520"] = 471,["521"] = 472,["524"] = 474,["526"] = 475,["527"] = 476,["530"] = 478,["532"] = 479,["533"] = 480,["536"] = 482,["538"] = 483,["539"] = 484,["542"] = 486,["544"] = 487,["545"] = 488,["548"] = 490,["550"] = 491,["551"] = 492,["554"] = 494,["556"] = 495,["557"] = 496,["560"] = 498,["562"] = 499,["563"] = 500,["566"] = 502,["568"] = 503,["569"] = 504,["572"] = 506,["574"] = 507,["575"] = 508,["579"] = 511,["583"] = 447,["584"] = 517,["585"] = 518,["586"] = 519,["589"] = 522,["590"] = 523,["591"] = 525,["592"] = 526,["593"] = 527,["594"] = 528,["595"] = 529,["597"] = 532,["598"] = 525,["600"] = 539,["601"] = 540,["603"] = 541,["604"] = 542,["607"] = 544,["610"] = 545,["611"] = 545,["612"] = 546,["613"] = 547,["614"] = 545,["620"] = 551,["624"] = 517,["625"] = 557,["626"] = 558,["627"] = 560,["630"] = 564,["631"] = 565,["632"] = 567,["633"] = 568,["634"] = 569,["637"] = 573,["638"] = 573,["639"] = 573,["640"] = 573,["641"] = 574,["642"] = 575,["644"] = 567,["646"] = 579,["647"] = 580,["649"] = 581,["650"] = 582,["653"] = 584,["656"] = 585,["657"] = 585,["658"] = 586,["659"] = 587,["660"] = 585,["666"] = 591,["670"] = 557});
local ____exports = {}
local ____QuickStrategy = include("framework.encrypt.QuickStrategy")
local quickStrategy = ____QuickStrategy.quickStrategy
local ____SafeTable = include("framework.encrypt.SafeTable")
local createSafeTable = ____SafeTable.createSafeTable
local ____global = include("framework.global")
local global = ____global.global
local ____Report = include("framework.fight.Report")
local Report = ____Report.Report
local ____utils = include("framework.fight.utils")
local getUnit = ____utils.getUnit
local runEvent = ____utils.runEvent
function ____exports.setStore(self, k, v)
    self.activeData.store[k] = v
end
function ____exports.getStore(self, k)
    return self.activeData.store[k] or 0
end
function ____exports.clearStore(self)
    self.activeData.store = {}
end
function ____exports.clearTotalLoss(self)
    self._totalLoss = nil
end
function ____exports.remove(self, source)
    self.owner:removeEffect(source, {self})
end
function ____exports.replaceProperties(self, effect, properties)
    local oldProperties = effect.activeData._propertiesMap or ({})
    local newProperties = {}
    local newOriginProperties = {}
    local offsetProperties = {}
    local isModify = false
    do
        local i = 0
        while i < #properties do
            do
                local k = properties[i + 1]
                local newVOrigin = properties[i + 1 + 1]
                if newVOrigin == nil then
                    goto __continue18
                end
                local newV = effect.config.overlay == 4 and newVOrigin or newVOrigin * effect.activeData.quantity
                local oldV = oldProperties[k] or 0
                if newV ~= oldV then
                    isModify = true
                end
                offsetProperties[k] = newV - oldV
                newProperties[k] = newV
                newOriginProperties[k] = newVOrigin
            end
            ::__continue18::
            i = i + 2
        end
    end
    if not isModify then
        return
    end
    for k, v in pairs(oldProperties) do
        if not (offsetProperties[k] ~= nil) then
            offsetProperties[k] = -v
        end
    end
    for k, v in pairs(offsetProperties) do
        if v ~= 0 then
            local ownerProperties = effect.owner.activeData.properties
            local value = ownerProperties[k] or 0
            ownerProperties[k] = value + v
        end
    end
    effect.activeData._propertiesMap = newProperties
    effect._propertiesOriginMap = newOriginProperties
end
function ____exports.updateProperties(self, source, ...)
    local properties = {...}
    local oldPro = self._propertiesOriginMap or ({})
    local newPro = {}
    for k in pairs(oldPro) do
        newPro[k] = oldPro[k]
    end
    do
        local i = 0
        while i < #properties do
            local k = properties[i + 1]
            local v = properties[i + 1 + 1]
            if v ~= nil then
                newPro[k] = v
            end
            i = i + 2
        end
    end
    local plist = {}
    for k in pairs(newPro) do
        __TS__ArrayPush(plist, k, newPro[k])
    end
    ____exports.replaceProperties(nil, self, plist)
    self.owner.fight.report:using(function(____, r)
        local v = ""
        local ps = __TS__ArrayMap(
            properties,
            function(____, a, index)
                if index % 2 == 1 then
                    return a
                else
                    return ((Report:getPropertyName(a) .. "(") .. tostring(a)) .. ")"
                end
            end
        )
        v = "更新effect属性 #dodgerblue " .. table.concat(ps, ",")
        r:log(
            (((r:getSourceName(source) .. " -> ") .. r:getSourceName(self)) .. "  ") .. v,
            r:dumpSourceUnits(source, self)
        )
    end)
end
function ____exports.getProperty(self, propertyId)
    if self.activeData._propertiesMap == nil then
        return 0
    end
    return self.activeData._propertiesMap[propertyId] or 0
end
--- 修改数量
-- 
-- @param quantity 数量
-- @param absolute 绝对
function ____exports.modifyQuantity(self, source, quantity, absolute)
    local unit = getUnit(nil, source)
    local oldQuant = self.activeData.quantity
    local q = 0
    if absolute == true then
        if quantity < 0 then
            quantity = math.floor(quantity)
        else
            quantity = math.ceil(quantity)
        end
        q = quantity
    else
        local eventKey = 600000000 + self.id
        local eventList = self.owner.eventMap[eventKey]
        quantity = runEvent(
            nil,
            eventList,
            quantity,
            self.owner,
            unit,
            function() return ((("#dodgerblue 效果" .. self.config.name) .. "(") .. tostring(self.id)) .. ") 产生的数量变化" end
        )
        if quantity < 0 then
            quantity = math.floor(quantity)
        else
            quantity = math.ceil(quantity)
        end
        q = self.activeData.quantity + quantity
    end
    if self.config.maxQuantity > 0 then
        q = math.min(q, self.config.maxQuantity)
    end
    q = math.max(q, 0)
    local oldQuantity = self.activeData.quantity
    self.activeData.quantity = q
    if self.activeData.quantity <= 0 then
        self:remove(source)
    else
        if self._propertiesOriginMap ~= nil then
            local p = {}
            for k in pairs(self._propertiesOriginMap) do
                __TS__ArrayPush(p, k, self._propertiesOriginMap[k])
            end
            ____exports.replaceProperties(nil, self, p)
        end
    end
    local fight = self.owner.fight
    local ____opt_2 = fight.callbacks
    if ____opt_2 ~= nil then
        ____opt_2:onModifyEffectQuantity(
            unit,
            self.owner,
            self,
            oldQuant,
            q
        )
    end
    self.owner.fight.report:using(function(____, r)
        local v = ""
        if absolute then
            v = (((((("修改效果 #dodgerblue 效果" .. self.config.name) .. "(") .. tostring(self.id)) .. ") 数量 #green ") .. tostring(oldQuantity)) .. " 改为 #yellow ") .. tostring(self.activeData.quantity)
        else
            v = (((((((("修改效果 #dodgerblue 效果" .. self.config.name) .. "(") .. tostring(self.id)) .. ") 数量增加 #yellow ") .. tostring(quantity)) .. " ，由 #green ") .. tostring(oldQuantity)) .. " 改为 #yellow ") .. tostring(self.activeData.quantity)
        end
        r:log(
            (((r:getSourceName(source) .. " -> ") .. r:getSourceName(self)) .. "  ") .. v,
            r:dumpSourceUnits(source, self)
        )
    end)
end
function ____exports.listenerTimeTick(self, effect, timeInterval)
    if effect.timer ~= nil then
        console:error("请不要重复调用 listenerTimeTick")
        return
    end
    if timeInterval > 0 then
        effect.timeInterval = timeInterval
        local timer = nil
        timer = y3.ltimer.loop(
            timeInterval,
            function()
                local ____effect_activeData_4, ____times_5 = effect.activeData, "times"
                ____effect_activeData_4[____times_5] = ____effect_activeData_4[____times_5] + 1
            end
        )
        effect.timer = timer
        return timer
    end
    return nil
end
function ____exports.removeListenerTimeTick(self, effect)
    if effect.timer ~= nil then
        effect.timer:remove()
        effect.timer = nil
    end
end
function ____exports.modifyTimer(self, source, timeInterval)
    ____exports.removeListenerTimeTick(nil, self)
    ____exports.listenerTimeTick(nil, self, timeInterval)
    self.owner.fight.report:using(function(____, r)
        r:log(
            (((r:getSourceName(source) .. " -> ") .. r:getSourceName(self)) .. "  修改定时器时间间隔为 #yellow ") .. tostring(timeInterval),
            r:dumpSourceUnits(source, self)
        )
    end)
end
function ____exports.totalLoss(self, value, step, accumulateValue)
    if self._totalLoss == nil then
        self._totalLoss = 0
    end
    local result = false
    if accumulateValue == true then
        self._totalLoss = self._totalLoss + value
        if self._totalLoss >= step then
            result = true
            self._totalLoss = self._totalLoss % step
        end
    else
        local offset = value - self._totalLoss
        if offset >= step then
            result = true
        end
        self._totalLoss = value - value % step
    end
    return result
end
function ____exports.random(self, probability, guarantee)
    local report = self.owner.fight.report
    if guarantee ~= nil then
        local count = self._randomGuarantee or 0
        if count >= guarantee then
            report:using(function(____, r)
                r:log((((("单位" .. r:getSourceName(self)) .. " 生成随机数 概率为 #red ") .. tostring(probability)) .. "，触发保底策略 ") .. tostring(guarantee))
                r:getSourceName(self)
            end)
            return true
        else
            self._randomGuarantee = count + 1
        end
    end
    local rv = math.random()
    if rv < probability then
        self._randomGuarantee = 0
        report:using(function(____, r)
            r:log(((((("单位" .. r:getSourceName(self)) .. " 生成随机数 ") .. tostring(rv)) .. " < ") .. tostring(probability)) .. "，#green 达成")
            r:getSourceName(self)
        end)
        return true
    else
        report:using(function(____, r)
            r:log(((((("单位" .. r:getSourceName(self)) .. " 生成随机数 ") .. tostring(rv)) .. " < ") .. tostring(probability)) .. "，#red 未达成")
            r:getSourceName(self)
        end)
        return false
    end
end
function ____exports.resetTimesRecordToZero(self)
    self.activeData.times = 0
end
____exports.EffectMetaTable = {__index = {
    setStore = ____exports.setStore,
    getStore = ____exports.getStore,
    clearStore = ____exports.clearStore,
    clearTotalLoss = ____exports.clearTotalLoss,
    s = ____exports.getStore,
    remove = ____exports.remove,
    updateProperties = ____exports.updateProperties,
    modifyQuantity = ____exports.modifyQuantity,
    modifyTimer = ____exports.modifyTimer,
    totalLoss = ____exports.totalLoss,
    getProperty = ____exports.getProperty,
    p = ____exports.getProperty,
    random = ____exports.random,
    resetTimesRecordToZero = ____exports.resetTimesRecordToZero
}}
local ACTIVE_CACHE = {}
local ACTIVE_CACHE_ST = {}
function ____exports.createEffectActiveData(self, safeTable)
    if safeTable then
        if #ACTIVE_CACHE_ST == 0 then
            do
                local i = 0
                while i < 1000 do
                    ACTIVE_CACHE_ST[#ACTIVE_CACHE_ST + 1] = createSafeTable(
                        vue.reactive({
                            quantity = 1,
                            store = createSafeTable(
                                vue.reactive({}),
                                quickStrategy
                            ),
                            times = 0
                        }),
                        quickStrategy
                    )
                    i = i + 1
                end
            end
        end
        return table.remove(ACTIVE_CACHE_ST)
    else
        if #ACTIVE_CACHE == 0 then
            do
                local i = 0
                while i < 1000 do
                    ACTIVE_CACHE[#ACTIVE_CACHE + 1] = vue.reactive({
                        quantity = 1,
                        store = vue.reactive({}),
                        times = 0
                    })
                    i = i + 1
                end
            end
        end
        return table.remove(ACTIVE_CACHE)
    end
end
function ____exports.createEffectStructure(self, id, order, config, sourceUnit, ownerUnit, quantity, safeTable)
    local activeData = ____exports.createEffectActiveData(nil, safeTable)
    if quantity ~= 1 then
        activeData.quantity = quantity
    end
    local effect = setmetatable(
        {
            id = id,
            order = order,
            onRemoveCallback = function()
            end,
            computedMap = {},
            config = config,
            source = sourceUnit,
            owner = ownerUnit,
            birthday = os.clock(),
            activeData = activeData
        },
        ____exports.EffectMetaTable
    )
    return effect
end
function ____exports.exemptProperties(self, effect)
    if effect.activeData._propertiesMap == nil then
        return
    end
    for k in pairs(effect.activeData._propertiesMap) do
        local v = effect.activeData._propertiesMap[k]
        local ____effect_owner_activeData_properties_0, ____k_1 = effect.owner.activeData.properties, k
        ____effect_owner_activeData_properties_0[____k_1] = ____effect_owner_activeData_properties_0[____k_1] - v
    end
    effect.activeData._propertiesMap = nil
    effect._propertiesOriginMap = nil
end
function ____exports.pauseTimerTick(self, effect)
    if not effect.timer then
        return
    end
    effect.timer:pause()
    effect.pauseTime = global.time.value
end
function ____exports.resumeTimerTick(self, effect)
    if not effect.timer then
        return
    end
    effect.timer:resume()
    if effect.pauseTime == nil then
        return
    end
    effect.birthday = global.time.value - (effect.pauseTime - effect.birthday)
    effect.pauseTime = effect.birthday
end
function ____exports.resetTimer(self, effect)
    if not effect.timer then
        return
    end
    local isPause = effect.timer.pausing
    ____exports.removeListenerTimeTick(nil, effect)
    local timer = ____exports.listenerTimeTick(nil, effect, effect.timeInterval)
    if isPause then
        if timer ~= nil then
            timer:pause()
        end
    end
end
function ____exports.addEvent(self, source, effect)
    local event = effect.config.event
    if event == nil or #event < 2 then
        return
    end
    local ____type = event[1]
    local key
    local function push(____, key)
        local list = source.eventMap[key]
        if list == nil then
            source.eventMap[key] = {}
            list = source.eventMap[key]
        end
        list[#list + 1] = {unit = source, effect = effect, event = effect.config.event, callback = effect.config.onEvent}
    end
    repeat
        local ____switch86 = ____type
        local ____cond86 = ____switch86 == 1
        if ____cond86 then
            key = 100000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 4
        if ____cond86 then
            key = 400000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 5
        if ____cond86 then
            key = (500000000 + event[2]) * 100 + event[3]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 6
        if ____cond86 then
            key = 600000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 9
        if ____cond86 then
            key = 900000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 10
        if ____cond86 then
            key = 1000000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 11
        if ____cond86 then
            key = 1100000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 12
        if ____cond86 then
            key = 1200000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 13
        if ____cond86 then
            key = 1300000000 + event[2]
            push(nil, key)
            break
        end
        ____cond86 = ____cond86 or ____switch86 == 14
        if ____cond86 then
            key = 1400000000 + event[2]
            push(nil, key)
            break
        end
        do
            console:error("事件配置错误 configId=" .. tostring(effect.config.id))
            return
        end
    until true
end
function ____exports.removeEvent(self, source, effect)
    local event = effect.config.event
    if event == nil or #event < 2 then
        return
    end
    local ____type = event[1]
    local key
    local function remove(____, key)
        local list = source.eventMap[key]
        if list == nil then
            return
        end
        local index = __TS__ArrayFindIndex(
            list,
            function(____, a) return a.unit == source and a.effect == effect end
        )
        if index ~= -1 then
            table.remove(list, index + 1)
        end
    end
    repeat
        local ____switch93 = ____type
        local ____cond93 = ____switch93 == 1
        if ____cond93 then
            key = 100000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 4
        if ____cond93 then
            key = 400000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 5
        if ____cond93 then
            key = (500000000 + event[2]) * 100 + event[3]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 6
        if ____cond93 then
            key = 600000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 9
        if ____cond93 then
            key = 900000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 10
        if ____cond93 then
            key = 1000000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 11
        if ____cond93 then
            key = 1100000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 12
        if ____cond93 then
            key = 1200000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 13
        if ____cond93 then
            key = 1300000000 + event[2]
            remove(nil, key)
            break
        end
        ____cond93 = ____cond93 or ____switch93 == 14
        if ____cond93 then
            key = 1400000000 + event[2]
            remove(nil, key)
            break
        end
        do
            console:error("事件配置错误 configId=" .. tostring(effect.config.id))
            return
        end
    until true
end
function ____exports.addIntercept(self, source, effect)
    local intercept = effect.config.intercept
    if intercept == nil or #intercept < 2 then
        return
    end
    local ____type = intercept[1]
    local key
    local function push(____, key)
        local list = source.interceptMap[key]
        if list == nil then
            source.interceptMap[key] = {}
            list = source.interceptMap[key]
        end
        list[#list + 1] = {unit = source, effect = effect, intercept = effect.config.intercept, callback = effect.config.doIntercept}
    end
    repeat
        local ____switch98 = ____type
        local ____cond98 = ____switch98 == 3
        if ____cond98 then
            key = 300000000 + intercept[2]
            push(nil, key)
            break
        end
        ____cond98 = ____cond98 or ____switch98 == 8
        if ____cond98 then
            do
                local i = 1
                while i < #intercept do
                    key = 800000000 + intercept[i + 1]
                    push(nil, key)
                    i = i + 1
                end
            end
            break
        end
        do
            console:error("打断配置错误 configId=" .. tostring(effect.config.id))
            return
        end
    until true
end
function ____exports.removeIntercept(self, source, effect)
    local intercept = effect.config.intercept
    if intercept == nil or #intercept < 2 then
        return
    end
    local ____type = intercept[1]
    local key
    local function remove(____, key)
        local list = source.interceptMap[key]
        if list == nil then
            return
        end
        local index = __TS__ArrayFindIndex(
            list,
            function(____, a) return a.unit == source and a.effect == effect end
        )
        if index ~= -1 then
            table.remove(list, index + 1)
        end
    end
    repeat
        local ____switch106 = ____type
        local ____cond106 = ____switch106 == 3
        if ____cond106 then
            key = 300000000 + intercept[2]
            remove(nil, key)
            break
        end
        ____cond106 = ____cond106 or ____switch106 == 8
        if ____cond106 then
            do
                local i = 1
                while i < #intercept do
                    key = 800000000 + intercept[i + 1]
                    remove(nil, key)
                    i = i + 1
                end
            end
            break
        end
        do
            console:error("打断配置错误 configId=" .. tostring(effect.config.id))
            return
        end
    until true
end
return ____exports
