function lines_from(file)
    lines = {}
    for line in io.lines(file) do
        lines[#lines +1] = line
    end
    return lines
end


-- If setting a note
if (s[6] == "=") then
    notefile = io.open("plugins/notes.txt","w")
    lines = lines_from("plugins/notes.txt")
    file:seek("set")
-- Finding if note already exists
    notedt = table.concat(s," ",7)
    text = notefile:read("a")
    text = string.gsub(text,s[5] .. " = %w ")
    notefile:close()

elseif (s[5]) then

    notefile = io.open("plugins/notes.txt","r")
    lines = lines_from("plugins/notes.txt")
    notefile:seek("set")
    for k,v in pairs(lines) do
        notedtex = explode(v," ")
        if (notedtex[1] == s[5]) then
            notedt = table.concat(notedtex," ",3)
            msg(notedt)
        end

    end
    notefile:close()
end
