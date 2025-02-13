local ____lualib = include("lualib_bundle")
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 6,["8"] = 8,["9"] = 14,["10"] = 15,["11"] = 16,["13"] = 17,["14"] = 18,["15"] = 18,["16"] = 18,["17"] = 18,["18"] = 18,["19"] = 18,["20"] = 19,["22"] = 21,["25"] = 38,["28"] = 23,["29"] = 24,["30"] = 25,["32"] = 27,["33"] = 27,["34"] = 27,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 28,["41"] = 27,["42"] = 27,["43"] = 27,["45"] = 31,["46"] = 32,["47"] = 31,["54"] = 40,["59"] = 43,["60"] = 8,["61"] = 46,["62"] = 52,["63"] = 53,["64"] = 54,["66"] = 55,["67"] = 56,["68"] = 56,["69"] = 56,["70"] = 56,["71"] = 56,["72"] = 56,["73"] = 57,["75"] = 59,["78"] = 74,["81"] = 61,["82"] = 62,["83"] = 63,["85"] = 65,["86"] = 65,["87"] = 65,["88"] = 65,["89"] = 65,["90"] = 65,["91"] = 65,["92"] = 65,["93"] = 65,["95"] = 67,["96"] = 68,["97"] = 67,["104"] = 76,["109"] = 79,["110"] = 46,["111"] = 83,["112"] = 84,["113"] = 83,["114"] = 87,["115"] = 88,["116"] = 87,["117"] = 91,["118"] = 92,["119"] = 91,["120"] = 95,["121"] = 96,["122"] = 95,["123"] = 99,["124"] = 100,["125"] = 99,["126"] = 103,["127"] = 109,["128"] = 110,["130"] = 112,["132"] = 113,["133"] = 113,["135"] = 114,["136"] = 115,["137"] = 116,["139"] = 118,["140"] = 119,["141"] = 120,["142"] = 121,["143"] = 122,["145"] = 124,["147"] = 126,["148"] = 126,["149"] = 126,["150"] = 126,["151"] = 126,["152"] = 126,["153"] = 126,["154"] = 126,["158"] = 113,["161"] = 103,["162"] = 131,["163"] = 132,["164"] = 133,["165"] = 133,["166"] = 132,["167"] = 136,["168"] = 137,["169"] = 138,["170"] = 139,["171"] = 140,["172"] = 141,["173"] = 142,["174"] = 143,["177"] = 146,["178"] = 147,["179"] = 148,["180"] = 149,["181"] = 150,["185"] = 154,["186"] = 155,["187"] = 156,["188"] = 157,["192"] = 162,["193"] = 136,["194"] = 165,["195"] = 166,["196"] = 167,["198"] = 169,["199"] = 165,["202"] = 176,["203"] = 177,["204"] = 178,["206"] = 180,["207"] = 176});
local ____exports = {}
--- 执行栈，用于防止触发打断递归重复执行
local stack = {}
function ____exports.runEvent(self, eventList, defaultValue, target, source, eventName)
    local dv = defaultValue
    if eventList ~= nil then
        for ____, i in ipairs(eventList) do
            do
                if stack[i.effect.id] == true then
                    console:log(
                        "doEvent发生递归调用",
                        i.effect.id,
                        i.effect.config.name,
                        debug.traceback(nil, 2)
                    )
                    goto __continue4
                end
                stack[i.effect.id] = true
                do
                    local function ____catch(e)
                        console:error("执行runEvent异常", e)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        if i.callback ~= nil then
                            if type(i.callback) == "number" then
                                dv = i.callback
                            else
                                i:callback(
                                    i.unit.fight.fightUnits,
                                    i.unit,
                                    i.effect,
                                    target,
                                    i.event,
                                    dv,
                                    function(____, v)
                                        dv = v or 0
                                    end,
                                    source
                                )
                            end
                            i.unit.fight.report:using(function(____, r)
                                r:log((((((((r:getSourceName(i.effect) .. " -> ") .. r:getSourceName(target)) .. "  触发 ") .. eventName(nil)) .. "，将 #green ") .. tostring(defaultValue)) .. " 改为 #yellow ") .. tostring(dv))
                            end)
                        end
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
                stack[i.effect.id] = nil
            end
            ::__continue4::
        end
    end
    return dv or 0
