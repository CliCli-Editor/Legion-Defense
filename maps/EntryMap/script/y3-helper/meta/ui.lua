---@enum(key, partial) y3.Const.SceneUI
local SceneUI = {
    ["ClickMe"] = "e0a14416-5a6c-4ac9-ba80-4943ac6863ae",
    ["ScenePlayerStatus"] = "8f09c5cf-6aff-4330-b442-c240af80d452",
    ["SceneNickname"] = "1b2e3b39-e42a-46a0-a490-0521095d926b",
    ["EmojiView"] = "fd1b065e-63f2-4b37-8de9-614aca09b00e",
    ["popo_1"] = "381e1667-a83e-436f-ac92-6f46535e6f30",
    ["popo_2"] = "fde0638b-1ced-44e1-bbd5-75bc87ffa9bf",
}

y3.util.tableMerge(y3.const.SceneUI or {}, SceneUI)
