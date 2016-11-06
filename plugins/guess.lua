if (tonumber(s[5]) and tonumber(s[6])) then
        min = tonumber(s[5])
        max = tonumber(s[6])
        if (min < max) then 
            msg("Guess the number between "..min.." and ".. max)
            math.randomseed(os.time())
            nb = math.random(min,max)
        else 
            msg("Error: min >= max")
        end
elseif (tonumber(s[5]) and nb) then
        guess = tonumber(s[5])
        if (guess < nb) then
            msg("Bigger")
        elseif (guess > nb) then
            msg("Smaller")
        else
            msg("Congrats ! The number was ".. nb)
        end
else
    msg("Generate a new number with !guess min max, guess it with !guess number.")
end
