local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 8,["16"] = 8,["17"] = 9,["18"] = 9,["19"] = 10,["20"] = 10,["21"] = 11,["22"] = 11,["23"] = 12,["24"] = 12,["25"] = 13,["26"] = 13,["27"] = 14,["28"] = 14,["29"] = 15,["30"] = 15,["31"] = 16,["32"] = 16,["33"] = 17,["34"] = 17,["35"] = 18,["36"] = 18,["37"] = 19,["38"] = 19,["39"] = 20,["40"] = 20,["41"] = 21,["42"] = 21,["43"] = 22,["44"] = 22,["45"] = 23,["46"] = 23,["47"] = 24,["48"] = 24,["49"] = 25,["50"] = 25,["51"] = 26,["52"] = 26,["53"] = 27,["54"] = 27,["55"] = 28,["56"] = 28,["57"] = 29,["58"] = 29,["59"] = 30,["60"] = 30,["61"] = 31,["62"] = 31,["63"] = 32,["64"] = 32,["65"] = 33,["66"] = 33,["67"] = 34,["68"] = 34,["69"] = 35,["70"] = 35,["71"] = 36,["72"] = 36,["73"] = 37,["74"] = 37,["75"] = 38,["76"] = 38,["77"] = 39,["78"] = 39,["79"] = 40,["80"] = 40,["81"] = 41,["82"] = 41,["83"] = 42,["84"] = 42,["85"] = 43,["86"] = 43,["87"] = 44,["88"] = 44,["89"] = 45,["90"] = 45,["91"] = 46,["92"] = 46,["93"] = 47,["94"] = 47,["95"] = 48,["96"] = 48,["97"] = 49,["98"] = 49,["99"] = 50,["100"] = 50,["101"] = 51,["102"] = 51,["103"] = 52,["104"] = 52,["105"] = 53,["106"] = 53,["107"] = 54,["108"] = 54,["109"] = 57,["110"] = 58,["111"] = 58,["112"] = 59,["113"] = 59,["114"] = 60,["115"] = 60,["116"] = 63,["117"] = 63,["118"] = 63,["120"] = 63,["121"] = 68,["122"] = 69,["123"] = 70,["124"] = 68,["125"] = 72,["126"] = 73,["127"] = 74,["128"] = 72,["129"] = 76,["130"] = 77,["131"] = 78,["132"] = 76,["133"] = 81,["134"] = 81,["135"] = 81,["137"] = 82,["138"] = 83,["140"] = 85,["141"] = 86,["142"] = 81,["143"] = 89,["144"] = 89,["145"] = 89,["147"] = 90,["148"] = 91,["149"] = 93,["152"] = 96,["153"] = 97,["155"] = 100,["156"] = 100,["157"] = 100,["158"] = 100,["159"] = 100,["160"] = 106,["161"] = 89,["162"] = 109,["163"] = 110,["164"] = 111,["165"] = 112,["166"] = 113,["168"] = 109,["169"] = 117,["170"] = 118,["171"] = 119,["173"] = 121,["174"] = 122,["175"] = 122,["176"] = 122,["177"] = 122,["178"] = 122,["179"] = 117,["180"] = 129,["181"] = 130,["182"] = 130,["183"] = 130,["184"] = 130,["185"] = 130,["186"] = 130,["187"] = 130,["188"] = 130,["189"] = 130,["190"] = 130,["191"] = 130,["192"] = 130,["193"] = 129,["194"] = 154,["195"] = 156,["196"] = 156,["197"] = 156,["198"] = 156,["199"] = 156,["200"] = 156,["201"] = 156,["202"] = 156,["203"] = 156,["204"] = 156,["205"] = 156,["206"] = 156,["207"] = 156,["208"] = 156,["209"] = 154,["210"] = 66});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SoundConfig = include("logic.configs.SoundConfig")
local soundConfigMap = ____SoundConfig.soundConfigMap
____exports.SoundType = SoundType or ({})
____exports.SoundType["点击音效"] = 1
____exports.SoundType[____exports.SoundType["点击音效"]] = "点击音效"
____exports.SoundType["购买音效"] = 2
____exports.SoundType[____exports.SoundType["购买音效"]] = "购买音效"
____exports.SoundType["刷新音效"] = 3
____exports.SoundType[____exports.SoundType["刷新音效"]] = "刷新音效"
____exports.SoundType["UI打开"] = 7
____exports.SoundType[____exports.SoundType["UI打开"]] = "UI打开"
____exports.SoundType["UI关闭"] = 8
____exports.SoundType[____exports.SoundType["UI关闭"]] = "UI关闭"
____exports.SoundType["UI提示"] = 9
____exports.SoundType[____exports.SoundType["UI提示"]] = "UI提示"
____exports.SoundType["UI购买"] = 10
____exports.SoundType[____exports.SoundType["UI购买"]] = "UI购买"
____exports.SoundType["UI奖励"] = 11
____exports.SoundType[____exports.SoundType["UI奖励"]] = "UI奖励"
____exports.SoundType["UI点击"] = 12
____exports.SoundType[____exports.SoundType["UI点击"]] = "UI点击"
____exports.SoundType["选人提示"] = 13
____exports.SoundType[____exports.SoundType["选人提示"]] = "选人提示"
____exports.SoundType["倒计时SE"] = 14
____exports.SoundType[____exports.SoundType["倒计时SE"]] = "倒计时SE"
____exports.SoundType["选人30s倒计时VC"] = 15
____exports.SoundType[____exports.SoundType["选人30s倒计时VC"]] = "选人30s倒计时VC"
____exports.SoundType["选人10s倒计时VC"] = 16
____exports.SoundType[____exports.SoundType["选人10s倒计时VC"]] = "选人10s倒计时VC"
____exports.SoundType["战斗开始VC"] = 17
____exports.SoundType[____exports.SoundType["战斗开始VC"]] = "战斗开始VC"
____exports.SoundType["局内点击"] = 18
____exports.SoundType[____exports.SoundType["局内点击"]] = "局内点击"
____exports.SoundType["升级科技成功"] = 19
____exports.SoundType[____exports.SoundType["升级科技成功"]] = "升级科技成功"
____exports.SoundType["建造单位成功"] = 20
____exports.SoundType[____exports.SoundType["建造单位成功"]] = "建造单位成功"
____exports.SoundType["玩家升级"] = 21
____exports.SoundType[____exports.SoundType["玩家升级"]] = "玩家升级"
____exports.SoundType["获得天赋点"] = 22
____exports.SoundType[____exports.SoundType["获得天赋点"]] = "获得天赋点"
____exports.SoundType["战斗阶段"] = 23
____exports.SoundType[____exports.SoundType["战斗阶段"]] = "战斗阶段"
____exports.SoundType["事件对抗波提示"] = 24
____exports.SoundType[____exports.SoundType["事件对抗波提示"]] = "事件对抗波提示"
____exports.SoundType["流派等级提升"] = 25
____exports.SoundType[____exports.SoundType["流派等级提升"]] = "流派等级提升"
____exports.SoundType["刷新到紫卡"] = 26
____exports.SoundType[____exports.SoundType["刷新到紫卡"]] = "刷新到紫卡"
____exports.SoundType["刷新到金卡"] = 27
____exports.SoundType[____exports.SoundType["刷新到金卡"]] = "刷新到金卡"
____exports.SoundType["获得金币"] = 28
____exports.SoundType[____exports.SoundType["获得金币"]] = "获得金币"
____exports.SoundType["获得木头"] = 29
____exports.SoundType[____exports.SoundType["获得木头"]] = "获得木头"
____exports.SoundType["聊天消息"] = 30
____exports.SoundType[____exports.SoundType["聊天消息"]] = "聊天消息"
____exports.SoundType["塔遭到攻击VC"] = 31
____exports.SoundType[____exports.SoundType["塔遭到攻击VC"]] = "塔遭到攻击VC"
____exports.SoundType["基地遭到攻击VC"] = 32
____exports.SoundType[____exports.SoundType["基地遭到攻击VC"]] = "基地遭到攻击VC"
____exports.SoundType["塔损毁VC"] = 33
____exports.SoundType[____exports.SoundType["塔损毁VC"]] = "塔损毁VC"
____exports.SoundType["胜利"] = 34
____exports.SoundType[____exports.SoundType["胜利"]] = "胜利"
____exports.SoundType["失败"] = 35
____exports.SoundType[____exports.SoundType["失败"]] = "失败"
____exports.SoundType["选人开始VC"] = 36
____exports.SoundType[____exports.SoundType["选人开始VC"]] = "选人开始VC"
____exports.SoundType["战斗3s倒计时VC"] = 37
____exports.SoundType[____exports.SoundType["战斗3s倒计时VC"]] = "战斗3s倒计时VC"
____exports.SoundType["回合开始VC"] = 38
____exports.SoundType[____exports.SoundType["回合开始VC"]] = "回合开始VC"
____exports.SoundType["己方防御塔破坏VC"] = 39
____exports.SoundType[____exports.SoundType["己方防御塔破坏VC"]] = "己方防御塔破坏VC"
____exports.SoundType["敌方防御塔破坏VC"] = 40
____exports.SoundType[____exports.SoundType["敌方防御塔破坏VC"]] = "敌方防御塔破坏VC"
____exports.SoundType["防守失败VC"] = 41
____exports.SoundType[____exports.SoundType["防守失败VC"]] = "防守失败VC"
____exports.SoundType["防守成功VC"] = 42
____exports.SoundType[____exports.SoundType["防守成功VC"]] = "防守成功VC"
____exports.SoundType["进攻失败VC"] = 43
____exports.SoundType[____exports.SoundType["进攻失败VC"]] = "进攻失败VC"
____exports.SoundType["进攻成功VC"] = 44
____exports.SoundType[____exports.SoundType["进攻成功VC"]] = "进攻成功VC"
____exports.SoundType["刷到金卡VC"] = 45
____exports.SoundType[____exports.SoundType["刷到金卡VC"]] = "刷到金卡VC"
____exports.SoundType["装备暗拍开始VC"] = 46
____exports.SoundType[____exports.SoundType["装备暗拍开始VC"]] = "装备暗拍开始VC"
____exports.SoundType["选择祝福开始VC"] = 47
____exports.SoundType[____exports.SoundType["选择祝福开始VC"]] = "选择祝福开始VC"
____exports.SoundType["祝福选择VC"] = 48
____exports.SoundType[____exports.SoundType["祝福选择VC"]] = "祝福选择VC"
____exports.SoundType.KOFVC = 49
____exports.SoundType[____exports.SoundType.KOFVC] = "KOFVC"
____exports.SoundType["对抗波开始VC"] = 50
____exports.SoundType[____exports.SoundType["对抗波开始VC"]] = "对抗波开始VC"
____exports.SoundType["随机事件出现VC"] = 51
____exports.SoundType[____exports.SoundType["随机事件出现VC"]] = "随机事件出现VC"
____exports.SoundType["UI主界面滑动"] = 52
____exports.SoundType[____exports.SoundType["UI主界面滑动"]] = "UI主界面滑动"
____exports.BgmType = BgmType or ({})
____exports.BgmType["大厅"] = 4
____exports.BgmType[____exports.BgmType["大厅"]] = "大厅"
____exports.BgmType["选人"] = 5
____exports.BgmType[____exports.BgmType["选人"]] = "选人"
____exports.BgmType["战斗"] = 6
____exports.BgmType[____exports.BgmType["战斗"]] = "战斗"
____exports.SoundManager = __TS__Class()
local SoundManager = ____exports.SoundManager
SoundManager.name = "SoundManager"
function SoundManager.prototype.____constructor(self)
end
function SoundManager.click(self)
    local cfg = soundConfigMap[____exports.SoundType["点击音效"]]
    self:play2d(cfg)
