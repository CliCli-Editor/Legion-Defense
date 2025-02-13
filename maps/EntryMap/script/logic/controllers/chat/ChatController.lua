local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 9,["23"] = 11,["24"] = 11,["25"] = 12,["26"] = 12,["27"] = 14,["28"] = 14,["29"] = 15,["30"] = 15,["31"] = 18,["32"] = 18,["33"] = 21,["34"] = 21,["35"] = 25,["36"] = 25,["37"] = 25,["39"] = 25,["40"] = 27,["41"] = 28,["42"] = 29,["43"] = 30,["45"] = 27,["46"] = 34,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["51"] = 35,["52"] = 40,["53"] = 41,["54"] = 42,["55"] = 43,["56"] = 43,["57"] = 44,["58"] = 44,["60"] = 46,["61"] = 47,["62"] = 48,["63"] = 49,["64"] = 51,["65"] = 51,["66"] = 52,["67"] = 52,["70"] = 55,["71"] = 56,["72"] = 57,["73"] = 58,["74"] = 60,["75"] = 60,["76"] = 61,["77"] = 61,["81"] = 65,["82"] = 66,["83"] = 67,["84"] = 67,["85"] = 68,["86"] = 68,["89"] = 34,["90"] = 73,["91"] = 75,["92"] = 75,["93"] = 75,["94"] = 75,["95"] = 75,["96"] = 80,["97"] = 81,["98"] = 82,["99"] = 83,["100"] = 83,["101"] = 84,["102"] = 84,["104"] = 86,["105"] = 87,["106"] = 88,["107"] = 89,["108"] = 91,["109"] = 91,["110"] = 92,["111"] = 92,["115"] = 96,["116"] = 98,["117"] = 98,["118"] = 99,["119"] = 99,["121"] = 73,["122"] = 103,["123"] = 104,["124"] = 106,["125"] = 112,["126"] = 113,["127"] = 115,["128"] = 116,["129"] = 117,["130"] = 119,["131"] = 119,["132"] = 120,["133"] = 120,["137"] = 124,["138"] = 125,["139"] = 126,["140"] = 128,["141"] = 128,["142"] = 129,["143"] = 129,["146"] = 103,["147"] = 134,["148"] = 135,["149"] = 136,["150"] = 134,["151"] = 139,["152"] = 140,["154"] = 145,["155"] = 153,["156"] = 146,["160"] = 148,["162"] = 150,["163"] = 150,["164"] = 150,["165"] = 150,["166"] = 150,["167"] = 150,["168"] = 150,["169"] = 150,["170"] = 150,["173"] = 152,["175"] = 153,["176"] = 154,["177"] = 155,["179"] = 156,["180"] = 156,["181"] = 156,["182"] = 156,["183"] = 156,["184"] = 156,["187"] = 158,["191"] = 160,["193"] = 161,["194"] = 161,["195"] = 161,["196"] = 161,["197"] = 161,["198"] = 161,["201"] = 163,["206"] = 139,["207"] = 169,["208"] = 170,["209"] = 171,["210"] = 172,["211"] = 173,["212"] = 174,["213"] = 175,["214"] = 176,["215"] = 169,["216"] = 181});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ChatData = include("logic.models.ChatData")
local ChatData = ____ChatData.ChatData
local ChatInputType = ____ChatData.ChatInputType
local ChatTypeEnum = ____ChatData.ChatTypeEnum
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
____exports.MessageType = MessageType or ({})
____exports.MessageType["战区防守成功"] = 0
____exports.MessageType[____exports.MessageType["战区防守成功"]] = "战区防守成功"
____exports.MessageType["战区防守失败"] = 1
____exports.MessageType[____exports.MessageType["战区防守失败"]] = "战区防守失败"
____exports.MessageType["国王正在遭受攻击"] = 2
____exports.MessageType[____exports.MessageType["国王正在遭受攻击"]] = "国王正在遭受攻击"
____exports.MessageType["国王防守失败"] = 3
____exports.MessageType[____exports.MessageType["国王防守失败"]] = "国王防守失败"
____exports.MessageType["回合开始"] = 4
____exports.MessageType[____exports.MessageType["回合开始"]] = "回合开始"
____exports.MessageType["特殊事件"] = 5
____exports.MessageType[____exports.MessageType["特殊事件"]] = "特殊事件"
____exports.ChatController = __TS__Class()
local ChatController = ____exports.ChatController
ChatController.name = "ChatController"
function ChatController.prototype.____constructor(self)
end
function ChatController.prototype.init(self)
    for ____, playerId in ipairs(playerIdList) do
        local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
        data.chatInputType = ChatInputType["盟友聊天消息"]
    end
