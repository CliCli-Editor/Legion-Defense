local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["14"] = 1,["15"] = 6,["16"] = 7,["17"] = 6,["18"] = 13,["19"] = 14,["20"] = 13,["21"] = 20,["22"] = 21,["23"] = 20,["24"] = 27,["25"] = 28,["26"] = 27,["27"] = 34,["28"] = 35,["29"] = 36,["30"] = 37,["31"] = 38,["32"] = 39,["34"] = 41,["35"] = 34,["36"] = 50,["37"] = 50,["38"] = 50,["40"] = 51,["41"] = 52,["43"] = 54,["44"] = 55,["46"] = 56,["47"] = 56,["48"] = 57,["49"] = 56,["52"] = 59,["54"] = 61,["55"] = 62,["57"] = 63,["58"] = 63,["59"] = 64,["60"] = 65,["61"] = 66,["62"] = 63,["65"] = 68,["67"] = 50,["68"] = 75,["69"] = 76,["70"] = 77,["71"] = 78,["72"] = 79,["73"] = 80,["74"] = 81,["75"] = 82,["77"] = 84,["78"] = 85,["80"] = 86,["81"] = 86,["82"] = 87,["83"] = 88,["84"] = 89,["86"] = 91,["87"] = 86,["90"] = 97,["91"] = 75,["92"] = 103,["93"] = 104,["94"] = 105,["96"] = 107,["97"] = 108,["98"] = 109,["99"] = 110,["100"] = 111,["101"] = 112,["103"] = 114,["105"] = 117,["106"] = 103,["107"] = 122,["108"] = 122,["109"] = 122,["110"] = 122,["111"] = 125,["112"] = 122,["113"] = 127,["114"] = 125,["115"] = 133,["116"] = 134,["117"] = 135,["118"] = 133,["119"] = 138,["120"] = 139,["121"] = 138,["122"] = 143,["124"] = 148});
local ____exports = {}
____exports.Random = __TS__Class()
local Random = ____exports.Random
Random.name = "Random"
function Random.prototype.____constructor(self)
end
function Random.prototype.random(self)
    return math.random()
end
function Random.prototype.randomTo(self, n)
    return math.floor(self:random() * n)
end
function Random.prototype.randomRange(self, begin, ____end)
    return begin + math.floor(self:random() * (____end - begin + 1))
end
function Random.prototype.randomList(self, itemList)
    return itemList[self:randomTo(#itemList) + 1]
end
function Random.prototype.randomPop(self, itemList)
    local index = self:randomTo(#itemList)
    if index ~= -1 then
        local v = itemList[index + 1]
        __TS__ArraySplice(itemList, index, 1)
        return v
    end
    return nil
end
function Random.prototype.randomListNum(self, itemList, num, allowRepetition)
    if allowRepetition == nil then
        allowRepetition = false
    end
    if #itemList == 0 or not allowRepetition and #itemList < num then
        return __TS__ArraySlice(itemList)
    end
    if allowRepetition then
        local result = {}
        do
            local i = 0
            while i < num do
                result[#result + 1] = self:randomList(itemList)
                i = i + 1
            end
        end
        return result
    else
        local result = {}
        local l = __TS__ArraySlice(itemList)
        do
            local i = 0
            while i < num do
                local index = self:randomTo(#l)
                result[#result + 1] = l[index + 1]
                __TS__ArraySplice(l, index, 1)
                i = i + 1
            end
        end
        return result
    end
end
function Random.prototype.randomWeight(self, itemList, getWeight)
    local pos = self:random()
    local total = 0
    local weightList = {}
    for ____, item in ipairs(itemList) do
        local weight = getWeight(nil, item)
        weightList[#weightList + 1] = weight
        total = total + weight
    end
    pos = pos * total
    total = 0
    do
        local i = 0
        while i < #weightList do
            local w = weightList[i + 1]
            if pos < total + w then
                return itemList[i + 1]
            end
            total = total + w
            i = i + 1
        end
    end
    return nil
end
function Random.prototype.randomRoundTable(self, itemList, getProbability)
    if #itemList == 0 then
        return nil
    end
    local pos = self:random()
    local total = 0
    for ____, item in ipairs(itemList) do
        local pro = getProbability(nil, item)
        if pos >= total and pos < total + pro then
            return item
        end
        total = total + pro
    end
    return nil
end
____exports.PseudoRandom = __TS__Class()
local PseudoRandom = ____exports.PseudoRandom
PseudoRandom.name = "PseudoRandom"
__TS__ClassExtends(PseudoRandom, ____exports.Random)
function PseudoRandom.prototype.____constructor(self, seed)
    PseudoRandom.____super.prototype.____constructor(self)
    self._seed = seed
end
function PseudoRandom.prototype.random(self)
    self._seed = (self._seed * 9301 + 49297) % 233280
    return self._seed / 233280
end
function PseudoRandom.prototype.setSeed(self, seed)
    self._seed = seed
end
____exports.random = __TS__New(____exports.Random)
--- 本地随机数，不会影响到同步数据，一般用于局外的一些随机功能，比如存档相关，商城道具，商城礼包
____exports.localRandom = __TS__New(____exports.PseudoRandom, 0)
return ____exports
