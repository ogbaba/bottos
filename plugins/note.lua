-- If setting a note
if (s[6] == "=") then
    notefile = io.open("notes.txt","w")
    print(io.open("notes.txt","w"))
-- Finding if note already exists
    for c in notefile:lines() do
        notedtex = explode(notefile:seek(c-1):read()," ")
        notedt = ""
        for k,v in pairs(s) do
            if (v>6) then
                notedt = notedt .. s[v]
            end
        end
        if (notedtex[1] == s[5]) then
            notefile:write(s[6] .. " = " .. notedt)
        end
    end
elseif (s[5]) then

    notefile = io.open("notes.txt","r")
    notefile:seek("set")
    msg(notefile:read("a"))
    for c in notefile:lines() do
        notedtex = explode(read("a")," ")
        notedt = "" 
        if (notedtex[1] == s[5]) then
            notedt = table.concat(notedtex," ",2)
            msg(notedt)
        end

    end
    msg(notedt)
    msg("RECI")
    notefile:close()
end
