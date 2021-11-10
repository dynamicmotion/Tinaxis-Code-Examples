'in this example, IN2 of master board is copied to OUT2 of slasve baord
'and IN2 of slave board is copied to OUT2 of master board
'connect COM2 of master and slave together using RS485 recommandations
'RS485+ to RS485+ , RS485- to RS485-, GND to GND


goto :master 'put this in comment to make the board slave
goto :slave

:master
'init communication parameters
com2adr=1 'this board will have address 1
com2sp=115000
com2cfg=4 '4: master

print "init this board as MASTER, address on the bus= ",com2adr,
print "communication speed (bit/sec)= ",com2sp
print
print "because communication uses register index and index may be different ",
print "if firmware is different between each board on the bus, we recommand ",
print "using registers A to Z which are always common between boards."
print

int slave_adr=2 'we want to dialog with board address 2
int com2_idx=2 '2 meaning COM2

:mas_lp 'main loop for master

a=in2 'copy in2 into local register a

com out com2_idx,slave_adr,"a",a 'copy value of a in distant register a
pause 10
com in com2_idx,slave_adr,"b","b" 'copy distant b into local b
pause 10

out2=b
pause 200
goto :mas_lp







:slave
'init communication parameters
com2adr=2 'this board will have address 2
com2sp=115000
com2cfg=3 '3: slave


print "init this board as slave, address on the bus= ",com2adr,
print "communication speed (bit/sec)= ",com2sp
print
print "because communication uses register index and index may be different ",
print "if firmware is different between each board on the bus, we recommand ",
print "using registers A to Z which are always common between boards."
print

:sla_lp 'main loop, only copy registers a and b read an modified by the master
out2=a
b=in2
goto :sla_lp
