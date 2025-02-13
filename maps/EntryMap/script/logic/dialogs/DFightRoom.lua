local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__New = ____lualib.__TS__New
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 3,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 10,["35"] = 11,["36"] = 42,["37"] = 43,["38"] = 44,["39"] = 10,["40"] = 23,["41"] = 25,["42"] = 26,["43"] = 25,["44"] = 23,["45"] = 30,["47"] = 31,["49"] = 30,["50"] = 46,["52"] = 48,["53"] = 48,["54"] = 48,["55"] = 48,["56"] = 48,["57"] = 48,["58"] = 48,["59"] = 48,["60"] = 48,["61"] = 48,["62"] = 48,["63"] = 48,["64"] = 48,["65"] = 48,["66"] = 48,["67"] = 64,["68"] = 66,["69"] = 67,["70"] = 68,["71"] = 69,["73"] = 69,["75"] = 71,["76"] = 72,["77"] = 72,["78"] = 72,["79"] = 72,["80"] = 73,["81"] = 73,["82"] = 73,["83"] = 73,["84"] = 74,["85"] = 76,["86"] = 77,["87"] = 77,["88"] = 77,["89"] = 77,["90"] = 78,["92"] = 80,["94"] = 80,["96"] = 81,["98"] = 81,["100"] = 82,["102"] = 82,["104"] = 83,["106"] = 83,["108"] = 66,["109"] = 86,["110"] = 86,["111"] = 87,["112"] = 97,["113"] = 98,["114"] = 98,["115"] = 99,["119"] = 104,["120"] = 105,["121"] = 106,["122"] = 107,["124"] = 86,["125"] = 109,["126"] = 110,["127"] = 111,["128"] = 121,["129"] = 122,["130"] = 122,["131"] = 123,["135"] = 127,["136"] = 128,["137"] = 129,["140"] = 132,["141"] = 133,["142"] = 134,["143"] = 135,["144"] = 136,["145"] = 137,["148"] = 140,["149"] = 141,["150"] = 142,["151"] = 143,["153"] = 149,["154"] = 149,["155"] = 149,["156"] = 149,["157"] = 150,["158"] = 151,["159"] = 152,["160"] = 153,["161"] = 163,["162"] = 164,["163"] = 164,["164"] = 165,["168"] = 169,["169"] = 170,["170"] = 171,["173"] = 174,["174"] = 175,["175"] = 176,["176"] = 177,["177"] = 178,["178"] = 179,["181"] = 182,["182"] = 183,["183"] = 184,["184"] = 185,["186"] = 191,["187"] = 191,["188"] = 191,["189"] = 191,["190"] = 192,["191"] = 193,["193"] = 86,["194"] = 86,["195"] = 86,["196"] = 86,["197"] = 197,["198"] = 197,["199"] = 197,["200"] = 197,["201"] = 198,["202"] = 199,["204"] = 201,["206"] = 197,["207"] = 197,["208"] = 204,["209"] = 204,["210"] = 204,["211"] = 204,["212"] = 205,["213"] = 206,["215"] = 208,["217"] = 204,["218"] = 204,["219"] = 211,["220"] = 211,["221"] = 211,["222"] = 212,["223"] = 211,["224"] = 211,["225"] = 214,["226"] = 214,["227"] = 214,["228"] = 215,["229"] = 214,["230"] = 214,["231"] = 218,["232"] = 218,["233"] = 218,["234"] = 218,["235"] = 219,["237"] = 220,["238"] = 220,["239"] = 221,["240"] = 222,["241"] = 220,["244"] = 224,["245"] = 225,["246"] = 226,["247"] = 218,["248"] = 218,["250"] = 46});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindText = ____bind.bindText
local ____ScrollView = include("framework.ui.ScrollView")
local ScrollType = ____ScrollView.ScrollType
local ScrollView = ____ScrollView.ScrollView
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigList = ____SkillConfig.skillConfigList
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigList = ____EffectConfig.effectConfigList
local ____GenreConfig = include("logic.configs.GenreConfig")
local genreConfigList = ____GenreConfig.genreConfigList
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
____exports.DFightRoom = __TS__Class()
local DFightRoom = ____exports.DFightRoom
DFightRoom.name = "DFightRoom"
__TS__ClassExtends(DFightRoom, Dialog)
function DFightRoom.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {rankStatus = 1, showMessage = false}}
    self.hurtList = vue.ref({})
    self.hurtType = vue.ref(0)
    self.fightTime = vue.ref(0)
end
function DFightRoom.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DFightRoom.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:initHurt()
    end)
