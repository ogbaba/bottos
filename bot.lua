local host = "chat.freenode.net"
local port = 6667
local socket = require("socket")
local tcp = assert(socket.tcp())
local botname = "Bottos"
local ident = "Bottos"
local gecos = "Bot de Baba"
local channel = "##aixinfo"

function explode(str, div)
    assert(type(str) == "string" and type(div) == "string", "invalid arguments")
    local o = {}
    while true do
        local pos1,pos2 = str:find(div)
        if not pos1 then
            o[#o+1] = str
            break
        end
        o[#o+1],str = str:sub(1,pos1-1),str:sub(pos2+1)
    end
    return o
end

tcp:connect(host, port);

tcp:send(string.format("NICK %s \r\n",botname))
tcp:send(string.format("USER %s * 8 :%s \r\n",ident,gecos))

while true do
    local s, status, partial = tcp:receive()
    print(s or partial)
	if status == "closed" then break end
	s = explode(s," ")

    if (s[1] == "PING") then
		tcp:send("PONG"..s[2])
	end
    print(s[2]," est S2")
	if ((s[2]=="376") or (s[2]=="422")) then
		tcp:send(string.format("JOIN %s \r\n",channel))
	end
end
tcp:close()
    
