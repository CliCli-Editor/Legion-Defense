local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 15,["35"] = 15,["36"] = 17,["37"] = 19,["38"] = 15,["39"] = 21,["40"] = 22,["41"] = 22,["42"] = 22,["43"] = 22,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["58"] = 51,["59"] = 51,["61"] = 52,["62"] = 53,["63"] = 53,["65"] = 54,["66"] = 55,["67"] = 56,["71"] = 51,["75"] = 59,["76"] = 59,["78"] = 60,["79"] = 61,["80"] = 61,["82"] = 62,["85"] = 59,["89"] = 64,["90"] = 64,["92"] = 65,["93"] = 66,["94"] = 66,["96"] = 67,["99"] = 64,["103"] = 69,["104"] = 69,["106"] = 70,["107"] = 71,["108"] = 71,["110"] = 72,["113"] = 69,["117"] = 74,["118"] = 74,["120"] = 75,["121"] = 76,["122"] = 76,["124"] = 77,["127"] = 74,["131"] = 79,["132"] = 79,["134"] = 80,["135"] = 81,["136"] = 81,["138"] = 82,["141"] = 79,["145"] = 84,["146"] = 84,["148"] = 85,["149"] = 86,["150"] = 86,["152"] = 87,["155"] = 84,["158"] = 90,["159"] = 21,["160"] = 93,["161"] = 93,["162"] = 97,["163"] = 97,["164"] = 100,["166"] = 101,["167"] = 101,["169"] = 102,["170"] = 103,["171"] = 103,["173"] = 104,["174"] = 105,["176"] = 107,["177"] = 108,["178"] = 109,["179"] = 110,["184"] = 101,["188"] = 114,["189"] = 114,["191"] = 115,["192"] = 116,["193"] = 116,["195"] = 117,["196"] = 118,["198"] = 123,["201"] = 114,["205"] = 125,["206"] = 125,["208"] = 126,["209"] = 127,["210"] = 127,["212"] = 128,["213"] = 129,["215"] = 131,["216"] = 132,["220"] = 125,["224"] = 135,["225"] = 135,["227"] = 136,["228"] = 137,["229"] = 137,["231"] = 138,["232"] = 139,["234"] = 141,["235"] = 142,["239"] = 135,["243"] = 145,["244"] = 145,["246"] = 146,["247"] = 147,["248"] = 147,["250"] = 148,["251"] = 149,["253"] = 151,["254"] = 152,["258"] = 145,["262"] = 155,["263"] = 155,["265"] = 156,["266"] = 157,["267"] = 157,["269"] = 158,["270"] = 159,["272"] = 161,["273"] = 162,["277"] = 155,["281"] = 166,["282"] = 166,["284"] = 167,["285"] = 168,["286"] = 168,["288"] = 169,["289"] = 170,["291"] = 172,["292"] = 173,["296"] = 166,["299"] = 177,["300"] = 181,["301"] = 182,["302"] = 183,["303"] = 184,["305"] = 187,["306"] = 191,["308"] = 194,["309"] = 100,["310"] = 197,["311"] = 197,["312"] = 200,["315"] = 202,["316"] = 202,["317"] = 202,["318"] = 202,["320"] = 201,["323"] = 204,["325"] = 201,["327"] = 200,["328"] = 207,["329"] = 207,["330"] = 211,["331"] = 212,["332"] = 211,["333"] = 214,["334"] = 215,["335"] = 214,["336"] = 217,["337"] = 218,["338"] = 217,["339"] = 220,["340"] = 221,["341"] = 220,["342"] = 223,["343"] = 224,["344"] = 223,["345"] = 226,["346"] = 227,["347"] = 226,["348"] = 230,["349"] = 231,["350"] = 232,["351"] = 233,["352"] = 234,["353"] = 236,["355"] = 230,["356"] = 240,["357"] = 241,["358"] = 242,["361"] = 246,["362"] = 240,["363"] = 249,["364"] = 250,["365"] = 251,["368"] = 255,["369"] = 249,["370"] = 257,["371"] = 258,["372"] = 259,["375"] = 263,["376"] = 257,["377"] = 265,["378"] = 266,["379"] = 267,["382"] = 271,["383"] = 265,["384"] = 274,["385"] = 275,["386"] = 276,["389"] = 280,["390"] = 274,["391"] = 282,["392"] = 283,["393"] = 284,["396"] = 288,["397"] = 282,["398"] = 290,["399"] = 291,["400"] = 290});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
local ____PetConfig = include("logic.configs.PetConfig")
local petConfigList = ____PetConfig.petConfigList
local ____PetEffectConfig = include("logic.configs.PetEffectConfig")
local petEffectConfigList = ____PetEffectConfig.petEffectConfigList
local ____PetEmoConfig = include("logic.configs.PetEmoConfig")
local petEmoConfigList = ____PetEmoConfig.petEmoConfigList
local ____PetHaloConfig = include("logic.configs.PetHaloConfig")
local petHaloConfigList = ____PetHaloConfig.petHaloConfigList
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigList = ____PetSkillConfig.petSkillConfigList
local ____PetTitleConfig = include("logic.configs.PetTitleConfig")
local petTitleConfigList = ____PetTitleConfig.petTitleConfigList
local petTitleConfigMap = ____PetTitleConfig.petTitleConfigMap
local ____PetWingConfig = include("logic.configs.PetWingConfig")
local petWingConfigList = ____PetWingConfig.petWingConfigList
local ____ArchiveController = include("logic.controllers.ArchiveController")
local archiveController = ____ArchiveController.archiveController
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.ArchivePetInfo = __TS__Class()
local ArchivePetInfo = ____exports.ArchivePetInfo
ArchivePetInfo.name = "ArchivePetInfo"
__TS__ClassExtends(ArchivePetInfo, ArchiveBaseProto)
function ArchivePetInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.slot = 7
    self.name = "ArchivePetInfo"
