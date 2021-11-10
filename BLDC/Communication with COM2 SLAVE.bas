
'init communication parameters
com2adr=2
com2sp=115000
com2cfg=3

print "init this board as slave, address on the bus= ",com2adr,
print "communication speed (bit/sec)= ",com2sp
print
print "because communication uses register index and index may be different ",
print "if firmware is different between each board on the bus, we recommand ",
print "using registers A to Z which are always common between boards."
print

:main 'main loop
out1=a
out2=b
out3=c
goto :main