end
function ____exports.runIntercept(self, interceptList, defaultValue, target, source, interceptName)
    local dv = defaultValue
    if interceptList ~= nil then
        for ____, i in ipairs(interceptList) do
            do
                if stack[i.effect.id] == true then
                    console:log(
                        "打断发生递归调用",
                        i.effect.id,
                        i.effect.config.name,
                        debug.traceback(nil, 2)
                    )
                    goto __continue16
                end
                stack[i.effect.id] = true
                do
                    local function ____catch(e)
                        console:error("执行打断异常", e)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        if i.callback ~= nil then
                            if type(i.callback) == "number" then
                                dv = i.callback
                            else
                                dv = i:callback(
                                    i.unit.fight.fightUnits,
                                    i.unit,
                                    i.effect,
                                    target,
                                    i.intercept,
                                    dv,
                                    source
                                )
                            end
                            i.unit.fight.report:using(function(____, r)
                                r:log((((((((r:getSourceName(i.effect) .. " -> ") .. r:getSourceName(target)) .. "  拦截 ") .. interceptName(nil)) .. "，将 #green ") .. tostring(defaultValue)) .. " 改为 #yellow ") .. tostring(dv))
                            end)
                        end
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
                stack[i.effect.id] = nil
            end
            ::__continue16::
        end
    end
    return dv or 0
end
function ____exports.isEffect(self, source)
    return source.order ~= nil
end
function ____exports.isUnit(self, source)
    return source.roleId ~= nil
end
function ____exports.isSkill(self, source)
    return source.isSkill ~= nil
end
function ____exports.isSimpleSkill(self, source)
    return source.isSimpleSkill ~= nil
end
function ____exports.getUnit(self, source)
    return ____exports.isUnit(nil, source) and source or (____exports.isEffect(nil, source) and source.source or source.owner)
end
function ____exports.getParticleByArray(self, particleList, quantity)
    if particleList == nil then
        return nil
    end
    local l = #particleList
    do
        local i = l - 1
        while i >= 0 do
            do
                local q, id, scale, socket, angle = table.unpack(particleList[i + 1])
                if q == nil or id == nil then
                    goto __continue32
                end
                if quantity >= q then
                    local particleId = nil
                    local effectId = nil
                    if type(id) == "string" then
                        effectId = __TS__ParseInt(id)
                    else
                        particleId = id
                    end
                    return {
                        index = i,
                        particleId = particleId,
                        effectId = effectId,
                        scale = scale or 1,
                        socket = socket or "",
                        angle = angle or 0
                    }
                end
            end
            ::__continue32::
            i = i - 1
        end
    end
end
local effectId = 0
function ____exports.genEffectId(self)
    effectId = effectId - 1
    return effectId
end
function ____exports.diffArray(self, newVal, oldVal)
    local oldMap = {}
    local checkMap = {}
    local add = {}
    local del = {}
    if oldVal ~= nil then
        for ____, o in ipairs(oldVal) do
            oldMap[o] = o
        end
    end
    if newVal ~= nil then
        for ____, n in ipairs(newVal) do
            checkMap[n] = n
            if oldMap[n] == nil then
                add[#add + 1] = n
            end
        end
    end
    if oldVal ~= nil then
        for ____, o in ipairs(oldVal) do
            if checkMap[o] == nil then
                del[#del + 1] = o
            end
        end
    end
    return {add = add, del = del}
end
function ____exports.isNullMap(self, map)
    for _ in pairs(map) do
        return false
    end
    return true
end
--- 优化浮点数精度，仅精确到7位小数
-- 例如 0.30000000000000004 变成 0.3
function ____exports.optimizePrecision(self, num)
    if num == nil then
        num = 0
    end
    return math.floor(num * 10000000 + 0.5) / 10000000
end
return ____exports
