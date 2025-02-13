local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 3,["7"] = 5,["8"] = 6,["9"] = 7,["10"] = 8,["11"] = 9,["12"] = 10,["13"] = 11,["14"] = 12,["15"] = 13,["16"] = 14,["17"] = 15,["18"] = 16,["19"] = 17,["20"] = 18,["21"] = 19,["22"] = 20,["23"] = 21,["24"] = 22,["25"] = 23,["26"] = 24,["27"] = 25,["28"] = 26,["29"] = 27,["30"] = 28,["31"] = 29,["32"] = 30,["33"] = 31,["34"] = 32,["35"] = 33,["36"] = 34,["37"] = 35,["38"] = 36,["39"] = 37,["40"] = 38,["41"] = 39,["42"] = 40,["43"] = 41,["44"] = 42,["45"] = 43,["46"] = 44,["47"] = 45,["48"] = 46,["49"] = 47,["50"] = 48,["51"] = 49,["52"] = 50,["53"] = 51,["54"] = 52,["55"] = 53,["56"] = 54,["57"] = 55,["58"] = 56,["59"] = 57,["60"] = 58,["61"] = 59,["62"] = 60,["63"] = 61,["64"] = 62,["65"] = 63,["66"] = 64,["67"] = 65,["68"] = 66,["69"] = 67,["70"] = 68,["71"] = 69,["72"] = 70,["73"] = 71,["74"] = 72,["75"] = 73,["76"] = 74,["77"] = 75,["78"] = 76,["79"] = 78,["80"] = 79,["83"] = 82,["84"] = 83,["85"] = 84,["86"] = 85,["87"] = 86,["89"] = 88,["92"] = 78});
local ____exports = {}
local isInit = false
local initMap = {}
initMap.AchieveConfig = include("logic.configs.AchieveConfig").AchieveConfigInit
initMap.AssassinConfig = include("logic.configs.AssassinConfig").AssassinConfigInit
initMap.AutomaticSelectionRuleConfig = include("logic.configs.AutomaticSelectionRuleConfig").AutomaticSelectionRuleConfigInit
initMap.BattlepassRewardConfig = include("logic.configs.BattlepassRewardConfig").BattlepassRewardConfigInit
initMap.BattlepassSeasonConfig = include("logic.configs.BattlepassSeasonConfig").BattlepassSeasonConfigInit
initMap.BattlepassTaskConfig = include("logic.configs.BattlepassTaskConfig").BattlepassTaskConfigInit
initMap.BigBlessConfig = include("logic.configs.BigBlessConfig").BigBlessConfigInit
initMap.BlessConfig = include("logic.configs.BlessConfig").BlessConfigInit
initMap.BlessEffectConfig = include("logic.configs.BlessEffectConfig").BlessEffectConfigInit
initMap.BlessRuleConfig = include("logic.configs.BlessRuleConfig").BlessRuleConfigInit
initMap.BudgetConfig = include("logic.configs.BudgetConfig").BudgetConfigInit
initMap.CodeConfig = include("logic.configs.CodeConfig").CodeConfigInit
initMap.DefaultConfig = include("logic.configs.DefaultConfig").DefaultConfigInit
initMap.DropConfig = include("logic.configs.DropConfig").DropConfigInit
initMap.EffectConfig = include("logic.configs.EffectConfig").EffectConfigInit
initMap.EquipConfig = include("logic.configs.EquipConfig").EquipConfigInit
initMap.GenreConfig = include("logic.configs.GenreConfig").GenreConfigInit
initMap.GenreLevelConfig = include("logic.configs.GenreLevelConfig").GenreLevelConfigInit
initMap.GenreRandomRuleConfig = include("logic.configs.GenreRandomRuleConfig").GenreRandomRuleConfigInit
initMap.GoodsConfig = include("logic.configs.GoodsConfig").GoodsConfigInit
initMap.HallBgConfig = include("logic.configs.HallBgConfig").HallBgConfigInit
initMap.HeroConfig = include("logic.configs.HeroConfig").HeroConfigInit
initMap.HeroExpConfig = include("logic.configs.HeroExpConfig").HeroExpConfigInit
initMap.HeroExpDefaultConfig = include("logic.configs.HeroExpDefaultConfig").HeroExpDefaultConfigInit
initMap.HeroExpRewardConfig = include("logic.configs.HeroExpRewardConfig").HeroExpRewardConfigInit
initMap.KKPlayerNameConfig = include("logic.configs.KKPlayerNameConfig").KKPlayerNameConfigInit
initMap.KingConfig = include("logic.configs.KingConfig").KingConfigInit
initMap.KkGoodsConfig = include("logic.configs.KkGoodsConfig").KkGoodsConfigInit
initMap.LevelConfig = include("logic.configs.LevelConfig").LevelConfigInit
initMap.MapConfig = include("logic.configs.MapConfig").MapConfigInit
initMap.MercenaryConfig = include("logic.configs.MercenaryConfig").MercenaryConfigInit
initMap.MonsterConfig = include("logic.configs.MonsterConfig").MonsterConfigInit
initMap.MonsterPoolConfig = include("logic.configs.MonsterPoolConfig").MonsterPoolConfigInit
initMap.NewbieTaskConfig = include("logic.configs.NewbieTaskConfig").NewbieTaskConfigInit
initMap.PCNameConfig = include("logic.configs.PCNameConfig").PCNameConfigInit
initMap.PetConfig = include("logic.configs.PetConfig").PetConfigInit
initMap.PetEffectConfig = include("logic.configs.PetEffectConfig").PetEffectConfigInit
initMap.PetEmoConfig = include("logic.configs.PetEmoConfig").PetEmoConfigInit
initMap.PetHaloConfig = include("logic.configs.PetHaloConfig").PetHaloConfigInit
initMap.PetSkillConfig = include("logic.configs.PetSkillConfig").PetSkillConfigInit
initMap.PetTitleConfig = include("logic.configs.PetTitleConfig").PetTitleConfigInit
initMap.PetWingConfig = include("logic.configs.PetWingConfig").PetWingConfigInit
initMap.PropConfig = include("logic.configs.PropConfig").PropConfigInit
initMap.PropertyConfig = include("logic.configs.PropertyConfig").PropertyConfigInit
initMap.RabbitVsSheepConfig = include("logic.configs.RabbitVsSheepConfig").RabbitVsSheepConfigInit
initMap.RandomEventConfig = include("logic.configs.RandomEventConfig").RandomEventConfigInit
initMap.RandomEventDisConfig = include("logic.configs.RandomEventDisConfig").RandomEventDisConfigInit
initMap.RankConfig = include("logic.configs.RankConfig").RankConfigInit
initMap.RankMultipleConfig = include("logic.configs.RankMultipleConfig").RankMultipleConfigInit
initMap.RankSeasonConfig = include("logic.configs.RankSeasonConfig").RankSeasonConfigInit
initMap.RobotLevelConfig = include("logic.configs.RobotLevelConfig").RobotLevelConfigInit
initMap.RoleLevelConfig = include("logic.configs.RoleLevelConfig").RoleLevelConfigInit
initMap.SeasonTaskConfig = include("logic.configs.SeasonTaskConfig").SeasonTaskConfigInit
initMap.SevenDaysConfig = include("logic.configs.SevenDaysConfig").SevenDaysConfigInit
initMap.SkillConfig = include("logic.configs.SkillConfig").SkillConfigInit
initMap.SkinConfig = include("logic.configs.SkinConfig").SkinConfigInit
initMap.SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig").SkinMercenaryConfigInit
initMap.SkinSkillConfig = include("logic.configs.SkinSkillConfig").SkinSkillConfigInit
initMap.SkinSummonedConfig = include("logic.configs.SkinSummonedConfig").SkinSummonedConfigInit
initMap.SoundConfig = include("logic.configs.SoundConfig").SoundConfigInit
initMap.SpecialMonsterConfig = include("logic.configs.SpecialMonsterConfig").SpecialMonsterConfigInit
initMap.SteamBoxConfig = include("logic.configs.SteamBoxConfig").SteamBoxConfigInit
initMap.SteamGoodsConfig = include("logic.configs.SteamGoodsConfig").SteamGoodsConfigInit
initMap.SummonedConfig = include("logic.configs.SummonedConfig").SummonedConfigInit
initMap.SystemMsgConfig = include("logic.configs.SystemMsgConfig").SystemMsgConfigInit
initMap.TalentConfig = include("logic.configs.TalentConfig").TalentConfigInit
initMap.TechnologyConfig = include("logic.configs.TechnologyConfig").TechnologyConfigInit
initMap.TechnologyDefaultConfig = include("logic.configs.TechnologyDefaultConfig").TechnologyDefaultConfigInit
initMap.TextConfig = include("logic.configs.TextConfig").TextConfigInit
initMap.TipsConfig = include("logic.configs.TipsConfig").TipsConfigInit
initMap.UnitMoveSpeedConfig = include("logic.configs.UnitMoveSpeedConfig").UnitMoveSpeedConfigInit
initMap.vipConfig = include("logic.configs.vipConfig").vipConfigInit
function ____exports.initConfig(self, value)
    if isInit then
        return
    end
    isInit = true
    for key in pairs(initMap) do
        local init = initMap[key]
        if value ~= nil then
            init(nil, value[key])
        else
            init(nil)
        end
    end
end
return ____exports
