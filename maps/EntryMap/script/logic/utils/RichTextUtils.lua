local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__StringReplace = ____lualib.__TS__StringReplace
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSubstring = ____lualib.__TS__StringSubstring
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__ParseFloat = ____lualib.__TS__ParseFloat
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 6,["18"] = 6,["19"] = 6,["21"] = 6,["22"] = 46,["23"] = 46,["24"] = 46,["26"] = 47,["27"] = 48,["29"] = 50,["30"] = 52,["31"] = 53,["33"] = 56,["34"] = 58,["36"] = 60,["37"] = 61,["38"] = 61,["40"] = 62,["41"] = 63,["42"] = 63,["44"] = 64,["45"] = 66,["50"] = 70,["51"] = 70,["52"] = 71,["53"] = 72,["54"] = 73,["55"] = 70,["58"] = 76,["59"] = 77,["60"] = 79,["61"] = 80,["62"] = 81,["63"] = 82,["64"] = 83,["66"] = 86,["67"] = 87,["69"] = 89,["70"] = 90,["72"] = 92,["73"] = 93,["74"] = 46,["75"] = 96,["76"] = 96,["77"] = 96,["79"] = 97,["80"] = 98,["82"] = 100,["83"] = 102,["84"] = 104,["86"] = 106,["87"] = 107,["88"] = 107,["90"] = 108,["91"] = 109,["92"] = 109,["94"] = 110,["95"] = 111,["96"] = 112,["100"] = 114,["102"] = 116,["103"] = 116,["104"] = 117,["105"] = 118,["106"] = 119,["107"] = 116,["110"] = 122,["111"] = 123,["112"] = 125,["113"] = 126,["114"] = 127,["115"] = 128,["116"] = 129,["118"] = 132,["119"] = 133,["121"] = 135,["122"] = 136,["124"] = 138,["125"] = 139,["126"] = 96,["127"] = 141,["128"] = 141,["129"] = 141,["131"] = 142,["132"] = 143,["134"] = 145,["135"] = 146,["137"] = 148,["139"] = 150,["140"] = 150,["141"] = 151,["142"] = 152,["143"] = 153,["144"] = 150,["147"] = 156,["148"] = 157,["149"] = 159,["150"] = 160,["151"] = 161,["152"] = 162,["153"] = 163,["155"] = 166,["156"] = 167,["158"] = 169,["159"] = 170,["160"] = 172,["161"] = 173,["162"] = 174,["163"] = 175,["164"] = 176,["166"] = 179,["167"] = 180,["169"] = 182,["170"] = 183,["172"] = 185,["173"] = 186,["174"] = 141,["175"] = 190,["176"] = 191,["177"] = 192,["178"] = 194,["179"] = 195,["180"] = 196,["181"] = 197,["182"] = 198,["183"] = 199,["185"] = 201,["186"] = 202,["188"] = 204,["189"] = 205,["190"] = 206,["191"] = 207,["193"] = 209,["194"] = 210,["195"] = 212,["196"] = 213,["197"] = 214,["198"] = 215,["199"] = 216,["200"] = 217,["201"] = 218,["203"] = 220,["204"] = 221,["205"] = 222,["207"] = 224,["208"] = 225,["209"] = 226,["211"] = 228,["212"] = 229,["213"] = 230,["215"] = 232,["218"] = 235,["220"] = 238,["221"] = 190,["222"] = 241,["223"] = 242,["224"] = 243,["225"] = 244,["226"] = 245,["227"] = 247,["228"] = 248,["229"] = 249,["230"] = 250,["231"] = 251,["232"] = 252,["233"] = 253,["235"] = 255,["236"] = 256,["237"] = 257,["238"] = 258,["240"] = 260,["242"] = 263,["243"] = 241,["244"] = 24,["245"] = 38,["246"] = 39,["247"] = 40,["248"] = 42,["249"] = 43});
local ____exports = {}
local ____AchieveConfig = include("logic.configs.AchieveConfig")
local achieveConfigMap = ____AchieveConfig.achieveConfigMap
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
____exports.RichTextUtils = __TS__Class()
local RichTextUtils = ____exports.RichTextUtils
RichTextUtils.name = "RichTextUtils"
function RichTextUtils.prototype.____constructor(self)
end
function RichTextUtils.replace(self, text, level, defaultColor)
    if level == nil then
        level = 1
    end
    if self.map[text] ~= nil and self.map[text][level] ~= nil then
        return self.map[text][level]
    end
    local ret = "" .. text
    if defaultColor == nil then
        defaultColor = self.defaultColor
    end
    local aaa = string.gmatch(ret, "([0-9.%%/]+)")
    for a in aaa do
        do
            local list = __TS__StringSplit(a, "/")
            if #list == 1 then
                goto __continue6
            end
            local r = list[level]
            if r == nil then
                goto __continue6
            end
            list[level] = (self.rate .. r) .. defaultColor
            ret = __TS__StringReplace(ret, a, list[level])
        end
        ::__continue6::
    end
    do
        local index = 0
        while index < #self.list do
            local key = self.list[index + 1]
            local color = self.list[index + 1 + 1]
            ret = __TS__StringReplaceAll(ret, key, (color .. key) .. defaultColor)
            index = index + 2
        end
    end
    aaa = string.gmatch(ret, "(（[%s%S]-）)")
    for a in aaa do
        local a2 = a
        a2 = __TS__StringReplace(a2, "（", "")
        a2 = __TS__StringReplace(a2, "）", "")
        if (string.find(a, defaultColor, nil, true) or 0) - 1 ~= -1 then
            a2 = __TS__StringReplaceAll(a2, defaultColor, self.rate)
        end
        local b = (self.rate .. a2) .. defaultColor
        ret = __TS__StringReplaceAll(ret, a, b)
    end
    if self.map[text] == nil then
        self.map[text] = {}
    end
    self.map[text][level] = ret
    return ret
