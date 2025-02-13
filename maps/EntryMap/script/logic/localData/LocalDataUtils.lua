local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 6,["14"] = 6,["15"] = 6,["17"] = 83,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 8,["23"] = 9,["26"] = 12,["27"] = 13,["28"] = 14,["29"] = 15,["30"] = 17,["31"] = 8,["32"] = 20,["33"] = 20,["34"] = 20,["36"] = 21,["39"] = 24,["40"] = 25,["41"] = 26,["42"] = 27,["43"] = 29,["44"] = 20,["45"] = 31,["46"] = 31,["47"] = 31,["49"] = 32,["52"] = 35,["53"] = 36,["54"] = 37,["55"] = 38,["56"] = 40,["57"] = 31,["58"] = 43,["59"] = 43,["60"] = 43,["62"] = 44,["65"] = 47,["66"] = 48,["67"] = 49,["68"] = 50,["69"] = 52,["70"] = 43,["71"] = 56,["72"] = 57,["73"] = 58,["75"] = 60,["76"] = 56,["77"] = 63,["78"] = 64,["79"] = 65,["81"] = 67,["82"] = 63,["83"] = 70,["84"] = 71,["85"] = 72,["87"] = 74,["88"] = 70,["89"] = 76,["90"] = 77,["91"] = 78,["93"] = 80,["94"] = 76,["95"] = 84,["96"] = 85,["97"] = 86,["98"] = 87,["99"] = 88,["100"] = 86,["102"] = 84,["103"] = 93,["104"] = 94,["105"] = 95,["107"] = 93,["108"] = 99,["109"] = 100,["110"] = 101,["111"] = 102,["112"] = 103,["113"] = 105,["114"] = 99,["115"] = 108,["116"] = 108,["117"] = 111,["118"] = 112,["119"] = 113,["120"] = 114,["121"] = 114,["122"] = 114,["123"] = 114,["124"] = 114,["125"] = 114,["126"] = 114,["127"] = 114,["129"] = 116,["130"] = 117,["131"] = 117,["132"] = 117,["133"] = 117,["134"] = 117,["135"] = 117,["136"] = 117,["137"] = 117,["139"] = 111,["140"] = 122});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____LocalData = include("logic.localData.LocalData")
local localData = ____LocalData.localData
____exports.LocalDataUtils = __TS__Class()
local LocalDataUtils = ____exports.LocalDataUtils
LocalDataUtils.name = "LocalDataUtils"
function LocalDataUtils.prototype.____constructor(self)
    self.eventId = -1
end
function LocalDataUtils.prototype.showTalent(self, force)
    if force == nil then
        force = false
    end
    if LOCAL.IS_OBSERVER then
        return
    end
    localData.main.showBless = false
    localData.main.showCard = false
    localData.main.showMercenary = false
    localData.main.showTalent = force or not localData.main.showTalent
    self:addESC()
end
function LocalDataUtils.prototype.showMercenary(self, force)
    if force == nil then
        force = false
    end
    if LOCAL.IS_OBSERVER then
        return
    end
    localData.main.showBless = false
    localData.main.showCard = false
    localData.main.showMercenary = force or not localData.main.showMercenary
    localData.main.showTalent = false
    self:addESC()
end
function LocalDataUtils.prototype.showCard(self, force)
    if force == nil then
        force = false
    end
    if LOCAL.IS_OBSERVER then
        return
    end
    localData.main.showBless = false
    localData.main.showCard = force or not localData.main.showCard
    localData.main.showMercenary = false
    localData.main.showTalent = false
    self:addESC()
end
function LocalDataUtils.prototype.showBless(self, force)
    if force == nil then
        force = false
    end
    if LOCAL.IS_OBSERVER then
        return
    end
    localData.main.showBless = force or not localData.main.showBless
    localData.main.showCard = false
    localData.main.showMercenary = false
    localData.main.showTalent = false
    self:addESC()
end
function LocalDataUtils.prototype.hideBless(self)
    if localData.main.showBless then
        self:removeESC()
    end
    localData.main.showBless = false
end
function LocalDataUtils.prototype.hideTalent(self)
    if localData.main.showTalent then
        self:removeESC()
    end
    localData.main.showTalent = false
end
function LocalDataUtils.prototype.hideMercenary(self)
    if localData.main.showMercenary then
        self:removeESC()
    end
    localData.main.showMercenary = false
end
function LocalDataUtils.prototype.hideCard(self)
    if localData.main.showCard then
        self:removeESC()
    end
    localData.main.showCard = false
end
function LocalDataUtils.prototype.addESC(self)
    if localData.main.showBless or localData.main.showCard or localData.main.showMercenary or localData.main.showTalent then
        self.eventId = escManager:addEvent(function()
            self.eventId = -1
            self:hideAll()
        end)
    end
end
function LocalDataUtils.prototype.removeESC(self)
    if self.eventId > 0 then
        escManager:removeEvent(self.eventId)
    end
end
function LocalDataUtils.prototype.hideAll(self)
    localData.main.showBless = false
    localData.main.showCard = false
    localData.main.showMercenary = false
    localData.main.showTalent = false
    self:removeESC()
end
function LocalDataUtils.prototype.cardAnimation(self, cur)
end
function LocalDataUtils.prototype.blessAnimation(self, cur)
    if cur then
        GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "0bfeb6cf-9368-46d0-8f3b-5880e723e589")
        GameAPI.play_ui_comp_anim_new(
            LOCAL.PLAYER.handle,
            "7844321b-4402-49d0-b88a-f98cb8603fdd",
            nil,
            nil,
            1,
            3
        )
    else
        GameAPI.stop_ui_comp_anim(LOCAL.PLAYER.handle, "7844321b-4402-49d0-b88a-f98cb8603fdd")
        GameAPI.play_ui_comp_anim_new(
            LOCAL.PLAYER.handle,
            "0bfeb6cf-9368-46d0-8f3b-5880e723e589",
            nil,
            nil,
            1,
            0
        )
    end
end
____exports.localDataUtils = __TS__New(____exports.LocalDataUtils)
return ____exports
