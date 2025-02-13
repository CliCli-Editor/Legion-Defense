local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 20,["24"] = 25,["25"] = 30,["26"] = 35,["27"] = 40,["28"] = 45,["29"] = 50,["30"] = 55,["31"] = 60,["32"] = 69,["33"] = 15,["34"] = 73,["35"] = 74,["36"] = 75,["37"] = 77,["38"] = 79,["39"] = 97,["40"] = 99,["41"] = 100,["42"] = 100,["43"] = 100,["44"] = 100,["45"] = 100,["46"] = 101,["47"] = 102,["49"] = 103,["50"] = 103,["51"] = 104,["52"] = 105,["53"] = 106,["54"] = 107,["56"] = 110,["57"] = 111,["59"] = 113,["61"] = 103,["65"] = 118,["66"] = 120,["67"] = 123,["68"] = 125,["69"] = 126,["70"] = 127,["71"] = 127,["72"] = 127,["74"] = 129,["76"] = 134,["77"] = 136,["78"] = 137,["79"] = 138,["80"] = 138,["81"] = 138,["83"] = 140,["86"] = 99});
local ____exports = {}
local fields = {
    "id",
    "steamId",
    "y3Id",
    "icon",
    "enIcon",
    "name",
    "price",
    "des",
    "tipIcon",
    "pos"
}
____exports.SteamGoodsConfig = __TS__Class()
local SteamGoodsConfig = ____exports.SteamGoodsConfig
SteamGoodsConfig.name = "SteamGoodsConfig"
function SteamGoodsConfig.prototype.____constructor(self)
    self.id = 0
    self.steamId = 0
    self.y3Id = 0
    self.icon = 0
    self.enIcon = 0
    self.name = vue.ref("")
    self.price = 0
    self.des = vue.ref("")
    self.tipIcon = 0
    self.pos = 0
