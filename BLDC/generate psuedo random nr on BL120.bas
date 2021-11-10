
int random 'create new register to hold the latest random nr generated
int r_seed=1465751328 'create new register to hold the seed for random nr

' *******************************
' test randum quality by showing some statistics

print "test random nr statistics"

for j=0 to 99
print "testing ",j*99
for i=0 to 100
gosub :g_rand
t=random%10
if t=0 then a=a+1
if t=1 then b=b+1
if t=2 then c=c+1
if t=9 then d=d+1
if random&1=1 then e=e+1
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





'******************************************
'function where random number is generated
:g_rand
t=r_seed+v_pow+temper+timesys+1 't is used as temporary register
t=(r_seed*7)+t*13
t=t+(r_seed/23)
r_seed=t
if r_seed<0 then t=-r_seed
random=t%1000 'random number truncation between 0 et 999
return