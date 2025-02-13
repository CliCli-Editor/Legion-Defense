local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__StringEndsWith = ____lualib.__TS__StringEndsWith
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 1,["14"] = 3,["15"] = 3,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["21"] = 12,["22"] = 42,["23"] = 7,["24"] = 18,["25"] = 19,["26"] = 20,["28"] = 18,["29"] = 44,["30"] = 45,["31"] = 47,["32"] = 49,["33"] = 50,["35"] = 52,["36"] = 52,["37"] = 53,["38"] = 52,["39"] = 54,["40"] = 55,["41"] = 56,["42"] = 52,["43"] = 52,["44"] = 44,["45"] = 60,["46"] = 61,["47"] = 62,["48"] = 60,["54"] = 25,["55"] = 26,["57"] = 28,["58"] = 29,["60"] = 31,["62"] = 34,["63"] = 35,["64"] = 36,["66"] = 38,["67"] = 39,["72"] = 72,["73"] = 72,["74"] = 72,["75"] = 72,["76"] = 74,["77"] = 75,["78"] = 76,["80"] = 77,["84"] = 79,["85"] = 74,["86"] = 81,["87"] = 82,["88"] = 83,["90"] = 86,["91"] = 86,["92"] = 86,["93"] = 86,["94"] = 86,["95"] = 81,["96"] = 89,["97"] = 90,["98"] = 89,["99"] = 95,["100"] = 95,["101"] = 95,["102"] = 95,["103"] = 97,["104"] = 98,["105"] = 99,["107"] = 100,["111"] = 102,["112"] = 97,["113"] = 105,["114"] = 106,["116"] = 107,["120"] = 109,["121"] = 110,["123"] = 113,["124"] = 113,["125"] = 113,["126"] = 113,["127"] = 113,["128"] = 105,["129"] = 115,["130"] = 116,["131"] = 115,["132"] = 127,["133"] = 127,["134"] = 127,["135"] = 127,["136"] = 129,["137"] = 130,["138"] = 131,["140"] = 132,["144"] = 134,["145"] = 135,["147"] = 137,["148"] = 129,["149"] = 140,["150"] = 141,["152"] = 142,["156"] = 144,["157"] = 145,["159"] = 147,["160"] = 148,["161"] = 148,["162"] = 148,["163"] = 148,["164"] = 148,["165"] = 140,["166"] = 151,["167"] = 152,["168"] = 151,["169"] = 154,["170"] = 155,["171"] = 154,["172"] = 158,["173"] = 159,["174"] = 158,["175"] = 162,["176"] = 163,["177"] = 164,["178"] = 166,["179"] = 167,["180"] = 168,["182"] = 169,["183"] = 169,["185"] = 170,["186"] = 171,["187"] = 172,["188"] = 173,["189"] = 174,["191"] = 176,["192"] = 182,["193"] = 184,["194"] = 185,["195"] = 186,["199"] = 169,["202"] = 190,["203"] = 191,["204"] = 193,["205"] = 194,["207"] = 202,["208"] = 203,["209"] = 204,["211"] = 206,["212"] = 206,["213"] = 208,["215"] = 162,["216"] = 218,["217"] = 219,["218"] = 218,["219"] = 223,["220"] = 223,["221"] = 223,["222"] = 223,["223"] = 225,["224"] = 226,["225"] = 227,["227"] = 228,["231"] = 230,["232"] = 225,["233"] = 233,["234"] = 238,["235"] = 233,["236"] = 240,["237"] = 241,["238"] = 240,["239"] = 245,["240"] = 245,["241"] = 245,["242"] = 245,["243"] = 247,["244"] = 248,["245"] = 249,["247"] = 250,["251"] = 252,["252"] = 247,["253"] = 255,["254"] = 256,["256"] = 257,["260"] = 260,["261"] = 255,["262"] = 262,["263"] = 263,["264"] = 262,["265"] = 330,["266"] = 330,["267"] = 330,["268"] = 330,["269"] = 339,["270"] = 340,["271"] = 341,["273"] = 343,["274"] = 344,["275"] = 348,["276"] = 349,["277"] = 350,["278"] = 351,["280"] = 353,["283"] = 356,["286"] = 359,["289"] = 362,["290"] = 339,["291"] = 365,["292"] = 366,["293"] = 367,["295"] = 370,["296"] = 371,["297"] = 372,["298"] = 373,["300"] = 376,["301"] = 376,["302"] = 376,["303"] = 376,["304"] = 376,["305"] = 377,["308"] = 385,["311"] = 381,["312"] = 381,["313"] = 382,["314"] = 383,["320"] = 388,["321"] = 365,["322"] = 391,["323"] = 392,["324"] = 393,["326"] = 396,["327"] = 397,["328"] = 397,["329"] = 397,["330"] = 397,["331"] = 397,["332"] = 398,["333"] = 401,["334"] = 391,["335"] = 404,["336"] = 405,["337"] = 406,["339"] = 407,["343"] = 409,["344"] = 410,["345"] = 410,["346"] = 411,["349"] = 416,["352"] = 414,["358"] = 419,["359"] = 420,["360"] = 421,["362"] = 423,["365"] = 427,["368"] = 425,["369"] = 425,["370"] = 425,["371"] = 425,["377"] = 430,["379"] = 433,["381"] = 434,["385"] = 404,["386"] = 438,["389"] = 448,["392"] = 440,["393"] = 441,["394"] = 442,["395"] = 443,["397"] = 445,["398"] = 446,["404"] = 439,["407"] = 438,["408"] = 451,["409"] = 452,["410"] = 451,["411"] = 455,["412"] = 456,["413"] = 456,["414"] = 456,["415"] = 456,["416"] = 457,["417"] = 458,["419"] = 460,["420"] = 461,["421"] = 455,["422"] = 464,["423"] = 465,["424"] = 466,["425"] = 467,["426"] = 464,["427"] = 470,["428"] = 471,["429"] = 470});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS = ____SafeTableUtils.LoopS
local S = ____SafeTableUtils.S
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Saver = include("framework.storage.Saver")
local Saver = ____Saver.Saver
local ArchiveBase = __TS__Class()
ArchiveBase.name = "ArchiveBase"
function ArchiveBase.prototype.____constructor(self)
    self.local_data = S(vue.reactive({value = nil}))
    self.deepWatchStop = nil