end
function RichTextUtils.replace2(self, text, level)
    if level == nil then
        level = 1
    end
    if self.map[text] ~= nil and self.map[text][level] ~= nil then
        return self.map[text][level]
    end
    local ret = "" .. text
    local aaa = string.gmatch(ret, "([0-9.%%/]+)")
    for a in aaa do
        do
            local list = __TS__StringSplit(a, "/")
            if #list == 1 then
                goto __continue15
            end
            local r = list[level]
            if r == nil then
                goto __continue15
            end
            list[level] = (self.rate .. r) .. self.defaultColor
            local b = table.concat(list, "!_!")
            ret = __TS__StringReplace(ret, a, b)
        end
        ::__continue15::
    end
    ret = __TS__StringReplaceAll(ret, "!_!", "/")
    do
        local index = 0
        while index < #self.list do
            local key = self.list[index + 1]
            local color = self.list[index + 1 + 1]
            ret = __TS__StringReplaceAll(ret, key, (color .. key) .. self.defaultColor)
            index = index + 2
        end
    end
    aaa = string.gmatch(ret, "(（[%s%S]-）)")
    for a in aaa do
        local a2 = a
        a2 = __TS__StringReplace(a2, "（", "")
        a2 = __TS__StringReplace(a2, "）", "")
        if (string.find(a, self.defaultColor, nil, true) or 0) - 1 ~= -1 then
            a2 = __TS__StringReplaceAll(a2, self.defaultColor, self.rate)
        end
        local b = (self.rate .. a2) .. self.defaultColor
        ret = __TS__StringReplaceAll(ret, a, b)
    end
    if self.map[text] == nil then
        self.map[text] = {}
    end
    self.map[text][level] = ret
    return ret
