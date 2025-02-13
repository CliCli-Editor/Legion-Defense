local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringReplace = ____lualib.__TS__StringReplace
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["14"] = 2,["15"] = 1,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 6,["23"] = 3,["24"] = 9,["25"] = 10,["26"] = 11,["27"] = 9,["28"] = 13,["29"] = 14,["30"] = 13,["31"] = 17,["32"] = 35,["33"] = 36,["34"] = 36,["35"] = 40,["36"] = 41,["37"] = 42,["38"] = 42,["40"] = 43,["42"] = 45,["43"] = 45,["44"] = 45,["45"] = 45,["46"] = 46,["47"] = 47,["49"] = 49,["51"] = 36,["52"] = 36,["53"] = 54});
local ____exports = {}
local ReloadLogic = __TS__Class()
ReloadLogic.name = "ReloadLogic"
function ReloadLogic.prototype.____constructor(self)
    self.reloadList = {}
end
function ReloadLogic.prototype.reload(self, list)
    self.reloadList = __TS__ArrayMap(
        list,
        function(____, a) return __TS__StringReplace(a, "/", ".") end
    )
    console:log("reload list " .. JSON:stringify(self.reloadList))
    self:fire()
end
function ReloadLogic.prototype.reloadAll(self)
    self.reloadList = {}
    self:fire()
end
function ReloadLogic.prototype.fire(self)
    y3.reload.reload()
end
____exports.reloadLogic = __TS__New(ReloadLogic)
console:log("热重载代码注册")
y3.reload.setDefaultOptional({
    list = {},
    filter = function(name, reload)
        if not ____exports.reloadLogic or #____exports.reloadLogic.reloadList == 0 then
            if __TS__StringStartsWith(name, "logic.abilities") or __TS__StringStartsWith(name, "logic.simpleAbilities") then
                return true
            end
            return false
        else
            if __TS__ArrayFindIndex(
                ____exports.reloadLogic.reloadList,
                function(____, a) return a == name end
            ) >= 0 then
                console:log("热加载文件:" .. name)
                return true
            end
            return false
        end
    end
})
console:log("热重载代码注册结束")
return ____exports
