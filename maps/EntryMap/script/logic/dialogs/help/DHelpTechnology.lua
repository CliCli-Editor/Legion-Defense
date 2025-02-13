local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 11,["29"] = 11,["30"] = 11,["31"] = 11,["33"] = 11,["34"] = 12,["35"] = 22,["36"] = 11,["37"] = 24,["38"] = 25,["39"] = 26,["40"] = 25,["41"] = 24,["42"] = 30,["44"] = 31,["45"] = 31,["46"] = 31,["47"] = 32,["48"] = 32,["50"] = 33,["51"] = 31,["52"] = 31,["53"] = 36,["54"] = 36,["55"] = 36,["56"] = 37,["57"] = 38,["58"] = 36,["59"] = 36,["60"] = 40,["61"] = 40,["62"] = 40,["63"] = 41,["64"] = 42,["65"] = 42,["66"] = 42,["67"] = 42,["68"] = 40,["69"] = 40,["70"] = 44,["71"] = 44,["72"] = 44,["73"] = 45,["74"] = 46,["75"] = 47,["76"] = 48,["78"] = 49,["80"] = 44,["81"] = 44,["82"] = 51,["83"] = 51,["84"] = 51,["85"] = 52,["86"] = 53,["87"] = 54,["88"] = 55,["90"] = 56,["92"] = 51,["93"] = 51,["94"] = 58,["95"] = 58,["96"] = 58,["97"] = 59,["98"] = 61,["99"] = 62,["100"] = 63,["102"] = 65,["104"] = 68,["105"] = 69,["106"] = 69,["107"] = 70,["109"] = 73,["110"] = 58,["111"] = 58,["113"] = 30,["114"] = 77,["115"] = 77});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____TechnologyConfig = include("logic.configs.TechnologyConfig")
local technologyConfigList = ____TechnologyConfig.technologyConfigList
local technologyConfigMap = ____TechnologyConfig.technologyConfigMap
local ____FarmerManager = include("logic.managers.FarmerManager")
local farmerManager = ____FarmerManager.farmerManager
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
____exports.DHelpTechnology = __TS__Class()
local DHelpTechnology = ____exports.DHelpTechnology
DHelpTechnology.name = "DHelpTechnology"
__TS__ClassExtends(DHelpTechnology, Dialog)
function DHelpTechnology.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpTechnology.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpTechnology.prototype.initView(self)
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
            "root.title1",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return i18n["local"](i18n, "当前科技等级：") .. (tostring(playerData.farmerLevel) .. "/") .. tostring(#technologyConfigList)
            end
        )
        self:bindText(
            "root.title2",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                return i18n["local"](i18n, "当前产出水晶：") .. i18n:format(
                    "+${count}水晶/5秒",
                    {count = GameUtils:getFarmerGatherNum(LOCAL.PLAYER_ID)}
                )
            end
        )
        self:bindText(
            "root.title3",
            function()
                local cost = farmerManager:getFarmerNumCost()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                if playerData.wood < cost then
                    return i18n["local"](i18n, "提升科技需要消耗：") .. i18n:format("#ff0000${cost}水晶", {cost = cost})
                else
                    return i18n["local"](i18n, "提升科技需要消耗：") .. i18n:format("#00ff00${cost}水晶", {cost = cost})
                end
            end
        )
        self:bindText(
            "root.title4",
            function()
                local level = farmerManager:needLevel(LOCAL.PLAYER_ID)
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                if level <= playerData.level then
                    return i18n["local"](i18n, "提升科技需要英雄等级：") .. i18n:format("#00ff00${level}级", {level = level})
                else
                    return i18n["local"](i18n, "提升科技需要英雄等级：") .. i18n:format("#ff0000${level}级", {level = level})
                end
            end
        )
        self:bindText(
            "root.title5",
            function()
                local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
                local gather
                if #technologyConfigList < playerData.farmerLevel + 1 then
                    gather = technologyConfigList[#technologyConfigList].gather
                else
                    gather = technologyConfigMap[playerData.farmerLevel + 1].gather
                end
                local bigBlessData = datas.global:getSingle(BigBlessData)
                local ____opt_0 = bigBlessData and bigBlessData.bigBless
                if (____opt_0 and ____opt_0.id) == 3 then
                    gather = gather * 2
                end
                return (i18n["local"](i18n, "下级产出水晶：") .. ("+#00ff00" .. tostring(gather)) .. "#ffffff ") .. i18n["local"](i18n, "水晶/5秒")
            end
        )
    end)
end
function DHelpTechnology.prototype.onShow(self)
end
return ____exports
