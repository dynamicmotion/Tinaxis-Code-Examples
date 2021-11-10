'plesae, setup your terminal software
'to any of the available speed
'then run this example. You should
'see one of the text clear and
'the other with random characters

1
ser_sp=57600
if ser_sp <> 57600 then goto 1
'this loop is recommanded because
'the serial speed can be changed 
'3 seconds after power-on or later.
'This prevents unknown communication
'settings and permanant communication loss.

print "Hello world- this is 57600 bps"

ser_sp=9600
print "Hello world- this is 9600 bps"

ser_sp=19200
print "Hello world- this is 19200 bps"

ser_sp=4800
print "Hello world- this is 4800 bps"

ser_sp=38400
print "Hello world- this is 38400 bps"

ser_sp=9600
end