end
function ArchiveBase.prototype.preLoad(self)
    if self.local_data.value == nil then
        self:load()
    end
end
function ArchiveBase.prototype.load(self)
    console:log("监听watch deep 变化", self.constructor.name)
    self:download()
    if self.deepWatchStop ~= nil then
        self:deepWatchStop()
    end
    self.deepWatchStop = self:watchDeep(
        function()
            return self.local_data.value
        end,
        function()
            console:log("触发watch deep 变化", self.constructor.name)
            self:upload()
        end
    )
end
function ArchiveBase.prototype.watchDeep(self, compute, cb)
    local watchStop = vue.watch(compute, cb, {immediate = false, flush = "frameSync", deep = true})
    return watchStop
end
__TS__SetDescriptor(
    ArchiveBase.prototype,
    "data",
    {
        get = function(self)
            if self.slot == 0 then
                error("存档槽位未设置，请提前设置好", 0)
            end
            if self.local_data.value == nil then
                self:load()
            end
            return self.local_data.value
        end,
        set = function(self, v)
            if self.slot == 0 then
                error("存档槽位未设置，请提前设置好", 0)
            end
            self:preLoad()
            self.local_data.value = v
        end
    },
    true
)
____exports.ArchiveBaseString = __TS__Class()
local ArchiveBaseString = ____exports.ArchiveBaseString
ArchiveBaseString.name = "ArchiveBaseString"
__TS__ClassExtends(ArchiveBaseString, ArchiveBase)
function ArchiveBaseString.prototype.download(self)
    local data = Saver:load_string(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取字符串存档【槽位") .. tostring(self.slot)) .. "】失败",
            0
        )
    end
    self.local_data.value = data
