local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 7,["27"] = 7,["28"] = 7,["29"] = 7,["30"] = 7,["31"] = 7,["32"] = 8,["33"] = 8,["34"] = 10,["35"] = 10,["36"] = 12,["37"] = 13,["38"] = 14,["39"] = 14,["40"] = 14,["41"] = 14,["42"] = 14,["44"] = 14,["45"] = 16,["46"] = 17,["47"] = 14,["48"] = 21,["49"] = 22,["50"] = 23,["51"] = 21,["52"] = 26,["53"] = 27,["54"] = 27,["55"] = 27,["56"] = 27,["57"] = 27,["58"] = 27,["59"] = 27,["60"] = 27,["61"] = 28,["62"] = 29,["64"] = 29,["65"] = 29,["68"] = 29,["72"] = 31,["73"] = 31,["74"] = 31,["75"] = 31,["76"] = 31,["77"] = 31,["78"] = 31,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 32,["83"] = 32,["84"] = 32,["85"] = 32,["86"] = 33,["87"] = 33,["88"] = 33,["89"] = 34,["90"] = 35,["91"] = 36,["93"] = 38,["94"] = 39,["97"] = 42,["98"] = 33,["99"] = 33,["100"] = 44,["101"] = 45,["103"] = 47,["104"] = 48,["105"] = 49,["106"] = 50,["107"] = 51,["108"] = 52,["110"] = 54,["112"] = 54,["114"] = 54,["115"] = 54,["118"] = 54,["120"] = 54,["121"] = 55,["123"] = 55,["124"] = 55,["127"] = 55,["128"] = 55,["131"] = 57,["134"] = 60,["135"] = 61,["136"] = 62,["137"] = 64,["138"] = 64,["139"] = 65,["140"] = 65,["141"] = 67,["142"] = 67,["143"] = 67,["144"] = 67,["145"] = 67,["146"] = 67,["147"] = 67,["148"] = 67,["149"] = 67,["150"] = 67,["151"] = 69,["152"] = 70,["153"] = 71,["154"] = 72,["155"] = 73,["156"] = 74,["157"] = 75,["158"] = 76,["159"] = 77,["160"] = 78,["161"] = 79,["164"] = 82,["165"] = 83,["166"] = 84,["167"] = 84,["168"] = 84,["169"] = 84,["170"] = 84,["171"] = 84,["172"] = 84,["173"] = 84,["174"] = 84,["175"] = 85,["176"] = 86,["177"] = 87,["178"] = 87,["179"] = 87,["180"] = 87,["181"] = 87,["182"] = 87,["183"] = 87,["184"] = 87,["185"] = 87,["186"] = 87,["187"] = 87,["188"] = 88,["189"] = 88,["190"] = 88,["191"] = 88,["192"] = 88,["193"] = 88,["194"] = 88,["195"] = 88,["196"] = 88,["197"] = 76,["198"] = 90,["199"] = 91,["200"] = 92,["201"] = 93,["202"] = 94,["203"] = 95,["204"] = 95,["205"] = 95,["206"] = 95,["207"] = 95,["208"] = 95,["209"] = 95,["210"] = 95,["211"] = 95,["212"] = 96,["213"] = 97,["214"] = 97,["215"] = 97,["216"] = 97,["217"] = 97,["218"] = 97,["219"] = 97,["220"] = 97,["221"] = 97,["222"] = 97,["223"] = 97,["224"] = 98,["225"] = 98,["226"] = 98,["227"] = 98,["228"] = 98,["229"] = 98,["230"] = 98,["231"] = 98,["232"] = 98,["233"] = 99,["235"] = 76,["236"] = 76,["237"] = 103,["238"] = 103,["239"] = 103,["240"] = 103,["241"] = 103,["242"] = 103,["243"] = 103,["244"] = 103,["245"] = 103,["246"] = 103,["247"] = 103,["248"] = 104,["249"] = 105,["250"] = 103,["251"] = 106,["252"] = 107,["253"] = 108,["254"] = 103,["255"] = 103,["256"] = 110,["257"] = 111,["258"] = 112,["259"] = 112,["260"] = 112,["261"] = 112,["263"] = 26,["264"] = 116,["265"] = 117,["266"] = 118,["267"] = 119,["269"] = 121,["271"] = 121,["273"] = 121,["274"] = 121,["277"] = 121,["279"] = 121,["280"] = 122,["282"] = 122,["283"] = 122,["286"] = 122,["287"] = 122,["290"] = 124,["291"] = 116,["292"] = 127,["294"] = 128,["295"] = 128,["296"] = 128,["297"] = 128,["299"] = 128,["300"] = 128,["301"] = 128,["303"] = 128,["305"] = 128,["307"] = 128,["308"] = 128,["309"] = 128,["310"] = 128,["311"] = 128,["312"] = 128,["313"] = 129,["314"] = 129,["315"] = 129,["316"] = 130,["317"] = 131,["318"] = 132,["320"] = 134,["321"] = 135,["324"] = 138,["325"] = 129,["326"] = 129,["327"] = 140,["328"] = 141,["329"] = 142,["332"] = 146,["333"] = 147,["335"] = 150,["336"] = 151,["337"] = 152,["338"] = 153,["339"] = 154,["340"] = 155,["341"] = 156,["342"] = 157,["343"] = 158,["344"] = 159,["345"] = 160,["348"] = 163,["349"] = 164,["350"] = 165,["351"] = 165,["352"] = 165,["353"] = 165,["354"] = 165,["355"] = 165,["356"] = 165,["357"] = 165,["358"] = 165,["359"] = 166,["360"] = 167,["361"] = 168,["362"] = 168,["363"] = 168,["364"] = 168,["365"] = 168,["366"] = 168,["367"] = 168,["368"] = 168,["369"] = 168,["370"] = 168,["371"] = 168,["372"] = 169,["373"] = 169,["374"] = 169,["375"] = 169,["376"] = 169,["377"] = 169,["378"] = 169,["379"] = 169,["380"] = 169,["381"] = 157,["382"] = 171,["383"] = 172,["384"] = 173,["385"] = 174,["386"] = 175,["387"] = 176,["388"] = 176,["389"] = 176,["390"] = 176,["391"] = 176,["392"] = 176,["393"] = 176,["394"] = 176,["395"] = 176,["396"] = 177,["397"] = 178,["398"] = 178,["399"] = 178,["400"] = 178,["401"] = 178,["402"] = 178,["403"] = 178,["404"] = 178,["405"] = 178,["406"] = 178,["407"] = 178,["408"] = 179,["409"] = 179,["410"] = 179,["411"] = 179,["412"] = 179,["413"] = 179,["414"] = 179,["415"] = 179,["416"] = 179,["417"] = 180,["419"] = 157,["420"] = 157,["421"] = 184,["422"] = 184,["423"] = 184,["424"] = 184,["425"] = 184,["426"] = 184,["427"] = 184,["428"] = 184,["429"] = 184,["430"] = 184,["431"] = 184,["432"] = 185,["433"] = 186,["434"] = 187,["435"] = 188,["437"] = 190,["439"] = 184,["440"] = 192,["441"] = 193,["442"] = 194,["443"] = 195,["444"] = 196,["446"] = 198,["448"] = 184,["449"] = 184,["450"] = 201,["451"] = 202,["452"] = 203,["453"] = 203,["454"] = 203,["455"] = 203,["458"] = 127,["459"] = 207,["461"] = 208,["462"] = 208,["463"] = 208,["464"] = 208,["465"] = 209,["466"] = 209,["467"] = 209,["468"] = 209,["469"] = 211,["470"] = 212,["471"] = 213,["472"] = 214,["473"] = 215,["474"] = 216,["475"] = 217,["476"] = 218,["477"] = 216,["478"] = 220,["479"] = 221,["480"] = 222,["481"] = 223,["482"] = 224,["483"] = 225,["484"] = 225,["485"] = 225,["486"] = 225,["487"] = 225,["488"] = 225,["489"] = 225,["490"] = 225,["491"] = 225,["492"] = 226,["493"] = 227,["494"] = 227,["495"] = 227,["496"] = 227,["497"] = 227,["498"] = 227,["499"] = 227,["500"] = 227,["501"] = 227,["502"] = 227,["503"] = 227,["504"] = 228,["505"] = 228,["506"] = 228,["507"] = 228,["508"] = 228,["509"] = 228,["510"] = 228,["511"] = 228,["512"] = 228,["513"] = 229,["515"] = 216,["516"] = 216,["517"] = 233,["518"] = 233,["519"] = 233,["520"] = 233,["521"] = 233,["522"] = 233,["523"] = 233,["524"] = 233,["525"] = 233,["526"] = 233,["527"] = 233,["528"] = 234,["529"] = 234,["530"] = 234,["531"] = 234,["532"] = 234,["533"] = 234,["534"] = 234,["535"] = 234,["536"] = 235,["537"] = 243,["538"] = 244,["540"] = 246,["542"] = 246,["544"] = 246,["545"] = 246,["548"] = 246,["550"] = 246,["551"] = 247,["553"] = 247,["554"] = 247,["557"] = 247,["558"] = 247,["561"] = 249,["562"] = 250,["563"] = 233,["564"] = 251,["565"] = 252,["566"] = 252,["567"] = 252,["568"] = 252,["569"] = 252,["570"] = 252,["571"] = 252,["572"] = 252,["573"] = 253,["574"] = 254,["575"] = 255,["577"] = 257,["579"] = 257,["581"] = 257,["582"] = 257,["585"] = 257,["587"] = 257,["588"] = 258,["590"] = 258,["591"] = 258,["594"] = 258,["595"] = 258,["598"] = 260,["599"] = 261,["600"] = 233,["601"] = 233,["602"] = 263,["603"] = 264,["604"] = 265,["605"] = 265,["606"] = 265,["607"] = 265,["610"] = 207,["611"] = 269,["613"] = 270,["614"] = 271,["615"] = 272,["616"] = 273,["617"] = 274,["618"] = 276,["619"] = 276,["621"] = 277,["622"] = 277,["623"] = 278,["624"] = 278,["625"] = 278,["626"] = 278,["627"] = 278,["628"] = 279,["629"] = 280,["631"] = 282,["632"] = 277,["636"] = 269,["637"] = 286,["640"] = 287,["641"] = 287,["642"] = 288,["643"] = 289,["644"] = 289,["645"] = 289,["646"] = 289,["647"] = 289,["648"] = 289,["649"] = 289,["650"] = 290,["651"] = 287,["655"] = 286,["656"] = 14,["657"] = 14,["658"] = 14,["659"] = 14,["660"] = 14,["661"] = 14,["662"] = 14});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Shape = include("framework.fight.Shape")
local Shape = ____Shape.Shape
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5355_4F4D_7C7B_578BID = ____Property["单位类型ID"]
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____Status = include("logic.models.Status")
local _____514D_75AB_63A7_5236 = ____Status["免疫控制"]
local _____7729_6655 = ____Status["眩晕"]
local _____7A7A_72B6_6001 = ____Status["空状态"]
local _____88AB_51FB_9000 = ____Status["被击退"]
local _____9738_4F53 = ____Status["霸体"]
local ____UnitOrder = include("logic.models.UnitOrder")
local UnitOrder = ____UnitOrder.UnitOrder
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local buffId2 = genEffectId(nil)
local ____createAbility_49 = createAbility
local ____fight_48 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.isExTarget = false
    self["滚动速度"] = 1500
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.isExTarget = false
    self:play("ability1", 1, 0, 0.5)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self.effectEntity = self.owner:applyTimeLimitProperties(
        self.skillEntity,
        buffId,
        2,
        0,
        {},
        {_____9738_4F53, _____514D_75AB_63A7_5236}
    )
    if self.owner:getValue(_____5929_8D4B_3) == 2 then
        local ____self_3 = self.owner
        local ____self_3_addEffect_4 = ____self_3.addEffect
        local ____self_skillEntity_2 = self.skillEntity
        local ____self_1 = _____6570_503C["膨肥兔"]["大招"]
        ____self_3_addEffect_4(
            ____self_3,
            ____self_skillEntity_2,
            ____self_1["天赋32附加buff"](____self_1)
        )
    end
    self:play(
        "ability1",
        4,
        0.5,
        1,
        true
    )
    local targets = self.owner:findTargets(
        {"敌人"},
        function(____, a) return a:isAlive() end,
        nil,
        2,
        2000
    )
    __TS__ArraySort(
        targets,
        function(____, a, b)
            if a:getValue(_____5355_4F4D_7C7B_578BID) ~= b:getValue(_____5355_4F4D_7C7B_578BID) then
                if a:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                    return -1
                end
                if b:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                    return 1
                end
            end
            return 0
        end
    )
    if #targets == 0 then
        targets[#targets + 1] = cast:getTargetUnit()
    end
    local target1 = targets[1]
    if not target1 then
        self.owner:addMp(self.owner, 100)
        if self.effectEntity ~= nil then
            self.owner:removeEffect(self.owner, {self.effectEntity})
            self.effectEntity = nil
        end
        local ____temp_8 = self.owner:getValue(_____5929_8D4B_3) == 2
        if ____temp_8 then
            local ____self_6 = self.owner
            local ____self_6_getEffectQuantity_7 = ____self_6.getEffectQuantity
            local ____self_5 = _____6570_503C["膨肥兔"]["大招"]
            ____temp_8 = ____self_6_getEffectQuantity_7(
                ____self_6,
                ____self_5["天赋32附加buff"](____self_5)
            ) > 0
        end
        if ____temp_8 then
            local ____self_11 = self.owner
            local ____self_11_removeEffect_12 = ____self_11.removeEffect
            local ____self_skillEntity_10 = self.skillEntity
            local ____self_9 = _____6570_503C["膨肥兔"]["大招"]
            ____self_11_removeEffect_12(
                ____self_11,
                ____self_skillEntity_10,
                {____self_9["天赋32附加buff"](____self_9)}
            )
        end
        self:endSkill(self)
        return
    end
    self["目标1"] = target1
    local startPos = {x = 0, y = 0}
    self.owner:getPosition(startPos)
    local ____self_13 = _____6570_503C["膨肥兔"]["大招"]
    local v1 = ____self_13["目标伤害"](____self_13, self.owner)
    local ____self_14 = _____6570_503C["膨肥兔"]["大招"]
    local v2 = ____self_14["沿途伤害"](____self_14, self.owner)
    self.owner:startGhost(
        255,
        255,
        255,
        160,
        0.1,
        0,
        0,
        0.5
    )
    local distance = self:getDistance(self.owner, target1) + 300
    self["滚动速度"] = distance / 0.5
    local angle = self:getDirection(self.owner, target1)
    local p = self:createProjectile(134228306, self.owner, angle, 150)
    p:prepare({hit_radius = 200, hit_same = false})
    p:setCustomData("dmg1", v1)
    p:setCustomData("dmg2", v2)
    p:listener({
        onFinish = function()
            p:remove()
            if not target1 or not target1:isAlive() then
                return
            end
            local dmg = p:getCustomData("dmg1")
            target1.tempData[AbilityTagData["是否为AOE"]] = true
            target1:hurt(
                self.skillEntity,
                Formula["法术伤害"],
                dmg,
                AbilityType["大招"],
                nil,
                nil,
                134242217
            )
            local a = self:getDirection(self.owner, target1)
            target1.tempData[AbilityTagData["是否为AOE"]] = nil
            target1:move(
                {_____9738_4F53, _____88AB_51FB_9000},
                _____88AB_51FB_9000,
                a,
                10,
                10,
                0,
                false,
                500,
                true
            )
            target1:addTimeLimitProperties(
                self.skillEntity,
                buffId2,
                1,
                {},
                {_____7729_6655},
                {-1, 101, 20},
                1
            )
        end,
        onHit = function(t)
            if t and t:isAlive() and t ~= target1 then
                local dmg = p:getCustomData("dmg2")
                local a = self:getDirection(self.owner, t)
                t.tempData[AbilityTagData["是否为AOE"]] = true
                t:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    dmg,
                    AbilityType["被动"],
                    nil,
                    nil,
                    134254992
                )
                t.tempData[AbilityTagData["是否为AOE"]] = nil
                t:move(
                    {_____9738_4F53, _____88AB_51FB_9000},
                    _____88AB_51FB_9000,
                    a,
                    10,
                    10,
                    0,
                    false,
                    500,
                    true
                )
                t:addTimeLimitProperties(
                    self.skillEntity,
                    buffId2,
                    1,
                    {},
                    {_____7729_6655},
                    {-1, 101, 20},
                    1
                )
                self:playSound(self.owner, 134257764)
            end
        end
    })
    self.owner:move(
        {},
        _____7A7A_72B6_6001,
        angle,
        distance,
        self["滚动速度"],
        0,
        true,
        nil,
        true,
        function()
            p:remove()
            self:nextTarget(v1, v2, startPos)
        end,
        function()
            p:remove()
            self:nextTarget(v1, v2, startPos)
        end
    )
    p:moverLine(angle, distance, self["滚动速度"])
    if self.owner:getValue(_____5929_8D4B_3) == 1 then
        self:potion(
            self.owner:getPosition(),
            target1:getPosition()
        )
    end