end
function ChatController.prototype.sysMsg(self, msg, ____type, target, sender)
    local chat = {
        sender = sender,
        value = (("#ff0000[" .. i18n["local"](i18n, "系统")) .. "]: #ffffff") .. msg,
        type = ChatTypeEnum["系统消息"]
    }
    if ____type == ChatInputType["所有人聊天消息"] then
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            local ____data_all_messages_0 = data.all_messages
            ____data_all_messages_0[#____data_all_messages_0 + 1] = chat
            local ____data_sys_1 = data.sys
            ____data_sys_1[#____data_sys_1 + 1] = chat
        end
    elseif ____type == ChatInputType["盟友聊天消息"] then
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            if player2King[playerId] == player2King[sender] then
                local ____data_all_messages_2 = data.all_messages
                ____data_all_messages_2[#____data_all_messages_2 + 1] = chat
                local ____data_sys_3 = data.sys
                ____data_sys_3[#____data_sys_3 + 1] = chat
            end
        end
    elseif ____type == ChatInputType["敌方消息"] then
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            if player2King[playerId] ~= player2King[sender] then
                local ____data_all_messages_4 = data.all_messages
                ____data_all_messages_4[#____data_all_messages_4 + 1] = chat
                local ____data_sys_5 = data.sys
                ____data_sys_5[#____data_sys_5 + 1] = chat
            end
        end
    else
        if sender > 0 then
            local data = writeableDatas.players[sender]:getOrCreateSingle(ChatData)
            local ____data_all_messages_6 = data.all_messages
            ____data_all_messages_6[#____data_all_messages_6 + 1] = chat
            local ____data_sys_7 = data.sys
            ____data_sys_7[#____data_sys_7 + 1] = chat
        end
    end
end
function ChatController.prototype.notifyMsg(self, msg, ____type, target, sender)
    local chat = {
        sender = sender,
        value = (("#ffff00[" .. i18n["local"](i18n, "通报")) .. "]: #ffffff") .. msg,
        type = ChatTypeEnum["战报消息"]
    }
    if ____type == ChatInputType["所有人聊天消息"] then
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            local ____data_all_messages_8 = data.all_messages
            ____data_all_messages_8[#____data_all_messages_8 + 1] = chat
            local ____data_nofities_9 = data.nofities
            ____data_nofities_9[#____data_nofities_9 + 1] = chat
        end
    elseif ____type == ChatInputType["盟友聊天消息"] then
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            if player2King[playerId] == player2King[sender] then
                local ____data_all_messages_10 = data.all_messages
                ____data_all_messages_10[#____data_all_messages_10 + 1] = chat
                local ____data_nofities_11 = data.nofities
                ____data_nofities_11[#____data_nofities_11 + 1] = chat
            end
        end
    else
        local data = writeableDatas.players[sender]:getOrCreateSingle(ChatData)
        local ____data_all_messages_12 = data.all_messages
        ____data_all_messages_12[#____data_all_messages_12 + 1] = chat
        local ____data_nofities_13 = data.nofities
        ____data_nofities_13[#____data_nofities_13 + 1] = chat
    end
end
function ChatController.prototype.sendMsg(self, localPlayerId, msg, isAll)
    local data = writeableDatas.players[localPlayerId]:getOrCreateSingle(ChatData)
    local chat = {sender = localPlayerId, value = msg, type = isAll and ChatTypeEnum["所有人聊天消息"] or ChatTypeEnum["盟友聊天消息"]}
    if chat.type == ChatTypeEnum["盟友聊天消息"] then
        chat.value = (((((("#ecf2ff[" .. self:getTime()) .. "][") .. i18n["local"](i18n, "同盟")) .. "]: ") .. y3.player.get_by_id(localPlayerId):get_name()) .. " : ") .. chat.value
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            if player2King[playerId] == player2King[localPlayerId] then
                local ____data_all_messages_14 = data.all_messages
                ____data_all_messages_14[#____data_all_messages_14 + 1] = chat
                local ____data_chats_15 = data.chats
                ____data_chats_15[#____data_chats_15 + 1] = chat
            end
        end
    else
        chat.value = (((((("#ecf2ff[" .. self:getTime()) .. "][") .. i18n["local"](i18n, "所有人")) .. "]: ") .. y3.player.get_by_id(localPlayerId):get_name()) .. " : ") .. chat.value
        for ____, playerId in ipairs(playerIdList) do
            local data = writeableDatas.players[playerId]:getOrCreateSingle(ChatData)
            local ____data_all_messages_16 = data.all_messages
            ____data_all_messages_16[#____data_all_messages_16 + 1] = chat
            local ____data_chats_17 = data.chats
            ____data_chats_17[#____data_chats_17 + 1] = chat
        end
    end
end
function ChatController.prototype.changeType(self, localPlayerId, ____type)
    local data = writeableDatas.players[localPlayerId]:getOrCreateSingle(ChatData)
    data.chatInputType = ____type
end
function ChatController.prototype.trigger(self, messageType, playerId, args)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    repeat
        local ____switch39 = messageType
        local s
        local ____cond39 = ____switch39 == ____exports.MessageType["战区防守成功"]
        if ____cond39 then
            break
        end
        ____cond39 = ____cond39 or ____switch39 == ____exports.MessageType["战区防守失败"]
        if ____cond39 then
            self:notifyMsg(
                i18n:format(
                    "${name}的战区失守了。",
                    {name = y3.player.get_by_id(playerId):get_name()}
                ),
                ChatInputType["仅自己可见消息"],
                0,
                0
            )
            break
        end
        ____cond39 = ____cond39 or ____switch39 == ____exports.MessageType["国王正在遭受攻击"]
        if ____cond39 then
            s = i18n["local"](i18n, "近卫")
            if player2King[playerId] == BattleGroundId.RIGHT_KING then
                s = i18n["local"](i18n, "天灾")
            end
            self:notifyMsg(
                i18n:format("${name}的基地正在遭受攻击。", {name = s}),
                ChatInputType["仅自己可见消息"],
                0,
                playerId
            )
            break
        end
        ____cond39 = ____cond39 or ____switch39 == ____exports.MessageType["国王防守失败"]
        if ____cond39 then
            break
        end
        ____cond39 = ____cond39 or ____switch39 == ____exports.MessageType["回合开始"]
        if ____cond39 then
            self:sysMsg(
                i18n:format("第${level}回合开始。", {level = gameData.level}),
                ChatInputType["仅自己可见消息"],
                0,
                playerId
            )
            break
        end
        ____cond39 = ____cond39 or ____switch39 == ____exports.MessageType["特殊事件"]
        if ____cond39 then
            break
        end
    until true
end
function ChatController.prototype.getTime(self)
    local time = y3.game.current_game_run_time()
    console:log("time", time)
    local minutes = math.floor(time / 60)
    local sec = math.floor(time % 60)
    local minutes_str = minutes >= 10 and "" .. tostring(minutes) or "0" .. tostring(minutes)
    local sec_str = sec >= 10 and "" .. tostring(sec) or "0" .. tostring(sec)
    return (minutes_str .. "：") .. sec_str
end
____exports.chatController = make(nil, ____exports.ChatController)
return ____exports
