#1.sh : Extract Apple
cat input.json | jpath $[0]

#2.sh : Extract Apple and Facebook
cat input.json | jpath '$[0,4]'

#3.sh : Extract from Apple to Facebook
cat input.json | jpath '$[0:5]'

#4.sh : Extract from Microsoft to Samsung
cat input.json | jpath '$[2:7]'

#5.sh : Extract McDonald's
cat input.json | jpath '$[-1:]'

#6.sh : Extract from Samsung to McDonald's
cat input.json | jpath '$[6:10]'

#7.sh : Extract from Amazon to Toyota
cat input.json | jpath '$[3:9]'

#8.sh Extract : the last one
cat input.json | jpath '$[-1:]'

#9.sh : Extract the last 3 ones
cat input.json | jpath '$[-3:]'

#10.sh: Extract form Magna Nec Corp. to Consectetuer Adipiscing Elit Limited
cat input.json | jpath '$[-8:-2]'

#11.sh: Extract 5 first phone number
cat input.json | jpath '$[0:5].phone'

#12.sh: Develop a JSON path query to extract the age of last 5 users
cat input.json | jpath '$[-5:].age'
