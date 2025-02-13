local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["18"] = 4,["19"] = 5,["20"] = 16,["21"] = 4,["22"] = 17,["23"] = 18,["24"] = 19,["25"] = 18,["26"] = 17,["27"] = 23,["29"] = 25,["30"] = 25,["31"] = 25,["32"] = 26,["33"] = 26,["35"] = 27,["36"] = 25,["37"] = 25,["38"] = 30,["39"] = 30,["40"] = 30,["41"] = 31,["42"] = 31,["44"] = 32,["45"] = 33,["46"] = 30,["47"] = 30,["48"] = 36,["49"] = 36,["50"] = 36,["51"] = 37,["52"] = 37,["54"] = 38,["55"] = 39,["56"] = 36,["57"] = 36,["58"] = 42,["59"] = 42,["60"] = 42,["61"] = 43,["62"] = 43,["64"] = 44,["65"] = 45,["66"] = 42,["67"] = 42,["69"] = 23});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
____exports.DWikiEquipInfo = __TS__Class()
local DWikiEquipInfo = ____exports.DWikiEquipInfo
DWikiEquipInfo.name = "DWikiEquipInfo"
__TS__ClassExtends(DWikiEquipInfo, Dialog)
function DWikiEquipInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DWikiEquipInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DWikiEquipInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "tips",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindText(
            "tips.title.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = equipConfigMap[self.data.params.equipId]
                return cfg.name.value
            end
        )
        self:bindText(
            "tips.des",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = equipConfigMap[self.data.params.equipId]
                return cfg.des.value
            end
        )
        self:bindImage(
            "tips.title.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = equipConfigMap[self.data.params.equipId]
                return cfg.icon
            end
        )
    end)
end
return ____exports
