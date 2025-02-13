local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 10,["24"] = 10,["25"] = 12,["26"] = 12,["27"] = 12,["28"] = 12,["30"] = 12,["31"] = 13,["32"] = 12,["33"] = 27,["34"] = 28,["35"] = 28,["36"] = 28,["37"] = 29,["38"] = 28,["39"] = 28,["40"] = 33,["41"] = 34,["42"] = 35,["43"] = 36,["44"] = 37,["45"] = 39,["46"] = 40,["47"] = 40,["48"] = 40,["49"] = 41,["50"] = 40,["51"] = 40,["52"] = 44,["53"] = 45,["54"] = 46,["55"] = 48,["56"] = 48,["57"] = 48,["58"] = 49,["59"] = 50,["60"] = 51,["62"] = 53,["63"] = 48,["64"] = 48,["65"] = 55,["66"] = 55,["67"] = 55,["68"] = 56,["69"] = 55,["70"] = 55,["71"] = 58,["72"] = 58,["73"] = 58,["74"] = 59,["75"] = 58,["76"] = 58,["77"] = 62,["78"] = 62,["79"] = 62,["80"] = 63,["81"] = 62,["82"] = 62,["83"] = 66,["84"] = 66,["85"] = 66,["86"] = 67,["87"] = 66,["88"] = 66,["89"] = 70,["90"] = 70,["91"] = 70,["92"] = 71,["93"] = 70,["94"] = 70,["95"] = 74,["96"] = 74,["97"] = 74,["98"] = 75,["99"] = 76,["100"] = 77,["103"] = 81,["104"] = 82,["107"] = 86,["108"] = 87,["111"] = 91,["112"] = 92,["115"] = 97,["116"] = 100,["117"] = 102,["118"] = 105,["119"] = 105,["120"] = 105,["121"] = 105,["122"] = 105,["123"] = 105,["124"] = 105,["125"] = 107,["126"] = 107,["127"] = 107,["128"] = 108,["129"] = 107,["130"] = 107,["132"] = 114,["133"] = 115,["134"] = 115,["135"] = 115,["136"] = 116,["137"] = 115,["138"] = 115,["139"] = 118,["140"] = 118,["141"] = 118,["142"] = 119,["143"] = 118,["144"] = 118,["145"] = 121,["146"] = 123,["147"] = 123,["148"] = 123,["149"] = 123,["150"] = 123,["151"] = 123,["152"] = 123,["153"] = 124,["154"] = 124,["155"] = 124,["156"] = 125,["157"] = 125,["158"] = 125,["159"] = 125,["160"] = 126,["161"] = 127,["162"] = 128,["164"] = 125,["165"] = 125,["166"] = 124,["167"] = 124,["169"] = 74,["170"] = 74,["171"] = 136,["174"] = 27});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigList = ____RobotLevelConfig.robotLevelConfigList
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DMatching = include("logic.dialogs.menu.DMatching")
local DMatching = ____DMatching.DMatching
____exports.DSingleFight = __TS__Class()
local DSingleFight = ____exports.DSingleFight
DSingleFight.name = "DSingleFight"
__TS__ClassExtends(DSingleFight, Dialog)
function DSingleFight.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {selected = -1}
end
function DSingleFight.prototype.onCreate(self)
    self:bindClick(
        "bg.exit",
        function()
            self:hide()
        end
    )
    local rowNodes = self:getUI("bg.levels"):get_childs()
    local i = 0
    for ____, rowNode in ipairs(rowNodes) do
        local itemNodes = rowNode:get_childs()
        local rowPath = "bg.levels." .. rowNode:get_name()
        local rowStartIndex = i
        self:bindVisible(
            rowPath,
            function()
                return #robotLevelConfigList > rowStartIndex
            end
        )
        for ____, itemNode in ipairs(itemNodes) do
            local path = (rowPath .. ".") .. itemNode:get_name()
            local index = i
            self:bindText(
                path .. ".title",
                function()
                    local config = robotLevelConfigList[index + 1]
                    if config == nil then
                        return ""
                    end
                    return config.name
                end
            )
            self:bindText(
                path .. ".des0",
                function()
                    return i18n["local"](i18n, "挑战")
                end
            )
            self:bindText(
                path .. ".des1",
                function()
                    return i18n["local"](i18n, "难度")
                end
            )
            self:bindVisible(
                path .. ".sel",
                function()
                    return self.data.selected == index
                end
            )
            self:bindVisible(
                path .. ".locked",
                function()
                    return archive.playerData.singleModeUnlockLevel < index
                end
            )
            self:bindVisible(
                path,
                function()
                    return #robotLevelConfigList > i
                end
            )
            self:bindClick(
                path,
                function()
                    local config = robotLevelConfigList[index + 1]
                    if config == nil then
                        DTips:show(i18n["local"](i18n, "关卡配置异常"))
                        return
                    end
                    if archive.playerData.singleModeUnlockLevel < index then
                        DTips:show(i18n["local"](i18n, "关卡未解锁"))
                        return
                    end
                    if bob.data.teamInfo ~= nil and bob.data.isCaptain ~= true then
                        DTips:show(i18n["local"](i18n, "仅有队长可以开启游戏"))
                        return
                    end
                    if bob.data.teamInfo ~= nil and not bob.data.isCaptain then
                        DTips:show(i18n["local"](i18n, "仅限队长选择关卡"))
                        return
                    end
                    self.data.selected = index
                    if bob.data.teamInfo == nil then
                        archive.playerData.singleModeChooseLevel = config.id
                        dialogs:show(
                            DMatching,
                            {
                                showCancel = false,
                                message = i18n:format("即将进入${level}", {level = config.name})
                            }
                        )
                        y3.ctimer.wait(
                            3,
                            function()
                                gameModeUtils:restartGame(1006)
                            end
                        )
                    else
                        bob:sendChat("cmd choose-level " .. tostring(config.id))
                        y3.ctimer.wait(
                            1,
                            function()
                                bob:sendChat("cmd choose-level " .. tostring(config.id))
                            end
                        )
                        y3.ctimer.wait(
                            3,
                            function()
                                bob:sendChat("cmd choose-level " .. tostring(config.id))
                            end
                        )
                        archive.playerData.singleModeChooseLevel = config.id
                        dialogs:show(
                            DMatching,
                            {
                                showCancel = false,
                                message = i18n:format("队伍即将进入${level}", {level = config.name})
                            }
                        )
                        y3.ctimer.wait(
                            3,
                            function()
                                bob:start_match(
                                    1006,
                                    nil,
                                    function(____, r, e)
                                        if r ~= true then
                                            dialogs:hide(DMatching)
                                            DTips:show(i18n["local"](i18n, "队伍进入关卡失败"))
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            )
            i = i + 1
        end
    end
end
return ____exports
