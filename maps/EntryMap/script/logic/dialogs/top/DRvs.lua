local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 9,["20"] = 9,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 13,["26"] = 13,["27"] = 14,["28"] = 13,["29"] = 16,["32"] = 20,["35"] = 18,["41"] = 16,["42"] = 23,["43"] = 24,["44"] = 27,["45"] = 27,["46"] = 27,["47"] = 28,["48"] = 27,["49"] = 27,["50"] = 31,["51"] = 31,["52"] = 31,["53"] = 32,["54"] = 31,["55"] = 31,["56"] = 34,["57"] = 34,["58"] = 34,["59"] = 35,["60"] = 34,["61"] = 34,["62"] = 37,["63"] = 37,["64"] = 37,["65"] = 38,["66"] = 37,["67"] = 37,["68"] = 41,["69"] = 43,["70"] = 43,["71"] = 43,["72"] = 44,["73"] = 43,["74"] = 43,["75"] = 46,["76"] = 46,["77"] = 46,["78"] = 47,["79"] = 46,["80"] = 46,["81"] = 50,["82"] = 50,["83"] = 50,["84"] = 51,["85"] = 50,["86"] = 50,["87"] = 53,["88"] = 53,["89"] = 53,["90"] = 54,["91"] = 53,["92"] = 53,["94"] = 57,["95"] = 57,["96"] = 59,["97"] = 60,["98"] = 63,["99"] = 64,["100"] = 57,["103"] = 23,["104"] = 69,["105"] = 70,["106"] = 70,["107"] = 70,["108"] = 71,["109"] = 70,["110"] = 70,["111"] = 74,["114"] = 76,["115"] = 76,["116"] = 76,["117"] = 77,["118"] = 77,["120"] = 78,["121"] = 76,["122"] = 76,["123"] = 80,["124"] = 80,["125"] = 80,["126"] = 81,["127"] = 81,["129"] = 82,["130"] = 83,["131"] = 80,["132"] = 80,["133"] = 69});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____GameLoop = include("logic.loop.GameLoop")
local gameLoop = ____GameLoop.gameLoop
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameStatus = ____GameData.GameStatus
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
____exports.DRvs = __TS__Class()
local DRvs = ____exports.DRvs
DRvs.name = "DRvs"
__TS__ClassExtends(DRvs, Dialog)
function DRvs.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DRvs.prototype.onCreate(self)
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
function DRvs.prototype.initTop(self)
    local gameData = datas.global:getSingle(GameData)
    self:bindVisible(
        "RvsLevelInfo",
        function()
            return gameData.mode == GameMode["兔羊大战"]
        end
    )
    self:bindVisible(
        "RvsLevelInfo.center.ready",
        function()
            return gameData.gameStatus == GameStatus["准备回合"]
        end
    )
    self:bindVisible(
        "RvsLevelInfo.center.fight",
        function()
            return gameData.gameStatus == GameStatus["战斗中"]
        end
    )
    self:bindText(
        "RvsLevelInfo.center.time",
        function()
            return tostring(gameLoop.timeLeft.value)
        end
    )
    local maxCount = 100
    self:bindProgress(
        "RvsLevelInfo.left.progress",
        function()
            return gameData.teamALeftMonster / maxCount * 100
        end
    )
    self:bindProgress(
        "RvsLevelInfo.right.progress",
        function()
            return gameData.teamBLeftMonster / maxCount * 100
        end
    )
    self:bindText(
        "RvsLevelInfo.left.progress.text",
        function()
            return (tostring(gameData.teamALeftMonster) .. "/") .. tostring(maxCount)
        end
    )
    self:bindText(
        "RvsLevelInfo.right.progress.text",
        function()
            return (tostring(gameData.teamBLeftMonster) .. "/") .. tostring(maxCount)
        end
    )
    do
        local index = 0
        while index < 3 do
            local path1 = "RvsLevelInfo.left.list.player" .. tostring(index + 1)
            self:updatePlayer(path1, #gameData.teamLeft > index and gameData.teamLeft[index + 1] or 0)
            local path2 = "RvsLevelInfo.right.list.player" .. tostring(index + 1)
            self:updatePlayer(path2, #gameData.teamRight > index and gameData.teamRight[index + 1] or 0)
            index = index + 1
        end
    end
end
function DRvs.prototype.updatePlayer(self, path, playerId)
    self:bindVisible(
        path,
        function()
            return playerId > 0
        end
    )
    if playerId == 0 then
        return
    end
    self:bindImage(
        path .. ".head",
        function()
            if playerId == 0 then
                return 0
            end
            return heroSkinManager:getHeroIcon2(playerId)
        end
    )
    self:bindVisible(
        path .. ".death",
        function()
            if playerId == 0 then
                return false
            end
            local heroA = datas.players[playerId]:getSingle(UnitData)
            return not heroA.entity:isAlive()
        end
    )
end
return ____exports
