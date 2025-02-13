local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 55,["6"] = 56,["7"] = 58,["8"] = 59,["9"] = 58,["10"] = 62,["11"] = 63,["12"] = 62,["13"] = 66,["14"] = 67,["15"] = 68,["17"] = 70,["18"] = 71,["19"] = 73,["21"] = 76,["22"] = 76,["23"] = 76,["24"] = 76,["25"] = 76,["26"] = 76,["27"] = 76,["28"] = 84,["29"] = 85,["30"] = 88,["31"] = 89,["32"] = 90,["35"] = 95,["36"] = 96,["37"] = 97,["38"] = 98,["39"] = 99,["42"] = 103,["43"] = 104,["44"] = 105,["45"] = 106,["46"] = 107,["47"] = 108,["48"] = 110,["49"] = 111,["50"] = 112,["52"] = 114,["53"] = 115,["57"] = 119,["58"] = 103,["59"] = 122,["60"] = 122,["61"] = 125,["62"] = 126,["63"] = 122,["64"] = 129,["65"] = 130,["66"] = 122,["67"] = 133,["68"] = 134,["69"] = 135,["70"] = 136,["71"] = 137,["72"] = 138,["74"] = 139,["75"] = 139,["77"] = 139,["78"] = 140,["83"] = 145,["84"] = 146,["85"] = 147,["86"] = 148,["88"] = 150,["89"] = 122,["90"] = 153,["91"] = 154,["92"] = 155,["93"] = 156,["94"] = 157,["95"] = 158,["96"] = 160,["97"] = 161,["98"] = 162,["99"] = 163,["101"] = 165,["103"] = 167,["104"] = 168,["105"] = 169,["107"] = 155,["108"] = 122,["109"] = 175,["110"] = 176,["111"] = 122,["112"] = 122,["113"] = 180,["114"] = 181,["115"] = 182,["116"] = 66});
local ____exports = {}
local globalSeed = 0
local warnHook = nil
function ____exports.setGlobalSeed(seed)
    globalSeed = seed
end
function ____exports.setWarnHook(cb)
    warnHook = cb
end
function ____exports.createSafeTable(raw, strategy)
    if type(raw) ~= "table" then
        return raw
    end
    local m = getmetatable(raw)
    if m ~= nil and m.__safeTable ~= nil then
        return raw
    end
    local data = {
        fields = {},
        signature = {},
        seed = os.time() - 1723150609,
        raw = raw,
        backup = {}
    }
    if strategy.getSignature ~= nil then
        data.strategy = strategy
        for k, v in pairs(raw) do
            data.signature[k] = strategy.getSignature(v, data.seed, globalSeed)
            data.backup[k] = strategy.encrypt(v, data.seed, globalSeed)
        end
    else
        for ____, s in ipairs(strategy) do
            data.fields[s.field] = s.strategy
            local v = raw[s.field]
            data.signature[s.field] = s.strategy.getSignature(v, data.seed, globalSeed)
            data.backup[s.field] = s.strategy.encrypt(v, data.seed, globalSeed)
        end
    end
    local function getter(key, v)
        if v ~= nil then
            local strategy = data.strategy or data.fields[key]
            if strategy ~= nil then
                local signature = data.signature[key]
                if signature ~= nil and signature ~= strategy.getSignature(v, data.seed, globalSeed) then
                    local newV = strategy.decrypt(data.backup[key], data.seed, globalSeed)
                    if warnHook ~= nil then
                        warnHook(key, v, newV)
                    end
                    data.raw[key] = newV
                    return newV
                end
            end
        end
        return v
    end
    local metatable = {
        __safeTable = data,
        __len = function(self)
            return #data.raw
        end,
        __index = function(self, key)
            return getter(key, data.raw[key])
        end,
        __newindex = function(self, key, value)
            local m = getmetatable(data.raw)
            if m ~= nil then
                local descriptors = rawget(m, "_descriptors")
                if descriptors ~= nil then
                    local descriptor = descriptors[key]
                    local ____opt_result_2
                    if descriptor ~= nil then
                        ____opt_result_2 = descriptor.set
                    end
                    if ____opt_result_2 ~= nil then
                        descriptor.set(self, value)
                        return
                    end
                end
            end
            local strategy = data.strategy or data.fields[key]
            if strategy ~= nil then
                data.signature[key] = strategy.getSignature(value, data.seed, globalSeed)
                data.backup[key] = strategy.encrypt(value, data.seed, globalSeed)
            end
            data.raw[key] = value
        end,
        __pairs = function(self, t)
            local k = nil
            return function()
                local d = data.raw
                local m = getmetatable(d)
                if m ~= nil and m.__properties ~= nil then
                    local key, value = next(m.__properties, k)
                    k = key
                    if value ~= nil then
                        value = value[1](value, self)
                    end
                    return k, getter(key, value)
                else
                    local key, value = next(d, k)
                    k = key
                    return k, getter(key, value)
                end
            end, t
        end,
        __tostring = function(self)
            return tostring(data.raw)
        end
    }
    local result = {}
    setmetatable(result, metatable)
    return result
end
return ____exports
