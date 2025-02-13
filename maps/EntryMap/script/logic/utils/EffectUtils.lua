local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 3,["10"] = 3,["11"] = 10,["12"] = 17,["13"] = 17,["15"] = 22,["16"] = 23,["17"] = 24,["18"] = 25,["20"] = 28,["21"] = 28,["22"] = 28,["23"] = 28,["24"] = 28,["25"] = 28,["26"] = 28,["27"] = 28,["28"] = 28,["29"] = 28,["30"] = 28,["31"] = 28,["32"] = 28,["33"] = 42,["34"] = 10,["35"] = 45,["36"] = 46,["37"] = 45,["38"] = 54,["39"] = 61,["40"] = 61,["42"] = 64,["43"] = 65,["44"] = 66,["45"] = 67,["47"] = 70,["48"] = 71,["49"] = 72,["50"] = 73,["51"] = 74,["52"] = 75,["53"] = 76,["54"] = 78,["55"] = 78,["56"] = 78,["58"] = 70,["59"] = 70,["60"] = 70,["61"] = 70,["62"] = 70,["63"] = 70,["64"] = 70,["65"] = 70,["66"] = 70,["67"] = 70,["68"] = 70,["69"] = 70,["70"] = 83,["71"] = 54,["72"] = 86,["73"] = 87,["74"] = 86});
local ____exports = {}
____exports.EffectUtils = __TS__Class()
local EffectUtils = ____exports.EffectUtils
EffectUtils.name = "EffectUtils"
function EffectUtils.prototype.____constructor(self)
end
function EffectUtils.add(self, _____7C92_5B50ID, _____76EE_6807, _____89D2_5EA6, _____7F29_653E, _____6301_7EED_65F6_95F4, _____9AD8_5EA6, _____63D2_69FD, _____8DDF_968F_65CB_8F6C_6A21_5F0F, _____8DDF_968F_7F29_653E, _____662F_5426_7ACB_5373_9500_6BC1)
    if _____63D2_69FD == nil then
        _____63D2_69FD = "hit_point"
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    elseif _____76EE_6807.x ~= nil then
        _____76EE_6807 = y3.point.create(_____76EE_6807.x, _____76EE_6807.y)
    end
    local particle = y3.particle.create({
        type = _____7C92_5B50ID,
        target = _____76EE_6807,
        angle = _____89D2_5EA6,
        scale = _____7F29_653E,
        time = _____6301_7EED_65F6_95F4,
        height = _____9AD8_5EA6,
        socket = _____63D2_69FD,
        follow_rotation = _____8DDF_968F_65CB_8F6C_6A21_5F0F,
        follow_scale = _____8DDF_968F_7F29_653E,
        immediate = _____662F_5426_7ACB_5373_9500_6BC1,
        detach = nil
    })
    return particle
end
function EffectUtils.remove(self, particle)
    particle:remove()
end
function EffectUtils.addProjectle(self, owner, _____6295_5C04_7269ID, _____76EE_6807, _____89D2_5EA6, _____6301_7EED_65F6_95F4, _____9AD8_5EA6, _____63D2_69FD, _____662F_5426_7ACB_5373_9500_6BC1)
    if _____63D2_69FD == nil then
        _____63D2_69FD = "hit_point"
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    elseif _____76EE_6807.x ~= nil then
        _____76EE_6807 = y3.point.create(_____76EE_6807.x, _____76EE_6807.y)
    end
    local ____y3_projectile_create_7 = y3.projectile.create
    local ____6295_5C04_7269ID_1 = _____6295_5C04_7269ID
    local ____76EE_6807_2 = _____76EE_6807
    local ____temp_3 = _____89D2_5EA6 or 0
    local ____temp_4 = _____9AD8_5EA6 or 0
    local ____6301_7EED_65F6_95F4_5 = _____6301_7EED_65F6_95F4
    local ____owner_y3Unit_6 = owner.y3Unit
    local ____662F_5426_7ACB_5373_9500_6BC1_0 = _____662F_5426_7ACB_5373_9500_6BC1
    if ____662F_5426_7ACB_5373_9500_6BC1_0 == nil then
        ____662F_5426_7ACB_5373_9500_6BC1_0 = false
    end
    local projectle = ____y3_projectile_create_7({
        key = ____6295_5C04_7269ID_1,
        target = ____76EE_6807_2,
        angle = ____temp_3,
        height = ____temp_4,
        time = ____6301_7EED_65F6_95F4_5,
        owner = ____owner_y3Unit_6,
        ability = nil,
        remove_immediately = ____662F_5426_7ACB_5373_9500_6BC1_0,
        socket = _____63D2_69FD,
        visible_rule = 1
    })
    return projectle
end
function EffectUtils.removeProjectle(self, projectle)
    projectle:remove()
end
return ____exports
