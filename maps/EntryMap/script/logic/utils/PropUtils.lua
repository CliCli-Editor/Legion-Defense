local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 11,["26"] = 11,["27"] = 12,["28"] = 12,["29"] = 14,["30"] = 15,["31"] = 16,["33"] = 18,["34"] = 19,["36"] = 22,["37"] = 23,["38"] = 24,["39"] = 25,["41"] = 27,["44"] = 30,["45"] = 32,["46"] = 33,["47"] = 34,["48"] = 34,["50"] = 35,["51"] = 36,["52"] = 37,["53"] = 38,["54"] = 39,["55"] = 41,["56"] = 42,["58"] = 44,["59"] = 45,["61"] = 47,["63"] = 49,["64"] = 50,["65"] = 51,["66"] = 51,["68"] = 52,["69"] = 53,["70"] = 54,["71"] = 54,["73"] = 55,["74"] = 56,["75"] = 56,["76"] = 57,["77"] = 58,["78"] = 59,["79"] = 60,["80"] = 61,["81"] = 62,["84"] = 65,["85"] = 14,["86"] = 68,["87"] = 69,["88"] = 70,["90"] = 72,["91"] = 73,["94"] = 75,["95"] = 76,["97"] = 77,["99"] = 78,["101"] = 79,["103"] = 80,["105"] = 81,["107"] = 82,["109"] = 83,["111"] = 84,["113"] = 85,["115"] = 86,["117"] = 87,["119"] = 88,["121"] = 89,["123"] = 90,["125"] = 91,["128"] = 93,["131"] = 68});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigMap = ____HeroConfig.heroConfigMap
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigMap = ____PetConfig.petConfigMap
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigMap = ____PetEffectConfig.petEffectConfigMap
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigMap = ____PetEmoConfig.petEmoConfigMap
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigMap = ____PetHaloConfig.petHaloConfigMap
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigMap = ____PetSkillConfig.petSkillConfigMap
local ____PetTitleConfig = include("logic.configs.PetTitleConfig")
local petTitleConfigMap = ____PetTitleConfig.petTitleConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigMap = ____PetWingConfig.petWingConfigMap
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap = ____SkinConfig.skinConfigMap
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
function ____exports.getPropIcon(self, cfg)
    if type(cfg) == "number" then
        cfg = propConfigMap[cfg]
    end
    if cfg == nil then
        return 0
    end
    if cfg.icon ~= nil then
        if cfg.icon ~= -1 then
            if i18n.currentLang == "en" and cfg.enIcon ~= 0 then
                return cfg.enIcon
            else
                return cfg.icon
            end
        end
        if cfg.propTag == 1 then
        elseif cfg.propTag == 2 then
            local hero = heroConfigMap[cfg.indexId]
            if hero ~= nil then
                return hero.icon
            end
        elseif cfg.propTag == 3 then
            local pet = petConfigMap[cfg.indexId]
            return pet and pet.icon or 0
        elseif cfg.propTag == 5 then
            local config = petTitleConfigMap[cfg.indexId]
            if config == nil then
                return 0
            end
            if i18n.currentLang == "en" and config.enIcon ~= 0 then
                return config.enIcon
            else
                return config.icon
            end
        elseif cfg.propTag == 11 then
            local heroSkin = skinConfigMap[cfg.indexId]
            if heroSkin ~= nil then
                return heroSkin.icon
            end
        elseif cfg.propTag == 13 then
            local mercenarySkin = skinMercenaryConfigMap[cfg.indexId]
            if mercenarySkin ~= nil then
                return mercenarySkin.icon
            end
        elseif cfg.propTag == 15 then
            local ____opt_2 = petSkillConfigMap[cfg.indexId]
            return ____opt_2 and ____opt_2.icon or 0
        elseif cfg.propTag == 17 then
            local skin = petHaloConfigMap[cfg.indexId]
            return skin.icon
        elseif cfg.propTag == 18 then
            local skin = petEffectConfigMap[cfg.indexId]
            return skin.icon
        end
    end
    return 0
end
function ____exports.getPropQuality(self, cfg)
    if type(cfg) == "number" then
        cfg = propConfigMap[cfg]
    end
    if cfg == nil then
        return 1
    end
    repeat
        local ____switch27 = cfg.propTag
        local ____cond27 = ____switch27 == 3
        if ____cond27 then
            return petConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 11
        if ____cond27 then
            return skinConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 13
        if ____cond27 then
            return skinMercenaryConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 15
        if ____cond27 then
            return petSkillConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 16
        if ____cond27 then
            return petWingConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 17
        if ____cond27 then
            return petHaloConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 18
        if ____cond27 then
            return petEffectConfigMap[cfg.indexId].quality
        end
        ____cond27 = ____cond27 or ____switch27 == 19
        if ____cond27 then
            return petEmoConfigMap[cfg.indexId].quality
        end
        do
            return 1
        end
    until true
end
return ____exports
