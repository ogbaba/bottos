if (tonumber(s[5]) and tonumber(s[6])) then
        min = s[5]
        max = s[6]
        if (min < max) then
            msg("Devinez un nombre entre "..min.." et ".. max)
            math.randomseed(os.time())
            nb = math.random(min,max)
        end
elseif (tonumber(s[5]) and nb) then
        guess = tonumber(s[5])
        if (guess < nb) then
            msg("Plus grand")
        elseif (guess > nb) then
            msg("Plus petit")
        else
            msg("Bravo, le nombre etait ".. nb)
        end
elseif (tonumber(s[5])) then
    msg("Générez un nombre avec !devin min max")
else
    msg("Erreur...")
end