end
____class_0.prototype["施法停止"] = function(self, ability, cast)
    if self.effectEntity ~= nil then
        self.owner:removeEffect(self.owner, {self.effectEntity})
        self.effectEntity = nil
    end
    local ____temp_20 = self.owner:getValue(_____5929_8D4B_3) == 2
    if ____temp_20 then
        local ____self_18 = self.owner
        local ____self_18_getEffectQuantity_19 = ____self_18.getEffectQuantity
        local ____self_17 = _____6570_503C["膨肥兔"]["大招"]
        ____temp_20 = ____self_18_getEffectQuantity_19(
            ____self_18,
            ____self_17["天赋32附加buff"](____self_17)
        ) > 0
    end
    if ____temp_20 then
        local ____self_23 = self.owner
        local ____self_23_removeEffect_24 = ____self_23.removeEffect
        local ____self_skillEntity_22 = self.skillEntity
        local ____self_21 = _____6570_503C["膨肥兔"]["大招"]
        ____self_23_removeEffect_24(
            ____self_23,
            ____self_skillEntity_22,
            {____self_21["天赋32附加buff"](____self_21)}
        )
    end
    self.owner:stopGhost()
end
function ____class_0.prototype.nextTarget(self, v1, v2, startPos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local targets = self.owner:findTargets(
            {"敌人"},
            function(____, a)
                local ____temp_26 = a:isAlive() and a ~= self["目标1"]
                if ____temp_26 then
                    local ____temp_25
                    if not self.isExTarget then
                        ____temp_25 = true
                    else
                        ____temp_25 = a ~= self["目标2"]
                    end
                    ____temp_26 = ____temp_25
                end
                return ____temp_26
            end,
            nil,
            0,
            2000
        )
        __TS__ArraySort(
            targets,
            function(____, a, b)
                if a:getValue(_____5355_4F4D_7C7B_578BID) ~= b:getValue(_____5355_4F4D_7C7B_578BID) then
                    if a:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                        return -1
                    end
                    if b:getValue(_____5355_4F4D_7C7B_578BID) == UnitOrder.BUILDING then
                        return 1
                    end
                end
                return 0
            end
        )
        local target2 = targets[1]
        if not target2 then
            self:moveReturn(v1, v2, startPos)
            return ____awaiter_resolve(nil)
        end
        if not self.isExTarget then
            self["目标2"] = target2
        end
        local distance = self:getDistance(self.owner, target2) + 300
        self["滚动速度"] = distance / 0.5
        local angle = self:getDirection(self.owner, target2)
        local p = self:createProjectile(134228306, self.owner, angle, 150)
        p:prepare({hit_radius = 200, hit_same = false})
        p:setCustomData("dmg1", v1)
        p:setCustomData("dmg2", v2)
        p:listener({
            onFinish = function()
                p:remove()
                if not target2 or not target2:isAlive() then
                    return
                end
                local dmg = p:getCustomData("dmg1")
                target2.tempData[AbilityTagData["是否为AOE"]] = true
                target2:hurt(
                    self.skillEntity,
                    Formula["法术伤害"],
                    dmg,
                    AbilityType["大招"],
                    nil,
                    nil,
                    134242217
                )
                local a = self:getDirection(self.owner, target2)
                target2.tempData[AbilityTagData["是否为AOE"]] = nil
                target2:move(
                    {_____9738_4F53, _____88AB_51FB_9000},
                    _____88AB_51FB_9000,
                    a,
                    10,
                    10,
                    0,
                    false,
                    500,
                    true
                )
                target2:addTimeLimitProperties(
                    self.skillEntity,
                    buffId2,
                    1,
                    {},
                    {_____7729_6655},
                    {-1, 101, 20},
                    1
                )
            end,
            onHit = function(t)
                if t and t:isAlive() and t ~= target2 then
                    local dmg = p:getCustomData("dmg2")
                    local a = self:getDirection(self.owner, t)
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["法术伤害"],
                        dmg,
                        AbilityType["被动"],
                        nil,
                        nil,
                        134254992
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    t:move(
                        {_____9738_4F53, _____88AB_51FB_9000},
                        _____88AB_51FB_9000,
                        a,
                        10,
                        10,
                        0,
                        false,
                        500,
                        true
                    )
                    t:addTimeLimitProperties(
                        self.skillEntity,
                        buffId2,
                        1,
                        {},
                        {_____7729_6655},
                        {-1, 101, 20},
                        1
                    )
                    self:playSound(self.owner, 134257764)
                end
            end
        })
        self.owner:move(
            {},
            _____7A7A_72B6_6001,
            angle,
            distance,
            self["滚动速度"],
            0,
            true,
            nil,
            true,
            function()
                p:remove()
                if self.owner:getValue(_____5929_8D4B_3) == 2 and not self.isExTarget then
                    self.isExTarget = true
                    self:nextTarget(v1, v2, startPos)
                else
                    self:moveReturn(v1, v2, startPos)
                end
            end,
            function()
                p:remove()
                if self.owner:getValue(_____5929_8D4B_3) == 2 and not self.isExTarget then
                    self.isExTarget = true
                    self:nextTarget(v1, v2, startPos)
                else
                    self:moveReturn(v1, v2, startPos)
                end
            end
        )
        p:moverLine(angle, distance, self["滚动速度"])
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            self:potion(
                self.owner:getPosition(),
                target2:getPosition()
            )
        end
    end)
