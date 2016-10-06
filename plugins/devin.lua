if (tonumber(s[5]) and tonumber(s[6])) then
        min = s[5]
        max = s[6]
        msg("Devinez un nombre entre "..min.." et ".. max)
        math.randomseed(os.time())
        if (min < max) then
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
else
    msg("Erreur...")
end
