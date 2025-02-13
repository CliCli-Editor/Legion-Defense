local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["16"] = 1,["17"] = 1,["18"] = 3,["19"] = 3,["20"] = 5,["21"] = 5,["22"] = 7,["23"] = 7,["24"] = 9,["25"] = 9,["26"] = 9,["28"] = 10,["29"] = 11,["30"] = 12,["31"] = 13,["32"] = 14,["33"] = 15,["34"] = 16,["35"] = 17,["36"] = 9,["37"] = 25,["38"] = 26,["39"] = 26,["40"] = 26,["41"] = 26,["42"] = 25,["43"] = 32,["44"] = 38,["45"] = 39,["46"] = 40,["47"] = 40,["49"] = 40,["50"] = 40,["51"] = 40,["52"] = 40,["53"] = 40,["55"] = 40,["56"] = 40,["57"] = 40,["59"] = 40,["60"] = 40,["61"] = 40,["62"] = 40,["63"] = 40,["65"] = 32,["66"] = 47,["70"] = 48,["71"] = 48,["72"] = 48,["73"] = 49,["74"] = 49,["75"] = 49,["76"] = 49,["77"] = 50,["78"] = 51,["79"] = 52,["80"] = 49,["81"] = 49,["82"] = 54,["83"] = 48,["84"] = 48,["87"] = 47,["88"] = 61,["92"] = 62,["93"] = 62,["94"] = 62,["95"] = 63,["96"] = 63,["97"] = 63,["98"] = 63,["99"] = 63,["100"] = 64,["101"] = 65,["102"] = 66,["103"] = 67,["105"] = 63,["106"] = 63,["107"] = 70,["108"] = 62,["109"] = 62,["112"] = 61,["113"] = 84,["114"] = 94,["115"] = 94,["116"] = 94,["117"] = 94,["118"] = 94,["119"] = 94,["120"] = 94,["121"] = 94,["122"] = 94,["123"] = 94,["124"] = 94,["125"] = 94,["126"] = 94,["127"] = 95,["128"] = 96,["129"] = 84,["130"] = 105,["131"] = 106,["134"] = 109,["135"] = 110,["137"] = 112,["138"] = 112,["139"] = 112,["140"] = 112,["141"] = 112,["142"] = 112,["143"] = 112,["144"] = 112,["145"] = 112,["146"] = 113,["147"] = 114,["148"] = 105,["149"] = 117,["150"] = 118,["151"] = 119,["152"] = 120,["153"] = 121,["154"] = 117,["155"] = 124,["156"] = 125,["157"] = 126,["158"] = 126,["159"] = 127,["161"] = 124,["162"] = 144,["163"] = 151,["164"] = 151,["166"] = 157,["169"] = 160,["170"] = 161,["171"] = 162,["172"] = 163,["174"] = 165,["177"] = 169,["178"] = 169,["179"] = 169,["180"] = 169,["181"] = 169,["182"] = 169,["183"] = 169,["184"] = 169,["185"] = 169,["186"] = 169,["187"] = 169,["188"] = 169,["189"] = 169,["190"] = 183,["191"] = 184,["192"] = 144,["193"] = 195,["194"] = 199,["195"] = 199,["197"] = 201,["198"] = 202,["199"] = 204,["200"] = 205,["201"] = 206,["202"] = 207,["203"] = 208,["204"] = 209,["205"] = 210,["207"] = 212,["210"] = 215,["211"] = 216,["214"] = 220,["215"] = 221,["217"] = 195,["218"] = 230,["219"] = 237,["220"] = 237,["222"] = 239,["225"] = 242,["226"] = 243,["227"] = 244,["228"] = 245,["230"] = 247,["231"] = 248,["232"] = 249,["233"] = 250,["235"] = 252,["238"] = 256,["239"] = 256,["240"] = 256,["241"] = 256,["242"] = 256,["243"] = 256,["244"] = 256,["245"] = 256,["246"] = 256,["247"] = 256,["248"] = 256,["249"] = 256,["250"] = 269,["251"] = 270,["252"] = 230,["253"] = 273,["254"] = 274,["255"] = 275,["256"] = 273,["257"] = 284,["258"] = 285,["259"] = 286,["261"] = 288,["266"] = 315,["269"] = 292,["270"] = 292,["271"] = 292,["272"] = 293,["274"] = 295,["275"] = 295,["276"] = 295,["277"] = 295,["278"] = 295,["279"] = 295,["280"] = 295,["281"] = 295,["282"] = 295,["283"] = 295,["284"] = 295,["285"] = 295,["286"] = 295,["287"] = 295,["288"] = 302,["289"] = 303,["290"] = 304,["292"] = 306,["293"] = 306,["294"] = 306,["295"] = 306,["296"] = 306,["297"] = 306,["298"] = 306,["299"] = 306,["300"] = 306,["301"] = 306,["302"] = 306,["303"] = 306,["304"] = 306,["305"] = 306,["312"] = 291,["315"] = 284,["316"] = 323,["317"] = 323,["318"] = 325,["319"] = 325,["320"] = 325,["322"] = 326,["323"] = 327,["324"] = 328,["326"] = 330,["328"] = 332,["330"] = 331,["333"] = 334,["335"] = 331,["337"] = 337,["339"] = 325,["340"] = 325,["341"] = 339,["342"] = 323,["343"] = 345,["344"] = 347,["345"] = 348,["346"] = 349,["348"] = 351,["349"] = 352,["350"] = 353,["352"] = 355,["353"] = 356,["356"] = 361,["357"] = 362,["359"] = 365,["360"] = 366,["361"] = 367,["362"] = 368,["363"] = 369,["364"] = 370,["365"] = 371,["366"] = 372,["367"] = 373,["369"] = 375,["370"] = 376,["372"] = 379,["373"] = 380,["374"] = 381,["375"] = 382,["376"] = 383,["377"] = 384,["378"] = 385,["379"] = 386,["380"] = 387,["382"] = 389,["383"] = 390,["385"] = 393,["386"] = 395,["387"] = 345,["388"] = 405,["389"] = 406,["390"] = 406,["392"] = 407,["393"] = 407,["395"] = 408,["396"] = 408,["398"] = 409,["399"] = 409,["401"] = 411,["402"] = 412,["404"] = 414,["405"] = 415,["406"] = 416,["407"] = 417,["408"] = 418,["409"] = 419,["410"] = 419,["411"] = 419,["412"] = 419,["413"] = 420,["415"] = 421,["416"] = 421,["417"] = 423,["418"] = 423,["419"] = 423,["420"] = 423,["421"] = 424,["422"] = 425,["423"] = 421,["426"] = 427,["428"] = 428,["429"] = 428,["430"] = 429,["431"] = 428,["434"] = 431,["435"] = 405,["436"] = 439,["437"] = 440,["438"] = 440,["440"] = 442,["441"] = 443,["442"] = 444,["443"] = 445,["444"] = 446,["445"] = 447,["446"] = 448,["447"] = 448,["448"] = 448,["449"] = 448,["450"] = 448,["451"] = 448,["452"] = 448,["453"] = 448,["454"] = 448,["455"] = 448,["456"] = 449,["457"] = 450,["460"] = 452,["461"] = 453,["463"] = 454,["464"] = 455,["467"] = 457,["469"] = 458,["470"] = 459,["473"] = 461,["475"] = 462,["476"] = 463,["479"] = 465,["481"] = 466,["482"] = 467,["485"] = 469,["487"] = 470,["488"] = 471,["491"] = 473,["493"] = 474,["494"] = 475,["497"] = 477,["499"] = 478,["500"] = 479,["501"] = 480,["502"] = 481,["503"] = 482,["506"] = 484,["508"] = 485,["509"] = 486,["510"] = 487,["511"] = 488,["512"] = 489,["516"] = 492,["517"] = 493,["518"] = 494,["520"] = 496,["521"] = 497,["524"] = 500,["525"] = 500,["526"] = 501,["527"] = 500,["530"] = 503,["531"] = 439,["532"] = 510,["533"] = 520,["534"] = 521,["536"] = 523,["537"] = 524,["538"] = 525,["539"] = 526,["541"] = 528,["543"] = 529,["544"] = 529,["545"] = 529,["546"] = 529,["547"] = 529,["548"] = 529,["549"] = 529,["550"] = 529,["551"] = 529,["552"] = 529,["553"] = 530,["554"] = 531,["555"] = 510,["556"] = 535,["557"] = 537,["558"] = 538,["559"] = 539,["560"] = 540,["561"] = 541,["562"] = 542,["563"] = 543,["564"] = 544,["565"] = 545,["567"] = 547,["568"] = 548,["570"] = 551,["571"] = 552,["572"] = 554,["573"] = 535,["574"] = 557,["575"] = 558,["576"] = 559,["577"] = 560,["578"] = 561,["579"] = 562,["580"] = 563,["581"] = 564,["582"] = 565,["583"] = 566,["585"] = 568,["586"] = 569,["588"] = 572,["589"] = 573,["590"] = 574,["591"] = 575,["592"] = 576,["593"] = 577,["594"] = 578,["595"] = 579,["596"] = 580,["598"] = 582,["599"] = 583,["601"] = 586,["602"] = 557,["603"] = 589,["604"] = 590,["605"] = 591,["606"] = 592,["607"] = 593,["608"] = 594,["609"] = 595,["610"] = 596,["611"] = 597,["612"] = 598,["614"] = 600,["615"] = 601,["617"] = 604,["618"] = 605,["619"] = 606,["620"] = 607,["621"] = 608,["622"] = 609,["623"] = 610,["624"] = 611,["625"] = 612,["627"] = 614,["628"] = 615,["630"] = 618,["631"] = 589,["632"] = 621,["633"] = 622,["634"] = 623,["635"] = 624,["636"] = 625,["637"] = 626,["638"] = 627,["639"] = 628,["640"] = 629,["641"] = 630,["643"] = 632,["644"] = 633,["646"] = 636,["647"] = 621,["648"] = 643,["649"] = 647,["650"] = 648,["652"] = 651,["653"] = 652,["654"] = 653,["655"] = 654,["656"] = 655,["657"] = 656,["658"] = 657,["659"] = 658,["660"] = 659,["662"] = 661,["663"] = 662,["665"] = 665,["666"] = 666,["667"] = 667,["668"] = 668,["669"] = 669,["670"] = 670,["671"] = 671,["672"] = 672,["673"] = 673,["675"] = 675,["676"] = 676,["678"] = 679,["679"] = 681,["680"] = 643,["681"] = 687,["682"] = 689,["683"] = 690,["684"] = 691,["685"] = 692,["686"] = 693,["687"] = 694,["688"] = 695,["689"] = 696,["690"] = 697,["692"] = 699,["693"] = 699,["694"] = 699,["695"] = 699,["696"] = 700,["697"] = 701,["699"] = 703,["701"] = 705,["702"] = 706,["703"] = 706,["704"] = 706,["705"] = 706,["707"] = 708,["708"] = 709,["709"] = 710,["710"] = 711,["711"] = 712,["714"] = 715,["715"] = 716,["716"] = 717,["719"] = 721,["720"] = 687,["721"] = 725,["722"] = 725,["723"] = 725,["725"] = 726,["726"] = 727,["727"] = 728,["728"] = 729,["729"] = 730,["730"] = 730,["731"] = 731,["732"] = 731,["733"] = 731,["734"] = 731,["735"] = 731,["736"] = 731,["737"] = 732,["738"] = 733,["742"] = 738,["743"] = 739,["744"] = 740,["746"] = 742,["747"] = 744,["748"] = 745,["749"] = 746,["751"] = 725,["752"] = 750,["753"] = 751,["754"] = 751,["755"] = 752,["757"] = 752,["760"] = 755,["761"] = 756,["762"] = 757,["764"] = 759,["765"] = 766,["766"] = 767,["768"] = 767,["771"] = 769,["772"] = 771,["773"] = 772,["775"] = 772,["778"] = 774,["779"] = 776,["780"] = 777,["782"] = 777,["785"] = 779,["786"] = 781,["787"] = 782,["789"] = 782,["792"] = 784,["793"] = 786,["794"] = 787,["796"] = 787,["799"] = 789,["800"] = 790,["801"] = 791,["802"] = 792,["804"] = 798,["805"] = 799,["806"] = 800,["808"] = 750,["809"] = 804,["810"] = 805,["811"] = 806,["812"] = 806,["813"] = 806,["814"] = 806,["815"] = 807,["817"] = 808,["818"] = 808,["819"] = 809,["820"] = 810,["822"] = 808,["825"] = 813,["828"] = 816,["830"] = 819,["831"] = 820,["833"] = 822,["834"] = 804,["835"] = 825,["836"] = 825,["837"] = 825,["839"] = 826,["842"] = 829,["843"] = 829,["844"] = 829,["845"] = 829,["846"] = 829,["847"] = 829,["848"] = 829,["849"] = 829,["850"] = 829,["851"] = 829,["852"] = 829,["853"] = 825,["854"] = 832,["856"] = 833,["857"] = 834,["859"] = 832,["860"] = 843,["861"] = 845,["862"] = 847,["863"] = 849,["864"] = 851,["865"] = 852,["866"] = 843,["878"] = 22});
local ____exports = {}
local ____Property = include("logic.models.Property")
local _____5355_4F4D_7C7B_578BID = ____Property["单位类型ID"]
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____Projectile = include("framework.fight.Projectile")
local Projectile = ____Projectile.Projectile
local ____TargetByBezierMover = include("framework.fight.mover.TargetByBezierMover")
local TargetByBezierMover = ____TargetByBezierMover.TargetByBezierMover
____exports.AbilityAPI = __TS__Class()
local AbilityAPI = ____exports.AbilityAPI
AbilityAPI.name = "AbilityAPI"
function AbilityAPI.prototype.____constructor(self)
    self._timerMap = {}
    self._projectileMap = {}
    self._buffMap = {}
    self._particleMap = {}
    self._beamLinkMap = {}
    self._watcherMap = {}
    self._bezierMover = {}
    self._randomId = 0
