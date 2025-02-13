local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 10,["22"] = 10,["23"] = 11,["24"] = 11,["25"] = 12,["26"] = 12,["27"] = 13,["28"] = 13,["29"] = 25,["30"] = 25,["31"] = 25,["32"] = 25,["34"] = 25,["35"] = 26,["36"] = 169,["37"] = 25,["38"] = 30,["39"] = 31,["40"] = 30,["41"] = 34,["42"] = 35,["43"] = 35,["44"] = 35,["45"] = 35,["46"] = 36,["47"] = 35,["48"] = 35,["49"] = 39,["50"] = 39,["51"] = 39,["52"] = 40,["53"] = 39,["54"] = 39,["55"] = 43,["56"] = 45,["57"] = 46,["58"] = 47,["59"] = 47,["60"] = 48,["61"] = 48,["62"] = 49,["63"] = 50,["64"] = 51,["65"] = 52,["66"] = 53,["67"] = 53,["68"] = 53,["69"] = 53,["70"] = 53,["71"] = 53,["72"] = 53,["73"] = 53,["74"] = 53,["75"] = 46,["76"] = 63,["77"] = 64,["78"] = 64,["79"] = 64,["80"] = 65,["81"] = 64,["82"] = 64,["83"] = 67,["84"] = 45,["86"] = 69,["87"] = 69,["88"] = 70,["89"] = 71,["90"] = 72,["91"] = 72,["92"] = 72,["93"] = 73,["94"] = 72,["95"] = 72,["96"] = 76,["97"] = 76,["98"] = 76,["99"] = 77,["100"] = 76,["101"] = 76,["102"] = 80,["103"] = 80,["104"] = 80,["105"] = 80,["106"] = 81,["107"] = 82,["108"] = 83,["109"] = 83,["110"] = 83,["111"] = 83,["112"] = 83,["113"] = 83,["114"] = 83,["115"] = 83,["116"] = 83,["117"] = 80,["118"] = 80,["119"] = 91,["120"] = 91,["121"] = 91,["122"] = 91,["123"] = 92,["124"] = 91,["125"] = 91,["126"] = 95,["127"] = 95,["128"] = 95,["129"] = 96,["131"] = 97,["132"] = 98,["134"] = 99,["137"] = 101,["139"] = 102,["142"] = 104,["144"] = 105,["148"] = 108,["152"] = 111,["153"] = 95,["154"] = 95,["155"] = 113,["156"] = 113,["157"] = 113,["158"] = 114,["159"] = 113,["160"] = 113,["161"] = 116,["162"] = 116,["163"] = 116,["164"] = 117,["165"] = 116,["166"] = 116,["167"] = 119,["168"] = 119,["169"] = 119,["170"] = 120,["171"] = 119,["172"] = 119,["173"] = 122,["174"] = 122,["175"] = 122,["176"] = 123,["177"] = 122,["178"] = 122,["179"] = 125,["180"] = 125,["181"] = 125,["182"] = 126,["183"] = 125,["184"] = 125,["185"] = 128,["186"] = 128,["187"] = 128,["188"] = 129,["189"] = 128,["190"] = 128,["191"] = 131,["192"] = 131,["193"] = 131,["194"] = 132,["195"] = 131,["196"] = 131,["197"] = 134,["198"] = 134,["199"] = 134,["200"] = 135,["201"] = 134,["202"] = 134,["203"] = 137,["204"] = 137,["205"] = 137,["206"] = 138,["207"] = 137,["208"] = 137,["209"] = 140,["210"] = 140,["211"] = 140,["212"] = 141,["213"] = 140,["214"] = 140,["215"] = 69,["218"] = 145,["219"] = 146,["220"] = 146,["221"] = 147,["222"] = 147,["223"] = 148,["224"] = 149,["225"] = 145,["226"] = 152,["227"] = 152,["228"] = 152,["229"] = 153,["230"] = 154,["232"] = 156,["234"] = 152,["235"] = 152,["236"] = 160,["237"] = 160,["238"] = 160,["239"] = 161,["240"] = 160,["241"] = 160,["242"] = 164,["243"] = 164,["244"] = 164,["245"] = 165,["246"] = 164,["247"] = 164,["248"] = 34,["249"] = 170,["250"] = 171,["251"] = 170,["252"] = 174,["253"] = 175,["254"] = 176,["255"] = 174,["256"] = 179,["257"] = 180,["258"] = 179,["259"] = 183,["260"] = 184,["261"] = 185,["262"] = 186,["264"] = 188,["265"] = 183});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____StatManager = include("logic.archive.manager.StatManager")
local statManager = ____StatManager.statManager
local ____SevenDaysConfig = include("logic.configs.SevenDaysConfig")
local sevenDaysConfigList = ____SevenDaysConfig.sevenDaysConfigList
local sevenDaysConfigMap = ____SevenDaysConfig.sevenDaysConfigMap
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DInfoSevenSign = include("logic.dialogs.infos.DInfoSevenSign")
local DInfoSevenSign = ____DInfoSevenSign.DInfoSevenSign
____exports.DSevenSign = __TS__Class()
local DSevenSign = ____exports.DSevenSign
DSevenSign.name = "DSevenSign"
__TS__ClassExtends(DSevenSign, Dialog)
function DSevenSign.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.eventId = 0
end
function DSevenSign.prototype.onCreate(self)
    self:initView()
