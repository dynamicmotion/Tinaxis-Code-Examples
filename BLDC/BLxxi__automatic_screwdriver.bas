10 ' start cycle
mode = 4 'open loop, voltage mode
u_mot=6000 'set output voltage to 6V

20
if speed < 600 then goto 20 'wait for speed reach 600 RPM

30
if i_mot < 300 then goto 30 'wait for current reach the value

mode = 1	'stop

pause 1500 'wait 1.5 seconds
goto 10