end
function AbilityAPI.prototype.genRandomId(self)
    local ____self_0, ____randomId_1 = self, "_randomId"
    local ____self__randomId_2 = ____self_0[____randomId_1]
    ____self_0[____randomId_1] = ____self__randomId_2 + 1
    return ____self__randomId_2
end
function AbilityAPI.prototype.play(self, _____52A8_753B_540D_79F0, _____64AD_653E_901F_7387, _____5F00_59CB_65F6_95F4, _____7ED3_675F_65F6_95F4, _____662F_5426_5FAA_73AF, _____81EA_52A8_6062_590D_72B6_6001)
    local owner = self.owner.y3Unit
    if owner and owner:is_alive() then
        local ____owner_7 = owner
        local ____owner_play_animation_8 = owner.play_animation
        local ____array_6 = __TS__SparseArrayNew(
            _____52A8_753B_540D_79F0,
            _____64AD_653E_901F_7387 or 1,
            _____5F00_59CB_65F6_95F4 or 0,
            _____7ED3_675F_65F6_95F4 or -1,
            _____662F_5426_5FAA_73AF
        )
        local ____81EA_52A8_6062_590D_72B6_6001_5 = _____81EA_52A8_6062_590D_72B6_6001
        if ____81EA_52A8_6062_590D_72B6_6001_5 == nil then
            ____81EA_52A8_6062_590D_72B6_6001_5 = true
        end
        __TS__SparseArrayPush(____array_6, ____81EA_52A8_6062_590D_72B6_6001_5)
        ____owner_play_animation_8(
            ____owner_7,
            __TS__SparseArraySpread(____array_6)
        )
    end
