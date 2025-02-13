local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["26"] = 8,["27"] = 9,["28"] = 24,["29"] = 29,["30"] = 30,["31"] = 8,["32"] = 25,["33"] = 26,["34"] = 25,["35"] = 31,["36"] = 32,["37"] = 32,["38"] = 32,["39"] = 33,["40"] = 33,["42"] = 34,["43"] = 35,["44"] = 32,["45"] = 32,["46"] = 37,["47"] = 37,["48"] = 37,["49"] = 38,["50"] = 38,["52"] = 39,["53"] = 40,["54"] = 37,["55"] = 37,["56"] = 43,["57"] = 43,["58"] = 43,["59"] = 44,["60"] = 43,["61"] = 43,["62"] = 46,["63"] = 46,["64"] = 46,["65"] = 47,["66"] = 46,["67"] = 46,["68"] = 50,["69"] = 50,["70"] = 50,["71"] = 51,["72"] = 52,["73"] = 50,["74"] = 50,["75"] = 54,["76"] = 54,["77"] = 54,["78"] = 55,["79"] = 56,["80"] = 54,["81"] = 54,["82"] = 58,["83"] = 58,["84"] = 58,["85"] = 59,["86"] = 60,["87"] = 58,["88"] = 58,["89"] = 63,["90"] = 63,["91"] = 63,["92"] = 64,["93"] = 65,["94"] = 63,["95"] = 63,["96"] = 67,["97"] = 67,["98"] = 67,["99"] = 68,["100"] = 69,["101"] = 67,["102"] = 67,["103"] = 72,["104"] = 72,["105"] = 72,["106"] = 73,["107"] = 74,["108"] = 72,["109"] = 72,["110"] = 76,["111"] = 76,["112"] = 76,["113"] = 77,["114"] = 78,["115"] = 79,["117"] = 80,["118"] = 76,["119"] = 76,["120"] = 82,["121"] = 82,["122"] = 82,["123"] = 83,["124"] = 84,["125"] = 85,["127"] = 86,["128"] = 82,["129"] = 82,["130"] = 118,["131"] = 118,["132"] = 118,["133"] = 119,["134"] = 120,["135"] = 118,["136"] = 118,["137"] = 122,["138"] = 122,["139"] = 122,["140"] = 123,["141"] = 124,["142"] = 122,["143"] = 122,["144"] = 127,["145"] = 127,["146"] = 127,["147"] = 128,["148"] = 129,["149"] = 127,["150"] = 127,["151"] = 131,["152"] = 131,["153"] = 131,["154"] = 132,["155"] = 133,["156"] = 131,["157"] = 131,["158"] = 135,["159"] = 135,["160"] = 135,["161"] = 136,["162"] = 137,["163"] = 135,["164"] = 135,["165"] = 139,["166"] = 139,["167"] = 139,["168"] = 140,["169"] = 141,["170"] = 139,["171"] = 139,["172"] = 143,["173"] = 143,["174"] = 143,["175"] = 144,["176"] = 145,["177"] = 143,["178"] = 143,["179"] = 147,["180"] = 147,["181"] = 147,["182"] = 148,["183"] = 149,["184"] = 147,["185"] = 147,["186"] = 152,["187"] = 152,["188"] = 152,["189"] = 153,["190"] = 154,["191"] = 152,["192"] = 152,["193"] = 156,["194"] = 156,["195"] = 156,["196"] = 157,["197"] = 158,["198"] = 156,["199"] = 156,["200"] = 160,["201"] = 160,["202"] = 160,["203"] = 161,["204"] = 162,["205"] = 160,["206"] = 160,["207"] = 196,["208"] = 196,["209"] = 196,["210"] = 197,["211"] = 198,["212"] = 196,["213"] = 196,["214"] = 200,["215"] = 200,["216"] = 200,["217"] = 201,["218"] = 202,["219"] = 200,["220"] = 200,["221"] = 204,["222"] = 204,["223"] = 204,["224"] = 205,["225"] = 206,["226"] = 207,["228"] = 208,["229"] = 204,["230"] = 204,["231"] = 210,["232"] = 210,["233"] = 210,["234"] = 211,["235"] = 212,["236"] = 213,["238"] = 214,["239"] = 210,["240"] = 210,["241"] = 216,["242"] = 216,["243"] = 216,["244"] = 217,["245"] = 218,["246"] = 219,["248"] = 220,["249"] = 216,["250"] = 216,["251"] = 223,["252"] = 223,["253"] = 223,["254"] = 224,["255"] = 223,["256"] = 223,["257"] = 31,["258"] = 228,["259"] = 229,["260"] = 230,["261"] = 228,["262"] = 241,["263"] = 241,["264"] = 252,["265"] = 253,["266"] = 254,["268"] = 256,["269"] = 257,["271"] = 259,["272"] = 260,["274"] = 262,["275"] = 263,["277"] = 265,["278"] = 266,["280"] = 268,["281"] = 269,["283"] = 271,["284"] = 252});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____Keyboard = include("framework.ui.Keyboard")
local keyboard = ____Keyboard.keyboard
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local ____Property = include("logic.models.Property")
local _____653B_51FB = ____Property["攻击"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____8840 = ____Property["血"]
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DInfoMonster = __TS__Class()
local DInfoMonster = ____exports.DInfoMonster
DInfoMonster.name = "DInfoMonster"
__TS__ClassExtends(DInfoMonster, Dialog)
function DInfoMonster.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {showDetail = false}
    self.isHover = true
    self.trigger1 = nil
    self.trigger2 = nil
end
function DInfoMonster.prototype.onCreate(self)
    self:initView()
end
function DInfoMonster.prototype.initView(self)
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
    self:bindPos(
        "detail",
        function()
            if self.data.params == nil then
                return {x = 0, y = 0}
            end
            local x = self.data.params.x + self:getUI("center"):get_width() / 2 * y3.ui.get_window_width() / y3.ui.get_screen_width()
            return {x = x, y = self.data.params.y}
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
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.showName.value
        end
    )
    self:bindImage(
        "center.top.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.icon
        end
    )
    self:bindText(
        "center.top.des",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.des.value
        end
    )
    self:bindImage(
        "center.skills.skill_1.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].icon
        end
    )
    self:bindText(
        "center.skills.skill_1.name",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.showSkill[1].showName.value
        end
    )
    self:bindVisible(
        "center.skills.skill_2",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return #cfg.showSkill > 1
        end
    )
    self:bindImage(
        "center.skills.skill_2.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].icon
            end
            return 0
        end
    )
    self:bindText(
        "center.skills.skill_2.name",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            if #cfg.showSkill > 1 then
                return cfg.showSkill[2].showName.value
            end
            return ""
        end
    )
    self:bindText(
        "detail.top.name",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.showName.value
        end
    )
    self:bindImage(
        "detail.top.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.icon
        end
    )
    self:bindText(
        "detail.top.attr.attr1.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, self.data.params.level, _____653B_51FB))
        end
    )
    self:bindText(
        "detail.top.attr.attr2.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, self.data.params.level, _____6CD5_672F_653B_51FB))
        end
    )
    self:bindText(
        "detail.top.attr.attr3.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, self.data.params.level, _____7269_7406_9632_5FA1))
        end
    )
    self:bindText(
        "detail.top.attr.attr4.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, self.data.params.level, _____6CD5_672F_9632_5FA1))
        end
    )
    self:bindText(
        "detail.top.attr.attr5.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(self:getProperty(cfg.property, self.data.params.level, _____8840))
        end
    )
    self:bindText(
        "detail.top.attr.attr6.value",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return tostring(cfg.atkDistance)
        end
    )
    self:bindImage(
        "detail.skills.skill_1.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.skill[1].icon
        end
    )
    self:bindText(
        "detail.skills.skill_1.name",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return cfg.skill[1].showName.value
        end
    )
    self:bindText(
        "detail.skills.des_1.des",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return RichTextUtils:replaceSkill(cfg.skill[1].des.value, "#9bc8ef")
        end
    )
    self:bindVisible(
        "detail.skills.skill_2",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return #cfg.skill > 1
        end
    )
    self:bindVisible(
        "detail.skills.des_2",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            return #cfg.skill > 1
        end
    )
    self:bindImage(
        "detail.skills.skill_2.icon",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            if #cfg.skill > 1 then
                return cfg.skill[2].icon
            end
            return 0
        end
    )
    self:bindText(
        "detail.skills.skill_2.name",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            if #cfg.skill > 1 then
                return cfg.skill[2].showName.value
            end
            return ""
        end
    )
    self:bindText(
        "detail.skills.des_2.des",
        function()
            local cfg = monsterConfigMap[self.data.params.cfgId]
            if #cfg.skill > 1 then
                return RichTextUtils:replaceSkill(cfg.skill[2].des.value, "#9bc8ef")
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
function DInfoMonster.prototype.onShow(self)
    console:log(y3.ui.get_screen_width() / y3.ui.get_window_width())
    console:log(y3.ui.get_window_width() / y3.ui.get_screen_width())
end
function DInfoMonster.prototype.onHide(self)
end
function DInfoMonster.prototype.getProperty(self, cfg, level, key)
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
        return 600
    end
    return 0
end
return ____exports
