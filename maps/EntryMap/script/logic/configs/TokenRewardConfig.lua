local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 14,["16"] = 14,["17"] = 14,["18"] = 14,["19"] = 14,["20"] = 14,["21"] = 14,["22"] = 14,["23"] = 14,["24"] = 14,["25"] = 14,["26"] = 14,["27"] = 14,["28"] = 16,["29"] = 16,["30"] = 16,["32"] = 21,["33"] = 26,["34"] = 31,["35"] = 37,["36"] = 39,["37"] = 58,["38"] = 64,["39"] = 70,["40"] = 76,["41"] = 78,["42"] = 97,["43"] = 103,["44"] = 109,["45"] = 16,["50"] = 45,["51"] = 46,["52"] = 47,["54"] = 49,["55"] = 49,["56"] = 49,["57"] = 49,["60"] = 52,["68"] = 84,["69"] = 85,["70"] = 86,["72"] = 88,["73"] = 88,["74"] = 88,["75"] = 88,["78"] = 91,["82"] = 113,["83"] = 114,["84"] = 171,["85"] = 173,["86"] = 174,["87"] = 174,["88"] = 174,["89"] = 174,["90"] = 174,["91"] = 175,["92"] = 176,["94"] = 177,["95"] = 177,["96"] = 178,["97"] = 179,["98"] = 180,["99"] = 181,["101"] = 184,["102"] = 177,["105"] = 187,["107"] = 188,["108"] = 190,["110"] = 173});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "tokenRewardGroup",
    "exp",
    "_propId",
    "num",
    "name",
    "des",
    "_payPropId",
    "payNum",
    "payName",
    "payDes"
}
____exports.TokenRewardConfig = __TS__Class()
local TokenRewardConfig = ____exports.TokenRewardConfig
TokenRewardConfig.name = "TokenRewardConfig"
function TokenRewardConfig.prototype.____constructor(self)
    self.id = 0
    self.tokenRewardGroup = 0
    self.exp = 0
    self._propId = {}
    self._fkpropId = nil
    self.num = {}
    self.name = ""
    self.des = ""
    self._payPropId = {}
    self._fkpayPropId = nil
    self.payNum = {}
    self.payName = ""
    self.payDes = ""
