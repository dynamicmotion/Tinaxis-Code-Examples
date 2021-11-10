'this example works if an RGB source is connected:
'RED to LED1
'GREEN to LED2
'BLUE to LED3
i_led = 350


100
'generate arbitrary ramps
rmp1=random*40+500
rmp2=rmp1
rmp3=rmp1

'generate arbitrary colour, with trend on more green and blue than red
led1=random/4
led2=random/10+90
led3=random/4+10
pause 

goto 100