end
function AbilityAPI.prototype.awaitTime(self, timeout)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        return ____awaiter_resolve(
            nil,
            __TS__New(
                __TS__Promise,
                function(____, resolve)
                    local t
                    t = y3.ltimer.wait(
                        timeout,
                        function(_timer)
                            _timer:remove()
                            self._timerMap[t.id] = nil
                            resolve(nil)
                        end
                    )
                    self._timerMap[t.id] = t
                end
            )
        )
    end)
end
function AbilityAPI.prototype.loop(self, _____95F4_9694_65F6_95F4, _____6B21_6570, callback)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        return ____awaiter_resolve(
            nil,
            __TS__New(
                __TS__Promise,
                function(____, resolve)
                    local t
                    t = y3.ltimer.loop_count(
                        _____95F4_9694_65F6_95F4,
                        _____6B21_6570,
                        function(timer, count)
                            callback(nil, count)
                            if count == _____6B21_6570 then
                                self._timerMap[t.id] = nil
                                resolve(nil)
                            end
                        end
                    )
                    self._timerMap[t.id] = t
                end
            )
        )
    end)
end
function AbilityAPI.prototype.createProjectile(self, _____6295_5C04_7269ID, _____76EE_6807, _____89D2_5EA6, _____9AD8_5EA6, _____65F6_95F4, _____63D2_69FD, _____53EF_89C1_6027, _____7ACB_5373_6D88_5931)
    local p = __TS__New(
        Projectile,
        self.owner,
        _____6295_5C04_7269ID,
        _____76EE_6807,
        _____89D2_5EA6,
        _____9AD8_5EA6,
        _____65F6_95F4,
        _____63D2_69FD,
        _____53EF_89C1_6027,
        self.ability,
        _____7ACB_5373_6D88_5931
    )
    self._projectileMap[self:genRandomId()] = p
    return p