end
function ArchivePetInfo.prototype.default(self)
    local data = {
        version = 1,
        cur_halo = 0,
        cur_skill = {["1"] = 0, ["2"] = 0, ["3"] = 0, ["4"] = 0},
        cur_skin = 0,
        cur_wing = 0,
        cur_effect = 0,
        cur_emoji = {["1"] = 0, ["2"] = 0, ["3"] = 0, ["4"] = 0},
        halos = {},
        skills = {},
        skins = {},
        emojies = {},
        wings = {},
        effects = {},
        titles = {},
        current_title = 0
    }
    do
        local index = 0
        while index < #petConfigList do
            do
                local element = petConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue3
                end
                data.skins["" .. tostring(element.id)] = element.isDefault == 1
                if element.isDefault and data.cur_skin == 0 then
                    data.cur_skin = element.id
                end
            end
            ::__continue3::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petSkillConfigList do
            do
                local element = petSkillConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue6
                end
                data.skills["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue6::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petEmoConfigList do
            do
                local element = petEmoConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue8
                end
                data.emojies["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue8::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petWingConfigList do
            do
                local element = petWingConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue10
                end
                data.wings["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue10::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petHaloConfigList do
            do
                local element = petHaloConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue12
                end
                data.halos["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue12::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petEffectConfigList do
            do
                local element = petEffectConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue14
                end
                data.effects["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue14::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petTitleConfigList do
            do
                local element = petTitleConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue16
                end
                data.titles["" .. tostring(element.id)] = element.isDefault == 1
            end
            ::__continue16::
            index = index + 1
        end
    end
    return data
end
function ArchivePetInfo.prototype.init(self)
end
function ArchivePetInfo.prototype.afterEndGame(self)
end
function ArchivePetInfo.prototype.startGame(self)
    do
        local index = 0
        while index < #petConfigList do
            do
                local element = petConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue21
                end
                if self.data.skins["" .. tostring(element.id)] == nil then
                    self.data.skins["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.skins["" .. tostring(element.id)] = true
                    if self.data.cur_skin == 0 or self.data.cur_skin == 1 then
                        self.data.cur_skin = element.id
                    end
                end
            end
            ::__continue21::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petSkillConfigList do
            do
                local element = petSkillConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue26
                end
                if self.data.skills["" .. tostring(element.id)] == nil then
                    self.data.skills["" .. tostring(element.id)] = false
                end
                self.data.skills["" .. tostring(element.id)] = true
            end
            ::__continue26::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petEmoConfigList do
            do
                local element = petEmoConfigList[index + 1]
                if element.ban == 1 then
                    goto __continue29
                end
                if self.data.emojies["" .. tostring(element.id)] == nil then
                    self.data.emojies["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.emojies["" .. tostring(element.id)] = true
                end
            end
            ::__continue29::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petWingConfigList do
            do
                local element = petWingConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue33
                end
                if self.data.wings["" .. tostring(element.id)] == nil then
                    self.data.wings["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.wings["" .. tostring(element.id)] = true
                end
            end
            ::__continue33::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petEffectConfigList do
            do
                local element = petEffectConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue37
                end
                if self.data.effects["" .. tostring(element.id)] == nil then
                    self.data.effects["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.effects["" .. tostring(element.id)] = true
                end
            end
            ::__continue37::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petHaloConfigList do
            do
                local element = petHaloConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue41
                end
                if self.data.halos["" .. tostring(element.id)] == nil then
                    self.data.halos["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.halos["" .. tostring(element.id)] = true
                end
            end
            ::__continue41::
            index = index + 1
        end
    end
    do
        local index = 0
        while index < #petTitleConfigList do
            do
                local element = petTitleConfigList[index + 1]
                if element.ban == 1 or steamUtils:isSteam() and element.steamBan then
                    goto __continue45
                end
                if self.data.titles["" .. tostring(element.id)] == nil then
                    self.data.titles["" .. tostring(element.id)] = false
                end
                if element.isDefault == 1 then
                    self.data.titles["" .. tostring(element.id)] = true
                end
            end
            ::__continue45::
            index = index + 1
        end
    end
    if (self.data.cur_emoji["1"] == 0 or self.data.cur_emoji["1"] == nil) and (self.data.cur_emoji["2"] == 0 or self.data.cur_emoji["2"] == nil) and (self.data.cur_emoji["3"] == 0 or self.data.cur_emoji["3"] == nil) and (self.data.cur_emoji["4"] == 0 or self.data.cur_emoji["4"] == nil) then
        self.data.cur_emoji["1"] = petEmoConfigList[1].id
        self.data.cur_emoji["2"] = petEmoConfigList[2].id
        self.data.cur_emoji["3"] = petEmoConfigList[3].id
        self.data.cur_emoji["4"] = petEmoConfigList[4].id
    end
    if (self.data.cur_skill["1"] == 0 or self.data.cur_skill["1"] == nil) and (self.data.cur_skill["2"] == 0 or self.data.cur_skill["2"] == nil) and (self.data.cur_skill["3"] == 0 or self.data.cur_skill["3"] == nil) and (self.data.cur_skill["4"] == 0 or self.data.cur_skill["4"] == nil) then
        self.data.cur_skill["1"] = petSkillConfigList[1].id
    end
    self:upload()
end
function ArchivePetInfo.prototype.escape(self)
end
function ArchivePetInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            __TS__Await(archiveController.syncPetInfo:execute(
                y3.player.LOCAL_PLAYER.id,
                self:pbEncode()
            ))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function ArchivePetInfo.prototype.endGame(self)
end
function ArchivePetInfo.prototype.unlockSkin(self, skinId)
    self.data.skins["" .. tostring(skinId)] = true
end
function ArchivePetInfo.prototype.unlockSkill(self, skillId)
    self.data.skills["" .. tostring(skillId)] = true
end
function ArchivePetInfo.prototype.unlockWing(self, wingId)
    self.data.wings["" .. tostring(wingId)] = true
end
function ArchivePetInfo.prototype.unlockEffect(self, effectId)
    self.data.effects["" .. tostring(effectId)] = true
end
function ArchivePetInfo.prototype.unlockHalo(self, haloId)
    self.data.halos["" .. tostring(haloId)] = true
end
function ArchivePetInfo.prototype.unlockEmoji(self, emojiId)
    self.data.emojies["" .. tostring(emojiId)] = true
end
function ArchivePetInfo.prototype.unlockTitle(self, titleId)
    self.data.titles["" .. tostring(titleId)] = true
    local config = petTitleConfigMap[self.data.current_title]
    local newConfig = petTitleConfigMap[titleId]
    if config ~= nil and config.group == newConfig.group then
        self.data.current_title = newConfig.id
    end
end
function ArchivePetInfo.prototype.changeSkin(self, skinId)
    if self.data.skins["" .. tostring(skinId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_skin = skinId
end
function ArchivePetInfo.prototype.changeEmoji(self, emojiId, index)
    if emojiId > 0 and self.data.emojies["" .. tostring(emojiId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_emoji["" .. tostring(index)] = emojiId
end
function ArchivePetInfo.prototype.changeSkill(self, skillId, index)
    if skillId > 0 and self.data.skills["" .. tostring(skillId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_skill["" .. tostring(index)] = skillId
end
function ArchivePetInfo.prototype.changeWing(self, wingId)
    if wingId > 0 and self.data.wings["" .. tostring(wingId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_wing = wingId
end
function ArchivePetInfo.prototype.changeEffect(self, effectId)
    if effectId > 0 and self.data.effects["" .. tostring(effectId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_effect = effectId
end
function ArchivePetInfo.prototype.changeHalo(self, haloId)
    if haloId > 0 and self.data.halos["" .. tostring(haloId)] ~= true then
        console:error("未解锁")
        return
    end
    self.data.cur_halo = haloId
end
function ArchivePetInfo.prototype.changeTitle(self, titleId)
    self.data.current_title = titleId
end
return ____exports
