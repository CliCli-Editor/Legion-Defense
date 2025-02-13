local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 8,["16"] = 8,["17"] = 8,["19"] = 21,["20"] = 56,["21"] = 56,["22"] = 56,["23"] = 56,["24"] = 56,["25"] = 56,["26"] = 56,["27"] = 56,["28"] = 67,["29"] = 68,["31"] = 70,["33"] = 66,["34"] = 74,["35"] = 75,["36"] = 77,["38"] = 79,["40"] = 74,["41"] = 84,["42"] = 85,["43"] = 86,["45"] = 88,["47"] = 84,["48"] = 95,["49"] = 96,["50"] = 97,["52"] = 99,["54"] = 95,["55"] = 106,["56"] = 107,["57"] = 108,["59"] = 110,["61"] = 106,["62"] = 117,["63"] = 118,["64"] = 119,["66"] = 121,["68"] = 117,["69"] = 128,["70"] = 129,["71"] = 130,["73"] = 132,["75"] = 128,["76"] = 139,["77"] = 140,["78"] = 141,["80"] = 143,["82"] = 139,["83"] = 150,["84"] = 151,["85"] = 152,["87"] = 154,["89"] = 150,["90"] = 163,["91"] = 165,["92"] = 167,["93"] = 168,["94"] = 169,["95"] = 170,["96"] = 170,["97"] = 170,["98"] = 171,["99"] = 172,["100"] = 170,["101"] = 170,["103"] = 175,["104"] = 176,["106"] = 178,["109"] = 163,["110"] = 187,["111"] = 188,["112"] = 189,["113"] = 190,["116"] = 193,["117"] = 194,["118"] = 195,["120"] = 197,["121"] = 198,["123"] = 200,["126"] = 187,["127"] = 205,["128"] = 206,["129"] = 207,["131"] = 209,["133"] = 205,["134"] = 214});
local ____exports = {}
local ____GameModeUtils = include("logic.utils.GameModeUtils")
local gameModeUtils = ____GameModeUtils.gameModeUtils
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
local ____BobSteam = include("logic.match.BobSteam")
local BobSteam = ____BobSteam.BobSteam
local ____BobY3 = include("logic.match.BobY3")
local BobY3 = ____BobY3.BobY3
____exports.Bob = __TS__Class()
local Bob = ____exports.Bob
Bob.name = "Bob"
function Bob.prototype.____constructor(self)
    self.data = vue.reactive({
        isReady = false,
        connectState = "none",
        isCaptain = false,
        isMatching = false,
        isLaunching = false,
        startMatchingTime = 0,
        teamInfo = nil
    })
    if steamUtils:isSteam() then
        self.bobSteam = __TS__New(BobSteam, self.data, self)
    else
        self.bobY3 = __TS__New(BobY3, self.data, self)
    end
end
function Bob.prototype.sendChat(self, str)
    if steamUtils:isSteam() then
        console:error("steam 环境不支持发送聊天消息")
    else
        self.bobY3:sendChat(str)
    end
end
function Bob.prototype.init(self, inGame, score)
    if steamUtils:isSteam() then
        self.bobSteam:init(inGame, score)
    else
        self.bobY3:init(inGame, score)
    end
end
function Bob.prototype.changeCaptain(self, aid)
    if steamUtils:isSteam() then
        self.bobSteam:changeCaptain(aid)
    else
        self.bobY3:changeCaptain(aid)
    end
end
function Bob.prototype.kick(self, aid)
    if steamUtils:isSteam() then
        self.bobSteam:kick(aid)
    else
        self.bobY3:kick(aid)
    end
end
function Bob.prototype.dismissTeam(self)
    if steamUtils:isSteam() then
        self.bobSteam:dismissTeam()
    else
        self.bobY3:dismissTeam()
    end
end
function Bob.prototype.leaveTeam(self)
    if steamUtils:isSteam() then
        self.bobSteam:leaveTeam()
    else
        self.bobY3:leaveTeam()
    end
end
function Bob.prototype.createTeam(self)
    if steamUtils:isSteam() then
        self.bobSteam:createTeam()
    else
        self.bobY3:createTeam()
    end
end
function Bob.prototype.joinTeam(self, team_id)
    if steamUtils:isSteam() then
        self.bobSteam:joinTeam(team_id)
    else
        self.bobY3:joinTeam(team_id)
    end
end
function Bob.prototype.start_match(self, game_mode, score, cb, isFake)
    if isFake then
        print("开始假匹配")
        self.data.isMatching = true
        self.data.startMatchingTime = os.clock()
        self._fakeMatch = y3.ltimer.wait(
            10,
            function()
                self.data.isLaunching = true
                gameModeUtils:restartGame(game_mode)
            end
        )
    else
        if steamUtils:isSteam() then
            self.bobSteam:start_match(game_mode, score, cb)
        else
            self.bobY3:start_match(game_mode, score, cb)
        end
    end
end
function Bob.prototype.cancel_match(self)
    if self._fakeMatch ~= nil then
        print("取消假匹配")
        if self.data.isLaunching then
            return
        end
        self.data.isMatching = false
        self._fakeMatch:remove()
        self._fakeMatch = nil
    else
        if steamUtils:isSteam() then
            self.bobSteam:cancel_match()
        else
            self.bobY3:cancel_match()
        end
    end
end
function Bob.prototype.exitGame(self)
    if steamUtils:isSteam() then
        self.bobSteam:exitGame()
    else
        self.bobY3:exitGame()
    end
end
____exports.bob = __TS__New(____exports.Bob)
return ____exports
