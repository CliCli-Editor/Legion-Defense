local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 10,["28"] = 10,["29"] = 11,["30"] = 54,["31"] = 56,["32"] = 56,["33"] = 56,["34"] = 56,["35"] = 55,["36"] = 57,["37"] = 57,["38"] = 57,["39"] = 57,["40"] = 55,["41"] = 59,["42"] = 59,["43"] = 59,["44"] = 59,["45"] = 55,["46"] = 60,["47"] = 60,["48"] = 60,["49"] = 60,["50"] = 55,["51"] = 62,["52"] = 62,["53"] = 62,["54"] = 62,["55"] = 55,["56"] = 63,["57"] = 63,["58"] = 63,["59"] = 63,["60"] = 55,["61"] = 65,["62"] = 65,["63"] = 65,["64"] = 65,["65"] = 65,["66"] = 55,["67"] = 66,["68"] = 66,["69"] = 66,["70"] = 66,["71"] = 66,["72"] = 55,["73"] = 68,["74"] = 68,["75"] = 68,["76"] = 68,["77"] = 55,["78"] = 69,["79"] = 69,["80"] = 69,["81"] = 69,["82"] = 55,["83"] = 71,["84"] = 71,["85"] = 71,["86"] = 71,["87"] = 55,["88"] = 72,["89"] = 72,["90"] = 72,["91"] = 72,["92"] = 55,["93"] = 74,["94"] = 74,["95"] = 74,["96"] = 74,["97"] = 74,["98"] = 55,["99"] = 75,["100"] = 75,["101"] = 75,["102"] = 75,["103"] = 75,["104"] = 55,["105"] = 77,["106"] = 77,["107"] = 77,["108"] = 77,["109"] = 55,["110"] = 78,["111"] = 78,["112"] = 78,["113"] = 78,["114"] = 55,["115"] = 80,["116"] = 80,["117"] = 80,["118"] = 80,["119"] = 55,["120"] = 81,["121"] = 81,["122"] = 81,["123"] = 81,["124"] = 55,["125"] = 83,["126"] = 83,["127"] = 83,["128"] = 83,["129"] = 55,["130"] = 84,["131"] = 84,["132"] = 84,["133"] = 84,["134"] = 84,["135"] = 55,["136"] = 55,["137"] = 10,["138"] = 20,["139"] = 21,["140"] = 22,["141"] = 21,["142"] = 20,["143"] = 87,["146"] = 89,["147"] = 89,["148"] = 90,["149"] = 91,["150"] = 92,["151"] = 92,["152"] = 92,["153"] = 93,["154"] = 92,["155"] = 92,["156"] = 95,["157"] = 95,["158"] = 95,["159"] = 96,["160"] = 97,["161"] = 98,["162"] = 99,["163"] = 100,["165"] = 102,["167"] = 104,["168"] = 105,["169"] = 106,["170"] = 107,["172"] = 109,["174"] = 111,["175"] = 95,["176"] = 95,["177"] = 114,["178"] = 114,["179"] = 114,["180"] = 115,["181"] = 116,["182"] = 117,["183"] = 117,["184"] = 117,["185"] = 117,["186"] = 117,["187"] = 117,["188"] = 117,["189"] = 117,["190"] = 114,["191"] = 122,["192"] = 123,["193"] = 114,["194"] = 114,["195"] = 89,["199"] = 87,["200"] = 195,["201"] = 196,["202"] = 195});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____DHelpText = include("logic.dialogs.help.DHelpText")
local DHelpText = ____DHelpText.DHelpText
____exports.DAttrInfo = __TS__Class()
local DAttrInfo = ____exports.DAttrInfo
DAttrInfo.name = "DAttrInfo"
__TS__ClassExtends(DAttrInfo, Dialog)
function DAttrInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.attrList = {
        {
            key = Formula["展示面板_物理攻击"],
            name = function() return i18n["local"](i18n, "物理攻击") end,
            percent = false
        },
        {
            key = Formula["展示面板_法术攻击"],
            name = function() return i18n["local"](i18n, "法术攻击") end,
            percent = false
        },
        {
            key = Formula["展示面板_物理防御"],
            name = function() return i18n["local"](i18n, "物理防御") end,
            percent = false
        },
        {
            key = Formula["展示面板_法术防御"],
            name = function() return i18n["local"](i18n, "法术防御") end,
            percent = false
        },
        {
            key = Formula["展示面板_物理防御系数"],
            name = function() return i18n["local"](i18n, "物理防御系数") end,
            percent = true
        },
        {
            key = Formula["展示面板_法术防御系数"],
            name = function() return i18n["local"](i18n, "法术防御系数") end,
            percent = true
        },
        {
            key = 14,
            name = function() return i18n["local"](i18n, "全伤害提升") end,
            percent = true,
            property = true
        },
        {
            key = 17,
            name = function() return i18n["local"](i18n, "全伤害减免") end,
            percent = true,
            property = true
        },
        {
            key = Formula["展示面板_暴击"],
            name = function() return i18n["local"](i18n, "暴击率") end,
            percent = true
        },
        {
            key = Formula["展示面板_暴击伤害"],
            name = function() return i18n["local"](i18n, "暴击伤害") end,
            percent = true
        },
        {
            key = Formula["展示面板_闪避"],
            name = function() return i18n["local"](i18n, "闪避率") end,
            percent = true
        },
        {
            key = Formula["展示面板_精准"],
            name = function() return i18n["local"](i18n, "命中率") end,
            percent = true
        },
        {
            key = Formula["展示面板_攻速"],
            name = function() return i18n["local"](i18n, "攻击速度") end,
            percent = false,
            isSub = true
        },
        {
            key = Formula["展示面板_回蓝速度"],
            name = function() return i18n["local"](i18n, "回蓝速度") end,
            endStr = "/秒",
            percent = false
        },
        {
            key = Formula["展示面板_毒系数"],
            name = function() return i18n["local"](i18n, "额外中毒层数") end,
            percent = true
        },
        {
            key = Formula["展示面板_恢复系数"],
            name = function() return i18n["local"](i18n, "恢复效率") end,
            percent = true
        },
        {
            key = Formula["展示面板_每5秒恢复生命"],
            name = function() return i18n["local"](i18n, "每5秒生命恢复") end,
            percent = false
        },
        {
            key = Formula["展示面板_每5秒获得护盾"],
            name = function() return i18n["local"](i18n, "每5秒获得护盾") end,
            percent = false
        },
        {
            key = Formula["展示面板_血量上限"],
            name = function() return i18n["local"](i18n, "生命值") end,
            percent = false
        },
        {
            key = 53,
            name = function() return i18n["local"](i18n, "当前护盾") end,
            percent = false,
            property = true
        }
    }
