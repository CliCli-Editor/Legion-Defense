local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 9,["22"] = 9,["23"] = 9,["25"] = 9,["26"] = 15,["27"] = 16,["28"] = 17,["29"] = 18,["30"] = 20,["31"] = 21,["32"] = 22,["33"] = 23,["35"] = 24,["36"] = 25,["38"] = 27,["41"] = 29,["43"] = 30,["46"] = 32,["48"] = 33,["51"] = 35,["53"] = 36,["56"] = 38,["58"] = 39,["61"] = 41,["63"] = 42,["66"] = 44,["68"] = 45,["71"] = 47,["73"] = 48,["76"] = 50,["78"] = 51,["81"] = 53,["83"] = 54,["86"] = 56,["88"] = 57,["91"] = 59,["93"] = 60,["96"] = 62,["98"] = 63,["101"] = 65,["103"] = 66,["106"] = 68,["108"] = 69,["111"] = 71,["113"] = 72,["116"] = 74,["118"] = 75,["121"] = 77,["123"] = 78,["126"] = 80,["128"] = 81,["131"] = 83,["133"] = 84,["137"] = 87,["138"] = 88,["141"] = 15,["142"] = 96});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameRandomEventType = ____GameData.GameRandomEventType
local ____LevelData = include("logic.models.LevelData")
local LevelData = ____LevelData.LevelData
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
____exports.RandomEventController = __TS__Class()
local RandomEventController = ____exports.RandomEventController
RandomEventController.name = "RandomEventController"
function RandomEventController.prototype.____constructor(self)
end
function RandomEventController.prototype.check(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local levelData = writeableDatas.global:getOrCreateSingle(LevelData)
    gameData.randomEventType = 0
    local level = levelData.levels[gameData.level]
    if level.event ~= nil then
        gameData.randomEventType = level.event
        local str = ""
        repeat
            local ____switch5 = gameData.randomEventType
            local ____cond5 = ____switch5 == GameRandomEventType["无事件"] or ____switch5 == GameRandomEventType["刺客"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合将有刺客绕过所有战区，进攻国王，建议大家快速清理战区敌人，守卫国王")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["金币怪"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合将有金币怪出现，金币怪带来大量金币的同时，也会显著增加防守难度，建议等级低的玩家可以招募一些佣兵用于防守")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["木头怪"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合将有水晶怪出现，水晶怪带来大量水晶的同时，也会显著增加防守难度，建议等级低的玩家可以招募一些佣兵用于防守")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["双倍怪物"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合怪物数量翻倍，防守难度极高，建议玩家招募一些佣兵用于防守")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["福利怪入侵"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合有福利怪入侵，击杀后有几率掉落存档道具！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["死亡自爆"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合的怪物死亡以后会【#ff0000自爆#E】，对周围所有单位造成大量伤害，请玩家谨慎对待")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["闪电战"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合怪物全伤害提升50%，但血量降低50%！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["炮车怪"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合出现的炮车怪，可以对国王和防御塔造成10倍伤害，一定一定不能漏怪！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["艰苦抉择"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合利息翻倍，但是拥有的利息越少，获得的全伤害提高越多，最多25%！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["佣兵狂潮"]
            if ____cond5 then
                str = i18n["local"](i18n, "本阶段所有佣兵售价减半！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["真男人大战"]
            if ____cond5 then
                str = i18n["local"](i18n, "本次PVP不可以创建佣兵！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["随机虫洞"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合，战斗开始后，每5s有一个单位会被传送到战场的随机位置（在敌方任意单位附近）！！！")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["内奸行为"]
            if ____cond5 then
                str = i18n["local"](i18n, "每个佣兵被击杀后会额外提供10金币")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["宠物收集师"]
            if ____cond5 then
                str = i18n["local"](i18n, "准备回合开始时，随机召唤一个精英怪【等级和玩家一致】到场地上作为自身的佣兵参与镜像战斗")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["无限火力"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合佣兵回蓝速度大幅度增加")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["疯狂进攻"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合佣兵攻击速度大幅度增加")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["雷击"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合每5s会有5道天雷落下，无差异随机攻击场上的单位")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["超人体验卡"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合战斗开始时，每个人会获得随机20张临时紫卡，持续1回合")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["御驾亲征"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合国王会跟随玩家战斗")
                break
            end
            ____cond5 = ____cond5 or ____switch5 == GameRandomEventType["混乱伤害"]
            if ____cond5 then
                str = i18n["local"](i18n, "本回合所有单位，每次伤害都会在10%、50%、100%、200%、1000%中随机波动")
                break
            end
        until true
        if str ~= "" then
            chatController:sysMsg(str, ChatInputType["所有人聊天消息"], 0, 0)
        end
    end
end
____exports.randomEventController = make(nil, ____exports.RandomEventController)
return ____exports
