cat q9.json | jpath '$.prizes[?(@.year == 2014)].laureates[*].firstname'
#Extract the firname of laureats of the year 2014 