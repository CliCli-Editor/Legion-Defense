local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 73,["34"] = 73,["35"] = 73,["36"] = 73,["38"] = 73,["39"] = 74,["40"] = 81,["41"] = 407,["42"] = 73,["43"] = 83,["44"] = 84,["45"] = 83,["46"] = 87,["47"] = 106,["48"] = 106,["49"] = 106,["50"] = 107,["51"] = 106,["52"] = 106,["53"] = 110,["54"] = 87,["55"] = 115,["56"] = 117,["57"] = 118,["58"] = 119,["59"] = 120,["60"] = 121,["61"] = 122,["62"] = 123,["63"] = 124,["64"] = 124,["65"] = 124,["66"] = 124,["67"] = 124,["68"] = 124,["69"] = 124,["70"] = 124,["71"] = 135,["72"] = 118,["73"] = 138,["74"] = 138,["75"] = 138,["76"] = 139,["77"] = 138,["78"] = 138,["79"] = 141,["80"] = 141,["81"] = 141,["82"] = 142,["83"] = 143,["85"] = 145,["86"] = 141,["87"] = 141,["88"] = 147,["89"] = 147,["90"] = 147,["91"] = 148,["92"] = 147,["93"] = 147,["94"] = 151,["95"] = 151,["96"] = 151,["97"] = 152,["98"] = 153,["99"] = 154,["100"] = 151,["101"] = 151,["102"] = 157,["103"] = 157,["104"] = 157,["106"] = 162,["107"] = 164,["108"] = 165,["109"] = 166,["110"] = 168,["111"] = 168,["112"] = 168,["113"] = 168,["114"] = 169,["115"] = 170,["116"] = 168,["117"] = 168,["119"] = 173,["122"] = 157,["123"] = 157,["124"] = 177,["125"] = 177,["126"] = 177,["127"] = 178,["128"] = 179,["129"] = 180,["130"] = 182,["131"] = 183,["132"] = 184,["133"] = 186,["134"] = 186,["135"] = 186,["136"] = 186,["137"] = 186,["138"] = 186,["139"] = 186,["140"] = 186,["141"] = 186,["142"] = 177,["143"] = 192,["144"] = 193,["145"] = 177,["146"] = 177,["147"] = 197,["148"] = 199,["149"] = 200,["150"] = 200,["151"] = 201,["152"] = 203,["153"] = 204,["154"] = 205,["155"] = 206,["157"] = 209,["158"] = 210,["159"] = 211,["160"] = 212,["161"] = 213,["162"] = 214,["163"] = 215,["164"] = 216,["165"] = 217,["166"] = 218,["169"] = 222,["170"] = 223,["171"] = 223,["172"] = 223,["173"] = 224,["174"] = 224,["175"] = 224,["176"] = 225,["177"] = 226,["178"] = 227,["179"] = 228,["180"] = 229,["181"] = 230,["182"] = 231,["183"] = 232,["184"] = 233,["185"] = 234,["186"] = 235,["187"] = 235,["188"] = 235,["189"] = 235,["190"] = 235,["191"] = 235,["192"] = 235,["193"] = 235,["194"] = 235,["195"] = 235,["196"] = 235,["197"] = 235,["198"] = 235,["199"] = 235,["200"] = 235,["201"] = 235,["202"] = 235,["203"] = 210,["204"] = 253,["206"] = 254,["207"] = 254,["208"] = 255,["209"] = 254,["212"] = 257,["213"] = 209,["215"] = 259,["216"] = 259,["218"] = 260,["219"] = 261,["220"] = 262,["221"] = 263,["223"] = 265,["224"] = 266,["225"] = 266,["226"] = 266,["227"] = 267,["228"] = 268,["230"] = 270,["231"] = 266,["232"] = 266,["233"] = 272,["234"] = 272,["235"] = 272,["236"] = 273,["237"] = 274,["239"] = 276,["240"] = 272,["241"] = 272,["242"] = 278,["243"] = 278,["244"] = 278,["245"] = 279,["246"] = 278,["247"] = 278,["248"] = 281,["249"] = 281,["250"] = 281,["251"] = 281,["252"] = 282,["253"] = 282,["254"] = 282,["255"] = 282,["256"] = 283,["257"] = 283,["258"] = 283,["259"] = 283,["260"] = 284,["261"] = 284,["262"] = 284,["263"] = 284,["264"] = 285,["265"] = 285,["266"] = 285,["267"] = 285,["268"] = 286,["269"] = 286,["270"] = 286,["271"] = 286,["272"] = 287,["273"] = 287,["274"] = 287,["275"] = 287,["276"] = 288,["277"] = 288,["278"] = 288,["279"] = 288,["280"] = 289,["281"] = 289,["282"] = 289,["283"] = 289,["284"] = 291,["285"] = 291,["286"] = 291,["287"] = 291,["288"] = 292,["289"] = 292,["290"] = 292,["291"] = 292,["292"] = 294,["293"] = 294,["294"] = 294,["295"] = 295,["296"] = 296,["297"] = 297,["298"] = 298,["299"] = 298,["300"] = 298,["301"] = 298,["302"] = 298,["303"] = 298,["304"] = 298,["305"] = 298,["306"] = 298,["307"] = 294,["308"] = 304,["309"] = 305,["310"] = 294,["311"] = 294,["312"] = 308,["313"] = 308,["314"] = 308,["315"] = 309,["316"] = 310,["317"] = 311,["318"] = 312,["319"] = 312,["320"] = 312,["321"] = 312,["322"] = 312,["323"] = 312,["324"] = 312,["325"] = 312,["326"] = 312,["327"] = 308,["328"] = 318,["329"] = 319,["330"] = 308,["331"] = 308,["332"] = 322,["333"] = 322,["334"] = 322,["335"] = 323,["336"] = 322,["337"] = 322,["340"] = 259,["343"] = 328,["344"] = 329,["345"] = 330,["346"] = 331,["347"] = 333,["348"] = 334,["349"] = 335,["350"] = 335,["351"] = 335,["352"] = 336,["353"] = 336,["354"] = 332,["355"] = 332,["356"] = 332,["357"] = 332,["358"] = 332,["359"] = 332,["360"] = 332,["361"] = 332,["362"] = 332,["363"] = 332,["364"] = 332,["365"] = 332,["366"] = 332,["367"] = 332,["368"] = 332,["369"] = 332,["370"] = 332,["371"] = 349,["372"] = 328,["373"] = 351,["374"] = 352,["375"] = 352,["376"] = 352,["377"] = 353,["378"] = 352,["379"] = 352,["380"] = 356,["381"] = 356,["382"] = 356,["383"] = 357,["384"] = 356,["385"] = 356,["386"] = 359,["387"] = 359,["388"] = 359,["389"] = 360,["390"] = 359,["391"] = 359,["392"] = 363,["393"] = 363,["394"] = 363,["395"] = 364,["396"] = 363,["397"] = 363,["398"] = 366,["399"] = 366,["400"] = 366,["401"] = 367,["402"] = 366,["403"] = 366,["404"] = 370,["405"] = 370,["406"] = 370,["407"] = 371,["408"] = 370,["409"] = 370,["410"] = 374,["411"] = 374,["412"] = 374,["413"] = 375,["414"] = 374,["415"] = 374,["416"] = 378,["417"] = 378,["418"] = 378,["419"] = 379,["420"] = 380,["421"] = 381,["422"] = 382,["423"] = 382,["424"] = 382,["425"] = 382,["426"] = 382,["427"] = 382,["428"] = 382,["429"] = 382,["430"] = 382,["431"] = 378,["432"] = 388,["433"] = 389,["434"] = 378,["435"] = 378,["436"] = 392,["437"] = 392,["438"] = 392,["439"] = 393,["440"] = 394,["441"] = 395,["442"] = 396,["443"] = 396,["444"] = 396,["445"] = 396,["446"] = 396,["447"] = 396,["448"] = 396,["449"] = 396,["450"] = 396,["451"] = 392,["452"] = 402,["453"] = 403,["454"] = 392,["455"] = 392,["456"] = 115,["457"] = 408,["458"] = 409,["459"] = 410,["460"] = 412,["461"] = 413,["462"] = 413,["463"] = 414,["464"] = 416,["465"] = 417,["466"] = 418,["468"] = 420,["470"] = 422,["471"] = 422,["472"] = 422,["473"] = 422,["474"] = 422,["475"] = 408,["476"] = 425,["477"] = 426,["478"] = 427,["479"] = 425,["480"] = 430,["481"] = 431,["482"] = 430});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____BattlepassManager = include("logic.archive.manager.BattlepassManager")
local battlepassManager = ____BattlepassManager.battlepassManager
local ____BattlepassRewardConfig = include("logic.configs.BattlepassRewardConfig")
local battlepassRewardConfigMap_battlepassRewardGroup = ____BattlepassRewardConfig.battlepassRewardConfigMap_battlepassRewardGroup
local ____BattlepassSeasonConfig = include("logic.configs.BattlepassSeasonConfig")
local battlepassSeasonConfigMap = ____BattlepassSeasonConfig.battlepassSeasonConfigMap
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____PropUtils = include("logic.utils.PropUtils")
local getPropIcon = ____PropUtils.getPropIcon
local ____DInfoSevenSign = include("logic.dialogs.infos.DInfoSevenSign")
local DInfoSevenSign = ____DInfoSevenSign.DInfoSevenSign
local ____DAlert = include("logic.dialogs.tips.DAlert")
local DAlert = ____DAlert.DAlert
____exports.DBattlepassBase = __TS__Class()
local DBattlepassBase = ____exports.DBattlepassBase
DBattlepassBase.name = "DBattlepassBase"
__TS__ClassExtends(DBattlepassBase, Dialog)
function DBattlepassBase.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isBuyedExp = false
    self.eventId = 0
