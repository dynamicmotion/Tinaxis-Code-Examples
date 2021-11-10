
print "please connect a potentiometer to IN1:"
print "pin 1 to GND"
print "pin 2 to IN1:"
print "pin 3 to +5V"
print "Therefore IN1 will see a voltage between 0 and 5V"
print "Register IN1 contains the value of the voltage in mV"
print "to ensure 100% is reached even id we have"
print "not exactly 5V, 100% will be reached at 4500mV"

1
led1= (in1 * 100)/4500
led2=led1
led3=led1
led4=led1
goto 1