end
function ____class_0.prototype.moveReturn(self, v1, v2, startPos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self:getDirection(
            self.owner:getPosition(),
            startPos
        )
        local distance = self:getDistance(
            self.owner:getPosition(),
            startPos
        )
        self["滚动速度"] = distance / 0.5
        local p = self:createProjectile(134228306, self.owner, angle, 150)
        p:prepare({hit_radius = 200, hit_same = false})
        p:setCustomData("dmg1", v1)
        p:setCustomData("dmg2", v2)
        p:listener({
            onFinish = function()
                p:remove()
            end,
            onHit = function(t)
                if t and t:isAlive() then
                    local dmg = p:getCustomData("dmg2")
                    local a = self:getDirection(self.owner, t)
                    t.tempData[AbilityTagData["是否为AOE"]] = true
                    t:hurt(
                        self.skillEntity,
                        Formula["法术伤害"],
                        dmg,
                        AbilityType["被动"],
                        nil,
                        nil,
                        134254992
                    )
                    t.tempData[AbilityTagData["是否为AOE"]] = nil
                    t:move(
                        {_____9738_4F53, _____88AB_51FB_9000},
                        _____88AB_51FB_9000,
                        a,
                        10,
                        10,
                        0,
                        false,
                        500,
                        true
                    )
                    t:addTimeLimitProperties(
                        self.skillEntity,
                        buffId2,
                        1,
                        {},
                        {_____7729_6655},
                        {-1, 101, 20},
                        1
                    )
                    self:playSound(self.owner, 134257764)
                end
            end
        })
        self.owner:move(
            {},
            _____7A7A_72B6_6001,
            angle,
            distance,
            self["滚动速度"],
            0,
            true,
            nil,
            true,
            function()
                self:play(
                    "ability1",
                    1,
                    1,
                    -1,
                    false,
                    true
                )
                if self.effectEntity ~= nil then
                    self.owner:removeEffect(self.owner, {self.effectEntity})
                    self.effectEntity = nil
                end
                local ____temp_34 = self.owner:getValue(_____5929_8D4B_3) == 2
                if ____temp_34 then
                    local ____self_32 = self.owner
                    local ____self_32_getEffectQuantity_33 = ____self_32.getEffectQuantity
                    local ____self_31 = _____6570_503C["膨肥兔"]["大招"]
                    ____temp_34 = ____self_32_getEffectQuantity_33(
                        ____self_32,
                        ____self_31["天赋32附加buff"](____self_31)
                    ) > 0
                end
                if ____temp_34 then
                    local ____self_37 = self.owner
                    local ____self_37_removeEffect_38 = ____self_37.removeEffect
                    local ____self_skillEntity_36 = self.skillEntity
                    local ____self_35 = _____6570_503C["膨肥兔"]["大招"]
                    ____self_37_removeEffect_38(
                        ____self_37,
                        ____self_skillEntity_36,
                        {____self_35["天赋32附加buff"](____self_35)}
                    )
                end
                self.owner:stopGhost()
                self:endSkill(self)
            end,
            function()
                self:play(
                    "ability1",
                    1,
                    1,
                    -1,
                    false,
                    true
                )
                if self.effectEntity ~= nil then
                    self.owner:removeEffect(self.owner, {self.effectEntity})
                    self.effectEntity = nil
                end
                local ____temp_42 = self.owner:getValue(_____5929_8D4B_3) == 2
                if ____temp_42 then
                    local ____self_40 = self.owner
                    local ____self_40_getEffectQuantity_41 = ____self_40.getEffectQuantity
                    local ____self_39 = _____6570_503C["膨肥兔"]["大招"]
                    ____temp_42 = ____self_40_getEffectQuantity_41(
                        ____self_40,
                        ____self_39["天赋32附加buff"](____self_39)
                    ) > 0
                end
                if ____temp_42 then
                    local ____self_45 = self.owner
                    local ____self_45_removeEffect_46 = ____self_45.removeEffect
                    local ____self_skillEntity_44 = self.skillEntity
                    local ____self_43 = _____6570_503C["膨肥兔"]["大招"]
                    ____self_45_removeEffect_46(
                        ____self_45,
                        ____self_skillEntity_44,
                        {____self_43["天赋32附加buff"](____self_43)}
                    )
                end
                self.owner:stopGhost()
                self:endSkill(self)
            end
        )
        p:moverLine(angle, distance, self["滚动速度"])
        if self.owner:getValue(_____5929_8D4B_3) == 1 then
            self:potion(
                self.owner:getPosition(),
                startPos
            )
        end
    end)