end
function DSevenSign.prototype.initView(self)
    self:bindAction(
        "root.close",
        "左键-点击",
        function()
            self:escHide()
        end
    )
    self:bindClick(
        "root.mask",
        function()
            self:escHide()
        end
    )
    local cfgs = sevenDaysConfigList
    local dataList = self:compute(function()
        local function func(____, idx)
            local ____opt_0 = archive.statData.sevenDayInfo
            local rewardCount = ____opt_0 and ____opt_0.reward_count or 0
            local ____opt_2 = archive.statData.sevenDayInfo
            local signInCount = ____opt_2 and ____opt_2.signin_count or 0
            local cfg = cfgs[idx + 1]
            local icon = self:getIcon(cfg.id)
            local isGet = rewardCount >= cfg.id
            local canGet = signInCount > idx and rewardCount < signInCount and not isGet
            return {
                name = cfg.name.value,
                des = cfg.des.value,
                icon = icon,
                num = cfg.num,
                isGet = isGet,
                quality = cfg.rare,
                canGet = canGet
            }
        end
        local result = {}
        __TS__ArrayForEach(
            cfgs,
            function(____, a, idx)
                result[#result + 1] = func(nil, idx)
            end
        )
        return result
    end)
    do
        local i = 0
        while i < 7 do
            local index = i
            local k = i + 1
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".isGet",
                function()
                    return dataList.value[index + 1].isGet
                end
            )
            self:bindImage(
                ("root.content.sign_" .. tostring(k)) .. ".item.icon",
                function()
                    return dataList.value[index + 1].icon
                end
            )
            self:bindAction(
                ("root.content.sign_" .. tostring(k)) .. ".item.icon",
                "鼠标-移入",
                function(____, ui, p)
                    local x = ui:get_absolute_x()
                    local y = ui:get_absolute_y()
                    dialogs:show(
                        DInfoSevenSign,
                        {
                            x = x + ui:get_real_width() * 1.2,
                            y = y + ui:get_real_height() / 2,
                            name = dataList.value[index + 1].name,
                            des = dataList.value[index + 1].des
                        }
                    )
                end
            )
            self:bindAction(
                ("root.content.sign_" .. tostring(k)) .. ".item.icon",
                "鼠标-移出",
                function()
                    dialogs:hide(DInfoSevenSign)
                end
            )
            self:bindText(
                ("root.content.sign_" .. tostring(k)) .. ".item.name",
                function()
                    local strColor = ""
                    repeat
                        local ____switch15 = dataList.value[index + 1].quality
                        local ____cond15 = ____switch15 == 0
                        if ____cond15 then
                            strColor = "#f0f6ff"
                            break
                        end
                        ____cond15 = ____cond15 or ____switch15 == 1
                        if ____cond15 then
                            strColor = "#f0f6ff"
                            break
                        end
                        ____cond15 = ____cond15 or ____switch15 == 2
                        if ____cond15 then
                            strColor = "#fff8f0"
                            break
                        end
                        do
                            strColor = "#f0f6ff"
                            break
                        end
                    until true
                    return dataList.value[index + 1].name
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".bg.rare_0",
                function()
                    return dataList.value[index + 1].quality == 0
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".bg.rare_1",
                function()
                    return dataList.value[index + 1].quality == 1
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".bg.rare_2",
                function()
                    return dataList.value[index + 1].quality == 2
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.bg.rare_0",
                function()
                    return dataList.value[index + 1].quality == 0
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.bg.rare_1",
                function()
                    return dataList.value[index + 1].quality == 1
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.bg.rare_2",
                function()
                    return dataList.value[index + 1].quality == 2
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.frame.rare_0",
                function()
                    return dataList.value[index + 1].quality == 0
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.frame.rare_1",
                function()
                    return dataList.value[index + 1].quality == 1
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".item.frame.rare_2",
                function()
                    return dataList.value[index + 1].quality == 2
                end
            )
            self:bindVisible(
                ("root.content.sign_" .. tostring(k)) .. ".canGet",
                function()
                    return dataList.value[index + 1].canGet
                end
            )
            i = i + 1
        end
    end
    local canGet = self:compute(function()
        local ____opt_4 = archive.statData.sevenDayInfo
        local signinCount = ____opt_4 and ____opt_4.signin_count or 0
        local ____opt_6 = archive.statData.sevenDayInfo
        local rewardCount = ____opt_6 and ____opt_6.reward_count or 0
        local canGet = signinCount > rewardCount
        return canGet
    end)
    self:bindClick(
        "root.getBtn",
        function()
            if canGet.value then
                statManager:signIn()
            else
                DTips:show(i18n["local"](i18n, "今日签到奖励已领取，请明天再来！"))
            end
        end
    )
    self:bindText(
        "root.getBtn.txt",
        function()
            return (canGet.value and "#6c6c0e" or "#3e3d3c") .. i18n["local"](i18n, "立即领取")
        end
    )
    self:bindButtonEnable(
        "root.getBtn",
        function()
            return canGet.value
        end
    )
end
function DSevenSign.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
end
function DSevenSign.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DSevenSign.prototype.escHide(self)
    self:hide()
end
function DSevenSign.prototype.getIcon(self, id)
    local cfg = sevenDaysConfigMap[id]
    if cfg.propId ~= nil then
        return getPropIcon(nil, cfg.propId)
    end
    return 0
end
return ____exports
