local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 9,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 12,["27"] = 12,["28"] = 14,["29"] = 14,["30"] = 14,["31"] = 14,["33"] = 14,["34"] = 15,["35"] = 14,["36"] = 24,["37"] = 25,["38"] = 24,["39"] = 28,["41"] = 29,["42"] = 29,["43"] = 29,["44"] = 29,["45"] = 30,["46"] = 30,["47"] = 30,["48"] = 30,["49"] = 32,["51"] = 28,["52"] = 35,["53"] = 35,["54"] = 37,["55"] = 37,["56"] = 40,["57"] = 41,["58"] = 42,["60"] = 43,["61"] = 43,["62"] = 44,["63"] = 45,["64"] = 46,["66"] = 51,["67"] = 52,["69"] = 43,["72"] = 59,["73"] = 41,["75"] = 62,["76"] = 62,["77"] = 63,["78"] = 64,["79"] = 65,["80"] = 65,["81"] = 65,["82"] = 65,["83"] = 65,["84"] = 65,["85"] = 65,["86"] = 66,["87"] = 66,["88"] = 66,["89"] = 67,["90"] = 68,["92"] = 70,["93"] = 66,["94"] = 66,["95"] = 73,["96"] = 73,["97"] = 73,["98"] = 73,["99"] = 74,["100"] = 74,["101"] = 74,["102"] = 74,["103"] = 75,["104"] = 75,["105"] = 75,["106"] = 75,["107"] = 76,["108"] = 76,["109"] = 76,["110"] = 76,["111"] = 76,["112"] = 76,["113"] = 76,["114"] = 62,["117"] = 80,["118"] = 81,["119"] = 83,["120"] = 84,["121"] = 85,["123"] = 86,["124"] = 86,["126"] = 87,["127"] = 88,["128"] = 88,["130"] = 89,["131"] = 91,["132"] = 92,["133"] = 92,["135"] = 93,["136"] = 93,["138"] = 94,["139"] = 94,["141"] = 95,["142"] = 95,["144"] = 97,["147"] = 86,["150"] = 105,["151"] = 105,["152"] = 105,["153"] = 106,["154"] = 106,["156"] = 107,["157"] = 105,["158"] = 105,["159"] = 83,["160"] = 122,["162"] = 123,["163"] = 123,["164"] = 124,["165"] = 125,["166"] = 126,["167"] = 127,["168"] = 128,["169"] = 128,["170"] = 128,["171"] = 129,["172"] = 128,["173"] = 128,["175"] = 132,["176"] = 132,["177"] = 133,["178"] = 134,["179"] = 135,["180"] = 137,["181"] = 137,["182"] = 137,["183"] = 138,["184"] = 137,["185"] = 137,["186"] = 141,["187"] = 141,["188"] = 141,["189"] = 142,["190"] = 141,["191"] = 141,["192"] = 145,["193"] = 145,["194"] = 145,["195"] = 146,["196"] = 146,["198"] = 147,["199"] = 145,["200"] = 145,["201"] = 149,["202"] = 149,["203"] = 149,["204"] = 150,["205"] = 150,["207"] = 151,["208"] = 151,["209"] = 151,["210"] = 151,["211"] = 149,["212"] = 149,["213"] = 153,["214"] = 153,["215"] = 153,["216"] = 154,["217"] = 154,["219"] = 155,["220"] = 153,["221"] = 153,["222"] = 157,["223"] = 157,["224"] = 157,["225"] = 158,["226"] = 157,["227"] = 157,["228"] = 160,["229"] = 160,["230"] = 160,["231"] = 161,["232"] = 160,["233"] = 160,["234"] = 163,["235"] = 163,["236"] = 163,["237"] = 164,["238"] = 163,["239"] = 163,["240"] = 166,["241"] = 166,["242"] = 166,["243"] = 167,["244"] = 167,["245"] = 167,["246"] = 167,["248"] = 168,["249"] = 168,["250"] = 168,["251"] = 168,["253"] = 169,["254"] = 169,["255"] = 169,["256"] = 169,["258"] = 170,["259"] = 170,["260"] = 170,["261"] = 170,["263"] = 171,["264"] = 171,["265"] = 171,["266"] = 171,["268"] = 172,["269"] = 166,["270"] = 166,["271"] = 175,["272"] = 132,["275"] = 123,["278"] = 179,["279"] = 179,["280"] = 179,["281"] = 180,["282"] = 181,["285"] = 184,["286"] = 186,["287"] = 187,["290"] = 191,["292"] = 193,["293"] = 195,["295"] = 198,["296"] = 199,["297"] = 179,["298"] = 179,["299"] = 202,["300"] = 202,["301"] = 202,["302"] = 203,["303"] = 203,["305"] = 204,["306"] = 204,["308"] = 205,["309"] = 205,["311"] = 206,["312"] = 202,["313"] = 202,["314"] = 209,["315"] = 209,["316"] = 209,["317"] = 209,["318"] = 210,["319"] = 210,["320"] = 210,["321"] = 210,["322"] = 40});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____RewardManager = include("logic.archive.manager.RewardManager")
local rewardManager = ____RewardManager.rewardManager
local ____PetSkillConfig = include("logic.configs.PetSkillConfig")
local petSkillConfigList = ____PetSkillConfig.petSkillConfigList
local petSkillConfigMap = ____PetSkillConfig.petSkillConfigMap
local ____LocalData = include("logic.localData.LocalData")
local DecorationType = ____LocalData.DecorationType
local localData = ____LocalData.localData
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
____exports.DDecPetSkillPage = __TS__Class()
local DDecPetSkillPage = ____exports.DDecPetSkillPage
DDecPetSkillPage.name = "DDecPetSkillPage"
__TS__ClassExtends(DDecPetSkillPage, Dialog)
function DDecPetSkillPage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selectIndex = 0, skillIndex = 0}
end
function DDecPetSkillPage.prototype.onCreate(self)
    self:initView()
