local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 15,["39"] = 15,["40"] = 16,["41"] = 16,["42"] = 19,["43"] = 19,["44"] = 19,["46"] = 19,["47"] = 21,["49"] = 22,["50"] = 22,["52"] = 23,["53"] = 24,["54"] = 25,["55"] = 26,["59"] = 31,["62"] = 29,["70"] = 22,["73"] = 21,["74"] = 37,["77"] = 41,["80"] = 39,["86"] = 37,["87"] = 45,["88"] = 46,["89"] = 47,["92"] = 50,["93"] = 52,["94"] = 53,["95"] = 54,["96"] = 56,["97"] = 57,["100"] = 58,["101"] = 59,["102"] = 60,["103"] = 61,["105"] = 63,["106"] = 64,["108"] = 66,["109"] = 68,["110"] = 69,["111"] = 70,["112"] = 70,["113"] = 70,["114"] = 70,["115"] = 70,["116"] = 71,["119"] = 72,["120"] = 73,["121"] = 74,["122"] = 76,["123"] = 77,["124"] = 78,["125"] = 79,["126"] = 81,["127"] = 82,["128"] = 83,["129"] = 85,["130"] = 86,["131"] = 87,["132"] = 89,["133"] = 90,["134"] = 91,["135"] = 93,["136"] = 94,["137"] = 95,["138"] = 97,["139"] = 98,["140"] = 99,["141"] = 101,["142"] = 102,["143"] = 103,["144"] = 105,["145"] = 106,["146"] = 107,["147"] = 109,["148"] = 110,["149"] = 111,["150"] = 112,["151"] = 112,["152"] = 112,["153"] = 112,["154"] = 113,["155"] = 114,["158"] = 117,["159"] = 118,["160"] = 119,["161"] = 120,["162"] = 120,["163"] = 120,["164"] = 120,["165"] = 120,["167"] = 121,["168"] = 121,["169"] = 121,["170"] = 121,["171"] = 121,["173"] = 122,["174"] = 122,["175"] = 122,["176"] = 122,["177"] = 122,["179"] = 123,["182"] = 125,["183"] = 126,["184"] = 127,["185"] = 128,["186"] = 129,["187"] = 130,["188"] = 131,["190"] = 133,["192"] = 136,["193"] = 137,["194"] = 138,["195"] = 139,["197"] = 45,["198"] = 147,["201"] = 151,["204"] = 149,["210"] = 148,["213"] = 153,["214"] = 147,["215"] = 161,["216"] = 162,["217"] = 163,["218"] = 165,["219"] = 166,["220"] = 166,["222"] = 167,["223"] = 168,["224"] = 169,["225"] = 170,["226"] = 171,["227"] = 172,["229"] = 174,["230"] = 175,["232"] = 178,["233"] = 180,["234"] = 180,["235"] = 180,["236"] = 181,["237"] = 181,["239"] = 182,["240"] = 182,["241"] = 180,["242"] = 180,["243"] = 185,["244"] = 186,["245"] = 187,["246"] = 188,["247"] = 189,["248"] = 190,["249"] = 191,["250"] = 193,["251"] = 194,["252"] = 195,["255"] = 198,["256"] = 199,["257"] = 200,["258"] = 200,["259"] = 200,["260"] = 200,["261"] = 201,["262"] = 202,["263"] = 203,["265"] = 205,["270"] = 218,["271"] = 161,["272"] = 224,["275"] = 228,["278"] = 226,["284"] = 224,["285"] = 232,["286"] = 233,["287"] = 234,["288"] = 235,["289"] = 236,["290"] = 238,["291"] = 242,["292"] = 243,["293"] = 244,["294"] = 245,["296"] = 247,["297"] = 248,["299"] = 249,["300"] = 249,["301"] = 250,["302"] = 251,["303"] = 252,["304"] = 253,["305"] = 254,["307"] = 249,["310"] = 257,["311"] = 257,["312"] = 257,["313"] = 257,["314"] = 257,["315"] = 257,["316"] = 258,["318"] = 232,["319"] = 261,["322"] = 265,["325"] = 263,["331"] = 261,["332"] = 268,["333"] = 269,["334"] = 270,["335"] = 271,["336"] = 272,["338"] = 274,["339"] = 275,["342"] = 279,["343"] = 280,["344"] = 281,["345"] = 282,["347"] = 285,["348"] = 288,["349"] = 291,["350"] = 293,["351"] = 294,["352"] = 295,["353"] = 296,["354"] = 298,["355"] = 299,["356"] = 300,["357"] = 301,["358"] = 304,["359"] = 307,["360"] = 310,["361"] = 313,["362"] = 316,["363"] = 319,["364"] = 322,["365"] = 325,["369"] = 268,["370"] = 334,["371"] = 335,["372"] = 334,["373"] = 338,["376"] = 342,["379"] = 340,["385"] = 338,["386"] = 346,["387"] = 348,["388"] = 349,["391"] = 353,["392"] = 356,["393"] = 359,["394"] = 360,["395"] = 361,["396"] = 362,["398"] = 364,["399"] = 366,["400"] = 367,["401"] = 368,["403"] = 370,["404"] = 373,["405"] = 376,["406"] = 379,["407"] = 382,["408"] = 385,["409"] = 388,["410"] = 391,["413"] = 346,["414"] = 400});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____DropConfig = include("logic.configs.DropConfig")
local dropConfigMap_dropId = ____DropConfig.dropConfigMap_dropId
local ____HeroConfig = include("logic.configs.HeroConfig")
local heroConfigList = ____HeroConfig.heroConfigList
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local ____SkinConfig = include("logic.configs.SkinConfig")
local skinConfigMap = ____SkinConfig.skinConfigMap
local ____SkinMercenaryConfig = include("logic.configs.SkinMercenaryConfig")
local skinMercenaryConfigMap = ____SkinMercenaryConfig.skinMercenaryConfigMap
local ____SkinSkillConfig = include("logic.configs.SkinSkillConfig")
local skinSkillConfigMap = ____SkinSkillConfig.skinSkillConfigMap
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____VipManager = include("logic.archive.manager.VipManager")
local vipManager = ____VipManager.vipManager
____exports.RewardManager = __TS__Class()
local RewardManager = ____exports.RewardManager
RewardManager.name = "RewardManager"
function RewardManager.prototype.____constructor(self)
end
function RewardManager.prototype.rewardItems(self, ids, counts)
    do
        local i = 0
        while i < #ids do
            do
                local id = ids[i + 1] or 0
                local count = counts[i + 1] or 0
                if id <= 0 or count <= 0 then
                    goto __continue4
                end
                do
                    local function ____catch(____error)
                        console:error(____error)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        self:_rewardItem(id, count)
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
            end
            ::__continue4::
            i = i + 1
        end
    end
