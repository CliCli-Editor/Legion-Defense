local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 7,["14"] = 7,["15"] = 7,["16"] = 7,["18"] = 7,["19"] = 8,["20"] = 7,["21"] = 23,["22"] = 24,["23"] = 25,["24"] = 24,["25"] = 23,["26"] = 29,["27"] = 29,["28"] = 46,["29"] = 47,["32"] = 50,["33"] = 51,["34"] = 53,["35"] = 53,["36"] = 53,["37"] = 54,["38"] = 55,["39"] = 55,["40"] = 55,["41"] = 56,["42"] = 55,["43"] = 55,["44"] = 53,["45"] = 53,["46"] = 46,["47"] = 61,["49"] = 62,["50"] = 62,["51"] = 62,["52"] = 62,["54"] = 63,["55"] = 64,["57"] = 62,["58"] = 62,["59"] = 66,["60"] = 66,["61"] = 66,["62"] = 66,["64"] = 67,["65"] = 68,["67"] = 66,["68"] = 66,["69"] = 70,["70"] = 70,["71"] = 70,["72"] = 70,["74"] = 71,["75"] = 72,["77"] = 70,["78"] = 70,["79"] = 75,["80"] = 75,["81"] = 75,["82"] = 76,["83"] = 75,["84"] = 75,["85"] = 78,["86"] = 78,["87"] = 78,["88"] = 79,["89"] = 78,["90"] = 78,["92"] = 61});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
____exports.DSelMode = __TS__Class()
local DSelMode = ____exports.DSelMode
DSelMode.name = "DSelMode"
__TS__ClassExtends(DSelMode, Dialog)
function DSelMode.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {sel = false}
end
function DSelMode.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DSelMode.prototype.onShow(self)
end
function DSelMode.prototype.enterGame(self)
    if self.data.sel then
        return
    end
    self.data.params.data.sel = true
    self.data.sel = true
    y3.ltimer.wait(
        1.5,
        function()
            self:getUI(nil):set_anim_opacity(100, 0, 0.5)
            y3.ltimer.wait(
                0.5,
                function()
                    self:hide()
                end
            )
        end
    )
end
function DSelMode.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindAction(
            "background.box.1v1",
            "左键-点击",
            function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    __TS__Await(playerController.setGameMode:execute("1v1"))
                    self:enterGame()
                end)
            end
        )
        self:bindAction(
            "background.box.2V2",
            "左键-点击",
            function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    __TS__Await(playerController.setGameMode:execute("2v2"))
                    self:enterGame()
                end)
            end
        )
        self:bindAction(
            "background.box.3V3",
            "左键-点击",
            function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    __TS__Await(playerController.setGameMode:execute("3v3"))
                    self:enterGame()
                end)
            end
        )
        self:bindVisible(
            "background.box",
            function()
                return self.data.sel ~= true
            end
        )
        self:bindVisible(
            "background.loading",
            function()
                return self.data.sel == true
            end
        )
    end)
end
return ____exports
