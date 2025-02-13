local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 9,["23"] = 9,["24"] = 9,["26"] = 9,["27"] = 11,["28"] = 12,["29"] = 13,["30"] = 14,["31"] = 15,["34"] = 18,["35"] = 11,["36"] = 23,["37"] = 24,["38"] = 26,["39"] = 27,["41"] = 28,["42"] = 28,["43"] = 29,["44"] = 30,["45"] = 28,["48"] = 33,["49"] = 33,["50"] = 33,["51"] = 33,["52"] = 34,["53"] = 23,["54"] = 38,["55"] = 39,["56"] = 40,["57"] = 41,["58"] = 42,["61"] = 46,["62"] = 47,["63"] = 48,["66"] = 52,["67"] = 55,["68"] = 38,["69"] = 58,["70"] = 59,["71"] = 60,["72"] = 61,["73"] = 62,["74"] = 65,["75"] = 65,["76"] = 67,["77"] = 68,["78"] = 69,["79"] = 69,["80"] = 69,["81"] = 69,["82"] = 69,["83"] = 70,["84"] = 71,["85"] = 71,["86"] = 71,["87"] = 71,["88"] = 71,["89"] = 72,["90"] = 73,["91"] = 73,["92"] = 73,["93"] = 73,["96"] = 77,["97"] = 78,["98"] = 78,["99"] = 78,["100"] = 78,["101"] = 78,["103"] = 58,["104"] = 83,["105"] = 83,["106"] = 96});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigList = ____SkillConfig.skillConfigList
local skillConfigMap = ____SkillConfig.skillConfigMap
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____SkillData = include("logic.models.SkillData")
local SkillData = ____SkillData.SkillData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
____exports.SkillController = __TS__Class()
local SkillController = ____exports.SkillController
SkillController.name = "SkillController"
function SkillController.prototype.____constructor(self)
end
function SkillController.prototype.init(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local skillData = writeableDatas.players[playerId]:getOrCreateSingle(SkillData)
    skillData.skills = {}
    if player.hero == nil then
        return
    end
    skillData.skills = {table.unpack(player.hero.skill)}
end
function SkillController.prototype.genCanSelSkill(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local skillData = writeableDatas.players[playerId]:getOrCreateSingle(SkillData)
    local map = {}
    do
        local index = 0
        while index < #skillData.skills do
            local element = skillData.skills[index + 1]
            map[element.id] = true
            index = index + 1
        end
    end
    local list = __TS__ArrayFilter(
        skillConfigList,
        function(____, a) return not map[a.id] and a.skillType == 2 end
    )
    player.canSelSkill = random:randomListNum(list, 3)
end
function SkillController.prototype.selSkill(self, playerId, pos)
    local playerDatas = writeableDatas.players[playerId]
    local player = playerDatas:getOrCreateSingle(PlayerData)
    if player.canSelSkill == nil then
        console:warn(("玩家" .. tostring(playerId)) .. "没有提前生成装备可选项")
        return
    end
    local skillConfig = player.canSelSkill[pos + 1]
    if skillConfig == nil then
        console:warn((("玩家" .. tostring(playerId)) .. "没有找到技能") .. tostring(pos))
        return
    end
    self:addSkill(playerId, skillConfig.id)
    player.canSelSkill = nil
end
function SkillController.prototype.addSkill(self, playerId, skillId)
    local playerDatas = writeableDatas.players[playerId]
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local skillData = playerDatas:getOrCreateSingle(SkillData)
    local cfg = skillConfigMap[skillId]
    local ____skillData_skills_0 = skillData.skills
    ____skillData_skills_0[#____skillData_skills_0 + 1] = cfg
    if cfg.abilityName ~= "" then
        if cfg.skillPos == 1 then
            playerUnit:getWritableEntity():addSkill(
                playerUnit:getWritableEntity(),
                cfg.abilityName,
                "普通"
            )
        elseif cfg.skillPos == 2 then
            playerUnit:getWritableEntity():addSkill(
                playerUnit:getWritableEntity(),
                cfg.abilityName,
                "命令"
            )
        elseif cfg.skillPos == 3 then
            playerUnit:getWritableEntity():addSimpleSkill(
                playerUnit:getWritableEntity(),
                cfg.abilityName
            )
        end
    end
    for ____, effect in ipairs(cfg.effects) do
        playerUnit:getWritableEntity():addEffect(
            playerUnit:getWritableEntity(),
            effect.id,
            nil
        )
    end
end
function SkillController.prototype.removeSkill(self, playerId, equipId)
end
____exports.skillController = make(nil, ____exports.SkillController)
return ____exports
