local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 11,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 13,["35"] = 13,["36"] = 14,["37"] = 14,["38"] = 28,["39"] = 28,["40"] = 28,["41"] = 28,["43"] = 28,["44"] = 29,["45"] = 206,["46"] = 28,["47"] = 38,["48"] = 39,["49"] = 38,["50"] = 42,["51"] = 44,["52"] = 45,["53"] = 45,["54"] = 45,["55"] = 45,["57"] = 47,["58"] = 47,["59"] = 48,["60"] = 49,["61"] = 50,["62"] = 51,["63"] = 51,["64"] = 51,["65"] = 51,["66"] = 52,["67"] = 52,["68"] = 52,["69"] = 52,["70"] = 53,["71"] = 53,["72"] = 53,["73"] = 53,["74"] = 54,["75"] = 54,["76"] = 54,["77"] = 55,["78"] = 56,["81"] = 59,["82"] = 60,["83"] = 54,["84"] = 54,["85"] = 47,["88"] = 63,["89"] = 42,["90"] = 67,["91"] = 68,["92"] = 69,["93"] = 70,["94"] = 71,["95"] = 72,["96"] = 73,["97"] = 75,["99"] = 76,["100"] = 77,["101"] = 78,["104"] = 80,["105"] = 80,["106"] = 81,["107"] = 82,["108"] = 83,["111"] = 86,["112"] = 88,["115"] = 91,["116"] = 92,["119"] = 80,["125"] = 98,["126"] = 99,["127"] = 100,["128"] = 102,["129"] = 102,["130"] = 103,["131"] = 104,["132"] = 105,["133"] = 106,["134"] = 107,["135"] = 107,["136"] = 107,["138"] = 107,["140"] = 107,["141"] = 108,["142"] = 109,["143"] = 110,["144"] = 112,["145"] = 113,["146"] = 114,["147"] = 115,["148"] = 116,["149"] = 117,["150"] = 117,["151"] = 117,["153"] = 117,["155"] = 117,["156"] = 118,["157"] = 119,["159"] = 122,["160"] = 122,["161"] = 122,["162"] = 122,["163"] = 122,["164"] = 122,["165"] = 122,["166"] = 122,["167"] = 122,["168"] = 122,["169"] = 122,["170"] = 99,["171"] = 135,["172"] = 136,["173"] = 136,["174"] = 136,["175"] = 137,["176"] = 136,["177"] = 136,["178"] = 140,["179"] = 140,["180"] = 140,["181"] = 141,["182"] = 141,["184"] = 142,["185"] = 142,["187"] = 143,["188"] = 143,["190"] = 144,["191"] = 144,["193"] = 145,["194"] = 140,["195"] = 140,["196"] = 148,["197"] = 72,["199"] = 151,["200"] = 151,["201"] = 152,["202"] = 153,["203"] = 154,["204"] = 155,["205"] = 155,["206"] = 155,["207"] = 156,["208"] = 155,["209"] = 155,["210"] = 159,["211"] = 159,["212"] = 159,["213"] = 160,["214"] = 159,["215"] = 159,["216"] = 162,["217"] = 162,["218"] = 162,["219"] = 162,["220"] = 163,["221"] = 163,["222"] = 163,["223"] = 163,["224"] = 163,["225"] = 163,["226"] = 163,["228"] = 163,["229"] = 163,["230"] = 163,["231"] = 164,["232"] = 164,["233"] = 164,["234"] = 164,["235"] = 165,["236"] = 165,["237"] = 165,["238"] = 165,["239"] = 165,["240"] = 165,["241"] = 165,["243"] = 165,["244"] = 165,["245"] = 165,["246"] = 166,["247"] = 166,["248"] = 166,["249"] = 166,["250"] = 166,["251"] = 166,["252"] = 166,["253"] = 167,["254"] = 167,["255"] = 167,["256"] = 167,["257"] = 167,["258"] = 167,["259"] = 167,["261"] = 167,["262"] = 167,["263"] = 167,["264"] = 168,["265"] = 168,["266"] = 168,["267"] = 168,["268"] = 168,["269"] = 168,["270"] = 168,["271"] = 169,["272"] = 169,["273"] = 169,["274"] = 169,["275"] = 169,["276"] = 169,["277"] = 169,["278"] = 170,["279"] = 170,["280"] = 170,["281"] = 170,["282"] = 170,["283"] = 170,["284"] = 170,["285"] = 170,["286"] = 170,["287"] = 170,["288"] = 171,["289"] = 171,["290"] = 171,["291"] = 171,["292"] = 171,["293"] = 171,["294"] = 171,["295"] = 171,["296"] = 171,["297"] = 172,["298"] = 172,["299"] = 172,["300"] = 172,["301"] = 172,["302"] = 172,["303"] = 172,["305"] = 172,["306"] = 172,["307"] = 172,["308"] = 173,["309"] = 173,["310"] = 173,["311"] = 173,["312"] = 173,["313"] = 173,["314"] = 173,["316"] = 173,["318"] = 173,["319"] = 173,["320"] = 173,["321"] = 173,["323"] = 173,["325"] = 173,["326"] = 173,["327"] = 173,["328"] = 174,["329"] = 174,["330"] = 174,["331"] = 174,["332"] = 174,["333"] = 174,["334"] = 174,["336"] = 174,["338"] = 174,["339"] = 174,["340"] = 174,["341"] = 174,["343"] = 174,["345"] = 174,["346"] = 174,["347"] = 174,["348"] = 175,["349"] = 175,["350"] = 175,["351"] = 175,["352"] = 175,["353"] = 175,["354"] = 175,["356"] = 175,["358"] = 175,["359"] = 175,["360"] = 175,["361"] = 175,["363"] = 175,["365"] = 175,["366"] = 175,["367"] = 175,["368"] = 176,["369"] = 176,["370"] = 176,["371"] = 176,["372"] = 176,["373"] = 176,["374"] = 176,["375"] = 177,["376"] = 177,["377"] = 177,["378"] = 177,["379"] = 177,["380"] = 177,["381"] = 177,["383"] = 177,["385"] = 177,["386"] = 177,["387"] = 177,["388"] = 177,["390"] = 177,["392"] = 177,["393"] = 177,["394"] = 177,["395"] = 178,["396"] = 178,["397"] = 178,["398"] = 178,["399"] = 178,["400"] = 178,["401"] = 178,["403"] = 178,["405"] = 178,["406"] = 178,["407"] = 178,["408"] = 178,["410"] = 178,["412"] = 178,["413"] = 178,["414"] = 178,["415"] = 179,["416"] = 179,["417"] = 179,["418"] = 179,["419"] = 179,["420"] = 179,["421"] = 179,["423"] = 179,["425"] = 179,["426"] = 179,["427"] = 179,["428"] = 179,["430"] = 179,["432"] = 179,["433"] = 179,["434"] = 179,["435"] = 180,["436"] = 180,["437"] = 180,["438"] = 180,["439"] = 180,["440"] = 180,["441"] = 180,["443"] = 180,["445"] = 180,["446"] = 180,["447"] = 180,["448"] = 180,["450"] = 180,["452"] = 180,["453"] = 180,["454"] = 180,["455"] = 181,["456"] = 181,["457"] = 181,["458"] = 181,["459"] = 181,["460"] = 181,["461"] = 181,["463"] = 181,["465"] = 181,["466"] = 181,["467"] = 181,["468"] = 181,["470"] = 181,["472"] = 181,["473"] = 181,["474"] = 181,["475"] = 182,["476"] = 182,["477"] = 182,["478"] = 182,["479"] = 182,["480"] = 182,["481"] = 182,["483"] = 182,["485"] = 182,["486"] = 182,["487"] = 182,["488"] = 182,["490"] = 182,["492"] = 182,["493"] = 182,["494"] = 182,["495"] = 183,["496"] = 183,["497"] = 183,["498"] = 183,["499"] = 183,["500"] = 183,["501"] = 183,["503"] = 183,["504"] = 183,["505"] = 183,["506"] = 184,["507"] = 184,["508"] = 184,["509"] = 184,["510"] = 184,["511"] = 184,["512"] = 184,["514"] = 184,["515"] = 184,["516"] = 184,["517"] = 185,["518"] = 185,["519"] = 185,["520"] = 185,["521"] = 185,["522"] = 185,["523"] = 185,["525"] = 185,["526"] = 185,["527"] = 185,["528"] = 186,["529"] = 186,["530"] = 186,["531"] = 186,["532"] = 187,["533"] = 187,["534"] = 187,["535"] = 187,["536"] = 188,["537"] = 188,["538"] = 188,["539"] = 188,["540"] = 190,["541"] = 190,["542"] = 190,["543"] = 191,["546"] = 192,["549"] = 193,["552"] = 194,["553"] = 195,["554"] = 190,["555"] = 190,["556"] = 151,["559"] = 199,["560"] = 200,["561"] = 201,["562"] = 199,["563"] = 203,["564"] = 203,["565"] = 203,["566"] = 203,["567"] = 67,["568"] = 208,["569"] = 209,["570"] = 210,["571"] = 212,["572"] = 212,["573"] = 214,["574"] = 215,["575"] = 215,["577"] = 212,["578"] = 212,["579"] = 208,["580"] = 219,["581"] = 220,["582"] = 221,["583"] = 219,["584"] = 225,["585"] = 226,["586"] = 227,["587"] = 225,["588"] = 230,["590"] = 231,["591"] = 232,["593"] = 233,["595"] = 234,["597"] = 235,["600"] = 237,["603"] = 230,["604"] = 241,["605"] = 242,["606"] = 242,["607"] = 242,["608"] = 242,["609"] = 243,["610"] = 243,["611"] = 243,["612"] = 243,["613"] = 244,["614"] = 244,["616"] = 245,["617"] = 241});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____AchieveManager = include("logic.archive.manager.AchieveManager")
local achieveManager = ____AchieveManager.achieveManager
local ____AchieveConfig = include("logic.configs.AchieveConfig")
local achieveConfigList = ____AchieveConfig.achieveConfigList
local achieveConfigMap_achieveGroup = ____AchieveConfig.achieveConfigMap_achieveGroup
local ____LocalData = include("logic.localData.LocalData")
local AchieveType = ____LocalData.AchieveType
local SettingType = ____LocalData.SettingType
local localData = ____LocalData.localData
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
____exports.DAchieve = __TS__Class()
local DAchieve = ____exports.DAchieve
DAchieve.name = "DAchieve"
__TS__ClassExtends(DAchieve, Dialog)
function DAchieve.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {tab = 1, selectIndex = 0}
    self.eventId = 0
