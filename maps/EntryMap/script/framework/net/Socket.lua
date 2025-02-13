local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__StringEndsWith = ____lualib.__TS__StringEndsWith
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 22,["10"] = 22,["11"] = 22,["12"] = 40,["13"] = 40,["14"] = 40,["15"] = 40,["16"] = 26,["17"] = 27,["18"] = 93,["19"] = 175,["20"] = 41,["21"] = 42,["23"] = 40,["24"] = 60,["25"] = 61,["26"] = 62,["27"] = 63,["28"] = 64,["29"] = 65,["30"] = 66,["31"] = 63,["32"] = 69,["33"] = 70,["34"] = 71,["35"] = 72,["36"] = 69,["37"] = 75,["38"] = 76,["39"] = 77,["40"] = 78,["41"] = 75,["42"] = 81,["43"] = 82,["46"] = 86,["49"] = 84,["55"] = 81,["56"] = 89,["57"] = 90,["58"] = 60,["59"] = 94,["60"] = 95,["63"] = 97,["64"] = 98,["65"] = 99,["66"] = 94,["67"] = 106,["68"] = 107,["69"] = 108,["70"] = 106,["71"] = 115,["72"] = 116,["73"] = 117,["74"] = 115,["75"] = 126,["76"] = 127,["77"] = 128,["78"] = 126,["79"] = 135,["80"] = 136,["81"] = 137,["82"] = 135,["83"] = 144,["84"] = 145,["85"] = 144,["86"] = 149,["87"] = 150,["88"] = 153,["89"] = 154,["91"] = 149,["92"] = 159,["93"] = 161,["94"] = 162,["95"] = 163,["97"] = 159,["98"] = 167,["99"] = 169,["100"] = 170,["101"] = 171,["103"] = 167,["104"] = 176,["105"] = 177,["106"] = 179,["108"] = 181,["109"] = 182,["110"] = 183,["111"] = 184,["112"] = 185,["113"] = 186,["114"] = 187,["115"] = 188,["119"] = 176,["120"] = 194,["121"] = 195,["126"] = 202,["127"] = 203,["130"] = 197,["131"] = 198,["132"] = 199,["139"] = 194,["144"] = 53});
local ____exports = {}
____exports.Socket = __TS__Class()
local Socket = ____exports.Socket
Socket.name = "Socket"
function Socket.prototype.____constructor(self, ip, port, options)
    self.ip = ip
    self.port = port
    self.options = options
    self.client_end_char = "_*_"
    self.server_end_char = "-*-"
    self.isReconnecting = false
    self.content = ""
    if options == nil then
        self.options = {buffer_size = 1024 * 1024 * 100, timeout = 5, update_interval = 0.2, retry_interval = 5}
    end
end
function Socket.prototype.connect(self)
    local net = y3.network.connect(self.ip, self.port, self.options)
    console:log("初始化网络连接")
    net:on_connected(function()
        console:log("连接上了~!!!")
        self.isReconnecting = false
        self:connected()
    end)
    net:on_disconnected(function()
        console:log("断开连接了")
        self.isReconnecting = false
        self:disconnected()
    end)
    net:on_error(function(____, ____error)
        console:log("出错了")
        self.isReconnecting = false
        self:error(____error)
    end)
    net:on_data(function(____, data)
        self.isReconnecting = false
        do
            local function ____catch(____error)
                self:error("" .. tostring(____error))
            end
            local ____try, ____hasReturned = pcall(function()
                self:handler(data)
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
    end)
    self.net = net
    return self
end
function Socket.prototype.reconnect(self)
    if self.isReconnecting then
        return
    end
    self.isReconnecting = true
    self.net = nil
    self:connect()
end
function Socket.prototype.on_connected(self, handler)
    self.connect_handler = handler
    return self
end
function Socket.prototype.on_disconnected(self, handler)
    self.disconnect_handler = handler
    return self
end
function Socket.prototype.on_error(self, handler)
    self.error_handler = handler
    return self
end
function Socket.prototype.on_data(self, handler)
    self.data_handler = handler
    return self
end
function Socket.prototype.send(self, data)
    self.net:send(data .. self.client_end_char)
end
function Socket.prototype.connected(self)
    console:log("socket连接成功")
    if self.connect_handler ~= nil then
        self:connect_handler()
    end
end
function Socket.prototype.disconnected(self)
    console:log("socket断开连接")
    if self.disconnect_handler ~= nil then
        self:disconnect_handler()
    end
end
function Socket.prototype.error(self, data)
    console:log("socket报错", data)
    if self.error_handler ~= nil then
        self:error_handler(JSON:stringify(data))
    end
end
function Socket.prototype.handler(self, data)
    if (string.find(data, self.server_end_char, nil, true) or 0) - 1 == -1 then
        self.content = self.content .. data
    else
        local list = __TS__StringSplit(data, self.server_end_char)
        local is = __TS__StringEndsWith(data, self.server_end_char)
        while #list ~= 0 do
            local aaa = table.remove(list, 1)
            self.content = self.content .. tostring(aaa)
            if #list or is then
                self:post(self.content)
                self.content = ""
            end
        end
    end
end
function Socket.prototype.post(self, data)
    if #data == 0 or data == "" then
        return
    end
    do
        local function ____catch(____error)
            console:log(data)
            self:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            local response = JSON:parse(data)
            if self.data_handler ~= nil then
                self:data_handler(response)
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
__TS__SetDescriptor(
    Socket.prototype,
    "isConnecting",
    {get = function(self)
        return self.net ~= nil and self.net:is_connecting()
    end},
    true
)
return ____exports
