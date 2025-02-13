local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["22"] = 7,["23"] = 8,["24"] = 21,["25"] = 7,["26"] = 23,["27"] = 24,["28"] = 23,["29"] = 26,["30"] = 27,["31"] = 27,["32"] = 27,["33"] = 28,["34"] = 28,["36"] = 29,["37"] = 30,["38"] = 27,["39"] = 27,["40"] = 33,["41"] = 33,["42"] = 33,["43"] = 34,["44"] = 35,["45"] = 33,["46"] = 33,["47"] = 37,["48"] = 37,["49"] = 37,["50"] = 38,["51"] = 37,["52"] = 37,["53"] = 41,["54"] = 41,["55"] = 41,["56"] = 42,["57"] = 43,["58"] = 41,["59"] = 41,["60"] = 45,["61"] = 45,["62"] = 45,["63"] = 46,["64"] = 47,["65"] = 45,["66"] = 45,["67"] = 49,["68"] = 49,["69"] = 49,["70"] = 50,["71"] = 51,["72"] = 49,["73"] = 49,["74"] = 54,["75"] = 54,["76"] = 54,["77"] = 55,["78"] = 56,["79"] = 54,["80"] = 54,["81"] = 58,["82"] = 58,["83"] = 58,["84"] = 59,["85"] = 60,["86"] = 58,["87"] = 58,["88"] = 62,["89"] = 62,["90"] = 62,["91"] = 63,["92"] = 64,["93"] = 62,["94"] = 62,["95"] = 67,["96"] = 67,["97"] = 67,["98"] = 68,["99"] = 69,["100"] = 67,["101"] = 67,["102"] = 71,["103"] = 71,["104"] = 71,["105"] = 72,["106"] = 73,["107"] = 71,["108"] = 71,["109"] = 75,["110"] = 75,["111"] = 75,["112"] = 76,["113"] = 77,["114"] = 75,["115"] = 75,["116"] = 26,["117"] = 81,["118"] = 81,["119"] = 85,["120"] = 85});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____HeroSkinManager = include("logic.archive.manager.HeroSkinManager")
local heroSkinManager = ____HeroSkinManager.heroSkinManager
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DInfoImage = __TS__Class()
local DInfoImage = ____exports.DInfoImage
DInfoImage.name = "DInfoImage"
__TS__ClassExtends(DInfoImage, Dialog)
function DInfoImage.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {showcenter = false}
    self.isHover = true
end
function DInfoImage.prototype.onCreate(self)
    self:initView()
end
function DInfoImage.prototype.initView(self)
    self:bindPos(
        "center",
        function()
            if self.data.params == nil then
                return {x = 0, y = 0}
            end
            local x = self.data.params.x + self:getUI("center"):get_width() / 2 * y3.ui.get_window_width() / y3.ui.get_screen_width()
            return {x = x, y = self.data.params.y}
        end
    )
    self:bindText(
        "center.top.name",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.showName.value
        end
    )
    self:bindImage(
        "center.top.icon",
        function()
            return heroSkinManager:getHeroIcon2(self.data.params.imagePlayerId)
        end
    )
    self:bindImage(
        "center.skills.skill_1.icon",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[1].icon
        end
    )
    self:bindText(
        "center.skills.skill_1.name",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[1].showName.value
        end
    )
    self:bindText(
        "center.skills.des_1.des",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return RichTextUtils:replaceSkill(playerData.hero.skill[1].des.value, "#9bc8ef")
        end
    )
    self:bindImage(
        "center.skills.skill_2.icon",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[2].icon
        end
    )
    self:bindText(
        "center.skills.skill_2.name",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[2].showName.value
        end
    )
    self:bindText(
        "center.skills.des_2.des",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return RichTextUtils:replaceSkill(playerData.hero.skill[2].des.value, "#9bc8ef")
        end
    )
    self:bindImage(
        "center.skills.skill_3.icon",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[3].icon
        end
    )
    self:bindText(
        "center.skills.skill_3.name",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return playerData.hero.skill[3].showName.value
        end
    )
    self:bindText(
        "center.skills.des_3.des",
        function()
            local playerData = datas.players[self.data.params.imagePlayerId]:getSingle(PlayerData)
            return RichTextUtils:replaceSkill(playerData.hero.skill[3].des.value, "#9bc8ef")
        end
    )
end
function DInfoImage.prototype.onShow(self)
end
function DInfoImage.prototype.onHide(self)
end
return ____exports
