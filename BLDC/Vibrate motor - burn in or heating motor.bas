
print "Use this on brushless drivers, and DC motor connected to U-V"
print "register U= nominal voltage value"
print "register D= voltage difference"

mode=10 'DC motor
v_rmp_r=100000 'ramp infinite
u=12000 
d=1000

print "voltage will ocillate between ",u-d," V, and ",u+d," V"

1 mot_v=u+d
pause 2
mot_v=u-d
pause 2
goto 1