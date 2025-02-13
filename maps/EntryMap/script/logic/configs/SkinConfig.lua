local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 16,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 16,["41"] = 16,["42"] = 18,["43"] = 18,["44"] = 18,["46"] = 24,["47"] = 29,["48"] = 38,["49"] = 44,["50"] = 49,["51"] = 55,["52"] = 60,["53"] = 65,["54"] = 70,["55"] = 75,["56"] = 80,["57"] = 85,["58"] = 90,["59"] = 95,["60"] = 97,["61"] = 115,["62"] = 120,["63"] = 125,["64"] = 130,["65"] = 135,["66"] = 140,["67"] = 145,["68"] = 150,["69"] = 155,["70"] = 161,["71"] = 163,["72"] = 183,["73"] = 188,["74"] = 195,["75"] = 18,["80"] = 102,["81"] = 103,["82"] = 104,["84"] = 106,["85"] = 106,["86"] = 106,["87"] = 106,["90"] = 109,["98"] = 169,["99"] = 170,["100"] = 171,["102"] = 173,["103"] = 173,["104"] = 173,["105"] = 173,["108"] = 176,["112"] = 199,["113"] = 200,["114"] = 201,["115"] = 203,["116"] = 205,["117"] = 287,["118"] = 289,["119"] = 290,["120"] = 290,["121"] = 290,["122"] = 290,["123"] = 290,["124"] = 291,["125"] = 292,["127"] = 293,["128"] = 293,["129"] = 294,["130"] = 295,["131"] = 296,["132"] = 297,["134"] = 300,["135"] = 301,["137"] = 303,["139"] = 293,["143"] = 308,["144"] = 310,["145"] = 313,["146"] = 315,["147"] = 316,["148"] = 317,["149"] = 317,["150"] = 317,["152"] = 319,["154"] = 324,["155"] = 326,["156"] = 327,["157"] = 328,["158"] = 328,["159"] = 328,["161"] = 330,["164"] = 289});
local ____exports = {}
local ____SkinSkillConfig = include("logic.configs.SkinSkillConfig")
local skinSkillConfigMap = ____SkinSkillConfig.skinSkillConfigMap
local ____vipConfig = include("logic.configs.vipConfig")
local vipConfigMap = ____vipConfig.vipConfigMap
local fields = {
    "id",
    "hero",
    "quality",
    "showId",
    "decorate",
    "name",
    "isDefault",
    "ban",
    "banModel",
    "uiBornAnime",
    "uiLoopAnime",
    "role",
    "roleEffect",
    "_skillEffect",
    "pic",
    "enPic",
    "icon",
    "badge",
    "enBadge",
    "buildId",
    "heroDetailoffset",
    "heroDetailviewport",
    "heroDetailCamera",
    "_SkinEffect",
    "changeFrom",
    "changeTo",
    "animeArgs"
}
____exports.SkinConfig = __TS__Class()
local SkinConfig = ____exports.SkinConfig
SkinConfig.name = "SkinConfig"
function SkinConfig.prototype.____constructor(self)
    self.id = 0
    self.hero = 0
    self.quality = 0
    self.showId = 0
    self.decorate = 0
    self.name = vue.ref("")
    self.isDefault = false
    self.ban = 0
    self.banModel = 0
    self.uiBornAnime = ""
    self.uiLoopAnime = ""
    self.role = 0
    self.roleEffect = 0
    self._skillEffect = {}
    self._fkskillEffect = nil
    self.pic = 0
    self.enPic = 0
    self.icon = 0
    self.badge = 0
    self.enBadge = 0
    self.buildId = 0
    self.heroDetailoffset = {}
    self.heroDetailviewport = 0
    self.heroDetailCamera = {}
    self._SkinEffect = {}
    self._fkSkinEffect = nil
    self.changeFrom = {}
    self.changeTo = {}
    self.animeArgs = nil
