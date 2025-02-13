local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFrom = ____lualib.__TS__ArrayFrom
local __TS__Delete = ____lualib.__TS__Delete
local __TS__ArrayReverse = ____lualib.__TS__ArrayReverse
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__StringIncludes = ____lualib.__TS__StringIncludes
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["16"] = 169,["17"] = 169,["18"] = 172,["19"] = 173,["20"] = 174,["21"] = 175,["22"] = 176,["23"] = 177,["24"] = 178,["26"] = 180,["27"] = 182,["28"] = 183,["29"] = 184,["30"] = 185,["32"] = 187,["33"] = 188,["34"] = 189,["35"] = 190,["36"] = 191,["37"] = 192,["38"] = 192,["39"] = 192,["40"] = 193,["41"] = 194,["42"] = 192,["43"] = 192,["44"] = 197,["46"] = 199,["48"] = 201,["49"] = 204,["50"] = 205,["53"] = 208,["54"] = 209,["56"] = 187,["59"] = 213,["61"] = 2,["62"] = 2,["64"] = 4,["65"] = 2,["66"] = 6,["67"] = 6,["68"] = 6,["70"] = 7,["71"] = 9,["72"] = 10,["73"] = 11,["74"] = 9,["75"] = 14,["76"] = 15,["77"] = 17,["78"] = 17,["79"] = 18,["80"] = 19,["81"] = 20,["82"] = 21,["84"] = 23,["85"] = 23,["86"] = 23,["88"] = 23,["89"] = 24,["90"] = 26,["91"] = 29,["92"] = 29,["93"] = 29,["94"] = 29,["95"] = 29,["96"] = 29,["97"] = 29,["98"] = 30,["99"] = 32,["100"] = 32,["101"] = 32,["102"] = 32,["103"] = 32,["104"] = 32,["105"] = 32,["106"] = 32,["107"] = 32,["108"] = 32,["109"] = 32,["111"] = 35,["112"] = 35,["113"] = 38,["115"] = 40,["116"] = 41,["118"] = 44,["119"] = 45,["120"] = 46,["121"] = 47,["122"] = 49,["124"] = 52,["125"] = 53,["126"] = 55,["127"] = 56,["129"] = 59,["130"] = 60,["131"] = 62,["132"] = 63,["134"] = 69,["135"] = 70,["136"] = 70,["137"] = 70,["138"] = 70,["139"] = 70,["140"] = 70,["141"] = 70,["143"] = 72,["144"] = 72,["145"] = 72,["146"] = 72,["147"] = 72,["148"] = 72,["149"] = 72,["151"] = 75,["152"] = 75,["153"] = 75,["154"] = 75,["155"] = 75,["156"] = 75,["157"] = 75,["158"] = 77,["159"] = 79,["160"] = 79,["161"] = 79,["162"] = 79,["163"] = 79,["164"] = 79,["165"] = 79,["166"] = 79,["167"] = 79,["168"] = 79,["169"] = 79,["171"] = 81,["172"] = 82,["173"] = 83,["175"] = 85,["176"] = 86,["181"] = 42,["184"] = 91,["185"] = 38,["186"] = 94,["187"] = 95,["188"] = 96,["189"] = 97,["192"] = 6,["193"] = 102,["194"] = 103,["195"] = 104,["196"] = 105,["198"] = 110,["200"] = 102,["201"] = 116,["202"] = 117,["203"] = 118,["204"] = 119,["205"] = 120,["206"] = 122,["207"] = 123,["208"] = 124,["209"] = 125,["210"] = 126,["211"] = 127,["212"] = 128,["215"] = 132,["216"] = 133,["218"] = 136,["219"] = 137,["220"] = 116,["221"] = 140,["222"] = 141,["223"] = 142,["225"] = 144,["227"] = 140,["228"] = 148,["229"] = 149,["231"] = 150,["232"] = 150,["233"] = 151,["234"] = 152,["236"] = 150,["239"] = 155,["240"] = 148,["241"] = 157,["242"] = 158,["243"] = 157,["244"] = 160,["245"] = 161,["246"] = 160,["247"] = 163,["248"] = 164,["249"] = 163,["250"] = 217,["251"] = 217,["252"] = 217,["253"] = 218,["254"] = 219,["255"] = 221,["257"] = 224,["258"] = 225,["259"] = 228,["260"] = 229,["263"] = 233,["264"] = 233,["265"] = 234,["266"] = 235,["267"] = 233,["270"] = 238,["271"] = 218,["272"] = 241,["273"] = 249,["274"] = 250,["275"] = 251,["277"] = 253,["278"] = 254,["281"] = 217,["282"] = 241,["283"] = 263,["284"] = 265,["285"] = 266,["286"] = 265});
local ____exports = {}
local buildValues
function buildValues(self, diff, lastComponent, newString, oldString, useLongestToken)
    local components = {}
    local nextComponent
    while lastComponent do
        components[#components + 1] = lastComponent
        nextComponent = lastComponent.previousComponent
        __TS__Delete(lastComponent, "previousComponent")
        lastComponent = nextComponent
    end
    __TS__ArrayReverse(components)
    local componentPos = 0
    local componentLen = #components
    local newPos = 0
    local oldPos = 0
    do
        while componentPos < componentLen do
            local component = components[componentPos + 1]
            if not component.removed then
                if not component.added and useLongestToken then
                    local value = __TS__ArraySlice(newString, newPos, newPos + component.count)
                    value = __TS__ArrayMap(
                        value,
                        function(self, value, i)
                            local oldValue = oldString[oldPos + i + 1]
                            return #oldValue > #value and oldValue or value
                        end
                    )
                    component.value = diff:join(value)
                else
                    component.value = diff:join(__TS__ArraySlice(newString, newPos, newPos + component.count))
                end
                newPos = newPos + component.count
                if not component.added then
                    oldPos = oldPos + component.count
                end
            else
                component.value = diff:join(__TS__ArraySlice(oldString, oldPos, oldPos + component.count))
                oldPos = oldPos + component.count
            end
            componentPos = componentPos + 1
        end
    end
    return components
end
local Diff = __TS__Class()
Diff.name = "Diff"
function Diff.prototype.____constructor(self)
    self.useLongestToken = false
end
function Diff.prototype.diff(self, oldString, newString, options)
    if options == nil then
        options = {}
    end
    local ____self = self
    local function done(self, value)
        value = ____self:postProcess(value, options)
        return value
    end
    local oldStringList = self:removeEmpty(self:tokenize(oldString, options))
    local newStringList = self:removeEmpty(self:tokenize(newString, options))
    local newLen = #newStringList
    local oldLen = #oldStringList
    local editLength = 1
    local maxEditLength = newLen + oldLen
    if options.maxEditLength ~= nil then
        maxEditLength = math.min(maxEditLength, options.maxEditLength)
    end
    local ____options_timeout_0 = options.timeout
    if ____options_timeout_0 == nil then
        ____options_timeout_0 = math.huge
    end
    local maxExecutionTime = ____options_timeout_0
    local abortAfterTimestamp = Date:now() + maxExecutionTime
    local bestPath = {{oldPos = -1, lastComponent = nil}}
    local newPos = self:extractCommon(
        bestPath[1],
        newStringList,
        oldStringList,
        0,
        options
    )
    if bestPath[1].oldPos + 1 >= oldLen and newPos + 1 >= newLen then
        return done(
            nil,
            buildValues(
                nil,
                ____self,
                bestPath[1].lastComponent,
                newStringList,
                oldStringList,
                ____self.useLongestToken
            )
        )
    end
    local minDiagonalToConsider = -math.huge
    local maxDiagonalToConsider = math.huge
    local function execEditLength(self)
        do
            local diagonalPath = math.max(minDiagonalToConsider, -editLength)
            while diagonalPath <= math.min(maxDiagonalToConsider, editLength) do
                do
                    local basePath
                    local removePath = bestPath[diagonalPath]
                    local addPath = bestPath[diagonalPath + 1 + 1]
                    if removePath ~= nil then
                        bestPath[diagonalPath] = nil
                    end
                    local canAdd = false
                    if addPath ~= nil then
                        local addPathNewPos = addPath.oldPos - diagonalPath
                        canAdd = addPath and 0 <= addPathNewPos and addPathNewPos < newLen
                    end
                    local canRemove = removePath and removePath.oldPos + 1 < oldLen
                    if not canAdd and not canRemove then
                        bestPath[diagonalPath + 1] = nil
                        goto __continue8
                    end
                    if not canRemove or canAdd and removePath.oldPos < addPath.oldPos then
                        basePath = ____self:addToPath(
                            addPath,
                            true,
                            false,
                            0,
                            options
                        )
                    else
                        basePath = ____self:addToPath(
                            removePath,
                            false,
                            true,
                            1,
                            options
                        )
                    end
                    newPos = ____self:extractCommon(
                        basePath,
                        newStringList,
                        oldStringList,
                        diagonalPath,
                        options
                    )
                    if basePath.oldPos + 1 >= oldLen and newPos + 1 >= newLen then
                        return done(
                            nil,
                            buildValues(
                                nil,
                                ____self,
                                basePath.lastComponent,
                                newStringList,
                                oldStringList,
                                ____self.useLongestToken
                            )
                        )
                    else
                        bestPath[diagonalPath + 1] = basePath
                        if basePath.oldPos + 1 >= oldLen then
                            maxDiagonalToConsider = math.min(maxDiagonalToConsider, diagonalPath - 1)
                        end
                        if newPos + 1 >= newLen then
                            minDiagonalToConsider = math.max(minDiagonalToConsider, diagonalPath + 1)
                        end
                    end
                end
                ::__continue8::
                diagonalPath = diagonalPath + 2
            end
        end
        editLength = editLength + 1
    end
    while editLength <= maxEditLength and Date:now() <= abortAfterTimestamp do
        local ret = execEditLength(nil)
        if ret then
            return ret
        end
    end
end
function Diff.prototype.addToPath(self, path, added, removed, oldPosInc, options)
    local last = path.lastComponent
    if last and not options.oneChangePerToken and last.added == added and last.removed == removed then
        return {oldPos = path.oldPos + oldPosInc, lastComponent = {count = last.count + 1, added = added, removed = removed, previousComponent = last.previousComponent}}
    else
        return {oldPos = path.oldPos + oldPosInc, lastComponent = {count = 1, added = added, removed = removed, previousComponent = last}}
    end
end
function Diff.prototype.extractCommon(self, basePath, newString, oldString, diagonalPath, options)
    local newLen = #newString
    local oldLen = #oldString
    local oldPos = basePath.oldPos
    local newPos = oldPos - diagonalPath
    local commonCount = 0
    while newPos + 1 < newLen and oldPos + 1 < oldLen and self:equals(oldString[oldPos + 1 + 1], newString[newPos + 1 + 1], options) do
        newPos = newPos + 1
        oldPos = oldPos + 1
        commonCount = commonCount + 1
        if options.oneChangePerToken then
            basePath.lastComponent = {count = 1, previousComponent = basePath.lastComponent, added = false, removed = false}
        end
    end
    if commonCount and not options.oneChangePerToken then
        basePath.lastComponent = {count = commonCount, previousComponent = basePath.lastComponent, added = false, removed = false}
    end
    basePath.oldPos = oldPos
    return newPos
end
function Diff.prototype.equals(self, left, right, options)
    if options.comparator then
        return options:comparator(left, right)
    else
        return left == right or options.ignoreCase and string.lower(left) == string.lower(right)
    end
end
function Diff.prototype.removeEmpty(self, array)
    local ret = {}
    do
        local i = 0
        while i < #array do
            if array[i + 1] then
                ret[#ret + 1] = array[i + 1]
            end
            i = i + 1
        end
    end
    return ret
end
function Diff.prototype.tokenize(self, value, options)
    return __TS__ArrayFrom(value)
end
function Diff.prototype.join(self, chars)
    return table.concat(chars, "")
end
function Diff.prototype.postProcess(self, changeObjects, options)
    return changeObjects
end
local LineDiff = __TS__Class()
LineDiff.name = "LineDiff"
__TS__ClassExtends(LineDiff, Diff)
function LineDiff.prototype.tokenize(self, value, options)
    if options.stripTrailingCr then
        value = string.gsub(value, "\r\n", "\n")
    end
    local retLines = {}
    local linesAndNewlines = __TS__StringSplit(value, "\n")
    if linesAndNewlines[#linesAndNewlines] == "" then
        table.remove(linesAndNewlines)
    end
    do
        local i = 0
        while i < #linesAndNewlines do
            local line = linesAndNewlines[i + 1]
            retLines[#retLines + 1] = line .. "\n"
            i = i + 1
        end
    end
    return retLines
end
function LineDiff.prototype.equals(self, left, right, options)
    if options.ignoreWhitespace then
        if not options.newlineIsToken or not __TS__StringIncludes(left, "\n") then
            left = __TS__StringTrim(left)
        end
        if not options.newlineIsToken or not __TS__StringIncludes(right, "\n") then
            right = __TS__StringTrim(right)
        end
    end
    return Diff.prototype.equals(self, left, right, options)
end
local lineDiff = __TS__New(LineDiff)
function ____exports.diffLines(self, oldStr, newStr)
    return lineDiff:diff(oldStr, newStr)
end
return ____exports