end
____exports.steamGoodsConfigList = {}
____exports.steamGoodsConfigMap = {}
____exports.map = ____exports.steamGoodsConfigMap
____exports.steamGoodsConfigMap_steamId = {}
____exports.steamGoodsConfigMap_pos = {}
local encryptModelData = "wR59rjde52TY+kSk8zX++PatIWxWAokLAtVGLyOu86rcYMvWDkrj5mtz9HO/PSclPIZcIiQ2ip6QX3oR7nH9rWTUC+YeXy8G34abyd0oLAWPJb3hLEinm1GWCaAyK2oNtbpuI75hk7tYH9aRRao7rClXoguWKdOGf7eAjNwP77boquM49DnZbB3/pLIlPzPUPXTCp5JuhF8uICjBGnBOJexu2foQQwkpukmvu6wkdh2RWx8o0ZRmL2qvgU8XGjXw46ikeqCq5WJHS/lWNpXl8gzU8hO0ZRMW9PkVRcqiCiPQhzoric0KopoR+SfIPrIy4kWjq+eF7/G/Gdmrh8Q85zy4gI4UPhBBvjBkF5fjdYZOy0663bgU5eqU2jndXgKQ52EaHF9bW/ZXtNA0oFqF3/efBSyGw4ZAXClGB3JuFXFeSc0DAyxkRe403t5s66o93zKkvpG3xFJbaBKZWq5fcLwEqmuvcgGR8QxTpEM0xC8UAslYsAs5WbUf7rCjmXItFrvohhc1Oik+SQA3SGt0jL9oFFEnfBl3HbsPJBXdB8yIjbdhy1ZqvEJRO7p0dlfxlcu7djJEaDr+n3kR+tnqKLPG0eHySEMJ/JAI4tlQ54+/zDWTlP2orIYCkuHvqP8yoNWAc6GLo81nkwRdQ5X+xA3wybG9paqYkLRaRwitf0EeyNvXSavoJ6PPG7JnC6VxXJUckee/lBxZ4z2PSYhj7GOkd927Vs++jBplso9Mesp5ye+xaDp/dUKAUJbnlKNMZAKiAEFXQLtXTrJOsk66Jut3fkFuhrrCdaNCn5Wb4U6JSjmsZ97x+4KsKSN+tdYoQdbzdsHB5CFlBxDaqWRXrHyK2vCZJDqa9csa5C+OS3KBvzhVSpBNdc/0ygToiY7Gf28yTs1OpAXI4Dumn4PJRiUFBDamNsJHt0d9VOqZ/J6vqmpUxbQfR9GEz9jaJ00U0ocTH5Hhotc9T90KHarVBb+Bz39g9Ij60Y3P16K1aAVOAC6drPur4pX7eqtWu4H5foPKF/BfxqqWSSJr7ONNZYjAN+yQiAWIQdJEfZoT+wN21hkzyIPkIQnCmEGhoHM8Nn63riqAjNnKyleLm5NwrHcEaSs/NWBqU+r1yRVf8aI6x1BVZ8yxHMPN3E/Zs2bTr6FMlHQ0CouJsjERYQQZxgs2cLLBcGXns60IzLmJDknZ+CxnkYNee4CXbtjPUccs6T3Fz2HYFfDra8QaakhnkYRqpWoAmNs0LI0LGxl/K1iwdDncvr5PPG/pHvd+wBTBQlUrPI6XXZjqYq2ig/0cLSSh5lE8uTlaZ7PYWyb8s7hqBTrk/zTCsysDLZIMa7bHZUMoroSuJX432mpoEznOiuyQP2W2EYAoaMc7ktc8kaOAdECD+78LRzlbshxA1vxXmpodpEpX/mgUIFLFncMIwqJ0CPKNRh/rsGyU8QqGj2S2U+ghcQCdr9AiWV3I7GdVQMVmTFvakI2qPpfU7NnuLM9iqys8huFjXVjIRwtduzQdrSgpx6TrHPIfNf2nzPoPopTP8PsyT1OpSPhhh8mazDMxdtfwTqfryeCjdsMlCTYTbNnyDbvfmA2ISFZI72U0R4bu7bS8tDRyllcLKIJTW6M9Veoeya29VN05qLCwYK2X7nwCg0K7KTDxuF7aYvcWP4JN/EPFNkXZg9/ViDhfbKmwat96kOk8H62jJgInESdbVKDfEadbw2SqaApF/HUdWjxD9SR2BxpDyb2fY+MWTxYqT6ILDpKsF7XvVoTa4WxaJzR5Z0ggMr7+N0BwGGfTNyDyNmJbM7OKrzM5N6AbXxGqeZ73xRr20rVfGAyYdLEaRTg7Qg5e+U8VSZTegupAnUDjM+Tympr+IXsH9m9tu9KpNvKUEp/IvOXSKVVBhA3vXhIX3tLftOOuN4RyuSbP/OMeKOnRe9kk49iH39lFRzZ7YAN/BRK4FDsdpAGa3CiS34VbkZ+zfMHlDnyChCy/Y5lGUKEouGRrEFgLTYBKGBEg0evsi6R0PaNJ/K0yn1DSE58bubxLu4Fq5RWV97nKqGqmeylrW1nhvcE+j/gV6mZmc6l3cFYEu/l/htYwzZNZbhHcdtz50TqXDZ3cGFcgd2Yg8+7nf+YgWIQnBVHavN/GdO56A3rOuC8KTzY6igv+Q8Izhauycf5Z4fWknvXTjCDIRGAjhLlTJWxRKvZR4dI6bRSMXrFuWDo5E+FelbjjptfDiqxI8gDIISqRatIQgtprBrYCfVrcpZWs+BtdbpslKvVIGcO6wzLzdUsXLOd9CTOQPT+F5i5AieREoS/BDcATnvGVJP/m7587f6rqoiho/Dhpn3PZY+uJnX0B0Q4hkIp2+iNpqcfVJsu3DRXB+Zd3XomJYmljpTJez9ItNfTaESMqe/Pi2Dc+sueg8Jr6KZLv5y1pkNX+/+hh6jUNDCboJ8qsuz34/rponvGH8pVpm/5fAlsXORPsGlMfYqPiAoW/pvEM/HHSHdsc6bmSvB5jWD9F2OvPhMz3rVlyclmAyafjRPz6h4MtQXZgiste1WiJ6Wme1YDkoSXcb8PuJ5znzVzmJVnoPRbXpFRqxEHiZkG4sQZwky922jKX7KS5OxDDgqYv4x1jmbDgKiXc6A/cxNNy9mxFOrv8qXuquw=="
function ____exports.SteamGoodsConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "steamgoodsiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("steamgoods&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SteamGoodsConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                if type(value) == "string" and obj[key].value ~= nil then
                    obj[key].value = value
                else
                    obj[key] = value
                end
                i = i + 1
            end
        end
        local ____exports_steamGoodsConfigList_0 = ____exports.steamGoodsConfigList
        ____exports_steamGoodsConfigList_0[#____exports_steamGoodsConfigList_0 + 1] = obj
        ____exports.steamGoodsConfigMap[obj.id] = obj
        if obj.steamId ~= nil and obj.steamId ~= nil then
            local list = ____exports.steamGoodsConfigMap_steamId[obj.steamId]
            if not list then
                local ____temp_1 = {}
                ____exports.steamGoodsConfigMap_steamId[obj.steamId] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
        if obj.pos ~= nil and obj.pos ~= nil then
            local list = ____exports.steamGoodsConfigMap_pos[obj.pos]
            if not list then
                local ____temp_2 = {}
                ____exports.steamGoodsConfigMap_pos[obj.pos] = ____temp_2
                list = ____temp_2
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
