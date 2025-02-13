local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 3,["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 7,["13"] = 9,["14"] = 10,["15"] = 11,["17"] = 5,["20"] = 3,["21"] = 18,["22"] = 19,["23"] = 18});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigList = ____EffectConfig.effectConfigList
local function checkEffectConfig(self)
    do
        local i = 0
        while i < #effectConfigList do
            local config = effectConfigList[i + 1]
            local particle = config.particle
            if particle ~= nil and type(particle[1]) ~= "table" then
                console:error(("表EffectConfig 行 " .. tostring(i + 4)) .. " 字段 ownerParticle 配置异常")
                config.ownerParticle = {particle}
            end
            i = i + 1
        end
    end
end
function ____exports.checkConfig(self)
    checkEffectConfig(nil)
end
return ____exports
