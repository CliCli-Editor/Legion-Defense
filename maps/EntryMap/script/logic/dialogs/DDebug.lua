local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["25"] = 7,["26"] = 8,["27"] = 7,["28"] = 16,["29"] = 17,["30"] = 18,["31"] = 17,["32"] = 16,["33"] = 22,["35"] = 24,["36"] = 25,["37"] = 25,["38"] = 25,["39"] = 25,["40"] = 26,["41"] = 25,["42"] = 25,["43"] = 28,["44"] = 28,["45"] = 28,["46"] = 28,["47"] = 29,["48"] = 28,["49"] = 28,["50"] = 31,["51"] = 31,["52"] = 31,["53"] = 31,["54"] = 32,["55"] = 31,["56"] = 31,["57"] = 34,["58"] = 34,["59"] = 34,["60"] = 34,["61"] = 35,["62"] = 34,["63"] = 34,["64"] = 38,["65"] = 38,["66"] = 38,["67"] = 38,["68"] = 38,["69"] = 39,["70"] = 38,["71"] = 38,["72"] = 41,["73"] = 41,["74"] = 41,["75"] = 41,["76"] = 41,["77"] = 42,["78"] = 41,["79"] = 41,["80"] = 44,["81"] = 44,["82"] = 44,["83"] = 44,["84"] = 44,["85"] = 45,["86"] = 44,["87"] = 44,["88"] = 47,["89"] = 47,["90"] = 47,["91"] = 47,["92"] = 47,["93"] = 48,["94"] = 47,["95"] = 47,["96"] = 50,["97"] = 50,["98"] = 50,["99"] = 50,["100"] = 50,["101"] = 51,["102"] = 50,["103"] = 50,["104"] = 53,["105"] = 53,["106"] = 53,["107"] = 53,["108"] = 53,["109"] = 54,["110"] = 53,["111"] = 53,["112"] = 56,["113"] = 56,["114"] = 56,["115"] = 56,["116"] = 56,["117"] = 57,["118"] = 56,["119"] = 56,["120"] = 59,["121"] = 59,["122"] = 59,["123"] = 59,["124"] = 59,["125"] = 60,["126"] = 59,["127"] = 59,["128"] = 62,["129"] = 62,["130"] = 62,["131"] = 62,["132"] = 62,["133"] = 63,["134"] = 62,["135"] = 62,["136"] = 65,["137"] = 65,["138"] = 65,["139"] = 65,["140"] = 65,["141"] = 66,["142"] = 65,["143"] = 65,["144"] = 69,["145"] = 69,["146"] = 69,["147"] = 69,["148"] = 69,["149"] = 70,["150"] = 69,["151"] = 69,["152"] = 72,["153"] = 72,["154"] = 72,["155"] = 72,["156"] = 72,["157"] = 73,["158"] = 72,["159"] = 72,["160"] = 75,["161"] = 75,["162"] = 75,["163"] = 75,["164"] = 75,["165"] = 76,["166"] = 75,["167"] = 75,["168"] = 78,["169"] = 78,["170"] = 78,["171"] = 78,["172"] = 78,["173"] = 78,["174"] = 78,["176"] = 22});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindAction = ____bind.bindAction
local bindText = ____bind.bindText
local ____DebugController = include("logic.controllers.DebugController")
local debugController = ____DebugController.debugController
local ____DebugData = include("logic.models.DebugData")
local DebugData = ____DebugData.DebugData
____exports.DDebug = __TS__Class()
local DDebug = ____exports.DDebug
DDebug.name = "DDebug"
__TS__ClassExtends(DDebug, Dialog)
function DDebug.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DDebug.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DDebug.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____debug = datas.global:getSingle(DebugData)
        bindText(
            self,
            "center.kof.status",
            function()
                return ____debug.kof_enable and "开" or "关"
            end
        )
        bindText(
            self,
            "center.hero.status",
            function()
                return ____debug.control_hero_enable and "开" or "关"
            end
        )
        bindText(
            self,
            "center.res.status",
            function()
                return ____debug.res_enable and "开" or "关"
            end
        )
        bindText(
            self,
            "center.ai.status",
            function()
                return ____debug.ai_enable
            end
        )
        bindAction(
            self,
            "center.res.btn",
            "左键-点击",
            function()
                debugController.res_status:execute()
            end
        )
        bindAction(
            self,
            "center.ai.1V1",
            "左键-点击",
            function()
                debugController.ai_status:execute("1v1")
            end
        )
        bindAction(
            self,
            "center.ai.1V2",
            "左键-点击",
            function()
                debugController.ai_status:execute("1v2")
            end
        )
        bindAction(
            self,
            "center.ai.1V3",
            "左键-点击",
            function()
                debugController.ai_status:execute("1v3")
            end
        )
        bindAction(
            self,
            "center.ai.2V2",
            "左键-点击",
            function()
                debugController.ai_status:execute("2v2")
            end
        )
        bindAction(
            self,
            "center.ai.2V3",
            "左键-点击",
            function()
                debugController.ai_status:execute("2v3")
            end
        )
        bindAction(
            self,
            "center.ai.3V3",
            "左键-点击",
            function()
                debugController.ai_status:execute("3v3")
            end
        )
        bindAction(
            self,
            "center.ai.2V1",
            "左键-点击",
            function()
                debugController.ai_status:execute("2v1")
            end
        )
        bindAction(
            self,
            "center.ai.3V1",
            "左键-点击",
            function()
                debugController.ai_status:execute("3v1")
            end
        )
        bindAction(
            self,
            "center.ai.3V2",
            "左键-点击",
            function()
                debugController.ai_status:execute("3v2")
            end
        )
        bindAction(
            self,
            "center.hero.btn",
            "左键-点击",
            function()
                debugController.control_hero_status:execute()
            end
        )
        bindAction(
            self,
            "center.kof.btn",
            "左键-点击",
            function()
                debugController.kof_status:execute()
            end
        )
        bindAction(
            self,
            "center.btn",
            "左键-点击",
            function()
                self:hide()
            end
        )
        bindAction(
            self,
            "bg",
            "左键-点击",
            function()
            end
        )
    end)
end
return ____exports