end
function ____class_0.prototype.potion(self, startPos, endPos)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local angle = self:getDirection(startPos, endPos)
        local distance = self:getDistance(startPos, endPos)
        local offsetPoint = self:offsetPoint(startPos, angle, distance / 2)
        local times = distance / 125
        self:createEffect(startPos, angle, distance, times)
        local ____self_47 = _____6570_503C["膨肥兔"]["大招"]
        local quantity = ____self_47["天赋31附加毒层数"](____self_47) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
        do
            local i = 0
            while i < 5 do
                local targets = self.owner:findByShape(
                    offsetPoint,
                    Shape:createRectangleShape(250, distance, angle),
                    {"敌人"}
                )
                for ____, t in ipairs(targets) do
                    t:addEffect(self.skillEntity, 1, quantity)
                end
                __TS__Await(self:awaitTime(1))
                i = i + 1
            end
        end
    end)
end
function ____class_0.prototype.createEffect(self, startPos, angle, distance, times)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        do
            local i = 0
            while i < times do
                local pos = self:offsetPoint(startPos, angle, distance / 125 * i + 125)
                self:createProjectile(
                    134244247,
                    pos,
                    0,
                    10,
                    5
                )
                __TS__Await(self:awaitTime(0.1))
                i = i + 1
            end
        end
    end)
end
____exports.key = ____createAbility_49(
    nil,
    ____fight_48,
    134270060,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 2, ["施法完成"] = 0}
)
return ____exports
