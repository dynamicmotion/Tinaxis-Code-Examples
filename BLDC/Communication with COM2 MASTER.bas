
'init communication parameters
com2adr=1
com2sp=115000
com2cfg=4

print "init this board as MASTER, address on the bus= ",com2adr,
print "communication speed (bit/sec)= ",com2sp
print
print "because communication uses register index and index may be different ",
print "if firmware is different between each board on the bus, we recommand ",
print "using registers A to Z which are always common between boards."
print

int slave_adr=2
int com2_idx=2 '2 meaning COM2

:main 'main loop
if time_d1=0 then time_d1=1000
a=0
b=0
c=0
if time_d1>666 then a=1
else if time_d1>333 then b=1
else c=1
out1=a
out2=b
out3=c
com out com2_idx,slave_adr,"a",a 'copy value of a onto distant register a
pause 10
com out com2_idx,slave_adr,"b",b
pause 10
com out com2_idx,slave_adr,"c",c
pause 10
goto :main





