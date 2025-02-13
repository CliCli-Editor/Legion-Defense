local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 6,["15"] = 6,["16"] = 6,["17"] = 6,["19"] = 6,["20"] = 7,["21"] = 6,["22"] = 22,["23"] = 23,["24"] = 23,["25"] = 23,["26"] = 23,["27"] = 24,["28"] = 23,["29"] = 23,["30"] = 27,["31"] = 28,["32"] = 28,["33"] = 28,["34"] = 28,["35"] = 29,["36"] = 30,["37"] = 28,["38"] = 28,["39"] = 22,["40"] = 34,["41"] = 35,["42"] = 36,["43"] = 34,["44"] = 39,["45"] = 40,["46"] = 41,["47"] = 39});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____SoundManager = include("logic.managers.SoundManager")
local BgmType = ____SoundManager.BgmType
local SoundManager = ____SoundManager.SoundManager
____exports.DStartVideo = __TS__Class()
local DStartVideo = ____exports.DStartVideo
DStartVideo.name = "DStartVideo"
__TS__ClassExtends(DStartVideo, Dialog)
function DStartVideo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DStartVideo.prototype.onCreate(self)
    self:bindAction(
        "bg",
        "左键-点击",
        function()
            self:hide()
        end
    )
    console:log(self:getUI("video"))
    LOCAL.PLAYER:event(
        "界面-视频播放完成",
        self:getUI("video"),
        function(tr, data)
            console:log("视频播放完成")
            self:hide()
        end
    )
end
function DStartVideo.prototype.onShow(self)
    console:log("开始播放 start.mp4")
    GameAPI.play_ui_video(LOCAL.PLAYER.handle, "start.mp4")
end
function DStartVideo.prototype.onHide(self)
    GameAPI.stop_ui_video(LOCAL.PLAYER.handle)
    SoundManager:playBgm(BgmType["大厅"])
end
return ____exports
