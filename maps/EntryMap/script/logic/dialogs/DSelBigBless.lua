local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 10,["23"] = 10,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["32"] = 13,["33"] = 14,["34"] = 13,["35"] = 21,["37"] = 24,["38"] = 25,["39"] = 25,["40"] = 25,["41"] = 25,["42"] = 26,["43"] = 25,["44"] = 25,["45"] = 28,["46"] = 28,["47"] = 28,["48"] = 29,["49"] = 28,["50"] = 28,["51"] = 32,["52"] = 32,["53"] = 32,["54"] = 33,["55"] = 34,["56"] = 32,["57"] = 32,["58"] = 37,["59"] = 40,["60"] = 40,["61"] = 41,["62"] = 40,["63"] = 40,["64"] = 40,["65"] = 40,["66"] = 40,["67"] = 43,["68"] = 48,["69"] = 49,["70"] = 52,["71"] = 52,["72"] = 53,["73"] = 54,["74"] = 52,["75"] = 52,["76"] = 52,["77"] = 52,["78"] = 52,["79"] = 57,["81"] = 21,["82"] = 61,["83"] = 62,["85"] = 64,["86"] = 64,["87"] = 65,["88"] = 66,["89"] = 67,["90"] = 67,["91"] = 67,["92"] = 69,["93"] = 67,["94"] = 67,["95"] = 72,["96"] = 72,["97"] = 72,["98"] = 73,["99"] = 72,["100"] = 72,["101"] = 76,["102"] = 76,["103"] = 76,["104"] = 77,["105"] = 76,["106"] = 76,["107"] = 80,["108"] = 80,["109"] = 80,["110"] = 81,["111"] = 81,["112"] = 80,["113"] = 80,["114"] = 84,["115"] = 84,["116"] = 84,["117"] = 85,["118"] = 84,["119"] = 86,["120"] = 87,["121"] = 84,["122"] = 84,["123"] = 64,["126"] = 91,["127"] = 91,["128"] = 91,["129"] = 92,["130"] = 91,["131"] = 91,["132"] = 95,["133"] = 95,["134"] = 95,["135"] = 96,["136"] = 96,["137"] = 95,["138"] = 95,["139"] = 61,["140"] = 100,["142"] = 101,["143"] = 102,["145"] = 100});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____BigBlessController = include("logic.controllers.BigBlessController")
local bigBlessController = ____BigBlessController.bigBlessController
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
____exports.DSelBigBless = __TS__Class()
local DSelBigBless = ____exports.DSelBigBless
DSelBigBless.name = "DSelBigBless"
__TS__ClassExtends(DSelBigBless, Dialog)
function DSelBigBless.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {des = nil}
end
function DSelBigBless.prototype.onCreate(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local timeLeft = vue.ref(defaultConfig.selBigBlessTime)
        local timer = y3.ltimer.loop_count(
            1,
            defaultConfig.selBigBlessTime,
            function(timer, count)
                timeLeft.value = defaultConfig.selBigBlessTime - count
            end
        )
        self:bindText(
            "top.timer",
            function()
                return tostring(timeLeft.value)
            end
        )
        self:bindVisible(
            "mask",
            function()
                local bigBlessData = datas.global:getSingle(BigBlessData)
                return bigBlessData.bigBlessIndex ~= -1
            end
        )
        self:initView()
        __TS__Await(self:watchOnce(
            function()
                return timeLeft.value <= 0
            end,
            function(____, v) return v end,
            true,
            true
        ))
        timer:remove()
        __TS__Await(bigBlessController.endSel:executeTogether())
        __TS__Await(bigBlessController.playEndAnim:executeTogether())
        __TS__Await(self:watchOnce(
            function()
                local gameData = datas.global:getSingle(GameData)
                return gameData.gameStatus == GameStatus["选人阶段"]
            end,
            function(____, v) return v end,
            true,
            true
        ))
        __TS__Await(self:enterGame():catch(function(____, e) return console:error(e) end))
    end)
end
function DSelBigBless.prototype.initView(self)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    do
        local i = 1
        while i <= 3 do
            local index = i - 1
            local path = "list.item" .. tostring(i)
            self:bindClick(
                path,
                function()
                    bigBlessController.sendToPos:execute(LOCAL.PLAYER_ID, index)
                end
            )
            self:bindVisible(
                path .. ".sel",
                function()
                    return bigBlessData.bigBlessIndexAnim == index
                end
            )
            self:bindVisible(
                path .. ".self_sel",
                function()
                    return __TS__ArrayIndexOf(bigBlessData.voteList[index + 1], LOCAL.PLAYER_ID) ~= -1
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local ____opt_0 = bigBlessData.canSelList[index + 1]
                    return ____opt_0 and ____opt_0.name.value or ""
                end
            )
            self:bindMouse(
                path,
                function()
                    self.data.des = bigBlessData.canSelList[index + 1]
                end,
                function()
                    self.data.des = nil
                end
            )
            i = i + 1
        end
    end
    self:bindVisible(
        "des",
        function()
            return self.data.des ~= nil
        end
    )
    self:bindText(
        "des.text",
        function()
            local ____opt_2 = self.data.des
            return ____opt_2 and ____opt_2.des.value or ""
        end
    )
end
function DSelBigBless.prototype.enterGame(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        gameController.startSelHero:executeTogether()
        self:hide()
    end)
end
return ____exports
