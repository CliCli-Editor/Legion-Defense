local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 3,["12"] = 38,["13"] = 38,["14"] = 38,["16"] = 44,["17"] = 50,["18"] = 56,["19"] = 63,["20"] = 38,["21"] = 68,["22"] = 69,["23"] = 70,["24"] = 71,["25"] = 72,["26"] = 72,["27"] = 72,["29"] = 74,["30"] = 68,["31"] = 80,["32"] = 81,["33"] = 80,["34"] = 87,["35"] = 88,["36"] = 89,["37"] = 90,["38"] = 90,["39"] = 90,["41"] = 92,["42"] = 87,["43"] = 98,["44"] = 99,["45"] = 100,["46"] = 101,["47"] = 101,["48"] = 101,["50"] = 103,["51"] = 104,["52"] = 105,["53"] = 106,["55"] = 110,["56"] = 111,["57"] = 112,["58"] = 114,["59"] = 98,["60"] = 120,["61"] = 121,["62"] = 122,["65"] = 126,["66"] = 127,["67"] = 128,["68"] = 129,["69"] = 130,["71"] = 133,["72"] = 134,["75"] = 137,["77"] = 120,["78"] = 145,["79"] = 146,["80"] = 147,["81"] = 148,["83"] = 151,["84"] = 145,["85"] = 158,["86"] = 159,["87"] = 160,["88"] = 161,["90"] = 164,["91"] = 158,["92"] = 170,["93"] = 171,["94"] = 172,["95"] = 170,["96"] = 178,["97"] = 179,["98"] = 180,["99"] = 178,["100"] = 183,["101"] = 184,["102"] = 186,["103"] = 186,["104"] = 187,["105"] = 188,["106"] = 189,["108"] = 191,["109"] = 186,["110"] = 192,["111"] = 193,["112"] = 186,["113"] = 186,["114"] = 186,["115"] = 196,["116"] = 183,["117"] = 199,["118"] = 200,["119"] = 201,["120"] = 202,["121"] = 199,["122"] = 205,["123"] = 206,["124"] = 207,["125"] = 208,["126"] = 209,["127"] = 210,["128"] = 211,["131"] = 214,["132"] = 215,["133"] = 216,["134"] = 217,["137"] = 221,["140"] = 205,["141"] = 226,["142"] = 227,["143"] = 228,["144"] = 229,["145"] = 230,["146"] = 232,["147"] = 233,["148"] = 234,["150"] = 236,["152"] = 238,["153"] = 239,["154"] = 240,["155"] = 241,["157"] = 243,["159"] = 245,["162"] = 226,["163"] = 250,["164"] = 251,["165"] = 252,["166"] = 253,["167"] = 254,["168"] = 255,["169"] = 256,["170"] = 257,["171"] = 258,["173"] = 260,["174"] = 261,["176"] = 263,["178"] = 265,["179"] = 266,["180"] = 267,["181"] = 268,["182"] = 269,["185"] = 273,["186"] = 274,["187"] = 275,["188"] = 276,["190"] = 278,["192"] = 281,["195"] = 250,["196"] = 288,["197"] = 289,["198"] = 289,["199"] = 289,["200"] = 290,["201"] = 291,["202"] = 289,["203"] = 289});
local ____exports = {}
local VUE_DEFAULT_CONFIG = {flush = "sync", immediate = true}
--- 所有养成数据由此管理
____exports.IndexableDatas = __TS__Class()
local IndexableDatas = ____exports.IndexableDatas
IndexableDatas.name = "IndexableDatas"
function IndexableDatas.prototype.____constructor(self)
    self.singleMap = vue.reactive({})
    self.multiMap = vue.reactive({})
    self.indexedMap = vue.reactive({})
    self.singleIndexMap = vue.reactive({})
end
function IndexableDatas.prototype.getOrCreateSingle(self, maker)
    local data = self.singleMap[maker.name]
    if not data then
        local obj = vue.reactive(maker:make())
        local ____obj_0 = obj
        self.singleMap[maker.name] = ____obj_0
        data = ____obj_0
    end
    return data
end
function IndexableDatas.prototype.getSingle(self, maker)
    return self.singleMap[maker.name]
end
function IndexableDatas.prototype.getAll(self, maker)
    local list = self.multiMap[maker.name]
    if not list then
        local ____vue_reactive_result_1 = vue.reactive({})
        self.multiMap[maker.name] = ____vue_reactive_result_1
        list = ____vue_reactive_result_1
    end
    return __TS__ArraySlice(list)