end
function DFightRoom.prototype.initHurt(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scroll = __TS__New(ScrollView, {
            prefab = "HurtItem",
            rootPath = "DFightRoom.hurtView.content",
            itemHeight = 50,
            itemWidth = 332,
            scrollType = ScrollType["纵向滑动"],
            showWidth = 332,
            showHeight = 300,
            paddingWidth = 0,
            paddingHeight = 0,
            marginLeft = 0,
            marginRight = 0,
            marginTop = 0,
            marginBottom = 0
        })
        __TS__Await(scroll:init())
        scroll.itemRender = function(____, ui, index)
            local barName = index % 2 == 0 and "bar_progress_0" or "bar_progress_1"
            local barNameHide = index % 2 ~= 0 and "bar_progress_0" or "bar_progress_1"
            local ____opt_0 = ui:get_child(barNameHide)
            if ____opt_0 ~= nil then
                ____opt_0:set_visible(false)
            end
            local cfg = self.hurtList.value[index + 1]
            local skillCfg = __TS__ArrayFind(
                skillConfigList,
                function(____, a) return a.name == cfg.name end
            )
            local effectCfg = __TS__ArrayFind(
                effectConfigList,
                function(____, a) return a.name == cfg.name end
            )
            local iconId = skillCfg ~= nil and (skillCfg and skillCfg.icon or 0) or (effectCfg and effectCfg.icon or 0)
            if iconId == -1 then
                local genreConfig = __TS__ArrayFind(
                    genreConfigList,
                    function(____, a) return a.id == skillCfg.id end
                )
                iconId = genreConfig and genreConfig.icon or 0
            end
            local ____opt_8 = ui:get_child("icon")
            if ____opt_8 ~= nil then
                ____opt_8:set_image(iconId)
            end
            local ____opt_10 = ui:get_child("name")
            if ____opt_10 ~= nil then
                ____opt_10:set_text(cfg.name)
            end
            local ____opt_12 = ui:get_child("value")
            if ____opt_12 ~= nil then
                ____opt_12:set_text(tostring(math.floor(cfg.value)))
            end
            local ____opt_14 = ui:get_child(barName)
            if ____opt_14 ~= nil then
                ____opt_14:set_slider_value(cfg.percent)
            end
        end
        self:watchDeep(
            function()
                local hurtTotal
                for key in pairs(fight.allUnitMap) do
                    local ____opt_16 = fight.allUnitMap[key]
                    if (____opt_16 and ____opt_16.playerId) == 1 then
                        hurtTotal = fight.allUnitMap[key].hurtTotal
                        break
                    end
                end
                if self.hurtType.value == 2 then
                    return hurtTotal.hurtTotalAll
                elseif self.hurtType.value == 1 then
                    return hurtTotal.hurtTotal
                end
            end,
            function()
                if self.hurtType.value == 2 then
                    local hurtTotal
                    for key in pairs(fight.allUnitMap) do
                        local ____opt_18 = fight.allUnitMap[key]
                        if (____opt_18 and ____opt_18.playerId) == 1 then
                            hurtTotal = fight.allUnitMap[key].hurtTotal
                            break
                        end
                    end
                    if hurtTotal == nil then
                        self.fightTime.value = 1
                        self.hurtType.value = 0
                        return
                    end
                    self.fightTime.value = hurtTotal.allFightingTime
                    local maxDmg = 0
                    for key in pairs(hurtTotal.hurtTotalAll) do
                        local element = hurtTotal.hurtTotalAll[key]
                        if maxDmg < element then
                            maxDmg = element
                        end
                    end
                    local list = {}
                    for key in pairs(hurtTotal.hurtTotalAll) do
                        local element = hurtTotal.hurtTotalAll[key]
                        list[#list + 1] = {name = key, value = element, percent = element / maxDmg * 100}
                    end
                    __TS__ArraySort(
                        list,
                        function(____, a, b) return b.value - a.value end
                    )
                    self.hurtList.value = list
                    scroll:refresh(#self.hurtList.value)
                elseif self.hurtType.value == 1 then
                    local unit
                    for key in pairs(fight.allUnitMap) do
                        local ____opt_20 = fight.allUnitMap[key]
                        if (____opt_20 and ____opt_20.playerId) == 1 then
                            unit = fight.allUnitMap[key].hurtTotal
                            break
                        end
                    end
                    if unit == nil then
                        self.fightTime.value = 1
                        self.hurtType.value = 0
                        return
                    end
                    self.fightTime.value = unit.fightingTime
                    local maxDmg = 0
                    for key in pairs(unit.hurtTotal) do
                        local element = unit.hurtTotal[key]
                        if maxDmg < element then
                            maxDmg = element
                        end
                    end
                    local list = {}
                    for key in pairs(unit.hurtTotal) do
                        local element = unit.hurtTotal[key]
                        list[#list + 1] = {name = key, value = element, percent = element / maxDmg * 100}
                    end
                    __TS__ArraySort(
                        list,
                        function(____, a, b) return b.value - a.value end
                    )
                    self.hurtList.value = list
                    scroll:refresh(#self.hurtList.value)
                end
            end,
            false,
            true
        )
        self:bindAction(
            "hurtView.layout_6.turnBtn",
            "左键-点击",
            function()
                if self.hurtType.value == 1 then
                    self.hurtType.value = 0
                else
                    self.hurtType.value = 1
                end
            end
        )
        self:bindAction(
            "hurtView.layout_6.totalBtn",
            "左键-点击",
            function()
                if self.hurtType.value == 2 then
                    self.hurtType.value = 0
                else
                    self.hurtType.value = 2
                end
            end
        )
        self:bindVisible(
            "hurtView.content",
            function()
                return self.hurtType.value ~= 0
            end
        )
        self:bindVisible(
            "hurtView.dps_text",
            function()
                return self.hurtType.value ~= 0
            end
        )
        bindText(
            self,
            "hurtView.dps_text",
            function()
                local totalDmg = 0
                do
                    local i = 0
                    while i < #self.hurtList.value do
                        local dmg = self.hurtList.value[i + 1].value
                        totalDmg = totalDmg + dmg
                        i = i + 1
                    end
                end
                local dps = totalDmg / (self.fightTime.value == 0 and 1 or self.fightTime.value)
                dps = math.floor(dps * 100) / 100
                return (i18n["local"](i18n, "秒伤") .. "#fecb00 ") .. tostring(dps)
            end
        )
    end)
end
return ____exports
