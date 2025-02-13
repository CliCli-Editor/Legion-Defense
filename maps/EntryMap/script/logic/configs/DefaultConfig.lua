local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 15,["29"] = 15,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 15,["34"] = 15,["35"] = 15,["36"] = 15,["37"] = 15,["38"] = 15,["39"] = 15,["40"] = 15,["41"] = 15,["42"] = 15,["43"] = 15,["44"] = 15,["45"] = 15,["46"] = 15,["47"] = 15,["48"] = 15,["49"] = 15,["50"] = 15,["51"] = 15,["52"] = 15,["53"] = 15,["54"] = 15,["55"] = 15,["56"] = 15,["57"] = 15,["58"] = 15,["59"] = 15,["60"] = 15,["61"] = 15,["62"] = 15,["63"] = 15,["64"] = 15,["65"] = 15,["66"] = 15,["67"] = 15,["68"] = 15,["69"] = 15,["70"] = 15,["71"] = 15,["72"] = 15,["73"] = 15,["74"] = 15,["75"] = 15,["76"] = 15,["77"] = 15,["78"] = 15,["79"] = 15,["80"] = 15,["81"] = 15,["82"] = 15,["83"] = 15,["84"] = 15,["85"] = 15,["86"] = 15,["87"] = 17,["88"] = 17,["89"] = 17,["91"] = 22,["92"] = 27,["93"] = 32,["94"] = 37,["95"] = 42,["96"] = 47,["97"] = 52,["98"] = 57,["99"] = 62,["100"] = 67,["101"] = 72,["102"] = 77,["103"] = 82,["104"] = 87,["105"] = 92,["106"] = 97,["107"] = 102,["108"] = 107,["109"] = 112,["110"] = 117,["111"] = 122,["112"] = 127,["113"] = 132,["114"] = 137,["115"] = 142,["116"] = 147,["117"] = 152,["118"] = 157,["119"] = 162,["120"] = 167,["121"] = 172,["122"] = 177,["123"] = 182,["124"] = 187,["125"] = 192,["126"] = 197,["127"] = 202,["128"] = 207,["129"] = 212,["130"] = 217,["131"] = 222,["132"] = 227,["133"] = 232,["134"] = 237,["135"] = 242,["136"] = 247,["137"] = 252,["138"] = 257,["139"] = 262,["140"] = 267,["141"] = 272,["142"] = 277,["143"] = 282,["144"] = 287,["145"] = 292,["146"] = 297,["147"] = 302,["148"] = 307,["149"] = 312,["150"] = 317,["151"] = 322,["152"] = 327,["153"] = 332,["154"] = 337,["155"] = 342,["156"] = 347,["157"] = 352,["158"] = 357,["159"] = 362,["160"] = 367,["161"] = 369,["162"] = 387,["163"] = 392,["164"] = 397,["165"] = 402,["166"] = 17,["171"] = 374,["172"] = 375,["173"] = 376,["175"] = 378,["176"] = 378,["177"] = 378,["178"] = 378,["181"] = 381,["185"] = 406,["186"] = 408,["187"] = 410,["188"] = 411,["189"] = 411,["190"] = 411,["191"] = 411,["192"] = 411,["193"] = 412,["195"] = 413,["196"] = 413,["197"] = 414,["198"] = 415,["199"] = 416,["200"] = 417,["202"] = 420,["203"] = 413,["206"] = 410});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "gold",
    "wood",
    "equNum",
    "blessNum",
    "time",
    "slotNum",
    "peasantProficiency",
    "peasantEfficiency",
    "propertyLimit",
    "selectionTime",
    "selBigBlessTime",
    "genreLevel",
    "skillGetLevel",
    "defaultMoveSpeed",
    "technologyType",
    "农民描述",
    "科技描述",
    "国王描述",
    "农民外观",
    "每回合农民采集",
    "普攻回蓝",
    "流派刷新消耗",
    "流派随机消耗",
    "准备回合时长",
    "战斗回合时长",
    "被攻击MP增长",
    "普通攻击MP增长",
    "初始MP",
    "彩虹卡最大获取数量",
    "初始彩虹卡概率",
    "后续彩虹卡概率",
    "天赋等级",
    "是否开启终极天赋",
    "单位狂暴时间",
    "塔和水晶狂暴时间",
    "水晶死亡给钱",
    "KOF时间",
    "进攻类流派",
    "防御类流派",
    "单位移动动画速度",
    "利息",
    "利息上限",
    "福利怪_起始掉落数",
    "福利怪_掉落衰减",
    "福利怪_最小掉落数量",
    "福利怪_掉落ID",
    "随机事件艰苦抉择",
    "每周战斗获得钻石上限",
    "挂机每小时获取钻石数量",
    "祝福基础刷新次数",
    "祝福刷新卡额外刷新次数",
    "英雄选择刷新次数",
    "比赛奖励工作日_次数",
    "比赛奖励工作日_掉落ID",
    "比赛奖励周末_次数",
    "比赛奖励周末_掉落ID",
    "比赛奖励周奖励第1名",
    "比赛奖励周奖励第2名",
    "比赛奖励周奖励第3名",
    "比赛奖励周奖励第4_10名",
    "比赛奖励周奖励第11_50名",
    "比赛奖励周奖励第51_100名",
    "比赛奖励周奖励第101_200名",
    "比赛工作日积分限制",
    "比赛不限制积分日期",
    "每日任务奖励_掉落ID",
    "排位AI分数最大值",
    "人机不选的英雄",
    "温暖局局数",
    "_steamDefaultProps",
    "公告",
    "公告中文",
    "公告繁体",
    "公告英文"
}
____exports.DefaultConfig = __TS__Class()
local DefaultConfig = ____exports.DefaultConfig
DefaultConfig.name = "DefaultConfig"
function DefaultConfig.prototype.____constructor(self)
    self.gold = 0
    self.wood = 0
    self.equNum = 0
    self.blessNum = 0
    self.time = 0
    self.slotNum = 0
    self.peasantProficiency = 0
    self.peasantEfficiency = {}
    self.propertyLimit = 0
    self.selectionTime = 0
    self.selBigBlessTime = 0
    self.genreLevel = {}
    self.skillGetLevel = {}
    self.defaultMoveSpeed = 0
    self.technologyType = {}
    self["农民描述"] = ""
    self["科技描述"] = ""
    self["国王描述"] = ""
    self["农民外观"] = 0
    self["每回合农民采集"] = 0
    self["普攻回蓝"] = 0
    self["流派刷新消耗"] = 0
    self["流派随机消耗"] = 0
    self["准备回合时长"] = 0
    self["战斗回合时长"] = 0
    self["被攻击MP增长"] = 0
    self["普通攻击MP增长"] = 0
    self["初始MP"] = 0
    self["彩虹卡最大获取数量"] = 0
    self["初始彩虹卡概率"] = 0
    self["后续彩虹卡概率"] = 0
    self["天赋等级"] = {}
    self["是否开启终极天赋"] = false
    self["单位狂暴时间"] = 0
    self["塔和水晶狂暴时间"] = 0
    self["水晶死亡给钱"] = 0
    self["KOF时间"] = 0
    self["进攻类流派"] = {}
    self["防御类流派"] = {}
    self["单位移动动画速度"] = 0
    self["利息"] = 0
    self["利息上限"] = 0
    self["福利怪_起始掉落数"] = 0
    self["福利怪_掉落衰减"] = 0
    self["福利怪_最小掉落数量"] = 0
    self["福利怪_掉落ID"] = 0
    self["随机事件艰苦抉择"] = 0
    self["每周战斗获得钻石上限"] = 0
    self["挂机每小时获取钻石数量"] = 0
    self["祝福基础刷新次数"] = 0
    self["祝福刷新卡额外刷新次数"] = 0
    self["英雄选择刷新次数"] = 0
    self["比赛奖励工作日_次数"] = 0
    self["比赛奖励工作日_掉落ID"] = 0
    self["比赛奖励周末_次数"] = 0
    self["比赛奖励周末_掉落ID"] = 0
    self["比赛奖励周奖励第1名"] = 0
    self["比赛奖励周奖励第2名"] = 0
    self["比赛奖励周奖励第3名"] = 0
    self["比赛奖励周奖励第4_10名"] = 0
    self["比赛奖励周奖励第11_50名"] = 0
    self["比赛奖励周奖励第51_100名"] = 0
    self["比赛奖励周奖励第101_200名"] = 0
    self["比赛工作日积分限制"] = 0
    self["比赛不限制积分日期"] = {}
    self["每日任务奖励_掉落ID"] = 0
    self["排位AI分数最大值"] = 0
    self["人机不选的英雄"] = {}
    self["温暖局局数"] = 0
    self._steamDefaultProps = {}
    self._fksteamDefaultProps = nil
    self["公告"] = ""
    self["公告中文"] = ""
    self["公告繁体"] = ""
    self["公告英文"] = ""
