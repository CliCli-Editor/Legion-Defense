local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 3,["6"] = 4,["7"] = 4,["8"] = 5,["9"] = 5,["10"] = 6,["11"] = 6,["12"] = 7,["13"] = 7,["14"] = 10,["15"] = 11,["16"] = 11,["17"] = 12,["18"] = 12,["19"] = 13,["20"] = 13,["21"] = 14,["22"] = 14,["24"] = 35,["25"] = 85,["26"] = 85,["27"] = 85,["28"] = 90,["29"] = 91,["30"] = 91,["31"] = 91,["32"] = 91,["33"] = 91,["34"] = 91,["35"] = 91,["36"] = 85,["37"] = 85});
local ____exports = {}
____exports.ChatTypeEnum = ChatTypeEnum or ({})
____exports.ChatTypeEnum["所有人聊天消息"] = 0
____exports.ChatTypeEnum[____exports.ChatTypeEnum["所有人聊天消息"]] = "所有人聊天消息"
____exports.ChatTypeEnum["盟友聊天消息"] = 1
____exports.ChatTypeEnum[____exports.ChatTypeEnum["盟友聊天消息"]] = "盟友聊天消息"
____exports.ChatTypeEnum["系统消息"] = 2
____exports.ChatTypeEnum[____exports.ChatTypeEnum["系统消息"]] = "系统消息"
____exports.ChatTypeEnum["战报消息"] = 3
____exports.ChatTypeEnum[____exports.ChatTypeEnum["战报消息"]] = "战报消息"
____exports.ChatInputType = ChatInputType or ({})
____exports.ChatInputType["所有人聊天消息"] = 0
____exports.ChatInputType[____exports.ChatInputType["所有人聊天消息"]] = "所有人聊天消息"
____exports.ChatInputType["盟友聊天消息"] = 1
____exports.ChatInputType[____exports.ChatInputType["盟友聊天消息"]] = "盟友聊天消息"
____exports.ChatInputType["仅自己可见消息"] = 2
____exports.ChatInputType[____exports.ChatInputType["仅自己可见消息"]] = "仅自己可见消息"
____exports.ChatInputType["敌方消息"] = 3
____exports.ChatInputType[____exports.ChatInputType["敌方消息"]] = "敌方消息"
--- 消息类型
____exports.SystemMessage = SystemMessage or ({})
____exports.ChatData = {
    name = "ChatData",
    indexKeys = {},
    make = function(self)
        return {
            all_messages = {},
            chats = {},
            nofities = {},
            sys = {},
            chatInputType = 1
        }
    end
}
return ____exports
