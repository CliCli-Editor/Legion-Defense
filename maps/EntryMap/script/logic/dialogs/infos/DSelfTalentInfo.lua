local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["29"] = 10,["30"] = 11,["31"] = 23,["32"] = 10,["33"] = 24,["34"] = 25,["35"] = 26,["36"] = 25,["37"] = 24,["38"] = 30,["39"] = 31,["40"] = 31,["42"] = 32,["43"] = 32,["44"] = 32,["45"] = 32,["47"] = 32,["48"] = 32,["50"] = 32,["51"] = 33,["52"] = 34,["53"] = 30,["54"] = 37,["56"] = 38,["57"] = 39,["58"] = 40,["59"] = 40,["60"] = 40,["61"] = 40,["62"] = 41,["63"] = 41,["65"] = 42,["66"] = 43,["67"] = 44,["68"] = 45,["69"] = 47,["70"] = 52,["71"] = 53,["73"] = 58,["74"] = 40,["75"] = 40,["77"] = 61,["78"] = 61,["79"] = 62,["80"] = 64,["81"] = 65,["82"] = 65,["83"] = 64,["84"] = 67,["85"] = 68,["86"] = 68,["87"] = 67,["88"] = 71,["89"] = 71,["90"] = 71,["91"] = 71,["92"] = 72,["93"] = 71,["94"] = 71,["95"] = 75,["96"] = 75,["97"] = 75,["98"] = 76,["99"] = 76,["101"] = 77,["102"] = 77,["103"] = 77,["104"] = 77,["106"] = 77,["107"] = 77,["109"] = 77,["110"] = 78,["111"] = 79,["112"] = 80,["114"] = 82,["115"] = 75,["116"] = 75,["117"] = 84,["118"] = 84,["119"] = 84,["120"] = 85,["121"] = 85,["123"] = 86,["124"] = 86,["125"] = 86,["126"] = 86,["128"] = 86,["129"] = 86,["131"] = 86,["132"] = 87,["133"] = 88,["134"] = 89,["136"] = 91,["137"] = 84,["138"] = 84,["139"] = 93,["140"] = 93,["141"] = 93,["142"] = 94,["143"] = 94,["145"] = 95,["146"] = 95,["147"] = 95,["148"] = 95,["150"] = 95,["151"] = 95,["153"] = 95,["154"] = 96,["155"] = 97,["156"] = 93,["157"] = 93,["158"] = 100,["159"] = 100,["160"] = 100,["161"] = 100,["162"] = 101,["163"] = 100,["164"] = 100,["165"] = 103,["166"] = 103,["167"] = 103,["168"] = 103,["169"] = 104,["170"] = 103,["171"] = 103,["172"] = 61,["176"] = 37});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
____exports.DSelfTalentInfo = __TS__Class()
local DSelfTalentInfo = ____exports.DSelfTalentInfo
DSelfTalentInfo.name = "DSelfTalentInfo"
__TS__ClassExtends(DSelfTalentInfo, Dialog)
function DSelfTalentInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DSelfTalentInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DSelfTalentInfo.prototype.getTalentConfigs(self)
    if self.data.params.heroConfig ~= nil then
        return self.data.params.heroConfig.talent
    end
    local ____temp_4
    local ____opt_0 = self.data.params
    if (____opt_0 and ____opt_0.playerId) == nil then
        ____temp_4 = LOCAL.PLAYER_ID
    else
        local ____opt_2 = self.data.params
        ____temp_4 = ____opt_2 and ____opt_2.playerId
    end
    local playerId = ____temp_4
    local player = datas.players[playerId]:getSingle(PlayerData)
    return player.talentConfigList
end
function DSelfTalentInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local fullPath = "DSelfTalentInfo.info"
        local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
        bindPos(
            self,
            "info",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                local x = self.data.params.x
                local y = self.data.params.y
                local height = ui:get_height()
                local max_y = y + height / 2
                local width = ui:get_width()
                if max_y >= 1080 then
                    y = y - (max_y - 1080)
                end
                return {x = x, y = y}
            end
        )
        do
            local j = 0
            while j < 4 do
                local i = j
                local left = self:compute(function()
                    local ____opt_5 = self:getTalentConfigs()[i * 2 + 1]
                    return ____opt_5 and ____opt_5.describe or "??"
                end)
                local right = self:compute(function()
                    local ____opt_7 = self:getTalentConfigs()[i * 2 + 1 + 1]
                    return ____opt_7 and ____opt_7.describe or "??"
                end)
                bindText(
                    self,
                    ("info.list.row_" .. tostring(i + 1)) .. ".level.v",
                    function()
                        return tostring(defaultConfig["天赋等级"][i + 1] or "??")
                    end
                )
                self:bindTextColor(
                    ("info.list.row_" .. tostring(i + 1)) .. ".left",
                    function()
                        if self.data.params.heroConfig ~= nil then
                            return UIUtils:toColor("888888")
                        end
                        local ____temp_13
                        local ____opt_9 = self.data.params
                        if (____opt_9 and ____opt_9.playerId) == nil then
                            ____temp_13 = LOCAL.PLAYER_ID
                        else
                            local ____opt_11 = self.data.params
                            ____temp_13 = ____opt_11 and ____opt_11.playerId
                        end
                        local playerId = ____temp_13
                        local player = datas.players[playerId]:getSingle(PlayerData)
                        if player.talent[i + 1] == 1 then
                            return UIUtils:toColor("ffffff")
                        end
                        return UIUtils:toColor("888888")
                    end
                )
                self:bindTextColor(
                    ("info.list.row_" .. tostring(i + 1)) .. ".right",
                    function()
                        if self.data.params.heroConfig ~= nil then
                            return UIUtils:toColor("888888")
                        end
                        local ____temp_18
                        local ____opt_14 = self.data.params
                        if (____opt_14 and ____opt_14.playerId) == nil then
                            ____temp_18 = LOCAL.PLAYER_ID
                        else
                            local ____opt_16 = self.data.params
                            ____temp_18 = ____opt_16 and ____opt_16.playerId
                        end
                        local playerId = ____temp_18
                        local player = datas.players[playerId]:getSingle(PlayerData)
                        if player.talent[i + 1] == 2 then
                            return UIUtils:toColor("ffffff")
                        end
                        return UIUtils:toColor("888888")
                    end
                )
                self:bindVisible(
                    ("info.list.row_" .. tostring(i + 1)) .. ".level.select",
                    function()
                        if self.data.params.heroConfig ~= nil then
                            return false
                        end
                        local ____temp_23
                        local ____opt_19 = self.data.params
                        if (____opt_19 and ____opt_19.playerId) == nil then
                            ____temp_23 = LOCAL.PLAYER_ID
                        else
                            local ____opt_21 = self.data.params
                            ____temp_23 = ____opt_21 and ____opt_21.playerId
                        end
                        local playerId = ____temp_23
                        local player = datas.players[playerId]:getSingle(PlayerData)
                        return player.talent[i + 1] ~= nil and player.talent[i + 1] > 0
                    end
                )
                bindText(
                    self,
                    ("info.list.row_" .. tostring(i + 1)) .. ".left",
                    function()
                        return left.value.value
                    end
                )
                bindText(
                    self,
                    ("info.list.row_" .. tostring(i + 1)) .. ".right",
                    function()
                        return right.value.value
                    end
                )
                j = j + 1
            end
        end
    end)
end
return ____exports
