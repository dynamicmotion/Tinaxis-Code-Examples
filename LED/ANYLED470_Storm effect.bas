
i_led = 350

10
r=0
g=1
b=1
a=random /6+2
pause random*40 + 500
for i=0 to a
  led2=random
  led1= led2
  led3=led2
  pause random/8
  led2=random/80
  led1= led2
  led3=led2
  pause random/3
next 
led1=r
led2=g
led3=b

goto 10