end
__TS__SetDescriptor(
    SkinConfig.prototype,
    "skillEffect",
    {get = function(self)
        if self._fkskillEffect == nil then
            if not self._skillEffect then
                self._fkskillEffect = {}
            else
                self._fkskillEffect = __TS__ArrayMap(
                    self._skillEffect,
                    function(____, a) return skinSkillConfigMap[a] end
                )
            end
        end
        return self._fkskillEffect
    end},
    true
)
__TS__SetDescriptor(
    SkinConfig.prototype,
    "SkinEffect",
    {get = function(self)
        if self._fkSkinEffect == nil then
            if not self._SkinEffect then
                self._fkSkinEffect = {}
            else
                self._fkSkinEffect = __TS__ArrayMap(
                    self._SkinEffect,
                    function(____, a) return vipConfigMap[a] end
                )
            end
        end
        return self._fkSkinEffect
    end},
    true
)
____exports.skinConfigList = {}
____exports.skinConfigMap = {}
____exports.map = ____exports.skinConfigMap
____exports.skinConfigMap_hero = {}
____exports.skinConfigMap_role = {}
local encryptModelData = "HlI+OYJXyP/8WYMDMhAdjpQzZ3zeMzvKF3SHyiRQyFDtbmRds1ckW/KflN93AB4c8h1ZkvrMBRKKrugR7pUwVS+65oVkcNka+yUh3u9ovrR5TBspH0ymy3jDi2+Rp6yCplCjruz/0bvG2uJtgZk6eabj1ZiY+CKloeW74xZkath+DaxBYyThyTfT9YxDrfpoXUygLH6OBU4N5u7+k+uaFvM6LrMIP9/X+Hmtbcs6qvzss34qhA2T8+0rWcKHaQ+iiWbiuEHScHQTVC8kL5jOvT9ZZBXzuEprfdia6OnEsVmbi5nt/NJnyhPZwJqzlsK5IL44hrJgluihjgZYkVAuIZmSVxLNscSZwMCBxQ6RwBnzKlqNLkYyEvBLz6FU64uAcaBkP85qsS4QGSHEoaMoiVrAbt9TxknWuAIfeghJX7nqLINuYDBLjcAV1whyev3K/eQzPRd5P9J+OlI7b4VT2jXeyYxiI/vOkjpdBDVQAErzU4uf0gOP/s28vHNIKd3UEhnuJQRZBWCY3Hig/zv3LnStuckWNOtxpcOnbqE+bvzFgvPrwxOAKqifT352JDIhZStkpSLJwPnUYKSYdccinMcCrQXDwOwW+jd7f7bkZSffbiJmBPKVO8sI/5QZ6feZEAISybIkCATy1QAVUYD41ZsXCTXwAcFbd8GUPwwlpo8mJRb1edK+LYJdXlnirEjvvugCwIWxirR84RXVZDkebSWpZcSiqYmssEbAw4c8KgpmcaJziyfWE8BsqAqoXWbgh1pizy/8cLvwyavtJTmCCQbAMZmmFKhm3aQVeH75YZgIFdVfIFchO8ToQScjzhfWauMHZZz+qNFp4NBIJHpXnRVIzNQ5iBrXU/V70RNJ7a3Vm8oIwGQR6f83LlwpwieTzLdG+aiDBJeQpcaN8ermnPKjnDYi+uTyDIxgKdJsG20N5jyve7iCgovOvmsy2B/xL/mEM1PlvcEWeAUVH0vwRL5JzHai2BLsl1p1Com0J+Lv+tbKdctF7dTd604rLREbO2ek9CZ/8w1YmTr8Zv2+WQKpwwsoN6a+RtBFTT2NR5bTAdqONnjunTQsbS9IIWVTFNFdP1bPFYiL5X7xTRUFB2T4tswF/lVtz/lOVxZXv8tRPsPS++55bzWEJqHLjUrDMWJPEa5Fg7LYSNUDf40Vgjsku3S4x5ZQ+TVebMV0XOEK4YEuFqSjsM9YRXQCc1GvKShIQDwl1Ng1I9Lo8z3Xis7bCcSmsFTE46IRUrjTbYbEGcmueUSzq3qHdK8HhQzGwKl6hdbbQq8+j8vnN7G2uxesoJ4t8juPS1thVipiOxdHNDWZMuN0cqoLUIfI+scImBZFpBLIZkX6T+adSldpTtSlEGGrUZ2CTScKcJGp4QURD6hjXfdCIVfuLYRjB5k8F3UvKa+68sxCtAR7HrU5/J3y3Fu9XAocbZjToda+h2bE5H5E0HwEBhrLk4XaAX8hKog4Qy+0mmAz0NzIiGxDj9pyvizopzolAf9zNn5XS3adaayxqZ8wsbdZ03Y3Boj4oUUxtbtqRIlQ/HSsg8MqVXfI4c0uoFa8JsmFKXltugVf0eSVmWRFnnhNltCG6gibcgHwy0B3CvOXd1CSFJq8nvFBTn5vCsjsraVkc75a8TSyNY0MRtxrmLB7MtBG3IYQK1KleLQ6cI0GZm2okwv28LwgmT/OUHGGNSFKZG+a0wPFrW9ey6rwEiMUte46N+tloUNrmjFdaqyduCh/63Sm3KVy21fMWZWwc4lARZAlErExgB1ViDf/I83DrakgA6vHMwB5RF5r5jj1oxuQ22XOV0VTFVK5QqqCdSQCI+tqH7rUCFrTI7FdZfousYiuaUH/xjcUntdWhjE344ECtBusqUk0bOzb6vU/b5AQb7DpktjM3Rajh9J9gXnrwhwWMuofKOroe4+iA3+wXyUzVs9zspS+hhGoVNdRYbtqZMpdMkVeelp8vmivaJdt/sp5AEVEvvn3tC6OEj3GYtvsrRT1bkDmcL/qEvaqGAKcF084hspmSQioPL86XqkZXiYG9DMD//ooGcTn3CIDo70g+YIXaOzS5JcEHokx9lXbv0ulgWO2WUfyzu/X4sjDziWucrHkehb0eHfAsy0mMMq+LLq/0j+PymECM5aE5ZXJO+SGMsILG0A9xYeCjAxGFnjHQDBTrSHXJ9Nx3cfbBA473TcJ6X+oi+Vf1T+6UsHg0Oub8y4y+tNxMX1seBF8CdFfShLkBnV6GzbfmNAEIHf2j2tZxkpbP56QOKO6KMhLbFvh7NbAUGmqE6FrgAjN/3W+EzvpVEyehzmlu7F6ziir1qnwx6/ddw3edSi5G1AHM5mYuwGMZxwOba0g0qGbRGZjaa1frgBdxEKe5AmutZh+l4YcVV2cerfxKZ5R9VnHDfv+y7PoSlx08+vroEobk/opXIiuRXQhaGVMCH8isLns2Cdfe1bMLgerS59CNM0NG3patGpadtktQCRHcqUOUFHUnLUZ3M4A/iAMi35yV0Z6VnNbFTT1v+s0V0g++boaOcyL988Qxz/daI+Q/kR10my4b1pfbPiHSgQnU63pWlR///z7xHXM0vqaReTnC+xU4RPHXueKkw00ogdpbxw6jKaUPt01NAWkv5uDd3/QzT5k3cFRSjBpCsOh5/Qc0ANx4dySuzobMDTb2c4yM8DTJBTbzb6mAThuyjMPbBNOeOtw6GaAcM4MMVfec08Ti/TdvhcaD/75obnN3+wvrSzCElI2Qg6ICUaJhj5SyI6O8sKo2N/amXwl9U/wFK2zsp5oNh9qNrPE8e95dxdVleCuVN3f39Dw83Y5L/CyWvo/mACZDTDMpnoA9gfNFHZDjtCS6PipGEvw76jTQ8B15VRGE0yU2IaTGCheCC3F+vutuULI50u0RXY/AU71mjozxbsrmdLd7Ntddpw42TWDD1Dd4OcO1bbjQILvTqly4jJBimBbEc2N/5df8SHOOjb12ULTF+ujyZPGuD3LzCkX4/fnTFrWdeDfb7pu1VDPq7JASPKRGgrt6kPOFVU7Dpe146vOkQQvmWmZVaa3W1OpfK9DlMGvSlfV2eSt06Xl9ik9NAKBtghvrwlaxEXisy8n/hNZpchnMxr29hyH4u09koswUEyk1GkZymauXWamx2AIRYdPg8UkhAqk5rq0VKkGv1i2wAWI049uScaGccxYafuf6wjH48oHTmCMT720eSTlbmzbXdxVdLMJ/2Yrp1w7n7K6gQeJXbgIuB7LmSThhc/ROg/FmWaS4Qx8vel6ShOmJpNKusZgnT3+wbD4kHIu5SMzrxt+rXSJWV8YY9WyjoVRSEVVKJo/4A9QBGnu2mvErfg1/DYb8cpfAJ50XrpsD5SzbYoQLVdOekrqr3+dS+Vhst257ri6M774iKJs1D8YoT8v1xdVNAFMrh5kuN8AdKXJEUAlSPsE4uuadhLNj79XH9NQoRwb/6/I241co+yGjihz5Ez9xrPLlA5esIRIW5KcwQGxsl9RFl7YwA88OaUlY3s8OULa0M23IdyNdIQh20oc1FTqhsWtEbWUvXtWBDL4rqSKLlvL/K2PLsGmwIXE7pRJBL+yS85LncwRB+OjRaga1Rsu/nu/Jeh2C3V0/86Z4pRI9leRvOsIXjpPp+lNgK9Pd05N5BUJ9rpq2GnhWqASSm2yTpWU6CXatSRZVOczXQXcF/1xJjcOTI6i1G7F4RfTvpRD+mF9+klQKw0jvA+AspSrm612RvpxKAWQPXoL//YZ+AyczvIleEIT3Q2aUgEsapptvTvT8FNSGCgveFWMf4Xxc6hzDIpO630uOTKVh4/uLcgGW3nD8aUj44/8DP/wNlOJtCQYCxCoE/kVe4imQDJXf17fT8lM1CD1B16C4rw+99QsdYmDRxzWk/3G4axpi1Ah4dT5PfxYnGrvJwzG9zo5GmLh193ctTuC49OIp6Ns7L+DhWvwz/KPJV2vRVlMY0IFTA6x00U5cUTRm/+zhw4wwta0HTPr9A0VrLwcvYYaY0h5PRiNRIlTDA+Mo8Jd9OqQghejBqYY3DTpFWekZJn7qTf6kYR09QWcIT9Nv1mXI3jgubTJC8rtFJJ3VYBe48CEDQylPWCBcDx3SWRAUCl9ZDOwya9XB5ALcLwOEd1PBP4z1EOnCM44Hc8Iv5KtHUnREZpgpqMFeYEgMMRI2GoXzcQUBlr+HeE2MkjwVWBZrvL+iZW4Hjidz/hD5fMPjF5lsLiyd/P+FeavyA6lljGedZDcCWlL96ArQ9Pk5J8pFjtodPbaepsn/ISEUWsHfmpKetyjM2pBwSh4CMhsxjDZWm3PWoZcFk9Pjh00LjSkDRGpwkjPw1BEejBA131wmjObTfB3v9tznMsmjl9yg3FX9Cyc0sMxzfy76Fz0UsaZOTvTHwpcXzBvfritadXR7diy+F/vIwSAHL03AS6Vvwfh+/W5hrUUp9GSQ3L1hbmoJqZ+7jtefMJojuyBGUaxVbD9A9QrY+xZqa/evVJ/fiEdn41EbPeBZBuUW0ubGBnh7jJAOoX2qRVBOPt8yRlHg3xhnYXxDEd64KzCv1/lJoOsEOfG2vmPQeYCskRZlPzf0upqBnHMf0llM6t2qDPIcOI7OkrziUHDJNGLCaG5wrBwPE7ce1HtjcdXe5iFDdx3ITfAFK+tqLDGl+rBy+b1S8Z5SKJeP9aDWbd1m+sqau9uYpSEVI2Zme8naKhFKVZhsjJmEImZH5953LsWcd6MXxAB2XZygKOF1f0Bj0XCLwFMhx57c0LJ2dUprBUAVPd2AQ+Pv14JAbci+0B2HqqgMbMw44if0X2bGlpHsvKZhMHH9hGnWOLjlq+Wt+eIbA1uARzcCdWW1n9GWsR1qlI39JrN7iPsZr/wFiBbZguTBo/gWa1D81xrfmkLe+piUcCvFryoxZIRRAg+z5AgG+FMEEuKI+iNPFxcPespLBKc4179NUdX7hRgEUbsQUugjH09n9T6id8sXF2B+yupUgZP8ZPFrRB+RUwGGz8NFShO8ddw/pi0hhXzI+3Fq8q4jmRgok9lcMhoPvQZJq0XEqgEsbUe5gzQ7VwfzqSZTGOSQfa19PUJIYwEk1XFlWog4bXJNyWDjsgq/LrIMh1Q2NZicyv4xjVstqToeZiglpee5lNJzsCJ9HHS1GHkkgNPcUJz2uT9/4XelebWkKpBwRanU+Do6JgJSTO7HFypyfU00DnvZ5bdCqaSsaWN20dAJMb5kMdBiqHmCPOkZ0CYRkdeg7cognoEwM+qgVt1oStilxY8hvysZvXNFdLauImUT6hAk5NJI0V9Gn5ZD8PSTYK34OX9SYhd95GS5MsKI+SaOzvjDPrGHPidIbmoU1J4DMyNZILgn6drOEcSsJ8dugwhnJnBBzp9Etjx6koFkhWQCm+fd+3B52GXjKMDC//Y0geiLSK+Ugjhf6uK3qZUZ/GqoM/oJUA63ieGG65RzMT0qnE2vdp/G90cbjs5GdE/xJncPBc6/5/IwBY6wTZIoO4AZpoMvFNbsNhN20MRkiz6a7VUv8sB6EXlfdcw2VDo2R4g4Zyuu0ZCLDCo0WOPTJeyi0ecUvVOXOfhjdJu7p+gRKTDSgWCvaj2vOwud0fcMNWtCDmWp88VByA6kZJNDF0sAlNc8l1IY25HRyak9NZuY98+BVikz1WX1h0v/9n1KaH4IHJYQuM0ZX7AbfKx/eQGfSJqKM2SvIzHpuaHLcFkaoZb1yi94xM4K1ooZj1VysfMB/WG3Rlezcskfz7/iloKs6Wv9ECeL1JqOOag7KLlaeaLDATw4847hFKI8RQ+w9+GVmlaMIVdcvjyqCLGgM7NfHT/aewiwo4edQ5yY2VSDrtHKj5b7ySxOIGCNuqSCgUM4jVXInl88GjpAhiMsSLi9XOeCpZ9ulZRFJpz8N2UBGl7JRwH5SUqOLsqzWtXiqJ0Fgy5KfgU8XnPual7kHLuSJrzD18rFvzzKkHFebPWEETXmViYCOsXyUqYerH9uEbtmcjKxjwBfwkkdwnzDlHKWNJkfWfv2EhjufqJ5c5xVFYzWMS25BnAhQbbPE+NWDTY7syXU8NPjFrPFZzW0ldiky/F2Z+AnRJCkz9FogK4EEwwYYV1NI99d0FqqY4y94DtnENh1MDSFUpXGoU/qRgRvgQ0bCUjFh3Hj0OmTtAPFYEKI+FTFwvVt8RhA53hPnEMBveIEXmU9vTiQb/e0oHBQk+tflgcU6UOWKhNJ9QQO8xwBEoREsdk8aKicPgKqobgMyO/GjbTW98EPVwg3OvCwBfdgDVtue1hQs0MkqE0uB/umr7+HTN+Fe9jpLKcADHYjswiXL/ReBrguZGsyKWGvUQvG8fTkIwNBkWXY94Oj8cthL2otmg8x/wFuwKRkVGpg2nDc9DtoCXfKFeomERZX0UYvOe7qDKYcjn8nNuKtirr8l3zVAuTlB2Q+mCfObZPe+bsucaJwpRM1MYTazVzXFicMnMFulQkUtdTkkJ7vf6nBJqWUfvC9BoMMKpt1T0K+zmsfS4NlRy5T9GTY6ZJnTGaLcKEOGo3Gz2Kcbdi1/RfopYvYqwzhqwnMaAvaJECvNwCHJ/tjl2yFKY/JJ3Zt4ipLrtHmEj4ar8XwiRZQHwxq5iVPdoP+F/G6+bO8M6/+xE/UqHB1QGyvafXcIZrIIriOU7cPCIiMxkDqDdF+SXWFO+r0z63Ndxkphzos7pJ1/DHpvKGXqrDRXW5We9n5ZXliBw8gE0Gs6BgBTMRwa1fVpQM9ucZMrt3aUNZukAtXJrBUyj9gKXzlBJxJGRHiw53cIstrI7Jt9YRXOfOiqDEWf837fWpQHozJ/kgYFd2SCQrn8x4Z7jXuFr+x03QD7j3Gvt/BWKchJQpbihMAOgP7gjkWPyzGfz+IDMShiKHotZIozlsTAFvQpDj65E4kOlJVew/AIO6xzMrmCOZ/GbDkuoB0wnqs5HmVv7hzbulJPefvqnVk+WBC3MS7OagXlvMNeyIlCk67RKb9fkdV0fMr7Qg4ZESbHJbt4jhwUuvX4nRHnTJCCuRKWUPLXkWEMf/UYuYYZgqfw3PkF2h4kAK/f7cXFzzoTi9zHF+TygtMZFNiisSjzLYZJ17Orf8QR4EqRBJLaFJxJmAXGkkNdPJWpbcOQiOINEaXd1WvkK9y6Y8BiJHMkzpcZD3YYiAhg+cZbqkZMZgJqVkLJaOZrzP+HVwZHsZZkW0dXaBuKFELZeEtFbVWeRBGh0izanoy7zmmjxH0GnP/Q8+R5YGOvoK60yhntTop3ZRM5KTdMW+yzElqYPHAvV49QDgsC/W/5UdmkkXLe0DjBMNw1NI0emB1G4QggZ5Ki+VetJNtxnWmhZLFj5ejcrrhxliBgSwDpO7Zl6eGPUPto+xIALxIPYUFIB/XFYfg661fkHWAD7HUakKMBcgl96oPokyMWEtkWQQV5cIrUfxCt+Ht3iKD/6gcdSQfCAV3wuD1q6pSbMW6rkLnNpEwV/sJDMuPonbi60/c0ODIAplWmIL6p/u37cUW/EsFfesef01QYr8GOoddQAXkj/O+bBzK3vU7kxbgFnlJp2OlKwI2zfvlCVRwrLQbPwbbXEGmGYOMOeuqeK9khYRy/6MkxD1uqgj8Zt7yuAx62NFcwnf8KqF6Oyj6OY90Q5R8PhUvFVTq+VkxwYrKpzvR8NJy6oiXGfM9Pfh8uRlW4aGweGW95qqMMZGQHSNhAjBzz48eCPuGbUFpqBLG3NeonpjrRuD+da01uGY7qMPMb/DMXESP24DCU4Q4ilqb71wKm/AVfGeUlN9ikP7Kx8KyqBSkQ+w03ehpIWgSh0WPaCSz2C7zx6gWVzRtsNzcGx7Mp3SJkLnN8Pi7kZz1bYbE/LdJw0dIKoG9mreM7TqS8+numJJxLeJDxQT9CjeNfbbGA2ZvJBCFEnEiEL+xrxzDsLgnca9tAzWjTwXkv5hD2qdSOqfhbzeimWm7srFGhI7gB9RsH7RUClF0IQfAqgLrhe5y/J8xjDWt/Rile65kQpgKmpHJvDHvQn/PMFQtNbSHnv3m9COp7GLcYCHguBiFGPTtswtjRHiYHK71Xrue2iob/sFNU4NAjX0ioTlUM0TSbc6AT2qBVvh4FH1+bPECTfBulCzoNEDMsKa8WV41dn7suDMSE1EfdJteeGIvyb1ANuENRpOL/BbJyb85c6f3w8o8cuAcZunXFwbXiX3kuAFnD4qefjN4Jk6+aSaujq6UDy5kic8U7yoUw+tEpxH03xtPBB0bEKhf+C19rhNvn8eeE6oal7C+w2AqAIEovUW8Brh0kOkTfnJvIOfrUXokOZuSTKAWu194JF51TZZ3qu+qLwdIrA1T6SCAHs0BdAgB5KXJ8VbRJue7jHtVtX+sxCXPHf9WLsrQmkm/5leARAVFLX0MgOyEkRncaPcwU5kmNLxDaAsoR6hOsA3sGJ+LLzhFehWWNnKk5W3KABAfIhYfG8kknzI0vUYwE07lEhbkeGdas9Ej92jYvj4xNTXRRLSCdLevN+gRNHbv07+SGl/HRWNrxZA1YbrgpQg1n2jRvkWHFc4nOG+AHPwwJ5NTnFPyrWPSrgT2Ok47pn0U/vQESmFpvGA0aJYl9xAg6KMKzlxC6YKri8IqH3Zs3geSCx6b7cEvValdoaRoiJReZMcdLSa3PhtIhI/0AH0sl4oIWTpdaqsG/6t3F/5P9s3VcdLiijBKswHAzWfMs7hElk+lG4+RuhJZyB6f0DdVN6SKgRuFJu4dEdcfq30K0TBEO57lNPSF26b0q+pGCy3hf76QY6AwUsjBOYiHqR2f2OVZQBauYItxie5ng2aA494tqRP++NKOKxpidQ1cXow8la0reqdxAYCnjmQL1p5QRvOaXynSa019puYU1Ipe8La4eCybfVq9BCZo1Y1DbyCs19oSdwQTWIG6z5fESEWE+eTXVWFwDkLIUv84WqhXZ1/opiJPeVUNZkmeZvMRrFbum54yZnjakDsu/2h5EIAaTSYLCIaYtKVlxi7FANDU4swfIAhuP96L3WGNWd/EOVU8W558WI9cYGYI2pfd+nfy/V5WpgeuZaQdJhH6gZpN/oG1wqnRz6unC/zA3JZS6bw63kxcQFxi1x/3zI81yxJKVcxOjGqcVMmCxHQSnbTh0liwPdtlql9VCzphixwx6dP3kCdaEL8nPPGP7YdxrPbjg5QNabX2oLhoWsxstOX5Mg0g/1SC4m5m1GL/empDhOdT+uvEfm3JuNhBefy0HY4U8T8Q+nVjdngVEXEvfF21arl3nfWoP/9YK1TgzMSXPBkxY9iIvMTYKZkfqmtHOh5OjBVSB3blROLg3PapOENLwdHM/7zJQ4zHN8p/HUauLhJ4EEeL5XW0GNML9gCPYr/Qo/c+0aXvJxaS//STo0+Q/WRWtpvjDs6vUMA+6UTx957EUimcW2a1wacotaJh62vUxNp0fl9YczdWs7S/iUQzTiyeOXWTaOWYy/vEub5YhRk3nK4FDQ2lyVlwo25IuP+mYqAdWbOSaoisB2DsWmhaURUs2TE0qnDgK4JdCFhViRz1isfEyjQ1/huRPKGqQx82icDl0waXh8qbV9x68L5rwnDgebVTQAqsyRQ4ULGtrgrLF2fFB5rboE4Hgvb7GEExRWaQFizq7s3j5rP7eGRQU6jIURpaShIo8/eewBVXxs0KeducBscWRey62d+qjEeX7jlxlpqVnu/dZlL9B8bmA5DWgGuL9LTP14zendVCwfWjdKEc4EfbJ9YVMoFCFRQ7Df/w3fvRS3qTIycV1xkRESYkxWiSPz6vucW8p3aaYUV0NZO6QPlU84lCayn2wwdP1tnA1bXCTTvzXbfQk/YAplYbcUKfHBZwGuxYgR/g7UZFRxlfG0XNwku45vtR/FyPzyuP15h9pqaC34KdTjFXv8D64TLbocOErEwFBFuyItWHhs46pgYZzfT05m1ieRsVtrCWgNmDV4SBMv5t8Ac1ibHY4nildl3M9cNt1rYTUfstihYjKtOtXnAXlDe/D0KadaPlXsVNtsagkrvNSu/wNVHLsHtHuzMsSClAQCHui6KuosejfU/Kkf1RDbvZPtJt3DiK8tu2XtdDxTaM1Vp+hAqWrdjjxtO1BlcXz9o3XuXXAdVdpoUM3WJ3e4RgF1l2BuICpPtns9lLnh+vW/slwY6e5WWYYIKhES3lC0AnVK89jPXCnUseM7clFJR2TBXyV6T6xiYpRXfTyqe/xXN+i2ex9mMBq2es1Gt9/W79HcXL8q2Ww8V2sAqPUpZhWC5kkO3l/S6TMNZQeaHOI2BALMsGpKkrkFhQ0Ar6ry7fk8YpexLN2KZDU6/fhRsXaTkEPf+2SsaUZhPseNI9TdAzXy8ymxGTHxFyxarADYFKa0Pln3eLUCLUs3ZIUZFQyDtHPU6wszsyka3A+hny4EriOM3Ro2smdKyGuOr+aOhTcHq/7szoEG8tLa3pfUyaEWKPNctHqZySqOW65L1RMcHfO0ig/4U+6VpbuAFEJ5QYZIUMMaeiq7afl/AqXj+NXTOo2S1vk7B2rsmR0wxZ90Stxp4hVRx5tVy5mm930N305ZdiRB24vebId9wJoQPpj3eGRTyuGH4DBOH2dJLHR2QAh6bk7qfIpuFBk10cs5A8CkydEy0AkbEAbVKjOrcurS9YvVqmBwGGkv4yqvlk5GcoQWFquSp3IF2kWqREYUBlxIFYPLw67TGwLlCgnmby85JHPMAnexjO9j/rCorz7Q9YqNx8tcPAL6K3fTY9rErM/XRLbB0fgKuy6iTqlv9F1Tj6nDlVtQP517R1BbA22uwz8yYjwfQZGZsNGOlka4wUWeoqAf6ZOv7UUtfglTP0TL5Ow76S7LdMKtoKFDdlqp1ZC3Jmb6SE6oA3vuZxsSRfR6arZZ/EU+bDEhdYKuYC3BSZ0+P9lkfUupElEwuIgifDpRz4I3+PYfrARIQeN3ksP6i7iN/snXZNtvesjuz+3Ox4jlapsOUoRd4EhEihSUibOtZhJ0kNiBhjldLGeIqD2OoCS/JfPAfife2MYJMfyB46tm+mWiPQ6c9Y7A2kWcsy6gBOwv6SL+4n2bBRWVAaHeu1IMvAeghhNJ/xFZXcQhNtl/UvTcsKz4e4ZGQlDy218kkohQYTmk3RNcnwkPE04AmXNInApusCjzdHUw872dFFgezyVkaBRyrae4uDF8ePRansz+DYeFZD1uRehMntFxEO7WwVqsIHF60Ozrx54CLcDViJuXARAy01kfCQhl3b6ALoG9f/ehH5Jst/jm70Xb9W8WjWmI9Sg5+3DbDTxujcV20CaOGpqTvxZvnCltMi8ZCyFOCP69NmfEjyo3Jc0Y0qOLcvIeD7pEJ0fSskVUkYxUK7UYLxqihrDHT+noPWkI4hmOaWXtsL6Nk3eYi4ez9sSxca3fJaF32n370508bgYFiCnAJrTZw1S36+CYUPASFq25liprL+TL/ueO2/wMkzcYAnUj4VmVW/agNQm0Tjv8cOr+R8+xqj9Jyn/YNTyWjn/xTJ7iL//IlWPAZ7mewrK8OppnrYpv7ldwIndZ6qvfzKHp+Wif9XmLykAsWMABoNnjKKaPVqL0XV5apEP8IARQxYRefLk8usIjj8eYdmUygd3gfs2f4vUEBBi4QA/ct2E9hDnAFgZ6o4JqHCUi2RO0sRakom43ulP1S9W1k8PH5RKuwZcs/AdnCfWO9Eg6/IZMAesf3LRx0TcKMQ0FdS4hSXel2u37jfSg323WKp5X+XOp+qgiUOdRI6LWFPyWv16EJC2hSfnswLXOAWPGDAYYREDYGjx9eRcaR2S0rtioX8W8YUWMSGz+K4supLBMoZyFCk17VwI1DgJcF7u6PjxwF6nZ/tLaVgDfi567bWc/542gnN022jYVo5Z/o3725t+c5Q+1ZT8yzCM93a2PFwdXUExnwKYhvD7VFZbW52pBeOlVeTbpb4hlYQtQU4ClvpXGIsnqvUkbLKkQBvFmu7P4ae9m0gEbDxVSj+Xl7vL/rkWnk/LgWOnwE3Lc/V10JjiJIYQ5YY37jNXdS6lDZZKkrWyy3YtqlFGAxd7GsLU5KoSzcQ9BUauM3jWFgXOTgsHayGixZGh/+RXLwvssUGY9ZKSprMNlO/n8M33WmBKiHxhTqo2VrwHjlOJRGh/gsZBVCRTt+RP3+V3rtraiycPfZv9nE8JUXwU4T4qQzJXSsKasv21DdY6TwCuzpc0aW7ZmuqiuaQv5KZbwMNq/dFokl+hWw360QIck15/HV9c/m+OrCbqDYTqOxOrBMfl8V3N2xBiM4WAoDSSVMS4Rfl5U19Ry0wmf/kYAo7wbnmv92d1P40u7pc+2qrBdaG2J1B4wtvowR/q2zbuDiIPJsKNGDqlLOcrMTK6NSWsdwl7xHrJJC7ycbsIGKfIYzrObggmbnBSjFxj0YLOnQezQkHaTWMjtZ/GLPwS4ygJkFLRWIU0cTWqo2XboSpDhO7hg569Y5dXOMhHXfAzE9Co6YzxyCa+AMdxSK9D1AmvwIkeuFCwcImhKPp+W22M9x4JXbq8oReh6kkNbvwlYBaB4FCYV2A/qBRcYwtxicKhyPrSAQNt+noluDI6kDdrfi3aOfX3G08e+JY9jrFuarFiJwQ6o4GevJygnq9sZpokJajh+MQIqAmcHrWSNPdDLAivpAt8YVEBjhjOIGyqu7zKigPAbA8xuQJgF/m7qa2CaRCiAdIYMmiT7IhQxO8bHyYW5Q/oF4NB2vdLGFiVuwnWgvshqKWtqTGOHPxOunNSYTgeIXIR8FEwYK5T1KKTFhsbYROGJcz/2GZQ9tSdxxmJDLU1P1Do91+bdOXf4GrZXUK4tvXe4Kw/0Px22WsXSxhWh043iYY0rDlK7T86NtB7z5gp3RKk30kHXSPYQ3BVzGNNpYl4secon0uXRIh3XvQx0jL4Rk+F7witt/gw59MTsgeyG/CxHH4h2OqMEmYJnzDtwjVrgxxW2dKQlF5E9WZgrwK2gAOYiAgK6BhChVILzXYrdkQAJYoXc3WlR5AtjyZKmSG3N6g90OupXJQI8rXKc/+LEInrsZPKK8VK7qyrEBBB2+PGIYDSZO+DglpogZ1q60kT2A05T++MHgd1GNLcon/RraJYtdF93ofa+6b59mj0O9XWyctpSWbbv0n6p4LxZAYCMuISwtE69lDfZtAMitO4m09xLlQkBavBPoBVUcGg5437IG+JZd6qs4nAp9ZpE/qQ4LCicHtf/VE811XuOHP0yHJW+QTjrv3YosRnJb4yOCfAOEf07WZoCHGv0+VHyuAhY0A+6+50Gzz3zJs1G/0iJSFqgxh74zbEVMn0ZZxPymnDOPfZkH20Rpt0XVCdaJ0d99nS1ZCcP49N4cWCOTBalxfiMGgefzqrab8ksERoWqN4pRHsv3KbyVfWqD5Dq+bIGNP0Pdx6uan9XvRfTL/IjGvidpKOoxeAwTtjWe4oEBv+o+8hGATKao5Ual34VVI7dLEO25DlSg2FrNK+WlAe/50ulYpbJxQs1IbNvnTibBCchodt7X1cOM6ezo3XhdCdj4M6E8TH9EMNVQgcGLK2MckT0tTI2HK06vWyeJEUwTIIGDgU6WUBOT9mDPn0TyUpTZiLJhmxTtSZZPzj7U6RLDhUtleXlZmMgaClHprFWIcM/kluy/edwMsT1zwTYWA4xSISkbPVjt/4QKQcqmqBISoSznGSR5ukFlmyEIOeH/r0TsPfso2DopEAXK1MrzKy1k8PdjD/E6Ny1M+3905pYN0vQEgsQNjnc2Bw7fTPKHx8UyYGUjxXO/wXCe545si+iSsgwwroOBYRcCImY6CrOP2Co1Nt+jwQCDQslYftHfspNXU14fzC6O7YWseCLFfEeo3CdP0U2FXSXspCJqOJOc3D72ev9X8seh7788JxkJXNEFriwTwrWILmFH0RWyfRsl69B5Jlvn9L8MjEMAHwNwNBVrey4VVJImJNjMqh55AB1lFn6qBXf75fMqE89nadEmy7c8h2gYdSMV8Z87bnhKUWS3E1X/iQnCJFo955VihCkBkMIWBLKSsfq0W1czsc3w2ULo0IGHAct4T6k6ylrGQmQvGr9pPwmpwa7sZ2jgZYTqWTuadaUnaprjcT0o3TowHsVjGRr/ajkllUiS5opvnkDWReO4M6mtw29AOs+jd2nbyGN7bVuVKTHjHVEyYuWAZDFFJOaYbqfO4lTY1INYZdQvGE2RPnxwkDwlXeHIOQ+B9y0p1gz8aLRGTsuJnVuZuPsrqWQUXDjO14Rz1jY8W8Lt3lOjlllwksz0rhhXqtaPQRF1UDT24qeoEmCd4FeDmJY09dZRn4ZUCB6t5U+W2nTS22N1P5nYm117PSmvhidBxkt2v8QXrKIep69A8SHLyBxrIqiZGS8gaN6iWY3vE2SH/9wGJlLxgOm797NPY9SrcHj34xx5DYac1PpUei41wJABkk40XSXulUKrgXsnW9XFj7nUjso8h6p0NKF0Z0xEDihuW0skfe3dFyESExodO4OzUSD7bZXFmxKrkQFWgAvUmV+bXsMQfZnUFtfRfoxbrxrA5F4L+1XVfBFMLzHStHd2Xr62LNLu1tNazCtz+brRf2Mio02nX9v30/B51XhrlRCI1q29z70ZoMD0hV2d6wszZHKo5q7oUURO0tqohwHhSrixvLWFAHpQC+EyelaEB5Ya1TD8jFIAT+Bis7JH411r1DevTo+NNydmlxz9mcUK3vT34AmLa1+/QbdJfVS6IPururqD3kbmQ1O1tNTvrrpdhece5pUtdrZty9mknTnk2VXjX3aHUwRF/xrQ6Fc0icpXywUW6rFX65Yd6VBJF5fokf5/BARwXltra3eTKYbdsgdF5nk/+yKXBzcn6LL/if/Nbvez/Wl/v1lSJLXLooYsYyBm6u/EklR6siooBszVJE/RDl2RBwbi0w2cFJ8BqbgKJIUyZkuL23dDKhFQlwKVYiDZv35F4LdfVJlNgb1RzIsyK1XmYm2YTQSM9XyLbek0onIPgJEncpJtV8/UlFVGnkBME9dei3qQG8Ip4cf9A33ZiNwgxDsB8dpAWX2pam4+JMO4m6yP0Z6ZkOTV0moBj9n3iArSI7fmqOajS+J3WaHf0eo2q8eoY6uo1hWPA5GvojCjdbgxt/0/xYD08mHg/HRihlGIHh8j/cV6kCPnmJ5Ff7pxD0XDd7ICyfgL3ZEYtx3lzfad9+PbuxhelKM8r8/Xf9IK6YfRJWTql07k4SKOqqkY6Cjz8D64+s3OVtfcUNme1D64h7dDxt7QXX1zIr4Sn+nXmCUW4ko45M0pZhKSMvlDbMnNNq0yRCx7o3Lv6gsegHbNQACRr7usldh6BbECA7osVSFpWRXqPDDmB20PaL9Xe+O94RAczgk/N1VUkFjvyxe462kS1HdZwMhKHXVwF8s9ZqaLMlT4dkRflert4ruKzSxxD9f/9+bh+fOrs6vzU/XHJv7n6EATks/0dEKQt5F2L+dickR4OoKNpTpwTJyeWZzO5gZXV9Q89TEWoRA/vddjZmfwXN6uDRITnAApW2IY1Ih0R+nx8rsa8P305LpFC3slMOxqGy+NRI01DPtPpeQGhzLcjyQAeQQHKKCL89mua1MgHrpWjE00zi8ivXgYi46KqKgubC+28IB7oh0D+QcNkD/555DoK14Rnj4V7BI3hzV3+uNESa9Xp4PPrxaAHXuRV99GfWWJdY5c/cy6P7dGmaqHCAkzouoQ2EuWhleLjOZY/y90XEeR5Ev0/VhzRertck+T8hnE5WEGDt08gIoKvIlv8akSK41hwYsokayML6/CQ282/ERmMxExXYXam81mG7SSyX6C0+yInCxuIRa8c3Exb/W++n+qsoydAsgqK8g+wKLQFgRhcxWB1tHztOIwSS7+ZYYb9QSGyc2y3AlvNA29niemmjGEnkBbzIQR432CtGNuufw1VihoaIhEOe3TLhrNH/UcggqhbqSU0B4VPXM8y+KY62yRc9Lpe/KI3HLzeEKmslSI8cHsPrsx6xJlIVKCqZJRaVCjDGjgfnkgC3BbWXF0o2qrhuQhMYOKYtpTf2RtFZYIdiGkmOSKtehENQk8ZAjpHXOmChiEH/CGD2+8uiBsPGLpwe1fQowpaOD0Y9CVlakJJsyL98Re3FV3Gns8PpsEKvPRo6ZKyXZ5xTBQStddvoX5E7tTxhg13Q1rVcyQ8vwdJT2p5YaAnpOxx/dyyocIiJH7xtA88Mq5xV5hSLITbp+76/cZchfwhqk16cNAarZ6ljJ7N33NeLQcQ+2Xs587VCA6ZZMAqDAbjBXGc3g+Or+JBXTE7Mz476HfshQSIRzdYn8VQ6f71D/u9Zg2jDG36YC2XFgkPe6S2UmCQ+1k/fLoxeqqrhTLwJtaK0gQEnH6L9Su1y91MgqbSZjceydmYwp4KDuhSXtDXhNL3hJzPmCHy7U47pKsyP3HFu7lo0JGKLql2vsvexEtTfoW3LeLxOrqj0qhqW5oafNYdMNluZfxsrhVdJS2eYuJVEN5WODkU5ZWk1yUrjv7l86iTmG2eYw/8qMDAKsBfgIh5AK5h0Q0nxE+DVWmYjNguyHGfeWYB0n9vBk0Zo0ahkgitx3ELU56amLj+s5Agut1F15F3wnPjL0VS2baEaKdjEKgEjSuMe/P9EaL6/MiTXWTaG0t/ACZ2Muba1W6g+L1PvMwE3VjRVyDbevqa0IEfdWfoVfvJwZvIjjdLH2Phvhn9OgmhRgTWCuic+kq+rYNH/i+7lbg6EUEvqjQ6cgRB8xK4TmIg9x5HmN5M6tc7FKtNmOeknwOjLBU3H73A2AsGrTVkuk38fyAJLptUaDhdM+JFfptALnsHjTCQuYq9rkFWuXuOM5/3VJsaIhV7NYFY1s+JnhSaw63NkFo9SSG6NWkoRkKdqqa3mfg0l9rXyz8agYFgx/pgJjxRvoucZFhVizmtVNHV9OG0D1crpOK2Hz13jqT/LAslRcrgC9U6q6Lwm3Kxds8IlGWLzJH2SbkMW5pe6PilnCp6YFB9/iLbUQciJ1C6c2KtO4kSpjL6xxMBvXesQ5hsoyl9Pml5GkJrBaeZM3NvJjDduDrtlfTdgx0QeTg4QWAzHDfeO0g3CLMkuhBKehev/nkytQhHF97xRb9DnDJ6HraRBTxjXQvJX9POVRmIkOxYU8zrgjnWPA7MWLLr5TbhIBwxJAkOf2/2k/+9Zk6o4PT0+l1IYSMkLUPO9XBQPv9jY1zl7zLd4RIY4T4DUTuU323CQTrNck5FXUge5RfNfI3kM5RPgVVQ9zGeBZzPitGp94Iefrvst/5PifeXz7lVAZ2fzVuOfuDxirTyk1kDcK66GOvfwDM+Yd8E4l3dvHr3OLmf30mLp3gAXz5DnezuoNkHVetP0czU16omjrCiwJseZx/sVEej+lyuABGYAGRT8YpKgFTWIAEc0/UHynCXFRHOtkWJFxwc1EHZT9YeCbxMRdZ1sIcKFgWNB/E/ptP01nl5qZ5fjwG7nz8nECJ7QaThxHr65g5XPQysC12waLxu4Iaj1ljrR1uaJ9KF0I+NSx/cF+DDxmJhJWW8rQgRA4Xz8WpCaiUbMA5feygzlE8xo8f5MQGyw4eX+ZhtZwLCDW0UhMB8vhhbZaN/R5DS/dqY43LtH5UXosV+oGkRcScJCCK0x/ptq/+rmHOehvORabK9E3nyNEhsU6gPqRLD6cTOjedvbGfkrTpXRha2F73C4rwE/xMxuO15YZomDFrj1GzdQCCmlH6hvs6Dxqomfmhvw74b0QDTYYn7M/wFtskLXh50aA1j/AKJ6MzyXEDeTUdk3Do6q13mbGxVoruL6C3cLJ3Rbr1aXF7y9PB2+jde31ka0AHNnLTjgXaA1S+4xrhrazDXkHUZAMrWEmSq9Dktew4gxCXWAzyUHLUBh4y4vZt1nVWHZWvJ/RPLikdJK0NwLhcuiHLAeOZHL1DIFhBbdM0Z8gd292VbYQBZyrQSgc5+JTOsi7waZVPsIVmPaBoNWX+ODremQd/lPRS4f6rnHBlwYgrXV/roIe+r4862IPalkHPjc0MBTDi/ejwIJlcVwACiXJJITuNBGKxKi27EYLm0OVHcs3/iZ8znUm5oZ3+A78xRYYlVDvr4Tvl2Duzl6Wy1/ZM46tiKSOt7XtctpGVb+PecL6BJsbfHlB10b3uSQ/eL1rxM6IfQvPq5zBa4W1r955FKCt4AWkMGpIbFdDf/yXr+lK8c/MMEmD5k8l41erEBrJiyvVRbSqjtC6YMbw789b5uj92i4u2Unw4igrguFsa/4iB6ZtER72F8fzMHtm6ysfusdsXu2vEg5mKYvNd2kj3DWSC244iFlsjb/pv4vA7okVGwruOWCA2Gkb6RZJLiHB8/ibsk/NLDh4dUQl8qaFBn8paV/KON+62d2W7g+qTcSceBQ+9svaX+IKv9vkv5CINm5/ebnTi9QE3set/Vzl4T4Jv+fa39bIDSDd95AhhgeQzYjP6/EX+8rZRfoAHytd38FXkoiyi1ne6IXNKPrje7cmKqPRYR31IgXLt6ejuvTkUQWolml/aNnUDAJx0H7CFiXip4392xcVoDdvfG3kk01CM4f4nRuZC++3ED+S1NfNmfPUrHpPT1E08GlJVDmyhDpSYz+E9Nskb7oFKqhTLFT3ARWDascA9LEElVwSI9oInY14VVoWrZqYGhr3SNbBFPJT73UgS/8M5QeetDh7rQEhap/TjuTaYY8npOmGU0zDJYz8wmO03GKqaYMeC8aZScHpFn9NJgbKXw8E6m2/W+JQGUAhcbXGrD0U7oZtAQMi/UpGNmGpN+jKg60L1pNCpmwhPvri9EU+SOxygDWvdlSyY1M6e8IsD1qol7imYhZUXBP6DKKRW0SF6jT9AyEttBKgn9EPazeSoWwX83wJc7Cb5gGFM9Ba81dup5tT3XoAYbPm7Mq7r/J+xPwpLf/+fvII8D8WvMfL1jrLJT3pz7seHYnOox6iCj9De3v4Sm2m21cKC0JM/oayf/0UkC7ZYDYTCajv5nqIQ7oJPtSRkIdP8JcmPMMMuYKbAlRnj1b/AtTsVLb99CAu+9BPkqOQSG6hyoB8UelrNRR0yyXSlonn4YrhpSlKzD0EXnv+QZvJ+VHtw/DAehj6S9MUC3hEolR7WuBxNH9ksOnwEpHediO+/4ZSngXzM2aKQpBJ8Y2EPTggZxMIdoXPPtwIk0KV5IjS53KlUY3dUfxcvvbeKFLCeibLRUtpRif9t9DgIZsHrEQmpln/J8YxNrCc9W9S6KbjfLEpaXVoRfzXJ1EC2fIvX37q5cDqtId6t24k50kG2H9wtzbLEH9/sngFtMM7A6JIwdKKdw/2dA6paNf5URv1bQKgcbkLcvwDRdq9r30/POEDHMsVOICaWQVuWrN3YcURnRCoF8+/d7FRR7o4Sn5w/cS4+8X0Xh2NPT4LbKTWMBZklZk5CanqBu/lmxhwv18wwiFXIzQRry4peECQxDiVC5DktEg4Wp178ALggUGnj6pHHh+Ayjz1OK3pz1DjBiEqEDFaNUjIIZlfBiLlqwrQcRQue7h7gCv/Q/HT4gaA2ajudHElwa2cXivf2TeZSZl6wPwgtOGexDWMQkAZSc+aHjv+1W03Qdql6SyJAdgtf2E+9F8ucAolzGDK9nnR9xEWzNqbOU1qlh91FaVwG4QaYljf4Mth7H19Mnnkm8NrDDgEeNBL6l2R5jpC7LPd248YBy5NKal/7OfHVH/Lj3vSs7j9Wv3DCzJBvwZKHO7pmQQ53+ORWm3EtUy/O2P1Jw7ZdnOUXre5o25mzMojNSE2Htrf2+WpseRyNmN0yOdITIriWY8KMX+GB7I2eeAmoDRrXFTbLW0j1L2/T4aAF9OTDo4wQQEaDmyIA5k25WJgH6DqWnhZqSgOuJX9cxUjLwmbPQUuanwQws3D7Rfx7HRICUaGvNBDvr42XobxuC/VtgvnGaJtbQkZjqByUD7lcoGbbM0MzzldpgqvVGCF9qa4K7zyd6ng3xOw4eeoOeuETr+UaF+VCRoQcVel6VJp6S/l+ty5bgQr9Xyl8nTYVKTeYeH4tk9f4Tj+pIdKNhYQd7yezTM/ZEs9HKHddNYkU68uQjvCTIaUqvvpvh5E7QJi4RIYLXZz5GouTtqfgOgr0quSNm5a5hhFG4A4="
function ____exports.SkinConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "skiniWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("skin&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SkinConfig)
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
        local ____exports_skinConfigList_0 = ____exports.skinConfigList
        ____exports_skinConfigList_0[#____exports_skinConfigList_0 + 1] = obj
        ____exports.skinConfigMap[obj.id] = obj
        if obj.hero ~= nil and obj.hero ~= nil then
            local list = ____exports.skinConfigMap_hero[obj.hero]
            if not list then
                local ____temp_1 = {}
                ____exports.skinConfigMap_hero[obj.hero] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
        if obj.role ~= nil and obj.role ~= nil then
            local list = ____exports.skinConfigMap_role[obj.role]
            if not list then
                local ____temp_2 = {}
                ____exports.skinConfigMap_role[obj.role] = ____temp_2
                list = ____temp_2
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