end
function DAttrInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DAttrInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        do
            local index = 0
            while index < 20 do
                local path = "root.list.attr_" .. tostring(index + 1)
                local idx = index
                self:bindText(
                    path .. ".title",
                    function()
                        return self.attrList[idx + 1]:name()
                    end
                )
                self:bindText(
                    path .. ".value",
                    function()
                        local property = self.attrList[idx + 1]
                        local unitData = LOCAL.PLAYER_DATA:getSingle(UnitData)
                        local value = 0
                        if property.property then
                            value = unitData and unitData.entity:p(property.key)
                        else
                            value = unitData and unitData.entity:formula(property.key)
                        end
                        if property.percent then
                            value = math.floor(value * 100 + 0.5)
                        elseif property.isSub then
                            value = math.floor(value + 0.5) / 100
                        else
                            value = math.floor(value + 0.5)
                        end
                        return (("" .. tostring(value)) .. (property.percent and "%" or "")) .. (property.endStr or "")
                    end
                )
                self:bindMouse(
                    path,
                    function()
                        local property = self.attrList[idx + 1]
                        local ui = self:getUI(path)
                        dialogs:showRepeat(
                            DHelpText,
                            {
                                x = ui:get_absolute_x(),
                                y = ui:get_absolute_y() + 40,
                                id = property.key
                            }
                        )
                    end,
                    function()
                        dialogs:hide(DHelpText)
                    end
                )
                index = index + 1
            end
        end
    end)
end
function DAttrInfo.prototype.onHide(self)
    dialogs:hideHover()
end
return ____exports