end
function DDecPetSkillPage.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "root",
            function() return localData.decoration.tabIndex == DecorationType["PetSkill_宠物技能"] end
        )
        __TS__Await(self:watchOnce(
            function() return localData.decoration.tabIndex == DecorationType["PetSkill_宠物技能"] end,
            function(____, v) return v end
        ))
        self:initDetails()
    end)
end
function DDecPetSkillPage.prototype.onShow(self)
end
function DDecPetSkillPage.prototype.onHide(self)
end
function DDecPetSkillPage.prototype.initDetails(self)
    local skills = self:compute(function()
        local list = {}
        do
            local index = 0
            while index < 4 do
                local skill = archive.petData.cur_skill["" .. tostring(index + 1)]
                if skill == nil or skill == 0 then
                    list[#list + 1] = {cfg = nil, name = "未设置"}
                else
                    local cfg = petSkillConfigMap[skill]
                    list[#list + 1] = {cfg = cfg, name = cfg.name}
                end
                index = index + 1
            end
        end
        return list
    end)
    do
        local index = 0
        while index < 4 do
            local idx = index
            local path = "root.list.item_" .. tostring(idx + 1)
            self:bindImage(
                path .. ".icon",
                function()
                    local ____opt_0 = skills.value[idx + 1].cfg
                    return ____opt_0 and ____opt_0.icon or 0
                end
            )
            self:bindText(
                path .. ".icon.count",
                function()
                    if skills.value[idx + 1].cfg == nil then
                        return "x0"
                    end
                    return "x" .. tostring(rewardManager:getItem(skills.value[idx + 1].cfg.id))
                end
            )
            self:bindVisible(
                path .. ".icon",
                function() return skills.value[idx + 1].cfg ~= nil end
            )
            self:bindVisible(
                path .. ".add",
                function() return skills.value[idx + 1].cfg == nil end
            )
            self:bindVisible(
                path .. ".select",
                function() return self.data.selectIndex == idx end
            )
            self:bindClick(
                path,
                function()
                    self.data.selectIndex = idx
                    return idx
                end
            )
            index = index + 1
        end
    end
    local root = "root.right.list"
    local childrens = self:getUI(root):get_childs()
    local list = self:compute(function()
        local list1 = petSkillConfigList
        local list2 = {}
        do
            local index = 0
            while index < #list1 do
                do
                    local element = list1[index + 1]
                    if element.ban == 1 then
                        goto __continue23
                    end
                    local info = archive.petData.skills["" .. tostring(element.id)]
                    local seat = -1
                    if archive.petData.cur_skill["1"] == element.id then
                        seat = 1
                    end
                    if archive.petData.cur_skill["2"] == element.id then
                        seat = 2
                    end
                    if archive.petData.cur_skill["3"] == element.id then
                        seat = 3
                    end
                    if archive.petData.cur_skill["4"] == element.id then
                        seat = 4
                    end
                    list2[#list2 + 1] = {cfg = element, select = seat > 0, seat = seat, unlock = info == true}
                end
                ::__continue23::
                index = index + 1
            end
        end
        return __TS__ArraySort(
            list2,
            function(____, a, b)
                if b.cfg.quality == a.cfg.quality then
                    return b.cfg.id - a.cfg.id
                end
                return b.cfg.quality - a.cfg.quality
            end
        )
    end)
    local idx = 0
    do
        local i = 0
        while i < #childrens do
            local element = childrens[i + 1]
            local childs = element:get_childs()
            local path1 = (root .. ".") .. element:get_name()
            local temp_i = idx
            self:bindVisible(
                path1,
                function()
                    return #list.value >= temp_i
                end
            )
            do
                local index = 0
                while index < #childs do
                    local cld = childs[index + 1]
                    local path = (path1 .. ".") .. cld:get_name()
                    local temp_idx = idx
                    self:bindClick(
                        path,
                        function()
                            self.data.skillIndex = temp_idx
                        end
                    )
                    self:bindVisible(
                        path,
                        function()
                            return #list.value > temp_idx
                        end
                    )
                    self:bindText(
                        path .. ".name",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return ""
                            end
                            return list.value[temp_idx + 1].cfg.name.value
                        end
                    )
                    self:bindText(
                        path .. ".count",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return i18n:format("拥有: ${value}", {value = 0})
                            end
                            return i18n:format(
                                "拥有: ${value}",
                                {value = rewardManager:getItem(list.value[temp_idx + 1].cfg.id)}
                            )
                        end
                    )
                    self:bindImage(
                        path .. ".icon",
                        function()
                            if list.value[temp_idx + 1] == nil then
                                return 0
                            end
                            return list.value[temp_idx + 1].cfg.icon
                        end
                    )
                    self:bindVisible(
                        path .. ".select",
                        function()
                            return list.value[temp_idx + 1] ~= nil and list.value[temp_idx + 1].select
                        end
                    )
                    self:bindVisible(
                        path .. ".select2",
                        function()
                            return self.data.skillIndex == temp_idx
                        end
                    )
                    self:bindVisible(
                        path .. ".lock",
                        function()
                            return list.value[temp_idx + 1] ~= nil and not list.value[temp_idx + 1].unlock
                        end
                    )
                    self:bindImage(
                        path .. ".bg",
                        function()
                            local ____opt_4 = list.value[temp_idx + 1]
                            local ____opt_2 = ____opt_4 and ____opt_4.cfg
                            if (____opt_2 and ____opt_2.quality) == 0 then
                                return 134237313
                            end
                            local ____opt_8 = list.value[temp_idx + 1]
                            local ____opt_6 = ____opt_8 and ____opt_8.cfg
                            if (____opt_6 and ____opt_6.quality) == 1 then
                                return 134235490
                            end
                            local ____opt_12 = list.value[temp_idx + 1]
                            local ____opt_10 = ____opt_12 and ____opt_12.cfg
                            if (____opt_10 and ____opt_10.quality) == 2 then
                                return 134223638
                            end
                            local ____opt_16 = list.value[temp_idx + 1]
                            local ____opt_14 = ____opt_16 and ____opt_16.cfg
                            if (____opt_14 and ____opt_14.quality) == 3 then
                                return 134274551
                            end
                            local ____opt_20 = list.value[temp_idx + 1]
                            local ____opt_18 = ____opt_20 and ____opt_20.cfg
                            if (____opt_18 and ____opt_18.quality) == 4 then
                                return 134248468
                            end
                            return 134237313
                        end
                    )
                    idx = idx + 1
                    index = index + 1
                end
            end
            i = i + 1
        end
    end
    self:bindClick(
        "root.center.use",
        function()
            if not list.value[self.data.skillIndex + 1].unlock then
                DTips:show(i18n["local"](i18n, "道具未解锁"))
                return
            end
            if skills.value[self.data.selectIndex + 1].cfg ~= nil then
                if list.value[self.data.skillIndex + 1].cfg.id == skills.value[self.data.selectIndex + 1].cfg.id then
                    heroSkinManager:replacePetSkill(0, self.data.selectIndex + 1)
                    return
                end
                heroSkinManager:replacePetSkill(0, self.data.selectIndex + 1)
            end
            if list.value[self.data.skillIndex + 1].seat > 0 then
                heroSkinManager:replacePetSkill(0, list.value[self.data.skillIndex + 1].seat)
            end
            heroSkinManager:replacePetSkill(list.value[self.data.skillIndex + 1].cfg.id, self.data.selectIndex + 1)
            console:log(list.value[self.data.skillIndex + 1].cfg.id, self.data.selectIndex)
        end
    )
    self:bindText(
        "root.center.use.title",
        function()
            if list.value[self.data.skillIndex + 1].seat > 0 then
                return i18n["local"](i18n, "替换")
            end
            if skills.value[self.data.selectIndex + 1].cfg == nil then
                return i18n["local"](i18n, "使用")
            end
            if list.value[self.data.skillIndex + 1].cfg.id == skills.value[self.data.selectIndex + 1].cfg.id then
                return i18n["local"](i18n, "卸下")
            end
            return i18n["local"](i18n, "替换")
        end
    )
    self:bindVisible(
        "root.center.use",
        function() return list.value[self.data.skillIndex + 1].unlock end
    )
    self:bindVisible(
        "root.center.buy",
        function() return list.value[self.data.skillIndex + 1].unlock ~= true end
    )
end
return ____exports