end
__TS__SetDescriptor(
    DefaultConfig.prototype,
    "steamDefaultProps",
    {get = function(self)
        if self._fksteamDefaultProps == nil then
            if not self._steamDefaultProps then
                self._fksteamDefaultProps = {}
            else
                self._fksteamDefaultProps = __TS__ArrayMap(
                    self._steamDefaultProps,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fksteamDefaultProps
    end},
    true
)
local encryptModelData = "k02+9+a/1mqoSYgpvpTThJNDJPBGIEWf0FlHZ1upku8KSZp5ZSrJKFOZWErySgdVZ+zuIp/i1p8QvFnb/S6gkKTcEZltlbeRXlPtK/QjLJ5FA2fTv0yV/DaG6/DisKFtcLd31ASyg+4rVkiVgAT8sBk/8QSTjq8GQzlOvC1zuUWwM0LY+nzc60/mpvzEtWMsbdk8Uvnxbh2dw/d6nRVK1PWJSmKJvzlkxfvXyhsYNgdMH3A3IUMSqKmDfoK+5OzNVysLgc0QJT6aw7nLlE0Hfr68lubVY115xUW2x8xzv8Vxm6/ycB7MluncUQ+A+cCKff/m+rcbBWJkJTSmP72l3Hd1bUdiWF/8rBo1Gu4vAE+I2vXZPFzEDKJ7TxDz/mqw4plFQ5iZeKsd7UdE3WP7mZyO3wtYTPhwkaJxBjzxLjE0hkQMGpZHwROkxxpPSa8EyF9ne5BkuzN7Z+apVJXRwKPon75I/twCb3VlHQaz+ZFF6MDpffI7zWwNPZrppErTQs9HKZKGS23xoKJoWZ2JbGQ/TykoXoOhSmktDQZOZIWCWcKe/+kWXnIUR2fuNfZinjIdUdpPD0UFTkJJuCOkE4JhX0O+seDVUUoiV1OYnCa72a/e0vjvxxB0hNW/3g67TUadU3/92QhnlKyi9A0WjhSf+xdEPI6lJVhTtfRyFyalf6meNNDhlsA4e8TgjyG5G1wcP4S0YyT9pAK/1ieXctMR1BDwGTWxXaOPvHb0QIT6WrCTvdv5vEWmkvcemOUpvQjNXe0YKrFbgSfbw5zETqYbF0jezkCGI918B2IuDjO0Ww74U3YRMwX0tZrfccpPUn/xG1FLs3ceCRvGhF12+woUEMvfRjSjodaDIXAV9W8="
____exports.defaultConfig = __TS__New(____exports.DefaultConfig)
function ____exports.DefaultConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "defaultiWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("default&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    local record = modelData[1]
    do
        local i = 0
        while i < #fields do
            local key = fields[i + 1]
            local value = record[i + 1]
            if value == "%null%" then
                value = nil
            end
            ____exports.defaultConfig[key] = value
            i = i + 1
        end
    end
end
return ____exports
