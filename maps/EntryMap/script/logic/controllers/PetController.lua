local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 11,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 17,["43"] = 17,["44"] = 18,["45"] = 18,["46"] = 19,["47"] = 19,["48"] = 20,["49"] = 20,["50"] = 23,["51"] = 23,["52"] = 24,["53"] = 24,["54"] = 25,["55"] = 25,["56"] = 27,["57"] = 28,["58"] = 28,["59"] = 29,["60"] = 29,["61"] = 30,["62"] = 30,["63"] = 31,["64"] = 31,["65"] = 33,["66"] = 33,["67"] = 34,["68"] = 34,["69"] = 35,["70"] = 35,["71"] = 36,["72"] = 36,["73"] = 39,["74"] = 39,["75"] = 39,["77"] = 39,["78"] = 41,["79"] = 42,["80"] = 43,["81"] = 41,["82"] = 46,["83"] = 47,["84"] = 50,["85"] = 52,["86"] = 52,["87"] = 52,["88"] = 53,["89"] = 52,["90"] = 52,["91"] = 55,["92"] = 55,["93"] = 55,["94"] = 56,["95"] = 55,["96"] = 55,["97"] = 58,["98"] = 58,["99"] = 58,["100"] = 59,["101"] = 58,["102"] = 58,["103"] = 61,["104"] = 61,["105"] = 61,["106"] = 62,["107"] = 61,["108"] = 61,["109"] = 65,["110"] = 65,["111"] = 65,["112"] = 66,["113"] = 65,["114"] = 65,["115"] = 46,["116"] = 70,["117"] = 72,["118"] = 74,["119"] = 76,["120"] = 78,["121"] = 78,["122"] = 80,["123"] = 82,["124"] = 83,["127"] = 87,["128"] = 87,["129"] = 88,["130"] = 89,["132"] = 91,["133"] = 91,["134"] = 91,["135"] = 91,["136"] = 92,["137"] = 94,["138"] = 95,["139"] = 95,["140"] = 95,["141"] = 95,["142"] = 97,["145"] = 98,["146"] = 99,["148"] = 101,["149"] = 103,["150"] = 103,["151"] = 103,["152"] = 104,["153"] = 103,["154"] = 103,["156"] = 107,["157"] = 108,["158"] = 109,["159"] = 110,["160"] = 110,["161"] = 110,["162"] = 110,["163"] = 111,["164"] = 111,["165"] = 111,["166"] = 111,["167"] = 112,["168"] = 113,["169"] = 113,["170"] = 113,["171"] = 113,["172"] = 113,["173"] = 113,["174"] = 113,["175"] = 113,["176"] = 113,["177"] = 113,["178"] = 113,["179"] = 113,["180"] = 125,["181"] = 125,["182"] = 125,["183"] = 125,["184"] = 125,["185"] = 130,["188"] = 150,["191"] = 132,["192"] = 133,["193"] = 133,["194"] = 133,["195"] = 133,["196"] = 133,["197"] = 133,["198"] = 133,["199"] = 133,["200"] = 133,["201"] = 133,["202"] = 133,["203"] = 133,["204"] = 133,["205"] = 146,["206"] = 147,["207"] = 147,["208"] = 147,["209"] = 147,["210"] = 147,["211"] = 147,["212"] = 147,["213"] = 147,["220"] = 125,["221"] = 125,["222"] = 80,["223"] = 196,["224"] = 197,["225"] = 70,["226"] = 200,["227"] = 201,["228"] = 204,["229"] = 205,["230"] = 206,["231"] = 207,["232"] = 208,["235"] = 211,["236"] = 205,["237"] = 225,["238"] = 225,["239"] = 225,["240"] = 226,["241"] = 227,["242"] = 228,["245"] = 231,["246"] = 225,["247"] = 225,["248"] = 241,["249"] = 242,["250"] = 200,["251"] = 245,["252"] = 246,["253"] = 247,["254"] = 248,["255"] = 249,["257"] = 251,["258"] = 251,["259"] = 251,["260"] = 251,["261"] = 252,["262"] = 253,["265"] = 257,["266"] = 258,["267"] = 259,["269"] = 245,["270"] = 263,["271"] = 264,["272"] = 265,["273"] = 266,["274"] = 266,["275"] = 266,["276"] = 267,["277"] = 266,["278"] = 266,["279"] = 269,["280"] = 270,["282"] = 272,["283"] = 263,["284"] = 278,["285"] = 279,["286"] = 280,["287"] = 281,["288"] = 278,["289"] = 288,["290"] = 289,["291"] = 290,["292"] = 288,["293"] = 298,["294"] = 299,["295"] = 300,["296"] = 302,["297"] = 302,["298"] = 302,["299"] = 302,["300"] = 303,["301"] = 306,["304"] = 307,["305"] = 308,["306"] = 309,["307"] = 310,["309"] = 311,["310"] = 312,["311"] = 313,["314"] = 298,["315"] = 318,["316"] = 319,["317"] = 321,["318"] = 322,["319"] = 322,["320"] = 322,["321"] = 322,["322"] = 322,["323"] = 322,["324"] = 322,["325"] = 322,["326"] = 323,["327"] = 324,["328"] = 324,["329"] = 324,["330"] = 324,["331"] = 324,["332"] = 324,["333"] = 324,["334"] = 324,["335"] = 325,["336"] = 326,["337"] = 326,["338"] = 326,["339"] = 326,["340"] = 326,["341"] = 326,["342"] = 326,["343"] = 326,["344"] = 327,["345"] = 328,["346"] = 328,["347"] = 328,["348"] = 328,["349"] = 328,["350"] = 328,["351"] = 328,["352"] = 328,["354"] = 318,["355"] = 332,["356"] = 333,["357"] = 334,["358"] = 332,["359"] = 339,["360"] = 340,["361"] = 342,["362"] = 343,["363"] = 343,["365"] = 345,["366"] = 347,["367"] = 348,["368"] = 348,["369"] = 348,["370"] = 348,["371"] = 349,["372"] = 349,["374"] = 350,["375"] = 351,["376"] = 339,["377"] = 354,["378"] = 355,["379"] = 356,["380"] = 357,["381"] = 354,["382"] = 360,["383"] = 361,["384"] = 362,["386"] = 360,["387"] = 366,["388"] = 367,["389"] = 369,["390"] = 370,["391"] = 371,["392"] = 372,["393"] = 373,["394"] = 374,["396"] = 366,["397"] = 379});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____SceneUIManager = include("framework.ui.SceneUIManager")
local sceneUIManager = ____SceneUIManager.sceneUIManager
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local random = ____Random.random
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigList = ____PetSkillConfig.petSkillConfigList
local petSkillConfigMap = ____PetSkillConfig.petSkillConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigList = ____SkinConfig.skinConfigList
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigList = ____SkinMercenaryConfig.skinMercenaryConfigList
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameStatus = ____GameData.GameStatus
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____EmojiView = include("logic.sceneUI.EmojiView")
local EmojiView = ____EmojiView.EmojiView
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
____exports.PetAnimType = PetAnimType or ({})
____exports.PetAnimType["待机动画"] = 0
____exports.PetAnimType[____exports.PetAnimType["待机动画"]] = "待机动画"
____exports.PetAnimType["移动动画"] = 1
____exports.PetAnimType[____exports.PetAnimType["移动动画"]] = "移动动画"
____exports.PetAnimType["死亡动画"] = 2
____exports.PetAnimType[____exports.PetAnimType["死亡动画"]] = "死亡动画"
____exports.PetAnimType["跳跃动画"] = 3
____exports.PetAnimType[____exports.PetAnimType["跳跃动画"]] = "跳跃动画"
____exports.PetAnimType["搞笑动画1"] = 4
____exports.PetAnimType[____exports.PetAnimType["搞笑动画1"]] = "搞笑动画1"
____exports.PetAnimType["搞笑动画2"] = 5
____exports.PetAnimType[____exports.PetAnimType["搞笑动画2"]] = "搞笑动画2"
____exports.PetAnimType["搞笑动画3"] = 6
____exports.PetAnimType[____exports.PetAnimType["搞笑动画3"]] = "搞笑动画3"
____exports.PetAnimType["搞笑动画4"] = 7
____exports.PetAnimType[____exports.PetAnimType["搞笑动画4"]] = "搞笑动画4"
____exports.PetController = __TS__Class()
local PetController = ____exports.PetController
PetController.name = "PetController"
function PetController.prototype.____constructor(self)
end
function PetController.prototype.setPet(self, playerId, petId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.petId = petId
end
function PetController.prototype.init(self, playerId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.abilities = {}
    __TS__ArrayForEach(
        skinConfigList,
        function(____, a)
            self:addSkill(playerId, a.buildId)
        end
    )
    __TS__ArrayForEach(
        heroConfigList,
        function(____, a)
            self:addSkill(playerId, a.buildId)
        end
    )
    __TS__ArrayForEach(
        mercenaryConfigList,
        function(____, a)
            self:addSkill(playerId, a.buildId)
        end
    )
    __TS__ArrayForEach(
        skinMercenaryConfigList,
        function(____, a)
            self:addSkill(playerId, a.buildId)
        end
    )
    __TS__ArrayForEach(
        petSkillConfigList,
        function(____, a)
            self:addPetSkill(playerId, a.id)
        end
    )
end
function PetController.prototype.addPetSkill(self, playerId, skillId)
    local cfg = petSkillConfigMap[skillId]
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local abilityEditor = y3.object.ability[cfg.skillId]:new()
    abilityEditor.on_cast_start = function(ability, cast)
    end
    abilityEditor.on_cast_shot = function(ability, cast)
        local owner = ability:get_owner()
        if owner == nil then
            return
        end
        local ____opt_0 = datas.players[playerId]:getSingle(PlayerData)
        local isAI = ____opt_0 and ____opt_0.isAI
        if not isAI then
            owner:play_animation("attack_L_3", 3)
        end
        local sel = y3.selector.create():in_shape(
            owner:get_point(),
            Shape:createCircularShape(1500)
        )
        sel:with_tag("小宠物")
        sel:sort_type(0)
        local y3Units = __TS__ArrayFilter(
            sel:get():pick(),
            function(____, a) return a.id ~= owner.id end
        )
        if #y3Units == 0 then
            return
        end
        if isAI then
            owner:play_animation("attack_L_3", 3)
        end
        if playerId == y3.player.LOCAL_PLAYER.id then
            y3.ltimer.wait_frame(
                0,
                function()
                    rewardManager:costItem(skillId, 1)
                end
            )
        end
        local unit = y3Units[1]
        local p1 = owner:get_point()
        local p2 = unit:get_point()
        local angle = math.atan(
            p2:get_x() - p1:get_x(),
            p2:get_y() - p1:get_y()
        ) * 180 / math.pi
        local angle2 = math.atan(
            p1:get_x() - p2:get_x(),
            p1:get_y() - p2:get_y()
        ) * 180 / math.pi
        owner:set_facing(angle, 0.01)
        local p = y3.projectile.create({
            key = cfg.projectile,
            target = owner,
            angle = angle,
            height = 200,
            time = 1,
            owner = owner,
            ability = ability,
            remove_immediately = true,
            socket = "left_hand",
            visible_rule = 1
        })
        p:mover_target({
            target = unit,
            speed = 3000,
            target_distance = 1,
            bind_point = "hit_point",
            on_finish = function()
                do
                    local function ____catch(____error)
                        console:warn("小宠物替换模型导致的？", ____error)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        if unit ~= nil then
                            y3.particle.create({
                                type = cfg.targetEffect,
                                target = unit,
                                angle = nil,
                                scale = nil,
                                time = 1 + localRandom:random() * 0.1,
                                height = nil,
                                socket = "hit_point",
                                follow_rotation = 1,
                                follow_scale = true,
                                immediate = false,
                                detach = nil
                            })
                            unit:set_facing(angle2, 0.1)
                            unit:play_animation(
                                "die",
                                1,
                                0,
                                -1,
                                false,
                                true
                            )
                        end
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
            end
        })
    end
    petData.y3Unit:add_ability(y3.const.AbilityType["命令"], abilityEditor.key)
    petData.skills[skillId] = abilityEditor.key
end
function PetController.prototype.addSkill(self, playerId, id)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local ability = y3.object.ability[id]:new()
    ability.on_cast_start = function(a, cast)
        console:log("建造技能释放")
        petData.y3Unit:stop_all_abilities()
        if petData.build_callback == nil then
            return
        end
        petData:build_callback(cast:get_target_point())
    end
    ability:event(
        "技能-关闭指示器",
        function(trg, data)
            console:log("施法-关闭指示器", data.ability_seq)
            if petData.select_callback == nil then
                petData.y3Unit:stop_all_abilities()
                return
            end
            petData:select_callback()
        end
    )
    petData.y3Unit:add_ability(y3.const.AbilityType["英雄"], ability.key)
    petData.abilities[id] = ability.key
end
function PetController.prototype.build(self, playerId, unitId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    if hero.entity.y3Unit.id == unitId then
        self:buildByCfgId(playerId, hero.buildId)
    else
        local unitData = __TS__ArrayFind(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.entity.y3Unit.id == unitId end
        )
        if unitData ~= nil then
            self:buildByCfgId(playerId, unitData.buildId)
        end
    end
    if unitId ~= nil then
        effectController:add_buff(unitId, 134232984)
        effectController:remove_buff(unitId, 134262027)
    end
end
function PetController.prototype.buildByCfgId(self, playerId, buildId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local abl = petData and petData.y3Unit:get_abilities_by_type(y3.const.AbilityType["英雄"])
    local abla = __TS__ArrayFind(
        abl,
        function(____, a)
            return a:get_key() == petData.abilities[buildId]
        end
    )
    if abla == nil then
        error("xxxx", 0)
    end
    abla:pre_cast(y3.player.get_by_id(playerId))
end
function PetController.prototype.blink(self, playerId, pos)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.y3Unit:stop()
    petData.y3Unit:blink(pos)
end
function PetController.prototype.moveToByAI(self, playerId, pos)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.y3Unit:move_to_pos(pos)
end
function PetController.prototype.move(self, playerId, pos)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local distance = petData.y3Unit:get_point():get_distance_with(pos)
    local can_walk_to = petData.y3Unit:can_walk_to(
        petData.y3Unit:get_point(),
        pos
    )
    local can_blink_to = petData.y3Unit:can_blink_to(pos)
    if not can_walk_to and not can_blink_to then
        return
    end
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if can_walk_to then
        if distance > 3000 then
            self:blink(playerId, pos)
        end
    elseif can_blink_to then
        if gameData.mode == GameMode["镜像"] and gameData.gameStatus >= GameStatus["战斗中"] then
            self:blink(playerId, pos)
        end
    end
end
function PetController.prototype.playAnim(self, playerId, index)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    if index == 0 then
        petData.y3Unit:play_animation(
            "Skill1_2",
            1,
            0,
            -1,
            false,
            true
        )
    elseif index == 1 then
        petData.y3Unit:play_animation(
            "Skill2_2",
            1,
            0,
            -1,
            false,
            true
        )
    elseif index == 2 then
        petData.y3Unit:play_animation(
            "attack_L_3",
            1,
            0,
            -1,
            false,
            true
        )
    elseif index == 3 then
        petData.y3Unit:play_animation(
            "carry_hitloop",
            1,
            0,
            -1,
            false,
            true
        )
    end
end
function PetController.prototype.playEmo(self, playerId, emoji)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    sceneUIManager:showAll(petData.y3Unit.id, "", EmojiView, {emoji = emoji})
end
function PetController.prototype.cast(self, playerId, index)
    local archiveData = writeableDatas.players[playerId]:getOrCreateSingle(InGameArchiveData)
    local skillId = archiveData.petInfo.cur_skill["" .. tostring(index)]
    if skillId == nil or skillId == 0 then
        return false
    end
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local abl = petData and petData.y3Unit:get_abilities_by_type(y3.const.AbilityType["命令"])
    local skill = __TS__ArrayFind(
        abl,
        function(____, a) return a:get_key() == petData.skills[skillId] end
    )
    if skill == nil then
        return false
    end
    petData.y3Unit:cast(skill)
    return true
end
function PetController.prototype.changeName(self, playerId)
    console:log("修改昵称 " .. tostring(playerId))
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.nickname = "哈哈" .. tostring(math.floor(random:random() * 360))
end
function PetController.prototype.backToOrigin(self)
    for ____, playerId in ipairs(playerIdList) do
        self:backToOriginByPlayerId(playerId, true)
    end
end
function PetController.prototype.backToOriginByPlayerId(self, playerId, lookAt)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    local posId = mapConfig["小宠物出生点"][playerId]
    local pos = y3.point.get_point_by_res_id(posId)
    petData.y3Unit:stop()
    petData.y3Unit:blink(pos)
    if lookAt then
        uiController:lookAtUnit(playerId, petData.y3Unit.id)
    end
end
____exports.petController = make(nil, ____exports.PetController)
return ____exports
