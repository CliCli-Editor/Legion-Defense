local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 21,["24"] = 26,["25"] = 31,["26"] = 36,["27"] = 41,["28"] = 46,["29"] = 51,["30"] = 56,["31"] = 61,["32"] = 66,["33"] = 15,["34"] = 70,["35"] = 71,["36"] = 72,["37"] = 88,["38"] = 90,["39"] = 91,["40"] = 91,["41"] = 91,["42"] = 91,["43"] = 91,["44"] = 92,["45"] = 93,["47"] = 94,["48"] = 94,["49"] = 95,["50"] = 96,["51"] = 97,["52"] = 98,["54"] = 101,["55"] = 102,["57"] = 104,["59"] = 94,["63"] = 109,["64"] = 111,["66"] = 90});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "decorate",
    "quality",
    "icon",
    "wing",
    "ban",
    "steamBan",
    "isDefault"
}
____exports.PetHaloConfig = __TS__Class()
local PetHaloConfig = ____exports.PetHaloConfig
PetHaloConfig.name = "PetHaloConfig"
function PetHaloConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.decorate = 0
    self.quality = 0
    self.icon = 0
    self.wing = 0
    self.ban = 0
    self.steamBan = false
    self.isDefault = 0
end
____exports.petHaloConfigList = {}
____exports.petHaloConfigMap = {}
____exports.map = ____exports.petHaloConfigMap
local encryptModelData = "K12oQin+/uPcWxtN+zNcvgns0pDhQFhu/8OyjX7S8YzI0TtJqRwa5LmyYjdC32kKWnKBAXJ7zLQKyq9TXbjznOOjipCxyNHN4xwMbPbEwrIEm48XQdTPxts6asdjA7+nr/yOF/jDhQJPoa6pAOMyruCvhtCX5qhp4AQ4a16ZLK5xQkP7kQqbor74L4Z9Cf7ZkVlHBrpGnmvJ7e5xV+2m+ALFn37No2DCWpJTYejOUxJVVYDFzaY8oaqy37P54rcapgIdP69IgLfwnu9RrUHLWPb6LbjDPLymP7VxrKrPHRi82otFTXljXZhAi3GUQHTYwGauieq4DWLuuUak/CdqkYJKtMXLQHS89jPE+WbUZmBvpY46TuCbv2UMuD5xabssBnsM6B1mv8yq/pYsWBWfnAjQRKNwMyIsJiNCwHVVYVyfWnJOf+zH1eip82FVhtD3xSZsZlPt2n0j69gFMJX+RC/CKrkX+DA8/QOok5gDzPDTgX/M7WEnfNFFnVxDXFKa+Me64kewouDjX0SlxUXNR7I/wYu0CMjPKDxFfXjPuDtJDS2EpLN4PuPMeRnvYOecF7qFO2G0fVduh/uXiGrPz7rJdTeTS3aEQdQw3YQyG18q5a+RU9YSxT1tBWCjHUXpxHH7bqQukOixzI1GjCshUspd76I+9Fq0HV21o8JIesnAdnVUNCh0FkoYFx1Sly5fWkztN4oy3FSMGHA08CKN/TsY1eDbQpge7YJxKEi+VksUctLaWO118fRGhHY8oM4AMdBrRaX1AP3LmkEZeYunuKQPjTKP6v9MYuVsBTn1s9DCATbciLZuVyB9VJ1J4VdsIYiYzbyqpttgDchW+UCUASFBGJSIzwlnTTk2uflBDkeJPsE0ZUY03C60PfvqJhsQR8XPbkM8akiy3k/TcNYruoGix7tBALcPBkbOZ+lGYfXdmUaUOmws682k0UwfKmRdQMq77F3x8Vd2I1MBn5RVle8Is+3uy6werEQ5rKf+I2+h7lF6swNgvW5jNLkYA8lV0SfpeMsDJW4+a6AWu/G8fvnJqF1Cm0lcjeUhzvht3S9+poRfsC5SP1egPE4Q6MSV7hvokPNBCnAc02PRTCAnuEWCASFA9jcjM9ov9EUdVdMB8I/J+Di4neALrQ3LlCRhYP74ksvlMPFwyEhNxqNie4fJZwKAOnn27i2+5RXZVFb5eXUP/Lf1ftU956iN1jPmi6Y4SyG7MZntsBLZ1ELMb0wnnIr3cOyErhI0xSlY1EbM75DjpP79YCK60pbhoRJL"
function ____exports.PetHaloConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "pethaloiWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("pethalo&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetHaloConfig)
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
        local ____exports_petHaloConfigList_0 = ____exports.petHaloConfigList
        ____exports_petHaloConfigList_0[#____exports_petHaloConfigList_0 + 1] = obj
        ____exports.petHaloConfigMap[obj.id] = obj
    end
end
return ____exports
