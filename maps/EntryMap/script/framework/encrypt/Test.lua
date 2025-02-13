local ____lualib = include("lualib_bundle")
local __TS__ArrayPush = ____lualib.__TS__ArrayPush
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 3,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 7,["30"] = 7,["31"] = 7,["32"] = 5,["36"] = 10,["37"] = 10,["38"] = 11,["39"] = 12,["40"] = 12,["41"] = 12,["42"] = 12,["43"] = 12,["44"] = 12,["45"] = 12,["46"] = 12,["47"] = 12,["48"] = 10,["51"] = 15,["52"] = 15,["53"] = 15,["54"] = 15,["55"] = 15,["56"] = 15,["57"] = 15,["58"] = 15,["59"] = 15,["60"] = 16,["61"] = 16,["62"] = 16,["63"] = 16,["64"] = 16,["65"] = 16,["66"] = 16,["67"] = 16,["68"] = 16,["69"] = 17,["70"] = 17,["71"] = 17,["72"] = 17,["73"] = 17,["74"] = 17,["75"] = 17,["76"] = 17,["77"] = 17,["78"] = 18,["79"] = 18,["80"] = 18,["81"] = 18,["82"] = 18,["83"] = 18,["84"] = 18,["85"] = 18,["86"] = 18,["87"] = 20,["88"] = 20,["89"] = 20,["90"] = 20,["91"] = 20,["92"] = 21,["93"] = 21,["94"] = 21,["95"] = 21,["96"] = 21,["97"] = 22,["98"] = 22,["99"] = 22,["100"] = 22,["101"] = 22,["102"] = 23,["103"] = 23,["104"] = 23,["105"] = 23,["106"] = 23,["107"] = 26,["108"] = 28,["109"] = 28,["110"] = 28,["111"] = 28,["112"] = 28,["113"] = 32,["114"] = 32,["115"] = 28,["116"] = 33,["117"] = 33,["118"] = 28,["119"] = 28,["120"] = 28,["121"] = 28,["122"] = 36,["123"] = 37,["124"] = 38,["125"] = 39,["126"] = 39,["127"] = 39,["128"] = 39,["129"] = 39,["130"] = 41,["131"] = 42,["132"] = 43,["133"] = 44,["134"] = 45,["135"] = 46,["136"] = 47,["137"] = 48,["138"] = 49,["139"] = 50,["140"] = 51,["141"] = 52,["142"] = 52,["143"] = 52,["144"] = 52,["145"] = 52,["146"] = 54,["147"] = 55,["148"] = 56,["149"] = 57,["150"] = 58,["151"] = 59,["152"] = 60,["153"] = 61,["154"] = 62,["155"] = 63,["156"] = 64,["159"] = 69,["160"] = 71,["161"] = 72,["162"] = 73,["163"] = 74,["164"] = 75,["165"] = 76,["166"] = 77,["167"] = 78,["168"] = 79,["169"] = 80,["170"] = 80,["171"] = 80,["172"] = 80,["173"] = 80,["174"] = 81,["175"] = 83,["176"] = 84,["177"] = 86,["178"] = 87,["179"] = 89,["180"] = 89,["181"] = 89,["182"] = 89,["183"] = 89,["184"] = 89,["185"] = 89,["186"] = 90,["187"] = 92,["188"] = 94,["189"] = 95,["190"] = 96,["191"] = 97,["192"] = 98,["193"] = 99,["194"] = 100,["195"] = 101,["196"] = 103,["197"] = 104,["198"] = 105,["199"] = 106,["200"] = 107,["201"] = 108,["202"] = 109,["203"] = 110,["204"] = 111,["205"] = 112,["206"] = 113,["207"] = 114,["208"] = 115,["209"] = 116,["210"] = 117,["211"] = 120,["212"] = 121,["213"] = 122,["214"] = 123,["215"] = 124,["216"] = 125,["217"] = 127,["218"] = 128,["219"] = 129,["220"] = 130,["221"] = 132,["222"] = 133,["223"] = 132,["224"] = 137,["225"] = 137,["226"] = 137,["227"] = 137,["228"] = 138,["229"] = 139,["230"] = 140,["231"] = 142,["232"] = 143,["233"] = 144,["235"] = 146,["236"] = 148,["237"] = 150,["238"] = 150,["239"] = 150,["240"] = 150,["241"] = 150,["242"] = 151,["243"] = 151,["244"] = 151,["245"] = 151,["246"] = 151,["247"] = 153,["248"] = 153,["249"] = 153,["250"] = 153,["251"] = 153,["252"] = 154,["253"] = 154,["254"] = 154,["255"] = 154,["256"] = 154,["257"] = 156,["258"] = 156,["259"] = 156,["260"] = 156,["261"] = 156,["262"] = 156,["263"] = 156,["264"] = 156,["265"] = 157,["266"] = 157,["267"] = 157,["268"] = 157,["269"] = 157,["270"] = 157,["271"] = 157,["272"] = 157,["273"] = 159,["274"] = 159,["275"] = 159,["276"] = 159,["277"] = 159,["278"] = 159,["279"] = 159,["280"] = 159,["281"] = 161,["282"] = 161,["284"] = 162,["285"] = 163,["286"] = 164,["287"] = 166,["288"] = 161,["294"] = 168,["296"] = 171,["297"] = 172,["302"] = 175,["303"] = 175,["304"] = 175,["305"] = 175,["306"] = 176,["307"] = 177,["308"] = 178,["309"] = 179,["310"] = 180,["311"] = 181,["312"] = 182,["313"] = 183,["314"] = 185,["315"] = 185,["316"] = 185,["317"] = 185,["318"] = 185,["319"] = 185,["320"] = 185,["321"] = 186,["322"] = 187,["323"] = 187,["324"] = 187,["325"] = 188,["326"] = 187,["327"] = 187,["328"] = 187,["329"] = 190,["330"] = 191,["331"] = 192});
local ____exports = {}
local ____TestUtils = include("framework.utils.TestUtils")
local assertEquals = ____TestUtils.assertEquals
local assertNotEquals = ____TestUtils.assertNotEquals
local ____QuickStrategy = include("framework.encrypt.QuickStrategy")
local quickStrategy = ____QuickStrategy.quickStrategy
local ____SafeTable = include("framework.encrypt.SafeTable")
local createSafeTable = ____SafeTable.createSafeTable
local setGlobalSeed = ____SafeTable.setGlobalSeed
local setWarnHook = ____SafeTable.setWarnHook
do
    local i = 0
    while i < 1000 do
        local testV = math.random()
        assertEquals(
            nil,
            quickStrategy.decrypt(
                quickStrategy.encrypt(testV, 0, 0),
                0,
                0
            ),
            testV
        )
        i = i + 1
    end