end
function RichTextUtils.replaceSkill(self, text, defaultColor)
    if defaultColor == nil then
        defaultColor = ""
    end
    if defaultColor == "" then
        defaultColor = self.skillColor
    end
    if self.map_skill[text] ~= nil and self.map_skill[text][defaultColor] ~= nil then
        return self.map_skill[text][defaultColor]
    end
    local ret = "" .. text
    do
        local index = 0
        while index < #self.list do
            local key = self.list[index + 1]
            local color = self.list[index + 1 + 1]
            ret = __TS__StringReplaceAll(ret, key, (color .. key) .. defaultColor)
            index = index + 2
        end
    end
    local aaa = string.gmatch(ret, "(（[%s%S]-）)")
    for a in aaa do
        local a2 = a
        a2 = __TS__StringReplace(a2, "（", "")
        a2 = __TS__StringReplace(a2, "）", "")
        if (string.find(a, defaultColor, nil, true) or 0) - 1 ~= -1 then
            a2 = __TS__StringReplaceAll(a2, defaultColor, self.rate)
        end
        local b = (self.rate .. a2) .. defaultColor
        ret = __TS__StringReplaceAll(ret, a, b)
    end
    aaa = string.gmatch(ret, "(%([%s%S]-%))")
    for a in aaa do
        local a2 = a
        a2 = __TS__StringReplace(a2, "(", "")
        a2 = __TS__StringReplace(a2, ")", "")
        if (string.find(a, defaultColor, nil, true) or 0) - 1 ~= -1 then
            a2 = __TS__StringReplaceAll(a2, defaultColor, self.rate)
        end
        local b = (self.rate .. a2) .. defaultColor
        ret = __TS__StringReplaceAll(ret, a, b)
    end
    if self.map_skill[text] == nil then
        self.map_skill[text] = {}
    end
    self.map_skill[text][defaultColor] = ret
    return ret
end
function RichTextUtils.replaceBless(self, cfgId, level)
    local cfg = blessConfigMap[cfgId]
    local levels = {}
    if level == 1 then
        levels = cfg.level1
    elseif level == 2 then
        levels = cfg.level2
    elseif level == 3 then
        levels = cfg.level3
    else
        levels = cfg.level1
        console:error("祝福文本传入出错了，当前等级为：", level)
    end
    local a2 = cfg.des.value
    if #levels == 0 then
        console:error("祝福文本传入出错了，当前等级为：", level, "对应的数据信息为空")
        return a2
    end
    local aaa = string.gmatch(a2, "%[(.-)%]")
    for a in aaa do
        local list = __TS__StringSplit(a, ",")
        local res = "" .. a
        local key = list[1]
        local percent = false
        if __TS__StringStartsWith(key, "%") then
            key = __TS__StringSubstring(key, 1)
            percent = true
        end
        local item = levels[1]
        if #list == 2 then
            item = levels[__TS__ParseInt(list[2])]
        end
        local v = item[key]
        if type(v) == "number" then
            v = math.abs(v)
        end
        if v ~= nil then
            if percent then
                res = tostring(math.floor(__TS__ParseFloat(v) * 100 + 0.5)) .. "%"
            else
                res = tostring(v)
            end
        end
        a2 = __TS__StringReplaceAll(a2, ("[" .. a) .. "]", res)
    end
    return a2
end
function RichTextUtils.replaceAchieve(self, cfgId)
    local cfg = achieveConfigMap[cfgId]
    local a2 = cfg.achieveDes.value
    local aaa = string.gmatch(a2, "%[(.-)%]")
    for a in aaa do
        local list = __TS__StringSplit(a, ",")
        local res = "" .. a
        local key = list[1]
        local percent = false
        if __TS__StringStartsWith(key, "%") then
            key = __TS__StringSubstring(key, 1)
            percent = true
        end
        local item = cfg.achieveValue
        local v = math.abs(item)
        if v ~= nil then
            res = tostring(v)
        end
        a2 = __TS__StringReplaceAll(a2, ("[" .. a) .. "]", res)
    end
    return a2
end
RichTextUtils.list = {"水晶", "#c5fe9b", "利息", "#c5fe9b"}
RichTextUtils.rate = "#4efea4"
RichTextUtils.defaultColor = "#c2d1eb"
RichTextUtils.skillColor = "#d0d0d0"
RichTextUtils.map = {}
RichTextUtils.map_skill = {}
return ____exports
