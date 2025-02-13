local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 6,["14"] = 6,["15"] = 8,["16"] = 8,["17"] = 9,["18"] = 9,["19"] = 9,["20"] = 9,["21"] = 12,["22"] = 12,["23"] = 13,["24"] = 13,["25"] = 14,["26"] = 14,["27"] = 17,["28"] = 17,["29"] = 17,["30"] = 17,["32"] = 17,["33"] = 18,["34"] = 17,["35"] = 20,["38"] = 24,["41"] = 22,["47"] = 20,["48"] = 29,["49"] = 30,["50"] = 31,["51"] = 31,["52"] = 31,["53"] = 32,["54"] = 31,["55"] = 31,["56"] = 35,["57"] = 36,["58"] = 37,["59"] = 38,["60"] = 39,["61"] = 40,["62"] = 42,["63"] = 42,["64"] = 42,["65"] = 43,["66"] = 44,["68"] = 46,["69"] = 42,["70"] = 42,["71"] = 48,["72"] = 48,["73"] = 48,["74"] = 49,["75"] = 50,["77"] = 52,["78"] = 48,["79"] = 48,["80"] = 55,["81"] = 55,["82"] = 55,["83"] = 56,["84"] = 55,["85"] = 55,["86"] = 58,["87"] = 58,["88"] = 58,["89"] = 59,["90"] = 58,["91"] = 58,["92"] = 61,["93"] = 61,["94"] = 61,["95"] = 62,["96"] = 61,["97"] = 61,["98"] = 65,["99"] = 65,["100"] = 65,["101"] = 66,["102"] = 67,["104"] = 69,["105"] = 65,["106"] = 65,["107"] = 71,["108"] = 71,["109"] = 71,["110"] = 72,["111"] = 71,["112"] = 71,["113"] = 75,["114"] = 75,["115"] = 75,["116"] = 76,["117"] = 77,["119"] = 79,["120"] = 75,["121"] = 75,["122"] = 81,["123"] = 81,["124"] = 81,["125"] = 82,["126"] = 81,["127"] = 81,["128"] = 29});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____FightController = include("logic.controllers.FightController")
local Formula = ____FightController.Formula
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameStatus = ____GameData.GameStatus
local ____Property = include("logic.models.Property")
local _____8840 = ____Property["血"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
____exports.DLastBattle = __TS__Class()
local DLastBattle = ____exports.DLastBattle
DLastBattle.name = "DLastBattle"
__TS__ClassExtends(DLastBattle, Dialog)
function DLastBattle.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DLastBattle.prototype.onCreate(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            self:initTop()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function DLastBattle.prototype.initTop(self)
    local gameData = datas.global:getSingle(GameData)
    self:bindVisible(
        "BattleInfo",
        function()
            return gameData.mode == GameMode["终极大战"]
        end
    )
    local leftTowerList = datas.players[PlayerId.LEFT_KING]:getAll(UnitData)
    local leftKing = leftTowerList[#leftTowerList]
    local rightTowerList = datas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
    local rightKing = rightTowerList[#rightTowerList]
    local leftKingEntity = leftKing.entity
    local rightKingEntity = rightKing.entity
    self:bindProgress(
        "BattleInfo.left.hp",
        function()
            if gameData.mode ~= GameMode["终极大战"] then
                return 100
            end
            return math.floor(leftKingEntity:v(_____8840) / leftKingEntity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindProgress(
        "BattleInfo.right.hp",
        function()
            if gameData.mode ~= GameMode["终极大战"] then
                return 100
            end
            return math.floor(rightKingEntity:v(_____8840) / rightKingEntity:formula(Formula["展示面板_血量上限"]) * 100 + 0.5)
        end
    )
    self:bindText(
        "BattleInfo.center.time",
        function()
            return tostring(gameLoop.timeLeft.value)
        end
    )
    self:bindVisible(
        "BattleInfo.center.fight",
        function()
            return gameData.gameStatus == GameStatus["战斗中"]
        end
    )
    self:bindVisible(
        "BattleInfo.center.ready",
        function()
            return gameData.gameStatus == GameStatus["准备回合"]
        end
    )
    self:bindModelHead(
        "BattleInfo.left.player1.head",
        function()
            if gameData.mode ~= GameMode["终极大战"] then
                return 0
            end
            return leftKing.roleId
        end
    )
    self:bindText(
        "BattleInfo.left.heroname",
        function()
            return i18n["local"](i18n, "光明女神")
        end
    )
    self:bindModelHead(
        "BattleInfo.right.player1.head",
        function()
            if gameData.mode ~= GameMode["终极大战"] then
                return 0
            end
            return rightKing.roleId
        end
    )
    self:bindText(
        "BattleInfo.right.heroname",
        function()
            return i18n["local"](i18n, "天灾国王")
        end
    )
end
return ____exports