end
function AbilityAPI.prototype.addEffect(self, _____76EE_6807, _____9B54_6CD5_6548_679CID, _____65F6_95F4)
    if _____76EE_6807 == nil then
        return
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    end
    local buff = _____76EE_6807:add_buff({
        key = _____9B54_6CD5_6548_679CID,
        time = _____65F6_95F4,
        source = nil,
        ability = nil,
        pulse = nil,
        stacks = nil,
        data = nil
    })
    self._buffMap[self:genRandomId()] = buff
    return buff
end
function AbilityAPI.prototype.addWatcher(self, _____53D8_5316_6761_4EF6, _____6267_884C_5185_5BB9)
    local watcher = vue.watch(_____53D8_5316_6761_4EF6, _____6267_884C_5185_5BB9, {flush = "sync"})
    local id = self:genRandomId()
    self._watcherMap[id] = watcher
    return id
end
function AbilityAPI.prototype.stopWatcher(self, id)
    if self._watcherMap[id] ~= nil then
        local ____self_9 = self._watcherMap
        ____self_9[id](____self_9)
        self._watcherMap[id] = nil
    end
end
function AbilityAPI.prototype.addParticle(self, _____7C92_5B50ID, _____76EE_6807, _____89D2_5EA6, _____7F29_653E, _____6301_7EED_65F6_95F4, _____9AD8_5EA6, _____63D2_69FD, _____8DDF_968F_65CB_8F6C_6A21_5F0F, _____8DDF_968F_7F29_653E, _____662F_5426_7ACB_5373_9500_6BC1)
    if _____63D2_69FD == nil then
        _____63D2_69FD = "hit_point"
    end
    if _____76EE_6807 == nil then
        return
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    elseif _____76EE_6807.x ~= nil then
        _____76EE_6807 = y3.point.create(_____76EE_6807.x, _____76EE_6807.y)
    end
    if _____76EE_6807 == nil then
        return
    end
    local particle = y3.particle.create({
        type = _____7C92_5B50ID,
        target = _____76EE_6807,
        angle = _____89D2_5EA6,
        scale = _____7F29_653E,
        time = _____6301_7EED_65F6_95F4,
        height = _____9AD8_5EA6,
        socket = _____63D2_69FD,
        follow_rotation = _____8DDF_968F_65CB_8F6C_6A21_5F0F,
        follow_scale = _____8DDF_968F_7F29_653E,
        immediate = _____662F_5426_7ACB_5373_9500_6BC1,
        detach = nil
    })
    self._particleMap[self:genRandomId()] = particle
    return particle
