local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["34"] = 12,["35"] = 13,["36"] = 26,["37"] = 32,["38"] = 33,["39"] = 12,["40"] = 28,["41"] = 29,["42"] = 28,["43"] = 34,["44"] = 35,["45"] = 35,["46"] = 35,["47"] = 36,["48"] = 36,["50"] = 37,["51"] = 35,["52"] = 35,["53"] = 39,["54"] = 39,["55"] = 39,["56"] = 40,["57"] = 40,["59"] = 41,["60"] = 39,["61"] = 39,["62"] = 44,["63"] = 44,["64"] = 44,["65"] = 45,["66"] = 44,["67"] = 44,["68"] = 47,["69"] = 47,["70"] = 47,["71"] = 48,["72"] = 47,["73"] = 47,["74"] = 51,["75"] = 51,["76"] = 51,["77"] = 52,["78"] = 53,["79"] = 51,["80"] = 51,["81"] = 55,["82"] = 55,["83"] = 55,["84"] = 56,["85"] = 57,["86"] = 55,["87"] = 55,["88"] = 59,["89"] = 59,["90"] = 59,["91"] = 60,["92"] = 61,["93"] = 62,["94"] = 59,["95"] = 59,["96"] = 65,["97"] = 65,["98"] = 65,["99"] = 66,["100"] = 67,["101"] = 65,["102"] = 65,["103"] = 69,["104"] = 69,["105"] = 69,["106"] = 70,["107"] = 71,["108"] = 69,["109"] = 69,["110"] = 73,["111"] = 73,["112"] = 73,["113"] = 74,["114"] = 75,["115"] = 75,["117"] = 76,["118"] = 76,["120"] = 77,["121"] = 77,["123"] = 78,["124"] = 78,["126"] = 79,["127"] = 79,["129"] = 80,["130"] = 73,["131"] = 73,["132"] = 82,["133"] = 82,["134"] = 82,["135"] = 83,["136"] = 84,["137"] = 82,["138"] = 82,["139"] = 86,["140"] = 86,["141"] = 86,["142"] = 87,["143"] = 88,["144"] = 86,["145"] = 86,["146"] = 90,["147"] = 90,["148"] = 90,["149"] = 91,["150"] = 92,["151"] = 90,["152"] = 90,["153"] = 94,["154"] = 94,["155"] = 94,["156"] = 95,["157"] = 96,["158"] = 94,["159"] = 94,["160"] = 98,["161"] = 98,["162"] = 98,["163"] = 99,["164"] = 100,["165"] = 98,["166"] = 98,["167"] = 103,["168"] = 103,["169"] = 103,["170"] = 104,["171"] = 105,["172"] = 103,["173"] = 103,["174"] = 107,["175"] = 107,["176"] = 107,["177"] = 108,["178"] = 109,["179"] = 110,["181"] = 111,["182"] = 107,["183"] = 107,["184"] = 113,["185"] = 113,["186"] = 113,["187"] = 114,["188"] = 115,["189"] = 116,["191"] = 117,["192"] = 113,["193"] = 113,["194"] = 121,["195"] = 121,["196"] = 121,["197"] = 122,["198"] = 123,["199"] = 121,["200"] = 121,["201"] = 125,["202"] = 125,["203"] = 125,["204"] = 126,["205"] = 127,["206"] = 128,["207"] = 125,["208"] = 125,["209"] = 131,["210"] = 131,["211"] = 131,["212"] = 132,["213"] = 133,["214"] = 131,["215"] = 131,["216"] = 135,["217"] = 135,["218"] = 135,["219"] = 136,["220"] = 137,["221"] = 135,["222"] = 135,["223"] = 139,["224"] = 139,["225"] = 139,["226"] = 140,["227"] = 141,["228"] = 139,["229"] = 139,["230"] = 143,["231"] = 143,["232"] = 143,["233"] = 144,["234"] = 145,["235"] = 143,["236"] = 143,["237"] = 147,["238"] = 147,["239"] = 147,["240"] = 148,["241"] = 149,["242"] = 147,["243"] = 147,["244"] = 151,["245"] = 151,["246"] = 151,["247"] = 152,["248"] = 153,["249"] = 151,["250"] = 151,["251"] = 156,["252"] = 156,["253"] = 156,["254"] = 157,["255"] = 158,["256"] = 158,["258"] = 159,["259"] = 159,["261"] = 160,["262"] = 160,["264"] = 161,["265"] = 161,["267"] = 162,["268"] = 162,["270"] = 163,["271"] = 156,["272"] = 156,["273"] = 165,["274"] = 165,["275"] = 165,["276"] = 166,["277"] = 167,["278"] = 165,["279"] = 165,["280"] = 169,["281"] = 169,["282"] = 169,["283"] = 170,["284"] = 171,["285"] = 169,["286"] = 169,["287"] = 173,["288"] = 173,["289"] = 173,["290"] = 174,["291"] = 175,["292"] = 173,["293"] = 173,["294"] = 177,["295"] = 177,["296"] = 177,["297"] = 178,["298"] = 179,["299"] = 177,["300"] = 177,["301"] = 181,["302"] = 181,["303"] = 181,["304"] = 182,["305"] = 183,["306"] = 181,["307"] = 181,["308"] = 186,["309"] = 186,["310"] = 186,["311"] = 187,["312"] = 188,["313"] = 186,["314"] = 186,["315"] = 190,["316"] = 190,["317"] = 190,["318"] = 191,["319"] = 192,["320"] = 190,["321"] = 190,["322"] = 194,["323"] = 194,["324"] = 194,["325"] = 195,["326"] = 196,["327"] = 194,["328"] = 194,["329"] = 199,["330"] = 199,["331"] = 199,["332"] = 200,["333"] = 201,["334"] = 199,["335"] = 199,["336"] = 203,["337"] = 203,["338"] = 203,["339"] = 204,["340"] = 205,["341"] = 203,["342"] = 203,["343"] = 207,["344"] = 207,["345"] = 207,["346"] = 208,["347"] = 209,["348"] = 210,["350"] = 211,["351"] = 207,["352"] = 207,["353"] = 213,["354"] = 213,["355"] = 213,["356"] = 214,["357"] = 215,["358"] = 216,["360"] = 217,["361"] = 213,["362"] = 213,["363"] = 219,["364"] = 219,["365"] = 219,["366"] = 220,["367"] = 221,["368"] = 222,["370"] = 223,["371"] = 219,["372"] = 219,["373"] = 226,["374"] = 226,["375"] = 226,["376"] = 227,["377"] = 226,["378"] = 226,["379"] = 34,["380"] = 231,["381"] = 231,["382"] = 242,["383"] = 242,["384"] = 253,["385"] = 254,["386"] = 255,["388"] = 257,["389"] = 258,["391"] = 260,["392"] = 261,["394"] = 263,["395"] = 264,["397"] = 266,["398"] = 267,["400"] = 269,["401"] = 270,["403"] = 272,["404"] = 253});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____Keyboard = include("framework.ui.Keyboard")
local keyboard = ____Keyboard.keyboard
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____Property = include("logic.models.Property")
local _____653B_51FB = ____Property["攻击"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____8840 = ____Property["血"]
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DInfoMercenary = __TS__Class()
local DInfoMercenary = ____exports.DInfoMercenary
DInfoMercenary.name = "DInfoMercenary"
__TS__ClassExtends(DInfoMercenary, Dialog)
function DInfoMercenary.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {showDetail = false}
    self.isHover = true
    self.trigger1 = nil
    self.trigger2 = nil
end
function DInfoMercenary.prototype.onCreate(self)
    self:initView()
end
function DInfoMercenary.prototype.initView(self)
    self:bindPos(
        "center",
        function()
            if self.data.params == nil then
                return {x = 0, y = 0}
            end
            return {x = self.data.params.x, y = self.data.params.y}
        end
    )
    self:bindPos(
        "detail",
        function()
            if self.data.params == nil then
                return {x = 0, y = 0}
            end
            return {x = self.data.params.x, y = self.data.params.y}
        end
    )
    self:bindVisible(
        "center",
        function()
            return not self.data.showDetail
        end
    )
    self:bindVisible(
        "detail",
        function()
            return self.data.showDetail
        end
    )
    self:bindText(
        "center.top.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(cfg.showName)
        end
    )
    self:bindText(
        "center.top.des",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.des.value
        end
    )
    self:bindText(
        "center.top.wood.cost",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return "-" .. tostring(math.floor(cfg.price * (1 + playerData.mercenaryDiscard) + playerData.mercenaryDiscardValue + 0.5))
        end
    )
    self:bindImage(
        "center.skills.skill_1.icon",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].icon
        end
    )
    self:bindText(
        "center.skills.skill_1.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].showName.value
        end
    )
    self:bindText(
        "center.top.typeList.type",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if cfg.label == 1 then
                return i18n["local"](i18n, "肉盾")
            end
            if cfg.label == 2 then
                return i18n["local"](i18n, "战士")
            end
            if cfg.label == 3 then
                return i18n["local"](i18n, "法术")
            end
            if cfg.label == 4 then
                return i18n["local"](i18n, "辅助")
            end
            if cfg.label == 5 then
                return i18n["local"](i18n, "射手")
            end
            return i18n["local"](i18n, "辅助")
        end
    )
    self:bindVisible(
        "center.top.typeList.icon.label1",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 1
        end
    )
    self:bindVisible(
        "center.top.typeList.icon.label2",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 2
        end
    )
    self:bindVisible(
        "center.top.typeList.icon.label3",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 3
        end
    )
    self:bindVisible(
        "center.top.typeList.icon.label4",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 4
        end
    )
    self:bindVisible(
        "center.top.typeList.icon.label5",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 5
        end
    )
    self:bindVisible(
        "center.skills.skill_2",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return #cfg.showSkill > 1
        end
    )
    self:bindImage(
        "center.skills.skill_2.icon",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].icon
            end
            return 0
        end
    )
    self:bindText(
        "center.skills.skill_2.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].showName.value
            end
            return ""
        end
    )
    self:bindText(
        "detail.top.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(cfg.showName)
        end
    )
    self:bindText(
        "detail.top.wood.cost",
        function()
            local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return "-" .. tostring(math.floor(cfg.price * (1 + playerData.mercenaryDiscard) + playerData.mercenaryDiscardValue + 0.5))
        end
    )
    self:bindText(
        "detail.top.attr.attr1.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, cfg.level, _____653B_51FB))
        end
    )
    self:bindText(
        "detail.top.attr.attr2.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, cfg.level, _____6CD5_672F_653B_51FB))
        end
    )
    self:bindText(
        "detail.top.attr.attr3.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, cfg.level, _____7269_7406_9632_5FA1))
        end
    )
    self:bindText(
        "detail.top.attr.attr4.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, cfg.level, _____6CD5_672F_9632_5FA1))
        end
    )
    self:bindText(
        "detail.top.attr.attr5.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, cfg.level, _____8840))
        end
    )
    self:bindText(
        "detail.top.attr.attr6.value",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return tostring(cfg.atkDistance)
        end
    )
    self:bindText(
        "detail.top.typeList.type",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if cfg.label == 1 then
                return i18n["local"](i18n, "肉盾")
            end
            if cfg.label == 2 then
                return i18n["local"](i18n, "战士")
            end
            if cfg.label == 3 then
                return i18n["local"](i18n, "法术")
            end
            if cfg.label == 4 then
                return i18n["local"](i18n, "辅助")
            end
            if cfg.label == 5 then
                return i18n["local"](i18n, "射手")
            end
            return i18n["local"](i18n, "辅助")
        end
    )
    self:bindVisible(
        "detail.top.typeList.icon.label1",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 1
        end
    )
    self:bindVisible(
        "detail.top.typeList.icon.label2",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 2
        end
    )
    self:bindVisible(
        "detail.top.typeList.icon.label3",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 3
        end
    )
    self:bindVisible(
        "detail.top.typeList.icon.label4",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 4
        end
    )
    self:bindVisible(
        "detail.top.typeList.icon.label5",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.label == 5
        end
    )
    self:bindImage(
        "detail.skills.skill_1.icon",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].icon
        end
    )
    self:bindText(
        "detail.skills.skill_1.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].showName.value
        end
    )
    self:bindText(
        "detail.skills.des_1.des",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return RichTextUtils:replaceSkill(cfg.showSkill[1].des.value, "#9bc8ef")
        end
    )
    self:bindVisible(
        "detail.skills.skill_2",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return #cfg.showSkill > 1
        end
    )
    self:bindVisible(
        "detail.skills.des_2",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            return #cfg.showSkill > 1
        end
    )
    self:bindImage(
        "detail.skills.skill_2.icon",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].icon
            end
            return 0
        end
    )
    self:bindText(
        "detail.skills.skill_2.name",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].showName.value
            end
            return ""
        end
    )
    self:bindText(
        "detail.skills.des_2.des",
        function()
            local cfg = mercenaryConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return RichTextUtils:replaceSkill(cfg.showSkill[2].des.value, "#9bc8ef")
            end
            return ""
        end
    )
    self:watch(
        function() return keyboard.LCTRL end,
        function(____, v)
            self.data.showDetail = v
        end
    )
end
function DInfoMercenary.prototype.onShow(self)
end
function DInfoMercenary.prototype.onHide(self)
end
function DInfoMercenary.prototype.getProperty(self, cfg, level, key)
    if key == _____653B_51FB then
        return math.floor(cfg.attack + cfg.attackDevelop * (level - 1) + 0.5)
    end
    if key == _____6CD5_672F_653B_51FB then
        return math.floor(cfg.apAttack + cfg.apAttackDevelop * (level - 1) + 0.5)
    end
    if key == _____7269_7406_9632_5FA1 then
        return math.floor(cfg.def + cfg.defDevelop * (level - 1) + 0.5)
    end
    if key == _____6CD5_672F_9632_5FA1 then
        return math.floor(cfg.apDef + cfg.apDefDevelop * (level - 1) + 0.5)
    end
    if key == _____8840 then
        return math.floor(cfg.hp + cfg.hpDevelop * (level - 1) + 0.5)
    end
    if key == -1 then
        return 1200
    end
    return 0
end
return ____exports