end
do
    local i = 0
    while i < 1000 do
        local testV = math.floor(math.random() * 10000000000)
        assertEquals(
            nil,
            quickStrategy.decrypt(
                quickStrategy.encrypt(testV, 0, 0),
                0,
                0
            ),
            testV
        )
        i = i + 1
    end
end
assertEquals(
    nil,
    tostring(quickStrategy.decrypt(
        quickStrategy.encrypt(10, 0, 0),
        0,
        0
    )),
    "10"
)
assertEquals(
    nil,
    tostring(quickStrategy.decrypt(
        quickStrategy.encrypt(10.5, 0, 0),
        0,
        0
    )),
    "10.5"
)
assertEquals(
    nil,
    tostring(quickStrategy.decrypt(
        quickStrategy.encrypt(-10, 0, 0),
        0,
        0
    )),
    "-10"
)
assertEquals(
    nil,
    tostring(quickStrategy.decrypt(
        quickStrategy.encrypt(-10.5, 0, 0),
        0,
        0
    )),
    "-10.5"
)
assertEquals(
    nil,
    quickStrategy.getSignature(4, 1723150609, 998),
    1723160599
)
assertEquals(
    nil,
    quickStrategy.getSignature(6, 1723150609, 998),
    1723160604
)
assertEquals(
    nil,
    quickStrategy.getSignature(7, 1723150609, 998),
    1723160606.5
)
assertEquals(
    nil,
    quickStrategy.getSignature(8, 1723150609, 998),
    1723160609
)
setGlobalSeed(998)
local a = createSafeTable(
    {
        a = 1,
        b = "abcd",
        c = true,
        sum = function(self)
            return self.a + 100
        end,
        set = function(self, v)
            self.a = v
        end
    },
    quickStrategy
)
assertEquals(nil, a.a, 1)
assertEquals(nil, a.b, "abcd")
assertEquals(nil, a.c, true)
assertEquals(
    nil,
    a:sum(),
    1 + 100
)
a.a = 15
a.b = "123123"
a.c = false
a.d = 666
local f = {}
a.f = f
assertEquals(nil, a.a, 15)
assertEquals(nil, a.b, "123123")
assertEquals(nil, a.c, false)
assertEquals(nil, a.d, 666)
assertEquals(nil, a.f, f)
assertEquals(
    nil,
    a:sum(),
    15 + 100
)
for k in pairs(a) do
    if k == "a" then
        assertEquals(nil, a[k], 15)
    elseif k == "b" then
        assertEquals(nil, a[k], "123123")
    elseif k == "c" then
        assertEquals(nil, a[k], false)
    elseif k == "d" then
        assertEquals(nil, a[k], 666)
    elseif k == "f" then
        assertEquals(nil, a.f, f)
    end
