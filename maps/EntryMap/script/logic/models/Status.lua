local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 2,["7"] = 3,["8"] = 4,["9"] = 5,["11"] = 9,["13"] = 13,["15"] = 18,["17"] = 22,["19"] = 27,["21"] = 32,["23"] = 37,["25"] = 42,["27"] = 47,["29"] = 52,["31"] = 57,["33"] = 62,["35"] = 66,["37"] = 71,["39"] = 76,["40"] = 79,["41"] = 102,["42"] = 102,["43"] = 102,["44"] = 102,["45"] = 102,["46"] = 102,["47"] = 102,["48"] = 102,["49"] = 102,["50"] = 102,["51"] = 102,["52"] = 102,["53"] = 102,["54"] = 102,["55"] = 102,["56"] = 102,["57"] = 102,["58"] = 102,["59"] = 102,["60"] = 102,["61"] = 102});
local ____exports = {}
____exports["空状态"] = 0
____exports["被击退"] = 1
____exports["眩晕"] = 2
____exports["霸体"] = 3
____exports["无敌"] = 4
--- 不能普通攻击
____exports["缴械"] = 5
--- 不能放大招
____exports["沉默"] = 6
--- 不可被选中
____exports["不可选中"] = 7
--- 冻结
____exports["冻结"] = 8
--- 魅惑
____exports["魅惑"] = 9
--- 免疫控制
____exports["免疫控制"] = 10
--- 可转向建筑
____exports["可转向建筑"] = 992
--- 不会死亡
____exports["不会死亡"] = 993
--- 准备状态
____exports["准备状态"] = 994
--- 沿路径跑路
____exports["只跑路"] = 995
--- 无敌且无视碰撞
____exports["新手保护"] = 996
--- 不可移动
____exports["建筑"] = 997
--- 不会死亡，不可移动，不会攻击
____exports["木头人"] = 998
--- 路人状态就会变成一个装饰物，与场景无任何交互
____exports["路人"] = 999
--- 防止玩家通过鼠标控制单位
____exports["无法控制"] = 1000
____exports.StateList = {
    {name = "无法控制", key = ____exports["无法控制"]},
    {name = "被击退", key = ____exports["被击退"]},
    {name = "眩晕", key = ____exports["眩晕"], particle = {particleId = 134263308, scale = 1, slot = "top"}, stopAnim = true},
    {name = "霸体", key = ____exports["霸体"]},
    {name = "无敌", key = ____exports["无敌"]},
    {name = "缴械", key = ____exports["缴械"]},
    {name = "沉默", key = ____exports["沉默"]},
    {name = "不可选中", key = ____exports["不可选中"]},
    {name = "冻结", key = ____exports["冻结"]},
    {name = "魅惑", key = ____exports["魅惑"]},
    {name = "免疫控制", key = ____exports["免疫控制"]},
    {name = "可转向建筑", key = ____exports["可转向建筑"]},
    {name = "不会死亡", key = ____exports["不会死亡"]},
    {name = "准备状态", key = ____exports["准备状态"]},
    {name = "只跑路", key = ____exports["只跑路"]},
    {name = "新手保护", key = ____exports["新手保护"]},
    {name = "建筑", key = ____exports["建筑"]},
    {name = "木头人", key = ____exports["木头人"]},
    {name = "路人", key = ____exports["路人"]},
    {name = "无法控制", key = ____exports["无法控制"]}
}
return ____exports