end
function IndexableDatas.prototype.create(self, maker)
    local list = self.multiMap[maker.name]
    if not list then
        local ____vue_reactive_result_2 = vue.reactive({})
        self.multiMap[maker.name] = ____vue_reactive_result_2
        list = ____vue_reactive_result_2
    end
    local rawObj = maker:make()
    rawObj.__indexKeys = {}
    for ____, index in ipairs(maker.indexKeys) do
        rawObj.__indexKeys[index.key] = {value = nil, single = index.single}
    end
    local obj = vue.reactive(rawObj)
    list[#list + 1] = obj
    self:watchIndexUpdate(maker, obj)
    return obj
end
function IndexableDatas.prototype.remove(self, maker, obj)
    local list = self.multiMap[maker.name]
    if not list then
        return
    end
    local index = __TS__ArrayIndexOf(list, obj)
    if index ~= -1 then
        table.remove(list, index + 1)
        if obj.__watchStop ~= nil then
            self:unwatchIndexUpdate(maker, obj)
        end
        if obj.onRelease ~= nil then
            obj:onRelease()
        end
    else
        console:warn("重复移除", maker.name)
    end
end
function IndexableDatas.prototype.find(self, maker, predicate)
    local list = self.multiMap[maker.name]
    if not list then
        return nil
    end
    return __TS__ArrayFind(list, predicate)
end
function IndexableDatas.prototype.filter(self, maker, predicate)
    local list = self.multiMap[maker.name]
    if not list then
        return {}
    end
    return __TS__ArrayFilter(list, predicate)
end
function IndexableDatas.prototype.getObjectByIndex(self, maker, key, value)
    local fullkey = (((maker.name .. "_") .. tostring(key)) .. "_") .. tostring(value)
    return self.singleIndexMap[fullkey]
end
function IndexableDatas.prototype.getListByIndex(self, maker, key, value)
    local fullkey = (((maker.name .. "_") .. tostring(key)) .. "_") .. tostring(value)
    return self.indexedMap[fullkey] or ({})
end
function IndexableDatas.prototype.watchIndexUpdate(self, maker, obj)
    self:makeIndex(maker, obj)
    local stop = vue.watch(
        function()
            local r = {}
            for key, value in pairs(maker.indexKeys) do
                r[#r + 1] = obj[value.key]
            end
            return r
        end,
        function(____, oldVal, newVal)
            self:refreshIndex(maker, obj)
        end,
        VUE_DEFAULT_CONFIG
    )
    obj.__watchStop = stop
end
function IndexableDatas.prototype.unwatchIndexUpdate(self, maker, obj)
    obj:__watchStop()
    obj.__watchStop = nil
    self:clearIndex(maker, obj)
end
function IndexableDatas.prototype.clearIndex(self, maker, obj)
    for key, value in pairs(obj.__indexKeys) do
        if value.value ~= nil then
            local fullkey = (((maker.name .. "_") .. key) .. "_") .. tostring(value.value)
            if value.single then
                if self.singleIndexMap[fullkey] == obj then
                    self.singleIndexMap[fullkey] = nil
                end
            else
                local list = self.indexedMap[fullkey]
                local index = __TS__ArrayIndexOf(list, obj)
                if index ~= -1 then
                    table.remove(list, index + 1)
                end
            end
            value.value = nil
        end
    end
end
function IndexableDatas.prototype.makeIndex(self, maker, obj)
    for key, value in pairs(obj.__indexKeys) do
        local v = obj[key]
        if v ~= nil then
            local fullkey = (((maker.name .. "_") .. key) .. "_") .. tostring(v)
            if value.single then
                if self.singleIndexMap[fullkey] then
                    error("出现重复的值 " .. fullkey, 0)
                end
                self.singleIndexMap[fullkey] = obj
            else
                local list = self.indexedMap[fullkey]
                if not list then
                    self.indexedMap[fullkey] = {}
                    list = self.indexedMap[fullkey]
                end
                list[#list + 1] = obj
            end
            value.value = v
        end
    end
end
function IndexableDatas.prototype.refreshIndex(self, maker, obj)
    for key, value in pairs(obj.__indexKeys) do
        local v = obj[key]
        if value.value ~= v then
            local oldFullkey = (((maker.name .. "_") .. key) .. "_") .. tostring(value.value)
            local newFullkey = (((maker.name .. "_") .. key) .. "_") .. tostring(v)
            if value.single then
                if self.singleIndexMap[oldFullkey] == obj then
                    self.singleIndexMap[oldFullkey] = nil
                end
                if self.singleIndexMap[newFullkey] then
                    error("出现重复的值 " .. newFullkey, 0)
                end
                self.singleIndexMap[newFullkey] = obj
            else
                local oldList = self.indexedMap[oldFullkey]
                if oldList ~= nil then
                    local index = __TS__ArrayIndexOf(oldList, obj)
                    if index ~= -1 then
                        table.remove(oldList, index + 1)
                    end
                end
                local newList = self.indexedMap[newFullkey]
                if newList == nil then
                    self.indexedMap[newFullkey] = {}
                    newList = self.indexedMap[newFullkey]
                end
                newList[#newList + 1] = obj
            end
            value.value = v
        end
    end
end
if y3.game.is_debug_mode() then
    y3.ltimer.wait_frame(
        1,
        function(t)
            include("framework.data.test.IndexableDatasTest")
            t:remove()
        end
    )
end
return ____exports