end
function ArchiveBaseString.prototype.upload(self)
    if type(self.local_data.value) ~= "string" then
        console:error(((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的字符串存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. self.local_data.value) .. " 不是字符串类型！！！")
    end
    Saver:save_string(
        LOCAL.PLAYER,
        self.slot,
        tostring(self.local_data.value)
    )
end
function ArchiveBaseString.prototype.__tostring(self)
    return tostring(self.local_data.value)
end
____exports.ArchiveBaseInt = __TS__Class()
local ArchiveBaseInt = ____exports.ArchiveBaseInt
ArchiveBaseInt.name = "ArchiveBaseInt"
__TS__ClassExtends(ArchiveBaseInt, ArchiveBase)
function ArchiveBaseInt.prototype.download(self)
    local data = Saver:load_number(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取整数存档【槽位") .. tostring(self.slot)) .. "】失败",
            0
        )
    end
    self.local_data.value = data
end
function ArchiveBaseInt.prototype.upload(self)
    if type(self.local_data.value) ~= "number" then
        error(
            ((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的整数存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. tostring(self.local_data.value)) .. " 不是整数！！！",
            0
        )
    end
    if self.local_data.value ~= math.floor(self.local_data.value) then
        console:error(((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的整数存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. tostring(self.local_data.value)) .. " 不是整数！！！")
    end
    Saver:save_number(
        LOCAL.PLAYER,
        self.slot,
        math.floor(self.local_data.value)
    )
end
function ArchiveBaseInt.prototype.__tostring(self)
    return tostring(self.local_data.value)
end
____exports.ArchiveBaseRank = __TS__Class()
local ArchiveBaseRank = ____exports.ArchiveBaseRank
ArchiveBaseRank.name = "ArchiveBaseRank"
__TS__ClassExtends(ArchiveBaseRank, ArchiveBase)
function ArchiveBaseRank.prototype.download(self)
    local data = Saver:load_number(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取整数存档【槽位") .. tostring(self.slot)) .. "】失败",
            0
        )
    end
    if type(data) == "string" then
        data = __TS__ParseInt(data)
    end
    self.local_data.value = data
end
function ArchiveBaseRank.prototype.upload(self)
    if type(self.local_data.value) ~= "number" then
        error(
            ((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的整数存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. tostring(self.local_data.value)) .. " 不是整数类型！！！",
            0
        )
    end
    if self.local_data.value ~= math.floor(self.local_data.value) then
        console:error(((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的整数存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. tostring(self.local_data.value)) .. " 不是整数！！！")
    end
    console:log((("【存档更新】槽位：" .. tostring(self.slot)) .. ", 数据: ") .. tostring(self.local_data.value))
    Saver:save_number(
        LOCAL.PLAYER,
        self.slot,
        math.floor(self.local_data.value)
    )
end
function ArchiveBaseRank.prototype.get_rank(self)
    return LOCAL.PLAYER.handle:get_player_archive_rank_num(self.slot)
end
function ArchiveBaseRank.prototype.__tostring(self)
    return tostring(self.local_data.value)
end
function ArchiveBaseRank.prototype.getSlot(self)
    return self.slot
end
function ArchiveBaseRank.prototype.getRankData(self, count)
    local slot = self:getSlot()
    local rankList = {}
    local selfName = LOCAL.PLAYER:get_platform_name()
    local selfRank = nil
    local selfValue = nil
    do
        local index = 0
        while index < count do
            do
                local name = tostring(GameAPI.get_archive_rank_player_nickname(slot, index + 1))
                local tag = tostring(GameAPI.get_archive_rank_player_tag(slot, index + 1))
                local value = y3.game.get_archive_rank_player_archive_value(slot, index + 1)
                if name == "" and tag == "" then
                    goto __continue36
                end
                rankList[#rankList + 1] = {name = name, tag = tag, value = value, rank = index + 1}
                console:log(name, tag, value, index + 1)
                if selfName == name .. tag then
                    selfRank = index + 1
                    selfValue = value
                end
            end
            ::__continue36::
            index = index + 1
        end
    end
    local name = LOCAL.PLAYER:get_name()
    local tag = LOCAL.PLAYER:get_platform_uuid()
    if selfRank ~= nil and selfValue ~= nil then
        return {self = {name = name, tag = tag, value = selfValue, rank = selfRank}, rankList = rankList}
    else
        local rank = LOCAL.PLAYER:get_rank_num(slot)
        if rank == nil or rank <= 0 then
            rank = 10000
        end
        local ____opt_0 = rankList[rank]
        local value = ____opt_0 and ____opt_0.value or self.data
        return {self = {name = name, tag = tag, value = value, rank = rank}, rankList = rankList}
    end
end
function ArchiveBaseRank.prototype.getSelfRank(self)
    return LOCAL.PLAYER:get_rank_num(self:getSlot())
end
____exports.ArchiveBaseBoolean = __TS__Class()
local ArchiveBaseBoolean = ____exports.ArchiveBaseBoolean
ArchiveBaseBoolean.name = "ArchiveBaseBoolean"
__TS__ClassExtends(ArchiveBaseBoolean, ArchiveBase)
function ArchiveBaseBoolean.prototype.download(self)
    local data = Saver:load_boolean(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取布尔型存档【槽位") .. tostring(self.slot)) .. "】失败",
            0
        )
    end
    self.local_data.value = data
end
function ArchiveBaseBoolean.prototype.upload(self)
    Saver:save_boolean(LOCAL.PLAYER, self.slot, self.local_data.value)
end
function ArchiveBaseBoolean.prototype.__tostring(self)
    return tostring(self.local_data.value)
end
____exports.ArchiveBaseReal = __TS__Class()
local ArchiveBaseReal = ____exports.ArchiveBaseReal
ArchiveBaseReal.name = "ArchiveBaseReal"
__TS__ClassExtends(ArchiveBaseReal, ArchiveBase)
function ArchiveBaseReal.prototype.download(self)
    local data = Saver:load_real(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取实数型存档【槽位") .. tostring(self.slot)) .. "】失败",
            0
        )
    end
    self.local_data.value = data
end
function ArchiveBaseReal.prototype.upload(self)
    if type(self.local_data.value) ~= "number" then
        error(
            ((((("【存档警告】玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "的实数型存档【槽位") .. tostring(self.slot)) .. "】对应的数据 ") .. tostring(self.local_data.value)) .. " 不是实数型！！！",
            0
        )
    end
    Saver:save_number(LOCAL.PLAYER, self.slot, self.local_data.value)
end
function ArchiveBaseReal.prototype.__tostring(self)
    return tostring(self.local_data.value)
end
____exports.ArchiveBaseProto = __TS__Class()
local ArchiveBaseProto = ____exports.ArchiveBaseProto
ArchiveBaseProto.name = "ArchiveBaseProto"
__TS__ClassExtends(ArchiveBaseProto, ArchiveBase)
function ArchiveBaseProto.prototype.deepClone(self, data)
    if type(data) ~= "table" then
        return data
    end
    local a = {}
    for k in pairs(data) do
        if type(data[k]) == "number" then
            if type(k) == "string" then
                if __TS__StringEndsWith(k, "_double") then
                    a[k] = self:deepClone(data[k])
                else
                    a[k] = math.floor(data[k])
                end
            else
                a[k] = math.floor(data[k])
            end
        else
            a[k] = self:deepClone(data[k])
        end
    end
    return a
end
function ArchiveBaseProto.prototype.encode(self, data)
    if self.name == "" or self.name == nil or self.name ~= self.constructor.name then
        error("proto解析的类名未设置, 请提前设置好 " .. self.constructor.name, 0)
    end
    local simpleData = self:deepClone(data)
    local e_data = y3.pb.encode(self.name, simpleData)
    if e_data == nil or e_data == "" then
        return ""
    end
    local edata = y3.aes.encrypt(
        "&UcD@0#v^RmZz)KKV~heroiWu%C6F0WV",
        string.sub("49Uxxxero&49UxrT#pizdc*Km", 5, 20),
        e_data
    )
    local base64, len = y3_crypto.base64_encode(edata, #edata)
    do
        local function ____catch(e)
            console:error(e)
        end
        local ____try, ____hasReturned = pcall(function()
            local ____require_result_2 = include("logic.utils.TraceLogUtils")
            local traceLogUtils = ____require_result_2.traceLogUtils
            local text = JSON:stringify(simpleData)
            traceLogUtils:upload(self.slot, text)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    return __TS__StringReplaceAll(base64, "=", ":")
end
function ArchiveBaseProto.prototype.decode(self, data)
    if self.name == "" or self.name == nil or self.name ~= self.constructor.name then
        error("proto解析的类名未设置, 请提前设置好 " .. self.constructor.name, 0)
    end
    local base64, len = y3_crypto.base64_decode(__TS__StringReplaceAll(data, ":", "="))
    local x = y3.aes.decrypt(
        "&UcD@0#v^RmZz)KKV~heroiWu%C6F0WV",
        string.sub("49Uxxxero&49UxrT#pizdc*Km", 5, 20),
        base64
    )
    local result = y3.pb.decode(self.name, x)
    return result
end
function ArchiveBaseProto.prototype.download(self)
    local data = Saver:load_string(LOCAL.PLAYER, self.slot)
    if data == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "获取") .. tostring(self.slot)) .. "存档失败",
            0
        )
    end
    console:log("LOAD ARCHIVE", LOCAL.PLAYER_ID, self.slot, data)
    local ____require_result_3 = include("logic.utils.TraceLogUtils")
    local traceLogUtils = ____require_result_3.traceLogUtils
    if data == "" then
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned = pcall(function()
                traceLogUtils:download(self.slot, "空存档")
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
        self.local_data.value = LoopS(self:default())
        console:log("【存档】proto类型存档,第一次获取为空,使用默认值,并且上传服务器")
        self:upload()
    else
        local decodeData = self:decode(data)
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned = pcall(function()
                traceLogUtils:download(
                    self.slot,
                    JSON:stringify(decodeData)
                )
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
        self.local_data.value = LoopS(decodeData)
    end
    if self.local_data.value == nil then
        error(
            ((("玩家ID: " .. tostring(LOCAL.PLAYER_ID)) .. "解析") .. tostring(self.slot)) .. "存档失败",
            0
        )
    end
end
function ArchiveBaseProto.prototype.upload(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local v = self:encode(self.local_data.value)
            if v == "" or v == nil then
                self:download()
                return true
            end
            console:log((((("【存档更新】槽位：" .. tostring(self.slot)) .. ", 数据: ") .. tostring(self)) .. ", 编译后数据") .. v)
            Saver:save_string(LOCAL.PLAYER, self.slot, v)
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function ArchiveBaseProto.prototype.__tostring(self)
    return JSON:stringify(self.local_data.value)
end
function ArchiveBaseProto.prototype.pbEncode(self)
    local e_data = y3.pb.encode(
        self.name,
        self:deepClone(self.local_data.value)
    )
    if e_data == nil or e_data == "" then
        return ""
    end
    local base64, len = y3_crypto.base64_encode(e_data, #e_data)
    return base64
end
function ArchiveBaseProto.pbDecode(self, name, data)
    local base64, len = y3_crypto.base64_decode(data)
    local result = y3.pb.decode(name, base64)
    return result
end
function ArchiveBaseProto.prototype.clear(self)
    Saver:save_string(LOCAL.PLAYER, self.slot, "")
end
return ____exports