end
function DAchieve.prototype.onCreate(self)
    self:initView()
end
function DAchieve.prototype.initView(self)
    localData.achieve.tabIndex = AchieveType["Map_地图"]
    local list = {
        function() return i18n["local"](i18n, "地图成就") end,
        function() return i18n["local"](i18n, "暂未开放") end
    }
    do
        local index = 0
        while index < #list do
            local element = list[index + 1]
            local idx = index + 1
            local path = "root.btns.btns.btn_" .. tostring(idx)
            self:bindText(
                path .. ".normal.title",
                function() return element(nil) end
            )
            self:bindText(
                path .. ".select.title",
                function() return element(nil) end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.tab == idx end
            )
            self:bindClick(
                path,
                function()
                    if idx > 1 then
                        DTips:show(i18n["local"](i18n, "暂未开放"))
                        return
                    end
                    self.data.tab = idx
                    self.data.selectIndex = 0
                end
            )
            index = index + 1
        end
    end
    self:refreshView(self.data.tab)
end
function DAchieve.prototype.refreshView(self, index)
    local ____type = self:tabIdxSwitchType(index)
    local ui = self:getUI("root.contents.list")
    local childrens = ui:get_childs()
    achieveManager:check()
    local dataList = self:compute(function()
        local list = {}
        for k in pairs(achieveConfigMap_achieveGroup) do
            do
                local l = achieveConfigMap_achieveGroup[k]
                if l[1].type ~= ____type then
                    goto __continue14
                end
                do
                    local i = 0
                    while i < #l do
                        local config = l[i + 1]
                        local configNext = l[i + 1 + 1]
                        if config.ban == 1 or steamUtils:isSteam() and config.steamBan or config.hideOnUnachieve and not achieveManager:isComplete(config.id) then
                            break
                        end
                        if config.hideOnUnachieve and (configNext == nil or not achieveManager:isComplete(configNext.id)) then
                            list[#list + 1] = config
                            break
                        end
                        if configNext == nil or configNext.ban == 1 or not achieveManager:isReward(config.id) then
                            list[#list + 1] = config
                            break
                        end
                        i = i + 1
                    end
                end
            end
            ::__continue14::
        end
        console:log("compute compute compute")
        local function func(____, idx)
            local cfg = list[idx + 1]
            local ____opt_0 = archive.achieveInfo.data.achieves["" .. tostring(cfg.id)]
            local timeStamp = ____opt_0 and ____opt_0.complete_time or 0
            local completeTimeStr = timeStamp == 0 and "" or dateUtils:timeStampFormatToYYMMDD(timeStamp, 1)
            local isComplete = achieveManager:isComplete(cfg.id)
            local isGet = achieveManager:isReward(cfg.id)
            local preId = self:getSameGroupPreId(cfg)
            local ____temp_2
            if preId == -1 then
                ____temp_2 = true
            else
                ____temp_2 = achieveManager:isComplete(preId)
            end
            local visible = ____temp_2
            local canGet = isComplete and not isGet
            local progress = isComplete and (cfg.achieveValue > 0 and cfg.achieveValue or 1) or achieveManager:getProgress(cfg.achieveCondition, cfg)
            local des = RichTextUtils:replaceAchieve(cfg.id)
            if progress >= cfg.achieveValue and not isComplete then
                console:log("有疯狂check吗？？？")
                achieveManager:check()
                isComplete = achieveManager:isComplete(cfg.id)
                isGet = achieveManager:isReward(cfg.id)
                local ____temp_3
                if preId == -1 then
                    ____temp_3 = true
                else
                    ____temp_3 = achieveManager:isComplete(preId)
                end
                visible = ____temp_3
                canGet = isComplete and not isGet
                progress = isComplete and (cfg.achieveValue > 0 and cfg.achieveValue or 1) or achieveManager:getProgress(cfg.achieveCondition, cfg)
            end
            return {
                cfg = cfg,
                visible = visible,
                progress = progress,
                canGet = canGet,
                isComplete = isComplete,
                isGet = isGet,
                completeTimeStr = completeTimeStr,
                des = des,
                percent = math.min(100, progress / (cfg.achieveValue > 0 and cfg.achieveValue or 1) * 100)
            }
        end
        local result = {}
        __TS__ArrayForEach(
            list,
            function(____, a, idx)
                result[#result + 1] = func(nil, idx)
            end
        )
        __TS__ArraySort(
            result,
            function(____, a, b)
                if a.visible ~= b.visible then
                    return a.visible and -1 or 1
                end
                if a.canGet ~= b.canGet then
                    return a.canGet and -1 or 1
                end
                if a.isComplete ~= b.isComplete then
                    return a.isComplete and 1 or -1
                end
                if a.percent ~= b.percent then
                    return b.percent - a.percent
                end
                return a.cfg.id - b.cfg.id
            end
        )
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            local index = i
            local element = childrens[index + 1]
            local path = "root.contents.list." .. element:get_name()
            self:bindVisible(
                path,
                function()
                    return #dataList.value >= index + 1 and dataList.value[index + 1].visible
                end
            )
            self:bindClick(
                path,
                function()
                    self.data.selectIndex = index
                end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.selectIndex == index end
            )
            self:bindVisible(
                path .. ".bg.state0",
                function()
                    local ____opt_4 = dataList.value[index + 1]
                    local ____temp_6 = not (____opt_4 and ____opt_4.canGet)
                    if ____temp_6 == nil then
                        ____temp_6 = true
                    end
                    return ____temp_6
                end
            )
            self:bindText(
                path .. ".tip",
                function() return i18n["local"](i18n, "奖励：") end
            )
            self:bindVisible(
                path .. ".bg.state1",
                function()
                    local ____opt_7 = dataList.value[index + 1]
                    local ____temp_9 = ____opt_7 and ____opt_7.canGet
                    if ____temp_9 == nil then
                        ____temp_9 = false
                    end
                    return ____temp_9
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local ____opt_10 = dataList.value[index + 1]
                    return ____opt_10 and ____opt_10.cfg.achieveName.value or ""
                end
            )
            self:bindVisible(
                path .. ".tip",
                function()
                    local ____opt_12 = dataList.value[index + 1]
                    local ____temp_14 = (____opt_12 and ____opt_12.cfg.rewardDes.value) ~= ""
                    if ____temp_14 == nil then
                        ____temp_14 = false
                    end
                    return ____temp_14
                end
            )
            self:bindText(
                path .. ".conditionDes",
                function()
                    local ____opt_15 = dataList.value[index + 1]
                    return ____opt_15 and ____opt_15.des or ""
                end
            )
            self:bindText(
                path .. ".rewardDes",
                function()
                    local ____opt_17 = dataList.value[index + 1]
                    return ____opt_17 and ____opt_17.cfg.rewardDes.value or ""
                end
            )
            self:bindText(
                path .. ".progressValue",
                function()
                    local ____opt_19 = dataList.value[index + 1]
                    local ____temp_25 = (("#e5e1ac" .. tostring(____opt_19 and ____opt_19.progress or 0)) .. "#c2d1eb") .. "/"
                    local ____opt_23 = dataList.value[index + 1]
                    local ____opt_21 = ____opt_23 and ____opt_23.cfg
                    return ____temp_25 .. tostring(math.max(____opt_21 and ____opt_21.achieveValue or 0, 1))
                end
            )
            self:bindProgress(
                path .. ".progress",
                function()
                    local ____opt_26 = dataList.value[index + 1]
                    local ____temp_30 = ____opt_26 and ____opt_26.progress or 0
                    local ____opt_28 = dataList.value[index + 1]
                    return ____temp_30 / (____opt_28 and ____opt_28.cfg.achieveValue or 1) * 100
                end
            )
            self:bindVisible(
                path .. ".icon.rare.rare_0_un",
                function()
                    local ____opt_31 = dataList.value[index + 1]
                    local ____temp_33 = not (____opt_31 and ____opt_31.isComplete)
                    if ____temp_33 == nil then
                        ____temp_33 = true
                    end
                    return ____temp_33
                end
            )
            self:bindVisible(
                path .. ".icon.rare.rare_0",
                function()
                    local ____opt_34 = dataList.value[index + 1]
                    local ____temp_36 = ____opt_34 and ____opt_34.isComplete
                    if ____temp_36 == nil then
                        ____temp_36 = false
                    end
                    local ____temp_36_40 = ____temp_36
                    if ____temp_36_40 then
                        local ____opt_37 = dataList.value[index + 1]
                        local ____temp_39 = (____opt_37 and ____opt_37.cfg.rare) == 0
                        if ____temp_39 == nil then
                            ____temp_39 = true
                        end
                        ____temp_36_40 = ____temp_39
                    end
                    return ____temp_36_40
                end
            )
            self:bindVisible(
                path .. ".icon.rare.rare_1",
                function()
                    local ____opt_41 = dataList.value[index + 1]
                    local ____temp_43 = ____opt_41 and ____opt_41.isComplete
                    if ____temp_43 == nil then
                        ____temp_43 = false
                    end
                    local ____temp_43_47 = ____temp_43
                    if ____temp_43_47 then
                        local ____opt_44 = dataList.value[index + 1]
                        local ____temp_46 = (____opt_44 and ____opt_44.cfg.rare) == 1
                        if ____temp_46 == nil then
                            ____temp_46 = true
                        end
                        ____temp_43_47 = ____temp_46
                    end
                    return ____temp_43_47
                end
            )
            self:bindVisible(
                path .. ".icon.rare.rare_2",
                function()
                    local ____opt_48 = dataList.value[index + 1]
                    local ____temp_50 = ____opt_48 and ____opt_48.isComplete
                    if ____temp_50 == nil then
                        ____temp_50 = false
                    end
                    local ____temp_50_54 = ____temp_50
                    if ____temp_50_54 then
                        local ____opt_51 = dataList.value[index + 1]
                        local ____temp_53 = (____opt_51 and ____opt_51.cfg.rare) == 2
                        if ____temp_53 == nil then
                            ____temp_53 = true
                        end
                        ____temp_50_54 = ____temp_53
                    end
                    return ____temp_50_54
                end
            )
            self:bindText(
                path .. ".icon.list.time",
                function()
                    local ____opt_55 = dataList.value[index + 1]
                    return ____opt_55 and ____opt_55.completeTimeStr or ""
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.10_0",
                function()
                    local ____opt_57 = dataList.value[index + 1]
                    local ____temp_59 = (____opt_57 and ____opt_57.cfg.achieveScore) == 10
                    if ____temp_59 == nil then
                        ____temp_59 = true
                    end
                    local ____temp_59_63 = ____temp_59
                    if ____temp_59_63 then
                        local ____opt_60 = dataList.value[index + 1]
                        local ____temp_62 = not (____opt_60 and ____opt_60.isComplete)
                        if ____temp_62 == nil then
                            ____temp_62 = true
                        end
                        ____temp_59_63 = ____temp_62
                    end
                    return ____temp_59_63
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.10_1",
                function()
                    local ____opt_64 = dataList.value[index + 1]
                    local ____temp_66 = (____opt_64 and ____opt_64.cfg.achieveScore) == 10
                    if ____temp_66 == nil then
                        ____temp_66 = false
                    end
                    local ____temp_66_70 = ____temp_66
                    if ____temp_66_70 then
                        local ____opt_67 = dataList.value[index + 1]
                        local ____temp_69 = ____opt_67 and ____opt_67.isComplete
                        if ____temp_69 == nil then
                            ____temp_69 = false
                        end
                        ____temp_66_70 = ____temp_69
                    end
                    return ____temp_66_70
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.20_0",
                function()
                    local ____opt_71 = dataList.value[index + 1]
                    local ____temp_73 = (____opt_71 and ____opt_71.cfg.achieveScore) == 20
                    if ____temp_73 == nil then
                        ____temp_73 = false
                    end
                    local ____temp_73_77 = ____temp_73
                    if ____temp_73_77 then
                        local ____opt_74 = dataList.value[index + 1]
                        local ____temp_76 = not (____opt_74 and ____opt_74.isComplete)
                        if ____temp_76 == nil then
                            ____temp_76 = true
                        end
                        ____temp_73_77 = ____temp_76
                    end
                    return ____temp_73_77
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.20_1",
                function()
                    local ____opt_78 = dataList.value[index + 1]
                    local ____temp_80 = (____opt_78 and ____opt_78.cfg.achieveScore) == 20
                    if ____temp_80 == nil then
                        ____temp_80 = false
                    end
                    local ____temp_80_84 = ____temp_80
                    if ____temp_80_84 then
                        local ____opt_81 = dataList.value[index + 1]
                        local ____temp_83 = ____opt_81 and ____opt_81.isComplete
                        if ____temp_83 == nil then
                            ____temp_83 = false
                        end
                        ____temp_80_84 = ____temp_83
                    end
                    return ____temp_80_84
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.50_0",
                function()
                    local ____opt_85 = dataList.value[index + 1]
                    local ____temp_87 = (____opt_85 and ____opt_85.cfg.achieveScore) == 50
                    if ____temp_87 == nil then
                        ____temp_87 = false
                    end
                    local ____temp_87_91 = ____temp_87
                    if ____temp_87_91 then
                        local ____opt_88 = dataList.value[index + 1]
                        local ____temp_90 = not (____opt_88 and ____opt_88.isComplete)
                        if ____temp_90 == nil then
                            ____temp_90 = true
                        end
                        ____temp_87_91 = ____temp_90
                    end
                    return ____temp_87_91
                end
            )
            self:bindVisible(
                path .. ".icon.list.point.50_1",
                function()
                    local ____opt_92 = dataList.value[index + 1]
                    local ____temp_94 = (____opt_92 and ____opt_92.cfg.achieveScore) == 50
                    if ____temp_94 == nil then
                        ____temp_94 = false
                    end
                    local ____temp_94_98 = ____temp_94
                    if ____temp_94_98 then
                        local ____opt_95 = dataList.value[index + 1]
                        local ____temp_97 = ____opt_95 and ____opt_95.isComplete
                        if ____temp_97 == nil then
                            ____temp_97 = false
                        end
                        ____temp_94_98 = ____temp_97
                    end
                    return ____temp_94_98
                end
            )
            self:bindVisible(
                path .. ".state.state_0",
                function()
                    local ____opt_99 = dataList.value[index + 1]
                    local ____temp_101 = not (____opt_99 and ____opt_99.isComplete)
                    if ____temp_101 == nil then
                        ____temp_101 = true
                    end
                    return ____temp_101
                end
            )
            self:bindVisible(
                path .. ".state.state_1",
                function()
                    local ____opt_102 = dataList.value[index + 1]
                    local ____temp_104 = ____opt_102 and ____opt_102.canGet
                    if ____temp_104 == nil then
                        ____temp_104 = false
                    end
                    return ____temp_104
                end
            )
            self:bindVisible(
                path .. ".state.state_2",
                function()
                    local ____opt_105 = dataList.value[index + 1]
                    local ____temp_107 = ____opt_105 and ____opt_105.isGet
                    if ____temp_107 == nil then
                        ____temp_107 = false
                    end
                    return ____temp_107
                end
            )
            self:bindText(
                path .. ".state.state_0",
                function() return i18n["local"](i18n, "进行中") end
            )
            self:bindText(
                path .. ".state.state_1.txt",
                function() return i18n["local"](i18n, "领 取") end
            )
            self:bindText(
                path .. ".state.state_2.txt",
                function() return i18n["local"](i18n, "已完成") end
            )
            self:bindClick(
                path .. ".state.state_1",
                function()
                    if dataList.value[index + 1] == nil then
                        return
                    end
                    if dataList.value[index + 1].isGet then
                        return
                    end
                    if not dataList.value[index + 1].canGet then
                        return
                    end
                    achieveManager:getReward(dataList.value[index + 1].cfg.id)
                    achieveManager:check()
                end
            )
            i = i + 1
        end
    end
    local value = self:compute(function()
        local value = archive.achieveInfo.data.point
        return value
    end)
    self:bindText(
        "root.contents.header.value",
        function() return "" .. tostring(value.value) end
    )
end
function DAchieve.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    localData.setting.tabIndex = SettingType["Achieve_成就"]
    self:watch(
        function() return localData.setting.tabIndex == SettingType["Achieve_成就"] end,
        function(____, v)
            if not v then
                self:hide()
            end
        end
    )
end
function DAchieve.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DAchieve.prototype.escHide(self)
    localData.setting.tabIndex = SettingType["Null_空"]
    self:hide()
end
function DAchieve.prototype.tabIdxSwitchType(self, ____type)
    repeat
        local ____switch73 = ____type
        local ____cond73 = ____switch73 == 1
        if ____cond73 then
            return AchieveType["Map_地图"]
        end
        ____cond73 = ____cond73 or ____switch73 == 2
        if ____cond73 then
            return AchieveType["Game_游戏"]
        end
        do
            return AchieveType["Map_地图"]
        end
    until true
end
function DAchieve.prototype.getSameGroupPreId(self, cfg)
    local list = __TS__ArrayFilter(
        achieveConfigList,
        function(____, a) return a.achieveGroup == cfg.achieveGroup end
    )
    local idx = __TS__ArrayFindIndex(
        list,
        function(____, a) return a.id == cfg.id end
    )
    if idx == 0 then
        return -1
    end
    return list[idx].id
end
return ____exports