end
function DBattlepassBase.prototype.onCreate(self)
    self:initView()
end
function DBattlepassBase.prototype.initView(self)
    self:bindClick(
        "root.center.close",
        function()
            self:hide()
        end
    )
    self:initPass()
end
function DBattlepassBase.prototype.initPass(self)
    local cfg = battlepassManager:getCfg(self.battlePassId)
    local data = self:compute(function()
        local isPayed = battlepassManager:isPayed(self.battlePassId)
        local level = battlepassManager:getLevel(self.battlePassId)
        local exp = battlepassManager:getExp(self.battlePassId)
        local needExp = battlepassManager:getNeedExp(self.battlePassId)
        local alreadyGetLevel = battlepassManager:getAlreadyGetFreeLevel(self.battlePassId)
        local temp = {
            id = self.battlePassId,
            level = level,
            exp = exp,
            needExp = needExp,
            alreadyGetLevel = alreadyGetLevel,
            isPayed = isPayed
        }
        return temp
    end)
    self:bindText(
        "root.center.pass.level.level",
        function()
            return "" .. tostring(data.value.level)
        end
    )
    self:bindText(
        "root.center.pass.exp_label",
        function()
            if data.value.exp >= data.value.needExp then
                return (("#00ff00" .. tostring(data.value.exp)) .. "/") .. tostring(data.value.needExp)
            end
            return (tostring(data.value.exp) .. "/") .. tostring(data.value.needExp)
        end
    )
    self:bindProgress(
        "root.center.pass.exp",
        function()
            return data.value.exp / data.value.needExp * 100
        end
    )
    self:bindText(
        "root.center.pass.tips_time",
        function()
            local start = __TS__New(Date, cfg.startTime)
            local ____end = __TS__New(Date, cfg.endTime)
            return i18n["local"](i18n, "活动时间：") .. ((start:toDateString() .. "-") .. ____end:toDateString()) .. "；"
        end
    )
    self:bindClick(
        "root.center.pass.levelUp",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                if not self.isBuyedExp then
                    local cfg = battlepassSeasonConfigMap[self.battlePassId]
                    local ____type = cfg.payExp[1]
                    local value = cfg.payExp[2]
                    DAlert:accessBuy(
                        tostring(value) .. (____type == 1 and "金币" or "钻石"),
                        tostring(cfg.getExp) .. "点经验",
                        function()
                            battlepassManager:buyExp(self.battlePassId)
                            self.isBuyedExp = true
                        end
                    )
                else
                    battlepassManager:buyExp(self.battlePassId)
                end
            end)
        end
    )
    self:bindMouse(
        "root.center.pass.levelUp",
        function()
            local ui = self:getUI("root.center.pass.levelUp")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            local cfg = battlepassSeasonConfigMap[self.battlePassId]
            local ____type = cfg.payExp[1]
            local value = cfg.payExp[2]
            dialogs:showRepeat(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = "购买战令经验",
                    des = (((tostring(value) .. (____type == 1 and "金币" or "钻石")) .. "兑换") .. tostring(cfg.getExp)) .. "点战令经验"
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
    local ui = self:getUI("root.center.pass.list")
    local level2 = battlepassManager:getUncycleMaxRewardLevel(self.battlePassId)
    local ____opt_0 = battlepassRewardConfigMap_battlepassRewardGroup[cfg.battlepassRewardGroup2]
    local ____repeat = ____opt_0 and #____opt_0 or 0
    local list = battlepassRewardConfigMap_battlepassRewardGroup[cfg.battlepassRewardGroup1]
    local childrens = ui:get_childs()
    local hides = __TS__ArraySplice(childrens, #list + ____repeat, 99999999)
    for ____, child in ipairs(hides) do
        child:set_visible(false)
    end
    local dataList = self:compute(function()
        local function func(____, idx)
            local alreadyGetFreeLevel = battlepassManager:getAlreadyGetFreeLevel(self.battlePassId)
            local alreadyGetPayLevel = battlepassManager:getAlreadyGetPayLevel(self.battlePassId)
            local nowLevel = battlepassManager:getLevel(self.battlePassId)
            local isPayed = battlepassManager:isPayed(self.battlePassId)
            local level = idx + 1
            if level2 < level then
                if nowLevel > level2 then
                    level = (level - 1) % ____repeat + 1 + (nowLevel - ((nowLevel - 1) % ____repeat + 1))
                end
            end
            local rewardCfg = battlepassManager:getRewardCfg(self.battlePassId, level)
            local ____getPropIcon_6 = getPropIcon
            local ____opt_2 = rewardCfg and rewardCfg.propId[1]
            local freeIcon = ____getPropIcon_6(nil, ____opt_2 and ____opt_2.id or 0)
            local ____getPropIcon_11 = getPropIcon
            local ____opt_7 = rewardCfg and rewardCfg.payPropId[1]
            local payIcon = ____getPropIcon_11(nil, ____opt_7 and ____opt_7.id or 0)
            local freeCount = rewardCfg and rewardCfg.num[1] or 0
            local payCount = rewardCfg and rewardCfg.payNum[1] or 0
            local freeCanGet = alreadyGetFreeLevel < level and level <= nowLevel
            local payCanGet = isPayed and alreadyGetPayLevel < level and level <= nowLevel
            local freeIsGet = alreadyGetFreeLevel >= level
            local payIsGet = isPayed and alreadyGetPayLevel >= level
            local freeName = rewardCfg and rewardCfg.name.value or ""
            local freeDesc = rewardCfg and rewardCfg.des.value or ""
            local payName = rewardCfg and rewardCfg.payName.value or ""
            local payDesc = rewardCfg and rewardCfg.payDes.value or ""
            return {
                level = level,
                name = tostring(level) .. "级",
                freeIcon = freeIcon,
                payIcon = payIcon,
                freeCount = freeCount,
                payCount = payCount,
                freeIsGet = freeIsGet,
                payIsGet = payIsGet,
                freeCanGet = freeCanGet,
                payCanGet = payCanGet,
                freeName = freeName,
                freeDesc = freeDesc,
                payName = payName,
                payDesc = payDesc,
                isPayed = isPayed
            }
        end
        local result = {}
        do
            local i = 0
            while i < #childrens do
                result[#result + 1] = func(nil, i)
                i = i + 1
            end
        end
        return result
    end)
    do
        local i = 0
        while i < #childrens do
            do
                local element = childrens[i + 1]
                local idx = i
                if dataList.value[idx + 1] == nil or element == nil then
                    goto __continue25
                end
                local path = "root.center.pass.list." .. element:get_name()
                self:bindText(
                    path .. ".levelBg.normal",
                    function()
                        if dataList.value[idx + 1].level > level2 then
                            return i18n["local"](i18n, "循环") .. tostring((dataList.value[idx + 1].level - 1) % 5 + 1)
                        end
                        return "" .. tostring(dataList.value[idx + 1].level)
                    end
                )
                self:bindText(
                    path .. ".levelBg.select.select",
                    function()
                        if dataList.value[idx + 1].level > level2 then
                            return i18n["local"](i18n, "循环") .. tostring((dataList.value[idx + 1].level - 1) % 5 + 1)
                        end
                        return "" .. tostring(dataList.value[idx + 1].level)
                    end
                )
                self:bindVisible(
                    path .. ".levelBg.select",
                    function()
                        return dataList.value[idx + 1].level == data.value.level
                    end
                )
                self:bindImage(
                    path .. ".free.reward.icon",
                    function() return dataList.value[idx + 1].freeIcon end
                )
                self:bindImage(
                    path .. ".pay.reward.icon",
                    function() return dataList.value[idx + 1].payIcon end
                )
                self:bindText(
                    path .. ".free.reward.count",
                    function() return "x" .. tostring(dataList.value[idx + 1].freeCount) end
                )
                self:bindText(
                    path .. ".pay.reward.count",
                    function() return "x" .. tostring(dataList.value[idx + 1].payCount) end
                )
                self:bindVisible(
                    path .. ".free.canGet",
                    function() return dataList.value[idx + 1].freeCanGet end
                )
                self:bindVisible(
                    path .. ".free.reward.isGet",
                    function() return dataList.value[idx + 1].freeIsGet end
                )
                self:bindVisible(
                    path .. ".pay.canGet",
                    function() return dataList.value[idx + 1].payCanGet end
                )
                self:bindVisible(
                    path .. ".pay.reward.isGet",
                    function() return dataList.value[idx + 1].payIsGet end
                )
                self:bindVisible(
                    path .. ".pay.reward.locked",
                    function() return not dataList.value[idx + 1].isPayed end
                )
                self:bindVisible(
                    path .. ".free.disable",
                    function() return data.value.level < dataList.value[idx + 1].level end
                )
                self:bindVisible(
                    path .. ".pay.disable",
                    function() return data.value.level < dataList.value[idx + 1].level end
                )
                self:bindMouse(
                    path .. ".free",
                    function()
                        local ui = self:getUI(path .. ".free")
                        local x = ui:get_absolute_x()
                        local y = ui:get_absolute_y()
                        dialogs:showRepeat(
                            DInfoSevenSign,
                            {
                                x = x,
                                y = y + ui:get_real_height() / 2,
                                name = dataList.value[idx + 1].freeName,
                                des = dataList.value[idx + 1].freeDesc
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DInfoSevenSign)
                    end
                )
                self:bindMouse(
                    path .. ".pay",
                    function()
                        local ui = self:getUI(path .. ".pay")
                        local x = ui:get_absolute_x()
                        local y = ui:get_absolute_y()
                        dialogs:showRepeat(
                            DInfoSevenSign,
                            {
                                x = x,
                                y = y + ui:get_real_height() / 2,
                                name = dataList.value[idx + 1].payName,
                                des = dataList.value[idx + 1].payDesc
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DInfoSevenSign)
                    end
                )
                self:bindClick(
                    path,
                    function()
                        battlepassManager:reward(self.battlePassId)
                    end
                )
            end
            ::__continue25::
            i = i + 1
        end
    end
    local maxData = self:compute(function()
        local maxLevel = battlepassManager:getUncycleMaxRewardLevel(self.battlePassId)
        local maxLevelCfg = battlepassManager:getRewardCfg(self.battlePassId, maxLevel)
        local isPayed = battlepassManager:isPayed(self.battlePassId)
        local ____maxLevel_46 = maxLevel
        local ____temp_47 = tostring(maxLevel) .. "级"
        local ____getPropIcon_28 = getPropIcon
        local ____opt_24 = maxLevelCfg and maxLevelCfg.propId[1]
        local ____getPropIcon_28_result_48 = ____getPropIcon_28(nil, ____opt_24 and ____opt_24.id or 0)
        local ____getPropIcon_33 = getPropIcon
        local ____opt_29 = maxLevelCfg and maxLevelCfg.payPropId[1]
        local maxData = {
            level = ____maxLevel_46,
            name = ____temp_47,
            freeIcon = ____getPropIcon_28_result_48,
            payIcon = ____getPropIcon_33(nil, ____opt_29 and ____opt_29.id or 0),
            freeCount = maxLevelCfg and maxLevelCfg.num[1] or 0,
            payCount = maxLevelCfg and maxLevelCfg.payNum[1] or 0,
            freeCanGet = false,
            payCanGet = false,
            freeIsGet = false,
            payIsGet = false,
            freeName = maxLevelCfg and maxLevelCfg.name.value or "",
            freeDesc = maxLevelCfg and maxLevelCfg.des.value or "",
            payName = maxLevelCfg and maxLevelCfg.payName.value or "",
            payDesc = maxLevelCfg and maxLevelCfg.payDes.value or "",
            isPayed = isPayed
        }
        return maxData
    end)
    local maxPath = "root.center.pass.max"
    self:bindText(
        maxPath .. ".levelBg.normal",
        function()
            return maxData.value.name
        end
    )
    self:bindImage(
        maxPath .. ".free.reward.icon",
        function()
            return maxData.value.freeIcon
        end
    )
    self:bindText(
        maxPath .. ".free.reward.count",
        function()
            return "x" .. tostring(maxData.value.freeCount)
        end
    )
    self:bindImage(
        maxPath .. ".pay.reward.icon",
        function()
            return maxData.value.payIcon
        end
    )
    self:bindText(
        maxPath .. ".pay.reward.count",
        function()
            return "x" .. tostring(maxData.value.payCount)
        end
    )
    self:bindVisible(
        maxPath .. ".pay.reward.locked",
        function()
            return not maxData.value.isPayed
        end
    )
    self:bindVisible(
        maxPath,
        function()
            return data.value.level < maxData.value.level
        end
    )
    self:bindMouse(
        maxPath .. ".free",
        function()
            local ui = self:getUI(maxPath .. ".free")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:showRepeat(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = maxData.value.freeName,
                    des = maxData.value.freeDesc
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
    self:bindMouse(
        maxPath .. ".pay",
        function()
            local ui = self:getUI(maxPath .. ".pay")
            local x = ui:get_absolute_x()
            local y = ui:get_absolute_y()
            dialogs:showRepeat(
                DInfoSevenSign,
                {
                    x = x,
                    y = y + ui:get_real_height() / 2,
                    name = maxData.value.payName,
                    des = maxData.value.payDesc
                }
            )
        end,
        function()
            dialogs:hide(DInfoSevenSign)
        end
    )
end
function DBattlepassBase.prototype.onShow(self)
    self.eventId = escManager:addEvent(function() return self:escHide() end)
    local nowLevel = battlepassManager:getLevel(self.battlePassId)
    local cfg = battlepassSeasonConfigMap[self.battlePassId]
    local ____opt_49 = battlepassRewardConfigMap_battlepassRewardGroup[cfg.battlepassRewardGroup2]
    local ____repeat = ____opt_49 and #____opt_49 or 0
    local list = battlepassRewardConfigMap_battlepassRewardGroup[cfg.battlepassRewardGroup1]
    local progress = 0
    if nowLevel >= #list then
        progress = 100
    else
        progress = nowLevel / #list * 100
    end
    GameAPI.set_list_view_percent(
        LOCAL.PLAYER.handle,
        self:getUI("root.center.pass.list").handle,
        progress
    )
end
function DBattlepassBase.prototype.onHide(self)
    dialogs:hideHover()
    escManager:removeEvent(self.eventId)
end
function DBattlepassBase.prototype.escHide(self)
    self:hide()
end
return ____exports