end
function RewardManager.prototype.rewardItem(self, id, count)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_rewardItem(id, count)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function RewardManager.prototype._rewardItem(self, id, count)
    local cfg = propConfigMap[id]
    if cfg == nil then
        return
    end
    if cfg.propTag == 1 then
        archive.playerInfo:addResource(cfg.id, count)
        DTips:show(i18n:format("获得【${name}】x${count}", {name = cfg.name.value, count = count}))
    elseif cfg.propTag == 2 then
        local item = archive.playerInfo:getHeroInfo(cfg.indexId)
        if item == nil then
            return
        end
        if item.isHave then
            self:rewardItem(cfg.repeatChange[1], cfg.repeatChange[2])
            local cfg2 = propConfigMap[cfg.repeatChange[1]]
            DTips:show(i18n:format("已拥有英雄【${name1}】，转化为【${name2}】x${count}", {name1 = cfg.name.value, name2 = cfg2.name.value, count = cfg.repeatChange[2]}))
        else
            archive.playerInfo:unlockHero(cfg.indexId)
            DTips:show(i18n:format("获得英雄【${name}】", {name = cfg.name.value}))
        end
    elseif cfg.propTag == 11 then
        local skin = skinConfigMap[cfg.indexId]
        local info = archive.playerInfo:getHeroInfo(skin.hero)
        local ____opt_0 = info
        local find = ____opt_0 and __TS__ArrayFindIndex(
            info and info.unlock_skin,
            function(____, a) return a == skin.id end
        )
        if find ~= nil and find >= 0 then
            return
        end
        archive.playerInfo:unlockSkin(skin.hero, skin.id)
        DTips:show(i18n:format("获得英雄皮肤【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 13 then
        local skin = skinMercenaryConfigMap[cfg.indexId]
        archive.mercenaryInfo:unlockSkin(skin.mercenaryId, cfg.indexId)
        DTips:show(i18n:format("获得佣兵皮肤【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 3 then
        archive.petInfo:unlockSkin(cfg.indexId)
        DTips:show(i18n:format("获得宠物皮肤【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 15 then
        archive.playerInfo:addResource(cfg.id, count)
        DTips:show(i18n:format("获得道具【${name}】x${count}", {name = cfg.name.value, count = count}))
    elseif cfg.propTag == 16 then
        archive.petInfo:unlockWing(cfg.indexId)
        DTips:show(i18n:format("获得宠物翅膀【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 17 then
        archive.petInfo:unlockHalo(cfg.indexId)
        DTips:show(i18n:format("获得宠物光环【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 18 then
        archive.petInfo:unlockEffect(cfg.indexId)
        DTips:show(i18n:format("获得宠物特效【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 19 then
        archive.petInfo:unlockEmoji(cfg.indexId)
        DTips:show(i18n:format("获得宠物表情包【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 8 then
        DTips:show(i18n:format("获得【${name}】", {name = cfg.name.value}))
        ____exports.rewardManager:drop(cfg.indexId)
    elseif cfg.propTag == 12 then
        local skin = skinSkillConfigMap[cfg.indexId]
        local skill = skillConfigMap[skin.skillId]
        console:log(skin.skillId, skill)
        local hero = __TS__ArrayFind(
            heroConfigList,
            function(____, a) return a.ban == 0 and (a.skill[1].id == skill.id or a.skill[2].id == skill.id or a.skill[3].id == skill.id) end
        )
        if hero == nil then
            console:error("找不到技能皮肤对应的英雄", cfg.indexId)
            return
        end
        local info = archive.playerInfo:getHeroInfo(hero.id)
        local seat = skin.skillId % 10
        local find = -1
        if seat == 1 then
            find = __TS__ArrayFindIndex(
                info.unlock_skill_1,
                function(____, a) return a == skin.id end
            )
        end
        if seat == 2 then
            find = __TS__ArrayFindIndex(
                info.unlock_skill_1,
                function(____, a) return a == skin.id end
            )
        end
        if seat == 3 then
            find = __TS__ArrayFindIndex(
                info.unlock_skill_1,
                function(____, a) return a == skin.id end
            )
        end
        if find >= 0 then
            return
        end
        archive.playerInfo:unlockSkillSkin(hero.id, skin.id, seat)
        DTips:show(i18n:format("获得技能皮肤【${name}】", {name = cfg.name.value}))
    elseif cfg.propTag == 15 then
        archive.playerInfo:unlockHallBg(cfg.indexId)
    elseif cfg.propTag == 5 then
        archive.petInfo:unlockTitle(cfg.indexId)
        DTips:show(i18n:format("获得称号【${name}】", {name = cfg.name.value}))
    else
        console:error("不支持的奖励类型...", id, cfg.propTag)
    end
    for ____, x in ipairs(cfg.vip) do
        print("获得特权", x.des)
        DTips:show(i18n:format("获得特权【${name}】", {name = x.des.value}))
        vipManager:add(x.id)
    end
end
function RewardManager.prototype.drop(self, dropId)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            return true, self:_drop(dropId)
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return {}
end
function RewardManager.prototype._drop(self, dropId)
    console:log("准备掉落：", dropId)
    local rewards = {}
    local list = dropConfigMap_dropId[dropId]
    if #list == 0 then
        return rewards
    end
    if #list == 1 then
        local cfg = list[1]
        console:log("掉落表只有一个道具", cfg.id)
        if cfg.rarity < localRandom:random() then
            console:log("掉落表掉落随机失败", cfg.id)
            return rewards
        end
        self:rewardItem(cfg.propId.id, cfg.number)
        rewards[#rewards + 1] = {id = cfg.propId.id, count = cfg.number}
    else
        local groups = {}
        __TS__ArrayForEach(
            list,
            function(____, a)
                if groups[a.idGroup] == nil then
                    groups[a.idGroup] = {}
                end
                local ____groups_a_idGroup_4 = groups[a.idGroup]
                ____groups_a_idGroup_4[#____groups_a_idGroup_4 + 1] = a
            end
        )
        console:log("掉落表有多个道具", #list)
        for key in pairs(groups) do
            local arr = groups[key]
            console:log(arr[1].id, arr[1].weight)
            local cfg = arr[1]
            if #arr == 1 then
                if cfg.rarity == 1 or cfg.rarity <= localRandom:random() then
                    self:rewardItem(cfg.propId.id, cfg.number)
                    console:log("掉落了道具", cfg.propId.id, cfg.number)
                    rewards[#rewards + 1] = {id = cfg.propId.id, count = cfg.number}
                end
            else
                local weight = arr[1].rarity
                if localRandom:random() <= weight then
                    local cfg = localRandom:randomWeight(
                        arr,
                        function(____, item) return item.weight end
                    )
                    self:rewardItem(cfg.propId.id, cfg.number)
                    console:log("掉落了道具", cfg.propId.id, cfg.number)
                    rewards[#rewards + 1] = {id = cfg.propId.id, count = cfg.number}
                else
                    console:log("掉落失败.")
                end
            end
        end
    end
    return rewards
end
function RewardManager.prototype.dropFromWealMonster(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_dropFromWealMonster()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function RewardManager.prototype._dropFromWealMonster(self)
    local count = archive.statInfo:getWealMonsterCount()
    archive.statInfo:genWealMonsterCount()
    local p = defaultConfig["福利怪_起始掉落数"] - count * defaultConfig["福利怪_掉落衰减"]
    local resultCount = math.min(p, defaultConfig["福利怪_最小掉落数量"])
    local rewards = {}
    if resultCount > 1 then
        rewards = self:drop(defaultConfig["福利怪_掉落ID"])
    elseif localRandom:random() < p then
        rewards = self:drop(defaultConfig["福利怪_掉落ID"])
    end
    if #rewards > 0 then
        local str = ""
        do
            local index = 0
            while index < #rewards do
                local element = rewards[index + 1]
                local cfg = propConfigMap[element.id]
                str = str .. (("[" .. cfg.name.value) .. "]x") .. tostring(element.count)
                if index ~= #rewards - 1 then
                    str = str .. "、"
                end
                index = index + 1
            end
        end
        chatController:sysMsg(
            i18n["local"](i18n, "福利怪掉落") .. str,
            ChatInputType["仅自己可见消息"],
            LOCAL.PLAYER.id,
            LOCAL.PLAYER.id
        )
        DTips:show(i18n["local"](i18n, "福利怪掉落") .. str)
    end
end
function RewardManager.prototype.costItem(self, id, count)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_costItem(id, count)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function RewardManager.prototype._costItem(self, id, count)
    if archive.playerInfo:getResource(id) >= count then
        archive.playerInfo:costResource(id, count)
        archive.playerInfo:sync()
        console:log("消耗道具：", id, count)
    end
    local cfg = propConfigMap[id]
    if cfg == nil then
        return
    end
    for ____, x in ipairs(cfg.vip) do
        print("失去特权", x.des)
        DTips:show(i18n:format("特权【${des}】已到期", {des = x.des.value}))
        vipManager:disable(x.id)
    end
    if cfg.propTag == 1 then
    elseif cfg.propTag == 2 then
    elseif cfg.propTag == 11 then
        local skin = skinConfigMap[cfg.indexId]
        archive.playerInfo:disableSkin(skin.hero, skin.id)
        console:log("禁用英雄皮肤", skin.hero, skin.id)
    elseif cfg.propTag == 13 then
        local skin = skinMercenaryConfigMap[cfg.indexId]
        archive.mercenaryInfo:disableSkin(skin.mercenaryId, cfg.indexId)
        console:log("禁用佣兵皮肤", skin.mercenaryId, cfg.indexId)
    elseif cfg.propTag == 3 then
    elseif cfg.propTag == 15 then
    elseif cfg.propTag == 16 then
    elseif cfg.propTag == 17 then
    elseif cfg.propTag == 18 then
    elseif cfg.propTag == 19 then
    elseif cfg.propTag == 8 then
    elseif cfg.propTag == 12 then
    elseif cfg.propTag == 5 then
    else
    end
    return
end
function RewardManager.prototype.getItem(self, id)
    return archive.playerInfo:getResource(id)
end
function RewardManager.prototype.checkItem(self, id)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:_checkItem(id)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function RewardManager.prototype._checkItem(self, id)
    local cfg = propConfigMap[id]
    if cfg == nil then
        return
    end
    if cfg.propTag == 1 then
    elseif cfg.propTag == 2 then
    elseif cfg.propTag == 11 then
        local skin = skinConfigMap[cfg.indexId]
        if not archive.playerInfo:hasSkin(skin.hero, skin.id) then
            archive.playerInfo:unlockSkin(skin.hero, skin.id)
        end
    elseif cfg.propTag == 13 then
        local skin = skinMercenaryConfigMap[cfg.indexId]
        if not archive.mercenaryInfo:hasSkin(skin.mercenaryId, skin.id) then
            archive.mercenaryInfo:unlockSkin(skin.mercenaryId, skin.id)
        end
    elseif cfg.propTag == 3 then
    elseif cfg.propTag == 15 then
    elseif cfg.propTag == 16 then
    elseif cfg.propTag == 17 then
    elseif cfg.propTag == 18 then
    elseif cfg.propTag == 19 then
    elseif cfg.propTag == 8 then
    elseif cfg.propTag == 12 then
    else
    end
end
____exports.rewardManager = __TS__New(____exports.RewardManager)
return ____exports
