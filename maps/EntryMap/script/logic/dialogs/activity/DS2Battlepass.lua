local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 4,["17"] = 5,["18"] = 4,["19"] = 7,["20"] = 4,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 11,["25"] = 10,["26"] = 10,["27"] = 14,["28"] = 14,["29"] = 14,["30"] = 15,["31"] = 14,["32"] = 14,["33"] = 19,["34"] = 19,["35"] = 19,["36"] = 20,["37"] = 19,["38"] = 19,["39"] = 23,["40"] = 23,["41"] = 23,["42"] = 24,["43"] = 23,["44"] = 23,["45"] = 26,["46"] = 26,["47"] = 26,["48"] = 27,["49"] = 26,["50"] = 26,["51"] = 30,["52"] = 30,["53"] = 30,["54"] = 31,["55"] = 30,["56"] = 30,["57"] = 7});
local ____exports = {}
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____DBattlepassBase = include("logic.dialogs.activity.DBattlepassBase")
local DBattlepassBase = ____DBattlepassBase.DBattlepassBase
____exports.DS2Battlepass = __TS__Class()
local DS2Battlepass = ____exports.DS2Battlepass
DS2Battlepass.name = "DS2Battlepass"
__TS__ClassExtends(DS2Battlepass, DBattlepassBase)
function DS2Battlepass.prototype.____constructor(self, ...)
    DBattlepassBase.prototype.____constructor(self, ...)
    self.battlePassId = 3
end
function DS2Battlepass.prototype.initView(self)
    DBattlepassBase.prototype.initView(self)
    self:bindVisible(
        "root.center.pass.view.hero_zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "root.center.pass.view.hero_en",
        function()
            return i18n.currentLang == "en"
        end
    )
    self:bindVisible(
        "root.center.image_zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "root.center.image_en",
        function()
            return i18n.currentLang == "en"
        end
    )
    self:bindVisible(
        "root.center.title_zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "root.center.title_en",
        function()
            return i18n.currentLang == "en"
        end
    )
end
return ____exports