end
__TS__SetDescriptor(
    TokenRewardConfig.prototype,
    "propId",
    {get = function(self)
        if self._fkpropId == nil then
            if not self._propId then
                self._fkpropId = {}
            else
                self._fkpropId = __TS__ArrayMap(
                    self._propId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkpropId
    end},
    true
)
__TS__SetDescriptor(
    TokenRewardConfig.prototype,
    "payPropId",
    {get = function(self)
        if self._fkpayPropId == nil then
            if not self._payPropId then
                self._fkpayPropId = {}
            else
                self._fkpayPropId = __TS__ArrayMap(
                    self._payPropId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkpayPropId
    end},
    true
)
____exports.tokenRewardConfigList = {}
____exports.tokenRewardConfigMap = {}
local encryptModelData = "b9hHHJoCZ3hNpSQVwVur2eFnWAkasbdbJpGLywSTipXGk/dGIHfkfzyKvNEbfgcJRY2/bQSzUSTAtBIINyMb3ETUwy4fZBHW6m+InXdZWAQZIYzB3zj1GvSJm9Cd82KG2FBnqFht0/+zXChAAVTQ4ohZcNqNUwbUE8fYwNu+LFp+v1mfxUqiYxUwCq9GOJgciNNlHzmjr3pgQlgrCYAYloU12qLuTMS8UCm8Wp85zApZY6fCn2tI3LrY01wN/LviJ5suotq19ELedgqqIRMv5KC2y0Z7WcI+VSHIQVl/OEuFXiqR+TA2xuL12de5WDj3QR5qpDwf8wCsnSx9daWxxE4C8OZ0pN5+zOUojDEFLIzY01dQHl/X3hwy0PRJ7La6VWNaYUICT/XPxoEdZMacSEafebplF2qwyYkpGj9Df33JlQysEifD+FXyvPbIAQzfF0b+Z+F+61j5zjf1iCsxfSAnSzFAdLCIgK6G5c0VvV6Kn7R7dsF0VLreiviIBf7Zw33GjtIGs77y496n/WBuQWDC60oot+oLiZuj+9b6TtwPkSPZDWI3ncyQIDLvvqHXwNx0yoyqDXRARY9dA6+pyA46lj8CJk77xCo/z85gPxsjEpFjH3gJMwfe6HQxF6/Oowlyx93NMYpOL9jfnjd5GOART18K3XsMYG5216/bnatPXRQlB57tusd4RmW31s4FAuS/8sB9Mz6MMpX95KmU0IarGF+i4A8YawA/rBuYpJGR4TiZQzscIjFQRrUjYZsVB4hufqVnacjBLhuCJHKRcNnIg9TkAe8oVeXr00UAT8BCcppZ5x1YrhGI1hzAZerTbV3oh4eSL1Hc4x2lK30qeDZff2aqK26ZZMd6Ng5dNnhn5J83cr444/IVG79xGOoUw02WMmFs3j1l1lPM3FmtIRyzOvqRFgM+dciYJCj9RM8PrNCe4HwuKv20sgNR+CwzTUbTgXE6gbPy663UE83GmatCKJKM6BnLKa0sykeUCO1A8/m9VghwMY8z00I/jF1tMSoDqhqRj8dvFOUWL3hBapDBvQ1aiIlwoD1P0xMfeaBDSIcjtnrp7QbC9Rl5AF7K2dsUHgLpNu0UfFUWCjB0RtvE29N2cjxbss5/TEXRfy8xoWYwrEgpb2eUK3cTT3FjYMRyHAjYVr0Iya76leedceqOv72En5F/c1JPFVDgFI/zAs32tgouTE+iS9OVmo9Qj1mrNVrJpjKy5k14n8Z3oxQZN6HF8tHkpVlWjDdU3qrF3836Y0Ad5uVcwTK45mDaJVX3iRZRXZV2DQKYgJ6fy5yotxKEFrm1AmJf6razixa/pCoLvZY2qhNg0zhDE+4cnPRvMvX4AzvIAX7QE0Gp2wAvAbVjwOKIHacULb/IaXhPUFAGdi+TkE5zAF9ZyVkSngCjtm5FSzuyTP3fnSRSmqAeAf3TplV/r2slXUZrRJZ4CEkOS29/rXjwULdyIU/i15O1vnLwFdnhnregSZTVWVHtbNrjAA/y6kSbb8pFNlS4etbh0ahg2mE35YkadAssA0A8sWB0yJigRbcBTr5bs70rwXPiK48FgLwlXaKchvotXed7tRFoO0fFoW8PaAUTAtMTEx8u3Za8hhZT8/Y4Sl8XiEPFDHAfpVIV9bj6SDq08NUS0FB9+/KH53pcsHq+CMMUj84ckUkObcmkE2olqra4l05QtnjpWI9PSKcRW/sDOCmfwDBzWi+g7EqlAdBoH343sAZjMMFydZI4OTP6/kgzjAFByLmS+REjZtpoZCCOAV2QdWcXMOO8vqIzSVc+i/cY3a3p07YwfxnWCIcR49FuzKpaXCykZBFCpUf12JnFTApAk5FyaeqI2OudjbXoKfQcWUfBt+1zNk6IgmetcmZdAFWYJw9buylowWCr6vs8qvp7dYbDhSGxTVriTklUoKR6vP0+DBx14nETXD8KXEe1jYcf+MmovvpxRo0JrXRm80BN/nNd0liT34R4xdcglB3YjZfTnnShkjRxl6/ESpJsVuSqtB2KIiAj3N2u9j3RHwmzaUbz8xRmKNkW2Q1hTrh2kYXGX03WI/MQtMzxKCi4Nw0CJ2T1wes2+N0yMzVtbUX0FLCr9Ni8j/HtQq1/WYzOKZbcmHdSeg5lInGgld/QDxwvReqHV2KhYE64QyNNAa9AXGP4kSozTQdNpJmFAHjsTnaA7FYT38OlU0SV2cTF33EuJ8Ss8bt3cte2mfoODmQJO8ezteY5z95ZTTZnMHK1x4Oujcna2XX/8c4byYm2QFIrxUSL/OeHbijkI8Q5luyv0zsjaVMW3JyGrfXxIRbnoOr2mKbfDkVOFt2oSsvpD5EP9FGlgRlRlFMIM09QUXRlx9oDQjOWiK+6G4VklE5LAw+D1BF8s45N5+Iq3HvLQLfiWtdidwhquE6enH7GXyNlP3AJTu+a5tJpdJfVa9mU7Xjar+9bzuo6aAxFypLi51O3O3CG4zj/FHm/dOI+aa21mj8VSPu613KFVLwx4/dpJgDsXFVZsi6WLhni0rajJE8FDHqlP53+TXIkmO0TZBgcwTh6S9J4HPq+XC3ZX+N9Q9HBGsfeH1MnE8cY9zLUsdtrtiLA+m6meLSEEAIw03gqI3KVqppaQhXnKCJLzk2KFM7i+pWnXzEQzJk6/b6rpULSOWF5VmFLGz9YcU6YfYH4PK//gmEABi0PutRmbZWtk9luCQd564IfGT4Mw545oXdEgZvZm3cgEdkxLHhid8VyqYx/Jd3IbexWHNOpXNG62wGasBCsvourpwIj96TnaEVXHhTsk1bmGcWFPf51cij7e542eZtsa3gTxAMHI/tektgtrPi18er3w9OPOZPgQTYfWaesNhun5WPfEEJdrD3mSAkbSp6IULP9Q/oJwvLQuyTKLR86MgMXSS3XHldN9J2g6cK9AuP2Cbu/4ATKst0iJGp2HcyQiW5akDEgbJZvRuL7g0bmU/KNUowTF/swoMs7P+aHub9YVhUi58ZLMqwh4A2lFSgkK/5CjACsGhl0PhnjsmqD7fnLWXEughJjX+ecqyhqxx+cV5E1GQdreJ0bpOx28VnZekkMPbw/25ubfw4V9bFSj4s6za6YT5A3syHd1piY2s5iWnYK8MZdPSfoF9LkaA61lthY9F6DCkDFXrSrpxr3yekZjKYN6r6ilPVHNKHqdsES3ikAncJnSoSlUy0tf5NYAAhZvgMwIPCFM9zxNaUc5PLBm0UWXPY9Pt7l1D7SbG6UrTGFHjVAYRDXdXxJT4rxx47sdIlkbbHdU59EcvRxhfaWavVId3c0Toel0GwQYfT7fdrnDIZJsn/whRq9pEHh4OSmT+vzu0IpBaJy6lU9+fdqBxZg+0zdqluxsDp4gfCLk4xXn4pxJbiv2f2NWgj0MP9ZFCr3isLpLIs9zW9dA9/GVDSi8bn0VqppeL6Kz/fBmukm/zaj2mjnCm03uk9XFQmPt20v6sJZS8voeDjRGuhH4faSC9aIWEL8w9ZsZxO4zHnGF/SUHErdeY+jcI7ZCK8ScA1BKN6qoGfFnUqsfO+uqQQSALg3uOpDwL+VdDq0H6RnBK9GzynN6ipWt1TMdkmoLo2sd0Y2LH2gMKeG7kAK4rs+Da43X1O+K/606Us4CDAKIAjBkZcVxIq8CIPr0TctRrWyHd8Fi6NyZ9DlX6AmzG+N0O9johua1WK0jdqPecqRnKI3SNIDc+PZY0ru4kbbjnOWYdl7voCe2mxWbJ0vmCmApIVQ+22YuRblwPhvlHTG0OjkqhKXrK4ItjSbusd1YCxjt9zbr2iYaxiac4mB777sI9gEEvbi54sWLbVl408FE686o7qkDuvGXwbxqK8siY5y/uYxOJIWg8qvG/O+/JK52MW+/eoWKsnHz310Mb/ZfyU2yy9/hqPJcpApszlrHATmYU/pLRb8VunKCByzyDQm431NzablC/V/ziEcpGQ1IM5QmPg71DQSedQdIKCsEIWJy6xs+k8BBGBR1Jt2Nnp4W/PMVB/8piQrhQ+5V89GCZIhNrIj5ejT4bDPHNBd9kETU63BK28OvX+VPyaVhElyS2Zw22WZ7kjNIAUdduy2qu2JzMHlv61yQGI3vXFWgLsQQsiBhHo9Aw4uURMX8hHC7+ivrupFaZZB2yXtwLiziCXBEcLeiVYXJo2wQJnXW9tWcjrxDmqeV33Ho4nBIJCElOZIc9OVRaaQpkn6EVNOb8j0EE05/hcgRao2bOZEu1tNWuskhilWAXMOmt1OmTi7K/ouxQ+eFnWCwG6v51HCzY28KP1g2szNBJG0GxhuB0yP2XaEjDH+2tFIrIwiDY4Vlg=="
function ____exports.TokenRewardConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "tokenrewardiWu%C6F0WV&UcD@0#v^Rm",
        string.sub("tokenreward&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TokenRewardConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                obj[key] = value
                i = i + 1
            end
        end
        obj = LoopS_noVue(obj, quickStrategyIgnoreString)
        local ____exports_tokenRewardConfigList_0 = ____exports.tokenRewardConfigList
        ____exports_tokenRewardConfigList_0[#____exports_tokenRewardConfigList_0 + 1] = obj
        ____exports.tokenRewardConfigMap[obj.id] = obj
    end
end
return ____exports