end
local am = getmetatable(a).__safeTable
am.raw.a = 13
am.raw.b = "666"
am.raw.c = true
am.raw.d = 777
am.raw.f = {}
assertEquals(nil, a.a, 15)
assertEquals(nil, a.b, "123123")
assertEquals(nil, a.c, false)
assertEquals(nil, a.d, 666)
assertEquals(
    nil,
    a:sum(),
    15 + 100
)
assertNotEquals(nil, a.f, f)
a:set(99)
assertEquals(nil, a.a, 99)
local list = createSafeTable({1, 2, 3, 4}, quickStrategy)
assertEquals(nil, #list, 4)
__TS__ArrayPush(
    list,
    5,
    6,
    7,
    8
)
assertEquals(nil, #list, 8)
list[5] = 50
assertEquals(nil, list[1], 1)
assertEquals(nil, list[2], 2)
assertEquals(nil, list[3], 3)
assertEquals(nil, list[4], 4)
assertEquals(nil, list[5], 50)
assertEquals(nil, list[6], 6)
assertEquals(nil, list[7], 7)
assertEquals(nil, list[8], 8)
__TS__ArraySplice(list, 4, 1)
assertEquals(nil, #list, 7)
assertEquals(nil, list[1], 1)
assertEquals(nil, list[2], 2)
assertEquals(nil, list[3], 3)
assertEquals(nil, list[4], 4)
assertEquals(nil, list[5], 6)
assertEquals(nil, list[6], 7)
assertEquals(nil, list[7], 8)
__TS__ArraySplice(list, 0, 3)
assertEquals(nil, #list, 4)
assertEquals(nil, list[1], 4)
assertEquals(nil, list[2], 6)
assertEquals(nil, list[3], 7)
assertEquals(nil, list[4], 8)
local listm = getmetatable(list).__safeTable
local listmm = listm.raw
listmm[1] = 100
listmm[2] = 200
listmm[3] = 300
listmm[5] = 400
assertEquals(nil, list[1], 4)
assertEquals(nil, list[2], 6)
assertEquals(nil, list[3], 7)
assertEquals(nil, list[4], 8)
setWarnHook(function(key, newval, rightval)
    console:error("异常", key, newval, rightval)
end)
local testVue = createSafeTable(
    vue.reactive({a = 0}),
    quickStrategy
)
assertEquals(nil, testVue.a, 0)
testVue.a = testVue.a + 1
assertEquals(nil, testVue.a, 1)
local i = 0
for _ in pairs(testVue) do
    i = i + 1
end
assertEquals(nil, i, 1)
console:log("encrypt test passed")
assertEquals(
    nil,
    JSON:stringify({1, 2, 3, 4}),
    "[1,2,3,4]"
)
assertEquals(
    nil,
    JSON:stringify({a = 1}),
    "{\"a\":1}"
)
assertEquals(
    nil,
    JSON:stringify(vue.reactive({1, 2, 3, 4})),
    "[1,2,3,4]"
)
assertEquals(
    nil,
    JSON:stringify(vue.reactive({a = 1})),
    "{\"a\":1}"
)
assertEquals(
    nil,
    JSON:stringify(createSafeTable(
        vue.reactive({1, 2, 3, 4}),
        quickStrategy
    )),
    "[1,2,3,4]"
)
assertEquals(
    nil,
    JSON:stringify(createSafeTable(
        vue.reactive({a = 1}),
        quickStrategy
    )),
    "{\"a\":1}"
)
assertEquals(
    nil,
    JSON:stringify(createSafeTable(
        vue.reactive({[1] = 2, [2] = 10}),
        quickStrategy
    )),
    "[2,10]"
)
local Test = __TS__Class()
Test.name = "Test"
function Test.prototype.____constructor(self)
    self.a = 1
    self.b = 2
    self.c = {1, 2, 3}
    self._d = 4
end
__TS__SetDescriptor(
    Test.prototype,
    "d",
    {
        get = function(self)
            return self._d
        end,
        set = function(self, v)
            self._d = v
        end
    },
    true
)
local test = createSafeTable(
    __TS__New(Test),
    quickStrategy
)
assertEquals(nil, test.a, 1)
assertEquals(nil, test.b, 2)
assertEquals(nil, test.c[1], 1)
assertEquals(nil, test.c[2], 2)
assertEquals(nil, test.c[3], 3)
assertEquals(nil, test.d, 4)
test.d = 5
assertEquals(nil, test.d, 5)
local testObj = vue.reactive({a = createSafeTable(
    vue.reactive({a = createSafeTable(
        vue.reactive({a = 1}),
        quickStrategy
    )}),
    quickStrategy
)})
local isOk = false
local w = vue.watch(
    testObj,
    function(____, a)
        isOk = true
    end,
    {flush = "sync", deep = true}
)
testObj.a.a.c = 2
w(nil)
assertEquals(nil, isOk, true)
return ____exports
