
r=0 'R register to hold the latest random nr generated
s=1549875105 'S register to hold the seed for random number



print "test random nr statistics on 2000 trys"
a=0 'init counters
b=0
c=0
d=0
e=0
f=0

for j=0 to 19
print "testing ",j*100
for i=0 to 99
gosub 500
t=r%10
if t=0 then a=a+1
if t=1 then b=b+1
if t=2 then c=c+1
if t=9 then d=d+1
if r&1=1 then e=e+1
else f=f+1
next
next

print "statistics: number of trys=",e+f
print "numbers between 0 and 99: ",a
print "numbers between 100 and 199: ",b
print "numbers between 200 and 299: ",c
print "numbers between 900 and 999: ",d
print "odd numbers: ",e 'impaire
print "even numbers: ",f

end



'******************************************
'function where random number is generated
'Call this function to update 'r' with a new random nr.
'This function can generate small random numbers (smaller than ~100000).

500
t=s+v_in+temper+1 'use analog values
t=(s*7)+t*13
t=t+s/23
s=t
if s<0 then t=-s
r=t%1000 'random number truncation between 0 et 999 (%=reminder of divide)
return