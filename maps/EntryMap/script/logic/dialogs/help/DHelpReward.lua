local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 7,["14"] = 7,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["20"] = 13,["21"] = 14,["22"] = 24,["23"] = 31,["24"] = 102,["25"] = 13,["26"] = 26,["27"] = 27,["28"] = 28,["29"] = 27,["30"] = 26,["31"] = 32,["33"] = 33,["34"] = 33,["35"] = 33,["36"] = 34,["37"] = 34,["39"] = 35,["40"] = 33,["41"] = 33,["42"] = 38,["43"] = 38,["44"] = 38,["45"] = 39,["46"] = 39,["47"] = 38,["48"] = 38,["49"] = 42,["50"] = 43,["51"] = 45,["52"] = 46,["53"] = 50,["54"] = 51,["56"] = 53,["57"] = 54,["59"] = 56,["60"] = 57,["62"] = 59,["63"] = 60,["64"] = 61,["66"] = 63,["69"] = 66,["70"] = 67,["71"] = 68,["73"] = 70,["76"] = 74,["77"] = 42,["78"] = 78,["79"] = 79,["80"] = 80,["82"] = 81,["83"] = 81,["84"] = 82,["85"] = 83,["86"] = 84,["87"] = 86,["88"] = 86,["89"] = 86,["90"] = 86,["91"] = 88,["92"] = 88,["93"] = 88,["94"] = 88,["95"] = 81,["99"] = 32,["100"] = 93,["101"] = 94,["102"] = 94,["103"] = 95,["104"] = 94,["105"] = 96,["106"] = 97,["107"] = 94,["108"] = 94,["109"] = 99,["110"] = 93,["111"] = 103,["112"] = 103});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
____exports.DHelpReward = __TS__Class()
local DHelpReward = ____exports.DHelpReward
DHelpReward.name = "DHelpReward"
__TS__ClassExtends(DHelpReward, Dialog)
function DHelpReward.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
    self.list = nil
    self.minHeight = 180
end
function DHelpReward.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpReward.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "root",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindText(
            "root.title",
            function()
                local ____opt_0 = propConfigMap[self.data.params.info.id]
                return ____opt_0 and ____opt_0.name.value or ""
            end
        )
        self.list = self:compute(function()
            local list2 = {}
            local info = self.data.params.info
            list2[#list2 + 1] = i18n["local"](i18n, "基础获得：") .. tostring(info.base)
            if info.add > 0 then
                list2[#list2 + 1] = i18n["local"](i18n, "结算加成：") .. tostring(info.add)
            end
            if info.ext_add > 0 then
                list2[#list2 + 1] = i18n["local"](i18n, "额外获得：") .. tostring(info.ext_add)
            end
            if info.first_add > 0 then
                list2[#list2 + 1] = i18n["local"](i18n, "每日首胜：") .. tostring(info.first_add)
            end
            if info.daily_limit > 0 then
                if info.daily_get >= info.daily_limit then
                    list2[#list2 + 1] = i18n["local"](i18n, "每日上限：") .. (("#ff0000" .. tostring(info.daily_get)) .. "#E/") .. tostring(info.daily_limit)
                else
                    list2[#list2 + 1] = i18n["local"](i18n, "每日上限：") .. (tostring(info.daily_get) .. "/") .. tostring(info.daily_limit)
                end
            end
            if info.weekly_limit > 0 then
                if info.weekly_get >= info.weekly_limit then
                    list2[#list2 + 1] = i18n["local"](i18n, "每周上限：") .. (("#ff0000" .. tostring(info.weekly_get)) .. "#E/") .. tostring(info.weekly_limit)
                else
                    list2[#list2 + 1] = i18n["local"](i18n, "每周上限：") .. (tostring(info.weekly_get) .. "/") .. tostring(info.weekly_limit)
                end
            end
            return list2
        end)
        local root = "root.list"
        local ui = self:getUI(root)
        local childrens = ui:get_childs()
        do
            local i = 0
            while i < #childrens do
                local element = childrens[i + 1]
                local path = (root .. ".") .. element:get_name()
                local idx = i
                self:bindVisible(
                    path,
                    function() return self.list.value[idx + 1] ~= nil end
                )
                self:bindText(
                    path,
                    function() return self.list.value[idx + 1] or "" end
                )
                i = i + 1
            end
        end
    end)
end
function DHelpReward.prototype.onShow(self)
    self:watch(
        function()
            return #self.list.value
        end,
        function()
            self:updateUI()
        end
    )
    self:updateUI()
end
function DHelpReward.prototype.updateUI(self)
end
return ____exports
