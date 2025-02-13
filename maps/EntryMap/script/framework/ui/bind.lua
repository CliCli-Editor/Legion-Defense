local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 7,["9"] = 8,["10"] = 9,["11"] = 10,["12"] = 11,["15"] = 14,["16"] = 7,["17"] = 17,["18"] = 18,["19"] = 19,["20"] = 20,["21"] = 21,["22"] = 22,["25"] = 26,["26"] = 26,["27"] = 26,["30"] = 30,["33"] = 28,["39"] = 26,["40"] = 26,["41"] = 26,["42"] = 26,["43"] = 17,["44"] = 35,["45"] = 36,["46"] = 36,["47"] = 36,["48"] = 36,["49"] = 36,["50"] = 37,["51"] = 36,["52"] = 36,["53"] = 36,["54"] = 35,["55"] = 41,["56"] = 42,["57"] = 42,["58"] = 42,["59"] = 42,["60"] = 42,["61"] = 43,["62"] = 42,["63"] = 42,["64"] = 42,["65"] = 41,["66"] = 47,["67"] = 48,["68"] = 48,["69"] = 48,["70"] = 48,["71"] = 48,["72"] = 49,["73"] = 48,["74"] = 48,["75"] = 48,["76"] = 47,["77"] = 53,["78"] = 54,["79"] = 54,["80"] = 54,["81"] = 54,["82"] = 54,["83"] = 55,["84"] = 54,["85"] = 54,["86"] = 54,["87"] = 53,["88"] = 59,["89"] = 60,["90"] = 60,["91"] = 60,["92"] = 60,["93"] = 60,["94"] = 61,["95"] = 60,["96"] = 60,["97"] = 60,["98"] = 59,["99"] = 65,["100"] = 65,["101"] = 65,["103"] = 66,["104"] = 68,["105"] = 69,["106"] = 70,["107"] = 71,["109"] = 73,["110"] = 73,["111"] = 73,["114"] = 85,["117"] = 75,["118"] = 76,["120"] = 78,["121"] = 79,["122"] = 80,["123"] = 81,["124"] = 80,["131"] = 73,["132"] = 73,["133"] = 65,["135"] = 93,["136"] = 94,["137"] = 94,["138"] = 94,["139"] = 94,["140"] = 94,["141"] = 95,["142"] = 94,["143"] = 94,["144"] = 94,["145"] = 93,["147"] = 101,["148"] = 102,["149"] = 102,["150"] = 102,["151"] = 102,["152"] = 102,["153"] = 103,["154"] = 104,["155"] = 105,["157"] = 102,["158"] = 102,["159"] = 102,["160"] = 101,["162"] = 112,["163"] = 113,["164"] = 113,["165"] = 113,["166"] = 113,["167"] = 113,["168"] = 114,["169"] = 115,["170"] = 116,["172"] = 113,["173"] = 113,["174"] = 113,["175"] = 112,["176"] = 121,["177"] = 122,["178"] = 122,["179"] = 122,["180"] = 122,["181"] = 122,["182"] = 123,["183"] = 122,["184"] = 122,["185"] = 122,["186"] = 121,["187"] = 126,["188"] = 127,["189"] = 127,["190"] = 127,["191"] = 127,["192"] = 127,["193"] = 128,["194"] = 127,["195"] = 127,["196"] = 127,["197"] = 126,["198"] = 132,["199"] = 133,["200"] = 133,["201"] = 133,["202"] = 133,["203"] = 133,["204"] = 134,["205"] = 133,["206"] = 133,["207"] = 133,["208"] = 132,["209"] = 138,["210"] = 139,["211"] = 139,["212"] = 139,["213"] = 139,["214"] = 139,["215"] = 140,["216"] = 139,["217"] = 139,["218"] = 139,["219"] = 138,["220"] = 144,["221"] = 145,["222"] = 145,["223"] = 145,["224"] = 145,["225"] = 145,["226"] = 146,["227"] = 145,["228"] = 145,["229"] = 145,["230"] = 144});
local ____exports = {}
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
function ____exports.getUI(dialog, path)
    local fullPath = (dialog.name .. ".") .. path
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
    if not ui then
        console:error("无法找到UI", fullPath)
        return
    end
    return ui
end
function ____exports.bind(dialog, path, compute, setter, async)
    local bindTraceback = debug.traceback()
    local fullPath = (dialog.name .. ".") .. path
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
    if not ui then
        console:error("无法找到UI", fullPath, bindTraceback)
        return
    end
    dialog:watch(
        compute,
        function(____, newVal, oldVal)
            do
                local function ____catch(e)
                    console:error("设置UI异常", e, fullPath, bindTraceback)
                end
                local ____try, ____hasReturned = pcall(function()
                    setter(nil, ui, newVal)
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end,
        async,
        true
    )
end
function ____exports.bindText(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_text(v)
        end,
        async
    )
end
function ____exports.bindVisible(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_visible(v)
        end,
        async
    )
end
function ____exports.bindButtonEnable(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_button_enable(v)
        end,
        async
    )
end
function ____exports.bindImage(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_image(v)
        end,
        async
    )
end
function ____exports.bindImageUrl(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_image_url(v)
        end,
        async
    )
end
function ____exports.bindAction(dialog, path, event, callback, ____type)
    if ____type == nil then
        ____type = SoundType["点击音效"]
    end
    local fullPath = (dialog.name .. ".") .. path
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
    if not ui then
        local bindTraceback = debug.traceback()
        console:error("无法找到UI", fullPath, bindTraceback)
    end
    ui:add_local_event(
        event,
        function()
            do
                local function ____catch(e)
                    console:error(fullPath, "点击事件异常", e)
                end
                local ____try, ____hasReturned = pcall(function()
                    if event == "左键-按下" or event == "右键-按下" or event == "左键-点击" or event == "右键-点击" then
                        SoundManager:play(____type)
                    end
                    local p = callback(nil, ui, y3.player.LOCAL_PLAYER)
                    if p ~= nil and type(p) == "table" and p.catch ~= nil then
                        p:catch(function(____, e)
                            console:error(e)
                        end)
                    end
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end
    )
end
--- 绑定进度条
function ____exports.bindProgress(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_current_progress_bar_value(v)
        end,
        async
    )
end
--- 绑定模型
function ____exports.bindModel(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            local unit = y3.object.unit[v]
            if unit ~= nil and unit.data ~= nil and unit.data.model ~= nil then
                ui:set_ui_model_id(unit.data.model)
            end
        end,
        async
    )
end
--- 绑定模型的头像
function ____exports.bindModelHead(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            local unit = y3.object.unit[v]
            if unit ~= nil and unit.data ~= nil and unit.data.icon ~= nil then
                ui:set_image(unit.data.icon)
            end
        end,
        async
    )
end
function ____exports.bindPos(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_pos(v.x, v.y)
        end,
        async
    )
end
function ____exports.bindAbsPos(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_absolute_pos(v.x, v.y)
        end,
        async
    )
end
function ____exports.bindModelFov(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:change_showroom_fov(v)
        end,
        async
    )
end
function ____exports.bindModelCamera(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:change_showroom_cposition(v.x, v.y, v.z)
        end,
        async
    )
end
function ____exports.bindModelFocus(dialog, path, compute, async)
    ____exports.bind(
        dialog,
        path,
        compute,
        function(____, ui, v)
            ui:set_ui_model_focus_pos(v.x, v.y, v.z)
        end,
        async
    )
end
return ____exports