end
function AbilityAPI.prototype.addScreenParticle(self, _____7C92_5B50ID, _____65F6_95F4, _____662F_5426_5728_8FF7_96FE_4E0A_65B9, ____ID_7EC4)
    if ____ID_7EC4 == nil then
        ____ID_7EC4 = -1
    end
    local playerList = {}
    local ownerPlayer = self.owner.y3Unit:get_owner_player()
    if type(____ID_7EC4) == "number" then
        if ____ID_7EC4 == -1 then
            playerList[#playerList + 1] = ownerPlayer
        elseif ____ID_7EC4 == -2 then
            playerList = y3.player_group.get_ally_player_group_by_player(ownerPlayer):pick()
        elseif ____ID_7EC4 == -3 then
            playerList = y3.player_group.get_enemy_player_group_by_player(ownerPlayer):pick()
        else
            playerList = y3.player_group.get_all_players():pick()
        end
    else
        for ____, id in ipairs(____ID_7EC4) do
            playerList[#playerList + 1] = y3.player.get_by_id(id)
        end
    end
    for ____, p in ipairs(playerList) do
        y3.particle.create_screen({type = _____7C92_5B50ID, time = _____65F6_95F4, target = p, is_on_fog = _____662F_5426_5728_8FF7_96FE_4E0A_65B9})
    end
end
function AbilityAPI.prototype.addBeamLink(self, _____7C92_5B50ID, _____65F6_95F4, source, target, source_height, target_height, immediate)
    if immediate == nil then
        immediate = true
    end
    if source == nil or target == nil then
        return
    end
    if source.activeData ~= nil then
        source = source.y3Unit
    elseif source.x ~= nil then
        source = y3.point.create(source.x, source.y)
    end
    if target.activeData ~= nil then
        target = target.y3Unit
    elseif target.x ~= nil then
        source = y3.point.create(target.x, target.y)
    end
    if source == nil or target == nil then
        return
    end
    local beamLink = y3.beam.create({
        key = _____7C92_5B50ID,
        source = source,
        target = target,
        source_socket = "hit_point",
        source_height = source_height,
        target_socket = "hit_point",
        target_height = target_height,
        time = _____65F6_95F4,
        immediate = immediate,
        follow_scale = nil
    })
    self._beamLinkMap[self:genRandomId()] = beamLink
    return beamLink
end
function AbilityAPI.prototype.removeBeam(self, beamLink)
    beamLink:show(false)
    beamLink:remove()
end
function AbilityAPI.prototype.playSound(self, _____76EE_6807, _____58F0_97F3ID, _____53EF_9009_53C2_6570, _____6765_6E90)
    if _____76EE_6807 ~= nil and _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    end
    if _____76EE_6807 == nil then
        return
    end
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local ____opt_12 = self.owner
            local ____opt_10 = ____opt_12 and ____opt_12.fight
            if ____opt_10 and ____opt_10.isStop then
                return true
            end
            local sound = y3.sound.play_with_object(
                _____76EE_6807:get_owner_player(),
                _____58F0_97F3ID,
                _____76EE_6807,
                {
                    ensure = true,
                    fade_in = _____53EF_9009_53C2_6570 and _____53EF_9009_53C2_6570.fade_in,
                    fade_out = _____53EF_9009_53C2_6570 and _____53EF_9009_53C2_6570.fade_out,
                    loop = false,
                    offset_x = nil,
                    offset_y = nil,
                    offset_z = nil
                }
            )
            if _____6765_6E90 ~= nil then
                if _____6765_6E90.activeData ~= nil then
                    _____6765_6E90 = _____6765_6E90.y3Unit
                end
                local sound = y3.sound.play_with_object(
                    _____6765_6E90:get_owner_player(),
                    _____58F0_97F3ID,
                    _____76EE_6807,
                    {
                        ensure = true,
                        fade_in = _____53EF_9009_53C2_6570 and _____53EF_9009_53C2_6570.fade_in,
                        fade_out = _____53EF_9009_53C2_6570 and _____53EF_9009_53C2_6570.fade_out,
                        loop = false,
                        offset_x = nil,
                        offset_y = nil,
                        offset_z = nil
                    }
                )
            end
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function AbilityAPI.prototype.parallel(self, ...)
    local logics = {...}
    local promise = __TS__New(
        __TS__Promise,
        function(____, resolve)
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                local promises = {}
                for ____, l in ipairs(logics) do
                    promises[#promises + 1] = l(nil)
                end
                for ____, a in ipairs(promises) do
                    local ____try = __TS__AsyncAwaiter(function()
                        __TS__Await(a)
                    end)
                    __TS__Await(____try.catch(
                        ____try,
                        function(____, e)
                            console:error(e)
                        end
                    ))
                end
                resolve(nil)
            end)
        end
    )
    return promise
end
function AbilityAPI.prototype.getDirection(self, _____4ECE_54EA_513F, _____5230_54EA_513F)
    if _____4ECE_54EA_513F == nil then
        console:warn("this.getDirection 异常 从哪儿 = nil")
        return 0
    end
    if _____5230_54EA_513F == nil then
        if _____4ECE_54EA_513F.activeData ~= nil then
            return _____4ECE_54EA_513F:getAngle()
        else
            console:warn("this.getDirection 异常 到哪儿 = nil")
            return 0
        end
    end
    if _____5230_54EA_513F.activeData ~= nil and not _____5230_54EA_513F:isAlive() and _____4ECE_54EA_513F.activeData ~= nil then
        return _____4ECE_54EA_513F:getAngle()
    end
    local ax = 0
    local ay = 0
    if _____4ECE_54EA_513F.activeData ~= nil then
        local p = _____4ECE_54EA_513F:getPosition()
        ax = p.x
        ay = p.y
    elseif _____4ECE_54EA_513F.get_x ~= nil then
        ax = _____4ECE_54EA_513F:get_x()
        ay = _____4ECE_54EA_513F:get_y()
    else
        ax = _____4ECE_54EA_513F.x
        ay = _____4ECE_54EA_513F.y
    end
    local bx = 0
    local by = 0
    if _____5230_54EA_513F.activeData ~= nil then
        local p = _____5230_54EA_513F:getPosition()
        bx = p.x
        by = p.y
    elseif _____5230_54EA_513F.get_x ~= nil then
        bx = _____5230_54EA_513F:get_x()
        by = _____5230_54EA_513F:get_y()
    else
        bx = _____5230_54EA_513F.x
        by = _____5230_54EA_513F.y
    end
    local angle = math.atan(bx - ax, by - ay) * 180 / math.pi
    return angle
end
function AbilityAPI.prototype.genBeizerPathRandom(self, _____5F2F_66F2_7A0B_5EA6, _____53F3_4FA7, _____540E_65B9, _____63A7_5236_70B9_4E2A_6570)
    if _____5F2F_66F2_7A0B_5EA6 == nil then
        _____5F2F_66F2_7A0B_5EA6 = 0.1
    end
    if _____53F3_4FA7 == nil then
        _____53F3_4FA7 = false
    end
    if _____540E_65B9 == nil then
        _____540E_65B9 = false
    end
    if _____63A7_5236_70B9_4E2A_6570 == nil then
        _____63A7_5236_70B9_4E2A_6570 = 3
    end
    if _____63A7_5236_70B9_4E2A_6570 < 3 then
        _____63A7_5236_70B9_4E2A_6570 = 3
    end
    local path = {}
    local startPos = {x = 0, y = 0}
    path[#path + 1] = startPos
    local lastPos = startPos
    local finPos = {x = 0, y = 0.5}
    local pos1 = {
        x = (random:random() * 0.5 + 0.2) * (_____540E_65B9 and -1 or 1),
        y = (random:random() * 0.5 + 0.2) * 0.5 * (_____53F3_4FA7 and -1 or 1)
    }
    path[#path + 1] = pos1
    do
        local i = 0
        while i < _____63A7_5236_70B9_4E2A_6570 - 3 do
            local p = {
                x = lastPos.x + random:random() * (finPos.x - lastPos.x) * _____5F2F_66F2_7A0B_5EA6,
                y = lastPos.y + random:random() * (finPos.y - lastPos.y) * _____5F2F_66F2_7A0B_5EA6
            }
            path[#path + 1] = p
            lastPos = p
            i = i + 1
        end
    end
    path[#path + 1] = finPos
    do
        local i = 0
        while i < #path do
            console:log("x:", path[i + 1].x, "y:", path[i + 1].y)
            i = i + 1
        end
    end
    return path
end
function AbilityAPI.prototype.genBeizerPathPreset(self, _____7C7B_578B)
    if _____7C7B_578B == nil then
        _____7C7B_578B = 0
    end
    local path = {}
    local startPos = {x = 0, y = 0}
    path[#path + 1] = startPos
    local pos = {x = 0, y = 0}
    local randomDisX = math.random() * 0.05 - 0.025
    local randomDisY = math.random() * 0.05 - 0.025
    local list = {
        1,
        -1,
        2,
        -2,
        3,
        -3,
        10,
        -10
    }
    if _____7C7B_578B == 0 then
        _____7C7B_578B = list[math.floor(math.random() * #list) + 1]
    end
    repeat
        local ____switch78 = _____7C7B_578B
        local ____cond78 = ____switch78 == 1
        if ____cond78 then
            pos = {x = 0.18 + randomDisX, y = 0.25 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == -1
        if ____cond78 then
            pos = {x = -0.18 + randomDisX, y = 0.25 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == 2
        if ____cond78 then
            pos = {x = 0.18 + randomDisX, y = 0.13 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == -2
        if ____cond78 then
            pos = {x = -0.18 + randomDisX, y = 0.13 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == 3
        if ____cond78 then
            pos = {x = 0.25 + randomDisX, y = -0.1 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == -3
        if ____cond78 then
            pos = {x = -0.25 + randomDisX, y = -0.1 + randomDisY}
            path[#path + 1] = pos
            break
        end
        ____cond78 = ____cond78 or ____switch78 == 10
        if ____cond78 then
            pos = {x = 0.135 + randomDisX, y = -0.16 + randomDisY}
            path[#path + 1] = pos
            pos = {x = 0.245 + randomDisX, y = -0.12 + randomDisY}
            path[#path + 1] = pos
            pos = {x = 0.237 + randomDisX, y = -0.01 + randomDisY}
            break
        end
        ____cond78 = ____cond78 or ____switch78 == -10
        if ____cond78 then
            pos = {x = -0.135 + randomDisX, y = -0.16 + randomDisY}
            path[#path + 1] = pos
            pos = {x = -0.245 + randomDisX, y = -0.12 + randomDisY}
            path[#path + 1] = pos
            pos = {x = -0.237 + randomDisX, y = -0.01 + randomDisY}
            break
        end
    until true
    local finPos = {x = 0, y = 0.5}
    if math.abs(_____7C7B_578B) < 10 then
        path[#path + 1] = finPos
    else
        path[#path + 1] = pos
        path[#path + 1] = finPos
    end
    do
        local i = 0
        while i < #path do
            console:log("x:", path[i + 1].x, "y:", path[i + 1].y)
            i = i + 1
        end
    end
    return path
end
function AbilityAPI.prototype.moveByBezier(self, unit, target, path, speed, steps, time, curve_type, onFinish)
    if target.activeData ~= nil then
        target = target.y3Unit
    end
    local curTypeNum = curve_type or 0
    local curType
    if curTypeNum == 0 then
        curType = "quadratic"
    else
        curType = "cubic"
    end
    local bezierMover = __TS__New(
        TargetByBezierMover,
        unit,
        path,
        curType,
        steps,
        target,
        time,
        onFinish
    )
    bezierMover:start()
    self._bezierMover[self:genRandomId()] = bezierMover
end
function AbilityAPI.prototype.offsetPoint(self, _____521D_59CB_70B9, _____65CB_8F6C_89D2_5EA6, _____504F_79FB)
    local ax = 0
    local ay = 0
    if _____521D_59CB_70B9.activeData ~= nil then
        local p = _____521D_59CB_70B9:getPosition()
        ax = p.x
        ay = p.y
    elseif _____521D_59CB_70B9.get_x ~= nil then
        ax = _____521D_59CB_70B9:get_x()
        ay = _____521D_59CB_70B9:get_y()
    else
        ax = _____521D_59CB_70B9.x
        ay = _____521D_59CB_70B9.y
    end
    local vx = math.sin(_____65CB_8F6C_89D2_5EA6 * math.pi / 180)
    local vy = math.cos(_____65CB_8F6C_89D2_5EA6 * math.pi / 180)
    return {x = ax + vx * _____504F_79FB, y = ay + vy * _____504F_79FB}
end
function AbilityAPI.prototype.subtractionPoint(self, a, b)
    local ax = 0
    local ay = 0
    if a.activeData ~= nil then
        local p = a:getPosition()
        ax = p.x
        ay = p.y
    elseif a.get_x ~= nil then
        ax = a:get_x()
        ay = a:get_y()
    else
        ax = a.x
        ay = a.y
    end
    local bx = 0
    local by = 0
    if b.activeData ~= nil then
        local p = b:getPosition()
        bx = p.x
        by = p.y
    elseif b.get_x ~= nil then
        bx = b:get_x()
        by = b:get_y()
    else
        bx = b.x
        by = b.y
    end
    return {x = bx - ax, y = by - ay}
end
function AbilityAPI.prototype.additionPoint(self, a, b)
    local ax = 0
    local ay = 0
    if a.activeData ~= nil then
        local p = a:getPosition()
        ax = p.x
        ay = p.y
    elseif a.get_x ~= nil then
        ax = a:get_x()
        ay = a:get_y()
    else
        ax = a.x
        ay = a.y
    end
    local bx = 0
    local by = 0
    if b.activeData ~= nil then
        local p = b:getPosition()
        bx = p.x
        by = p.y
    elseif b.get_x ~= nil then
        bx = b:get_x()
        by = b:get_y()
    else
        bx = b.x
        by = b.y
    end
    return {x = ax + ay, y = ay + by}
end
function AbilityAPI.prototype.multiplicationPoint(self, a, scale)
    local x = 0
    local y = 0
    if a.activeData ~= nil then
        local p = a:getPosition()
        x = p.x
        y = p.y
    elseif a.get_x ~= nil then
        x = a:get_x()
        y = a:get_y()
    else
        x = a.x
        y = a.y
    end
    return {x = x * scale, y = y * scale}
end
function AbilityAPI.prototype.getDistance(self, _____4ECE_54EA_513F, _____5230_54EA_513F)
    if _____5230_54EA_513F.activeData ~= nil and not _____5230_54EA_513F:isAlive() and _____4ECE_54EA_513F.activeData ~= nil then
        return 2000
    end
    local ax = 0
    local ay = 0
    if _____4ECE_54EA_513F.activeData ~= nil then
        local p = _____4ECE_54EA_513F:getPosition()
        ax = p.x
        ay = p.y
    elseif _____4ECE_54EA_513F.get_x ~= nil then
        ax = _____4ECE_54EA_513F:get_x()
        ay = _____4ECE_54EA_513F:get_y()
    else
        ax = _____4ECE_54EA_513F.x
        ay = _____4ECE_54EA_513F.y
    end
    local bx = 0
    local by = 0
    if _____5230_54EA_513F.activeData ~= nil then
        local p = _____5230_54EA_513F:getPosition()
        bx = p.x
        by = p.y
    elseif _____5230_54EA_513F.get_x ~= nil then
        bx = _____5230_54EA_513F:get_x()
        by = _____5230_54EA_513F:get_y()
    else
        bx = _____5230_54EA_513F.x
        by = _____5230_54EA_513F.y
    end
    local distance = math.sqrt((bx - ax) * (bx - ax) + (by - ay) * (by - ay))
    return distance
end
function AbilityAPI.prototype.getIntensiveAreaTarget(self, targets, radius)
    local maxCount = 0
    local maxTarget = random:randomList(targets)
    local distance = radius * radius
    if #targets >= 20 then
        local ts = {}
        local x = {unit = maxTarget, distanceQuick = 0}
        for ____, target in ipairs(targets) do
            local distanceQuick = target:distanceQuick(maxTarget)
            ts[#ts + 1] = {unit = target, distanceQuick = distanceQuick}
        end
        __TS__ArraySort(
            ts,
            function(____, a, b) return a.distanceQuick - b.distanceQuick end
        )
        if #ts % 2 == 0 then
            x = ts[#ts / 2 + 1]
        else
            x = ts[math.floor(#ts / 2) + 1]
        end
        maxTarget = x.unit
        targets = __TS__ArrayFilter(
            targets,
            function(____, a) return a:isAlive() and maxTarget ~= a and a:distanceQuick(maxTarget) <= distance end
        )
    end
    for ____, target in ipairs(targets) do
        local count = 0
        for ____, targetX in ipairs(targets) do
            if targetX:isAlive() and target ~= targetX and target:distanceQuick(targetX) <= distance then
                count = count + 1
            end
        end
        if count > maxCount then
            maxCount = count
            maxTarget = target
        end
    end
    return maxTarget
end
function AbilityAPI.prototype.endSkill(self, ability, immediateAtkNextTarget)
    if immediateAtkNextTarget == nil then
        immediateAtkNextTarget = false
    end
    if ability.owner.y3Unit ~= nil and ability.owner.y3Unit:is_alive() then
        ability.owner.y3Unit:stop_all_abilities()
        ability.owner.y3Unit:stop_cur_animation()
        if immediateAtkNextTarget then
            local ____opt_22 = ability.owner.y3Unit
            local range = ____opt_22 and ____opt_22:get_alert_range()
            local target = ability.owner:findTarget(
                {"敌人"},
                nil,
                1,
                range * 5 + ability.owner:getCollisionRadius()
            )
            if target ~= nil and target:isAlive() and ability.owner ~= nil and ability.owner:isAlive() then
                ability.owner:attackTarget(target, range * 5)
            end
        end
    end
    for key in pairs(self._timerMap) do
        self._timerMap[key]:pause()
        self._timerMap[key]:remove()
    end
    self._timerMap = {}
    if ability.owner ~= nil and ability.owner:isAlive() then
        ability.owner:stopMove()
        ability.owner:stopGhost()
    end
end
function AbilityAPI.prototype.stopAbility(self, ability)
    local ____opt_24 = ability.owner.y3Unit
    if ____opt_24 and ____opt_24:is_alive() then
        local ____opt_26 = ability.owner.y3Unit
        if ____opt_26 ~= nil then
            ____opt_26:stop_all_abilities()
        end
    end
    for key in pairs(self._timerMap) do
        self._timerMap[key]:pause()
        self._timerMap[key]:remove()
    end
    self._timerMap = {}
    for key in pairs(self._watcherMap) do
        local ____opt_28 = self._watcherMap[key]
        if ____opt_28 ~= nil then
            self._watcherMap[key](self)
        end
    end
    self._watcherMap = {}
    for key in pairs(self._projectileMap) do
        local ____opt_30 = self._projectileMap[key]
        if ____opt_30 ~= nil then
            ____opt_30:remove()
        end
    end
    self._projectileMap = {}
    for key in pairs(self._beamLinkMap) do
        local ____opt_32 = self._beamLinkMap[key]
        if ____opt_32 ~= nil then
            ____opt_32:remove()
        end
    end
    self._beamLinkMap = {}
    for key in pairs(self._buffMap) do
        local ____opt_34 = self._buffMap[key]
        if ____opt_34 ~= nil then
            ____opt_34:remove()
        end
    end
    self._buffMap = {}
    for key in pairs(self._bezierMover) do
        local ____opt_36 = self._bezierMover[key]
        if ____opt_36 ~= nil then
            ____opt_36:remove()
        end
    end
    self._bezierMover = {}
    local simpleAbility = ability
    if simpleAbility ~= nil then
        simpleAbility._alreadyTriggered = false
    end
    if ability.owner ~= nil and ability.owner:isAlive() then
        ability.owner:stopMove()
        ability.owner:stopGhost()
    end
end
function AbilityAPI.prototype.getTargetByOrder(self, targets, order, needCount)
    local targetList = {}
    __TS__ArraySort(
        targets,
        function(____, a, b) return b:getValue(_____5355_4F4D_7C7B_578BID) - a:getValue(_____5355_4F4D_7C7B_578BID) end
    )
    while #targetList < needCount and #targets > 0 do
        do
            local i = 0
            while i < #targets do
                if targets[i + 1]:getValue(_____5355_4F4D_7C7B_578BID) == order and #targetList < needCount then
                    targetList[#targetList + 1] = targets[i + 1]
                end
                i = i + 1
            end
        end
        if order == 0 then
            break
        end
        order = math.floor(order / 10)
    end
    if #targetList == 0 then
        return nil
    end
    return targetList
end
function AbilityAPI.prototype.setUnderParticle(self, target, id, scale, angle, time, height)
    if scale == nil then
        scale = 1
    end
    if id == -1 or not target or not target:isAlive() then
        return
    end
    self:addParticle(
        id,
        target,
        angle,
        scale,
        time,
        height,
        "foot_middle",
        nil,
        true
    )
end
function AbilityAPI.prototype.removeEffect(self, source, target, effectEntities, time)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(time))
        target:removeEffect(source, effectEntities)
    end)
end
function AbilityAPI.prototype.getParabolaHeight(self, angle, distance)
    local d = distance / 2
    local angleRadians = angle * (math.pi / 180)
    local tanTheta = math.tan(angleRadians)
    local opposite = d / tanTheta
    return opposite
end
__TS__SetDescriptor(
    AbilityAPI.prototype,
    "owner",
    {get = function(self)
    end},
    true
)
__TS__SetDescriptor(
    AbilityAPI.prototype,
    "ability",
    {get = function(self)
        return nil
    end},
    true
)
return ____exports