end
function SoundManager.buy(self)
    local cfg = soundConfigMap[____exports.SoundType["购买音效"]]
    self:play2d(cfg)
end
function SoundManager.refresh(self)
    local cfg = soundConfigMap[____exports.SoundType["刷新音效"]]
    self:play2d(cfg)
end
function SoundManager.play(self, ____type, playerId)
    if ____type == nil then
        ____type = ____exports.SoundType["点击音效"]
    end
    if playerId == nil then
        playerId = y3.player.get_local().id
    end
    local cfg = soundConfigMap[____type]
    self:play2d(cfg, playerId)
end
function SoundManager.playBgm(self, ____type)
    if ____type == nil then
        ____type = ____exports.BgmType["大厅"]
    end
    local cfg = soundConfigMap[____type]
    local soundId = i18n.currentLang == "en" and cfg.en ~= nil and cfg.en > 0 and cfg.en or cfg.zhtw
    if self.bgm ~= nil and self.bgmId ~= 0 and self.bgmId == soundId then
        return
    end
    if self.bgm ~= nil then
        self.bgm:stop(y3.player.get_local())
    end
    self.bgm = y3.sound.play(
        y3.player.get_local(),
        soundId,
        {fade_in = 0, fade_out = 0, loop = true}
    )
    self.bgmId = soundId
end
function SoundManager.stopBgm(self, player)
    if self.bgm ~= nil then
        self.bgm:stop(player)
        self.bgm = nil
        self.bgmId = 0
    end
end
function SoundManager.play2d(self, cfg, playerId)
    if playerId == nil then
        playerId = y3.player.get_local().id
    end
    local soundId = i18n.currentLang == "en" and cfg.en ~= nil and cfg.en > 0 and cfg.en or cfg.zhtw
    y3.sound.play(
        y3.player.get_by_id(playerId),
        soundId,
        {fade_in = 0, fade_out = 0, loop = false}
    )
end
function SoundManager.play3d(self, id, point)
    y3.sound.play_3d(
        y3.player.get_local(),
        id,
        point,
        {
            ensure = true,
            fade_in = 0,
            fade_out = 0,
            height = 0,
            loop = false
        }
    )
end
function SoundManager.play_with_object(self, id, unitId)
    y3.sound.play_with_object(
        y3.player.get_local(),
        id,
        y3.unit.get_by_id(unitId),
        {
            ensure = true,
            fade_in = 0,
            fade_out = 0,
            loop = false,
            offset_x = 0,
            offset_y = 0,
            offset_z = 0
        }
    )
end
SoundManager.bgmId = 0
return ____exports
