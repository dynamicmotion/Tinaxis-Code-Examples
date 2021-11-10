'this example demonstrate a strategy usually done for 
'stroke initialisation with an external sensor
'connected to IN1. 

m_sp_p = 20 ' set low speed, positive direction
m_sp_n= m_sp_p ' set the speed, neg direction

if in1 < 2000 then goto 10
'skip back move if input not active
	target = pos-600 'back move: get away from the sensor
	print "sensor already active... "
	print "move back "
	pause 	
10
	
if in1 > 2000 then goto 999 'error, input still active
target = pos + 2000
print "search sensor "
20
if pos = target then goto 998
if in1 < 2000 then goto 20 'now look for input rizing edge

mode=0 'unenergize the motor
print "end search " 

pos=0 'reset the position counter
target=0 'not necessary if mode is not manually changed
print "reset POS counter " 
'init done here
m_sp_p = 300 ' change the speed to normal value
m_sp_n= m_sp_p
print "start normal move " 

30	'here comes the application code
	'make mouvements in this example
	target=1000
	pause 
	target=2000
	pause 
goto 30


998
	mode=0
	print "error, "
	print "not able to find the sensor"
end

999
	mode=0
	print "error, "
	print "not able to get away from sensor"
end







