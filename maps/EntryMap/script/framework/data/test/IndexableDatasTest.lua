local ____lualib = include("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 3,["9"] = 3,["10"] = 5,["11"] = 10,["12"] = 10,["13"] = 10,["14"] = 14,["15"] = 15,["16"] = 10,["17"] = 10,["18"] = 25,["19"] = 25,["20"] = 25,["21"] = 31,["22"] = 32,["23"] = 25,["24"] = 25,["25"] = 40,["26"] = 40,["27"] = 40,["28"] = 40,["29"] = 40,["30"] = 40,["31"] = 43,["32"] = 44,["33"] = 45,["34"] = 47,["35"] = 48,["36"] = 49,["37"] = 51,["38"] = 52,["39"] = 53,["40"] = 55,["41"] = 56,["42"] = 57,["43"] = 59,["44"] = 59,["45"] = 59,["46"] = 59,["47"] = 59,["48"] = 59,["49"] = 61,["50"] = 61,["51"] = 61,["52"] = 61,["53"] = 61,["54"] = 61,["55"] = 62,["56"] = 62,["57"] = 62,["58"] = 62,["59"] = 62,["60"] = 62,["61"] = 63,["62"] = 63,["63"] = 63,["64"] = 63,["65"] = 63,["66"] = 63,["67"] = 64,["68"] = 64,["69"] = 64,["70"] = 64,["71"] = 64,["72"] = 64,["73"] = 65,["74"] = 65,["75"] = 65,["76"] = 65,["77"] = 65,["78"] = 65,["79"] = 68,["80"] = 68,["81"] = 68,["82"] = 68,["83"] = 68,["84"] = 68,["85"] = 69,["86"] = 69,["87"] = 69,["88"] = 69,["89"] = 69,["90"] = 69,["91"] = 71,["92"] = 71,["93"] = 71,["94"] = 71,["95"] = 71,["96"] = 71,["97"] = 72,["98"] = 72,["99"] = 72,["100"] = 72,["101"] = 72,["102"] = 72,["103"] = 74,["104"] = 75,["105"] = 76,["106"] = 76,["107"] = 76,["108"] = 76,["109"] = 76,["110"] = 76,["111"] = 78,["112"] = 79,["113"] = 81,["114"] = 81,["115"] = 81,["116"] = 81,["117"] = 81,["118"] = 81,["119"] = 82,["120"] = 82,["121"] = 82,["122"] = 82,["123"] = 82,["124"] = 82,["125"] = 83,["126"] = 83,["127"] = 83,["128"] = 83,["129"] = 83,["130"] = 83,["131"] = 84,["132"] = 84,["133"] = 84,["134"] = 84,["135"] = 84,["136"] = 84,["137"] = 86,["138"] = 87,["139"] = 87,["140"] = 87,["141"] = 87,["142"] = 87,["143"] = 87,["144"] = 88,["145"] = 88,["146"] = 88,["147"] = 88,["148"] = 88,["149"] = 88,["150"] = 91,["151"] = 92,["152"] = 92,["153"] = 92,["154"] = 92,["155"] = 92,["156"] = 92,["157"] = 93,["158"] = 93,["159"] = 93,["160"] = 93,["161"] = 93,["162"] = 93,["163"] = 94,["164"] = 94,["165"] = 94,["166"] = 94,["167"] = 94,["168"] = 94,["169"] = 96,["170"] = 97,["171"] = 98,["172"] = 100,["173"] = 100,["174"] = 100,["175"] = 100,["176"] = 100,["177"] = 100});
local ____exports = {}
local ____TestUtils = include("framework.utils.TestUtils")
local assertEquals = ____TestUtils.assertEquals
local ____IndexableDatas = include("framework.data.IndexableDatas")
local IndexableDatas = ____IndexableDatas.IndexableDatas
local datas = __TS__New(IndexableDatas)
____exports.SingleTestData = {
    name = "SingleTestData",
    indexKeys = {},
    make = function(self)
        return {v = 1}
    end
}
____exports.TestData = {
    name = "TestDataType",
    indexKeys = {{key = "singleKey", single = true}, {key = "multipleKey", single = false}},
    make = function(self)
        return {singleKey = nil, multipleKey = "123"}
    end
}
assertEquals(
    nil,
    datas:getOrCreateSingle(____exports.SingleTestData),
    datas:getOrCreateSingle(____exports.SingleTestData),
    "getOrCreateSingle"
)
local a = datas:create(____exports.TestData)
a.singleKey = 1
a.multipleKey = "a"
local b = datas:create(____exports.TestData)
b.singleKey = 2
b.multipleKey = "a"
local c = datas:create(____exports.TestData)
c.singleKey = 3
c.multipleKey = "b"
local d = datas:create(____exports.TestData)
d.singleKey = 4
d.multipleKey = "b"
assertEquals(
    nil,
    #datas:getAll(____exports.TestData),
    4,
    "getAll"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 1),
    a,
    "getObjectByIndex 1"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 2),
    b,
    "getObjectByIndex 2"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 3),
    c,
    "getObjectByIndex 3"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 4),
    d,
    "getObjectByIndex 4"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 5),
    nil,
    "getObjectByIndex 5"
)
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "a"),
    2,
    "getListByIndex 6"
)
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "b"),
    2,
    "getListByIndex 7"
)
assertEquals(
    nil,
    datas:getListByIndex(____exports.TestData, "multipleKey", "a")[1],
    a,
    "getListByIndex 8"
)
assertEquals(
    nil,
    datas:getListByIndex(____exports.TestData, "multipleKey", "b")[1],
    c,
    "getListByIndex 9"
)
a.multipleKey = "b"
b.multipleKey = "b"
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "b"),
    4,
    "modify 1"
)
c.multipleKey = "c"
d.multipleKey = "c"
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "b"),
    2,
    "modify 2"
)
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "c"),
    2,
    "modify 3"
)
assertEquals(
    nil,
    datas:getListByIndex(____exports.TestData, "multipleKey", "b")[1],
    a,
    "modify 4"
)
assertEquals(
    nil,
    datas:getListByIndex(____exports.TestData, "multipleKey", "c")[1],
    c,
    "modify 5"
)
a.singleKey = 999
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 1),
    nil,
    "modify 6"
)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 999),
    a,
    "modify 7"
)
datas:remove(____exports.TestData, a)
assertEquals(
    nil,
    datas:getObjectByIndex(____exports.TestData, "singleKey", 999),
    nil,
    "remove 1"
)
assertEquals(
    nil,
    #datas:getAll(____exports.TestData),
    3,
    "remove 2"
)
assertEquals(
    nil,
    #datas:getListByIndex(____exports.TestData, "multipleKey", "b"),
    1,
    "remove 3"
)
datas:remove(____exports.TestData, b)
datas:remove(____exports.TestData, c)
datas:remove(____exports.TestData, d)
assertEquals(
    nil,
    #datas:getAll(____exports.TestData),
    0,
    "remove 4"
)
return ____exports
